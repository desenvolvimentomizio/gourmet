unit ufdov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uni, DAScript,
  UniScript, DBAccess, MemDS, uFuncoes, uPegaBase;

type
  Tfdov = class(TForm)
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    PlInfo: TPanel;
    bConfirma: TBitBtn;
    PlTitulo: TPanel;
    plid: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    listaItens: TDBGrid;
    itm: tuniquery;
    itmitmchave: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmtoecodigo: TIntegerField;
    itmtoeidentificacao: TStringField;
    itmcfocfop: TStringField;
    itmcfocfopdestinacao: TStringField;
    DSItm: tunidatasource;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    qConsulta: tuniquery;
    qNoEstado: tuniquery;
    qNoEstadoUFDestinatario: TStringField;
    qNoEstadoUFEmitente: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bConfirmaClick(Sender: TObject);
    procedure DSItmStateChange(Sender: TObject);
    procedure listaItensColEnter(Sender: TObject);
    procedure listaItensColExit(Sender: TObject);
    procedure listaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure listaItensKeyPress(Sender: TObject; var Key: Char);
  protected
    Acesso: TAcesso;

  private
    Fzcone: TUniConnection;
    vpFiltroToe: String;
    procedure AtualizaCFOP;
    procedure BuscaOperacao;
    function MostraLista(pFiltro: String): String;
    procedure VerAtualizacao(pacote: string);
    { Private declarations }
  published
    property zcone: TUniConnection read Fzcone write Fzcone;
  public
    vpMesChave: Integer;
    vpNoEstado: Boolean;
    { Public declarations }
  end;

var
  fdov: Tfdov;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; Conexao: TUniConnection; pAcesso: TAcesso; pMesChave: Integer): string;
begin
  fdov := Tfdov.Create(AOwner);
  try
    fdov.Acesso := pAcesso;
    fdov.vpMesChave := pMesChave;
    fdov.zcone := Conexao;

    fdov.ShowModal;

    Result := '';
  finally
    FreeAndNil(fdov);
  end;
end;

exports formu;

procedure Tfdov.bConfirmaClick(Sender: TObject);
begin
  itm.DisableControls;
  itm.First;
  while not itm.Eof do
  begin
    if itmtoecodigo.AsString = '' then
    begin
      Application.MessageBox(PChar('Verifique, uma ou mais Operações não foram definidas!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      listaItens.SetFocus;
      itm.EnableControls;
      Exit;
    end;

    if itmtoeidentificacao.AsString = '' then
    begin
      Application.MessageBox(PChar('Verifique, uma ou mais Operações são inválidas!!'), 'Atenção', MB_OK + MB_ICONWARNING);
      listaItens.SetFocus;
      itm.EnableControls;
      Exit;
    end;
    itm.Next;
  end;
  itm.EnableControls;

  ModalResult := mrOk;
end;

procedure Tfdov.DSItmStateChange(Sender: TObject);
begin
  if DSItm.State = dsInsert then
    DSItm.DataSet.Cancel;
end;

procedure Tfdov.FormShow(Sender: TObject);
var
  I: Integer;
  vlArquivo: string;
begin
  // Create version info object
  vlArquivo := ExtractFilePath(Application.ExeName) + 'mdov.bpl';

  Self.PlInfo.Caption := GetAppVersionStr(vlArquivo);

  For I := 0 To Self.ComponentCount - 1 Do
  begin
    If Self.Components[I] Is tuniquery Then
      (Self.Components[I] As tuniquery).Connection := zcone;

    If Self.Components[I] Is TUniScript Then
      (Self.Components[I] As TUniScript).Connection := zcone;
  end;

  qConsulta.Close;
  qConsulta.SQL.Text := 'SELECT m.etdcodigo, m.edritem FROM mes m WHERE m.meschave = :meschave;';
  qConsulta.Params[0].AsInteger := vpMesChave;
  qConsulta.Open;

  qNoEstado.Close;
  qNoEstado.Params[0].AsInteger := qConsulta.Fields[0].AsInteger;
  qNoEstado.Params[1].AsInteger := qConsulta.Fields[1].AsInteger;
  qNoEstado.Open;

  vpNoEstado := qNoEstadoUFDestinatario.AsInteger = qNoEstadoUFEmitente.AsInteger;

  case vpNoEstado of
    True:
      vpFiltroToe := 'ttocodigo = 2 AND toeorigem = ''5'' AND ttmcodigo = 0 AND ttecodigo = 1 ';
    False:
      vpFiltroToe := 'ttocodigo = 2 AND toeorigem = ''6'' AND ttmcodigo = 0 AND ttecodigo = 1 ';
  end;
  toe.SQL.Add(' WHERE ' + vpFiltroToe);

  itm.Params[0].AsInteger := vpMesChave;
  itm.Open;

  listaItens.SelectedIndex := 2;
end;

procedure Tfdov.listaItensColEnter(Sender: TObject);
begin
  if listaItens.Columns[listaItens.SelectedIndex].ReadOnly then
    listaItens.SelectedIndex := listaItens.SelectedIndex + 1;

  try
    itm.Refresh;
  except
  end;

  if (itmtoeidentificacao.AsString = '') then
  begin
    BuscaOperacao;
    listaItens.SetFocus;
  end
  else
    AtualizaCFOP;
end;

procedure Tfdov.listaItensColExit(Sender: TObject);
begin
  If (listaItens.SelectedIndex = 2) and (itmtoecodigo.AsString = '') Then
  begin
    BuscaOperacao;
    listaItens.SetFocus;
  end
  else
    AtualizaCFOP;
end;

procedure Tfdov.listaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(DSItm.DataSet.RecNo) Then
  Begin
    If Column.ReadOnly Then
      listaItens.Canvas.Brush.Color := clBtnFace
    Else
      listaItens.Canvas.Brush.Color := PEG_COR_BASE;
  End
  Else
  Begin
    If Column.ReadOnly Then
      listaItens.Canvas.Brush.Color := clBtnFace
    Else
      listaItens.Canvas.Brush.Color := CLWHITE;
  End;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
      Font.Style := [fsBold]
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfdov.listaItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_DOWN, VK_UP]) then
  begin
    try
      itm.Refresh;
    except
    end;

    if (itmtoeidentificacao.AsString = '') then
    begin
      Key := 0;
      BuscaOperacao;
      listaItens.SetFocus;
    end
    else
      AtualizaCFOP;
  end;
end;

procedure Tfdov.listaItensKeyPress(Sender: TObject; var Key: Char);
var
  vColIndex, vColCount: Integer;
begin
  If Key = ';' Then
    Key := #0;

  If Key = '\' Then
    Key := #0;

  If Key = #13 Then
  Begin
    If (Sender Is TDBGrid) Then
    Begin
      Key := #0;

      (Sender As TDBGrid).SelectedIndex := (Sender As TDBGrid).SelectedIndex + 1;
      vColIndex := (Sender As TDBGrid).SelectedIndex;
      vColCount := (Sender As TDBGrid).Columns.Count - 1;

      If vColIndex = vColCount Then
      Begin
        If itm.RecNo = itm.RecordCount Then
        begin
          bConfirma.SetFocus;
          Exit;
        end;
        (Sender As TDBGrid).DataSource.DataSet.Next;
        (Sender As TDBGrid).SelectedIndex := 2;
      End;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;
  End;
end;



procedure Tfdov.VerAtualizacao(pacote: string);
type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  pack: Cardinal;
  vlVerificaAtualizacao: TVerificaAtualizacao;
begin
  pack := LoadPackage('modulos\matz.bpl');
  if pack <> 0 then
  begin
    try
      @vlVerificaAtualizacao := GetProcAddress(pack, PChar('VerificaAtualizacao'));
      if Assigned(vlVerificaAtualizacao) then
      begin

        if (pacote='mcre') or (pacote='mcpa') then
        vlVerificaAtualizacao(Application, 'mrfi.bpl', 'modulos', '.bpl');

        if (pacote='mbrp') or (pacote='mmbrr') then
        vlVerificaAtualizacao(Application, 'mbrf.bpl', 'modulos', '.bpl');



        vlVerificaAtualizacao(Application, pacote + '.bpl', 'modulos', '.bpl');

      end;
    finally
      DoUnLoadPackage(Application, pack);
    end;
  end;

end;


Function Tfdov.MostraLista(pFiltro: String): String;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  vlPack: NativeUInt;
begin

   if InternetAtiva then
  begin
      VerAtualizacao('mtoe');
  end;

  Result := '';
  vlPack := LoadPackage('modulos\mtoe.bpl');
  if vlPack <> 0 then
    try
      @ExecForm := GetProcAddress(vlPack, PChar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, vlPack, zcone, Acesso, pFiltro, '');
        Result := ExecForm(vlCargaFrame);
      end;
    finally
      DoUnLoadPackage(Application, vlPack);
    end;
End;

procedure Tfdov.BuscaOperacao;
var
  vToeCodigo: String;
begin
  vToeCodigo := MostraLista(vpFiltroToe);

  if vToeCodigo <> '' then
  begin
    itm.Edit;
    itmtoecodigo.AsString := vToeCodigo;
    AtualizaCFOP;
  end;
end;

procedure Tfdov.AtualizaCFOP;
begin
  If itm.State = dsBrowse Then
    itm.Edit;

  qConsulta.Close;
  qConsulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + Self.itmtoecodigo.AsString;
  qConsulta.Open;
  itmcfocfop.AsString := qConsulta.Fields[0].AsString;
  itmcfocfopdestinacao.AsString := qConsulta.Fields[0].AsString;
  itm.Post;
end;

end.
