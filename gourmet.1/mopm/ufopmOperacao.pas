unit ufopmOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
    Vcl.Grids, Vcl.DBGrids, ufuncoes, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, uni, DBAccess, MemDS;

type
  TfopmOperacao = class(TForm)
    itm: tuniquery;
    DSItm: tunidatasource;
    itmitmchave: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmtoecodigo: TIntegerField;
    itmtoeidentificacao: TStringField;
    pro: tuniquery;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    qConsulta: tuniquery;
    itmcfocfopdestinacao: TStringField;
    itmcfocfop: TStringField;
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    PlInfo: TPanel;
    PlTitulo: TPanel;
    plid: TPanel;
    bConfirma: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    listaItens: TDBGrid;
    procedure listaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaItensKeyPress(Sender: TObject; var Key: Char);
    procedure listaItensColEnter(Sender: TObject);
    procedure listaItensColExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSItmStateChange(Sender: TObject);
    procedure listaItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Fzcone: tuniconnection;
    vpFiltroToe: String;
    function MostraLista(Modulo, Filtro, Usuario: String): String;
    procedure BuscaOperacao;
    procedure AtualizaCFOP;
    procedure VerAtualizacao(pacote: string);
    { Private declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  public
    vpMesChave: String;
    vpNoEstado: Boolean;
    VpUsrCodigo: String;
    { Public declarations }
  end;

  TExec = Function(AOwner: TComponent; Conexao: tuniconnection; Vusuario: String; Vtipolista: Integer; Vmodulo: String; vFiltro: String;
    Vmodo: String): String;

var
  fopmOperacao: TfopmOperacao;

implementation

uses
  UVerInfoClass;

{$R *.dfm}

procedure TfopmOperacao.bconfirmaClick(Sender: TObject);
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

procedure TfopmOperacao.DSItmStateChange(Sender: TObject);
begin
  if DSItm.State = dsInsert then
    DSItm.DataSet.Cancel;
end;

procedure TfopmOperacao.FormShow(Sender: TObject);
var
  I: Integer;
  arq: string;
  VI: TVerInfo;
  FFI: TVSFixedFileInfo;
begin
  // Create version info object
  arq := ExtractFilePath(Application.ExeName) + 'mopm.bpl';

  VI := TVerInfo.Create(arq);

  if VI.HasVerInfo then
  begin
    // Get fixed file info and display subset of fields
    FFI := VI.FixedFileInfo;
    Self.PlInfo.Caption := (Format('Versão: %d.%d.%d.%d', [HiWord(FFI.dwFileVersionMS), LoWord(FFI.dwFileVersionMS), HiWord(FFI.dwFileVersionLS),
      LoWord(FFI.dwFileVersionLS)]));
  end;

  For I := 0 To Self.ComponentCount - 1 Do
    If Self.Components[I] Is tuniquery Then
      (Self.Components[I] As tuniquery).Connection := zcone;

  case vpNoEstado of
    True:
      vpFiltroToe := ' toeorigem = ''5'' AND ttmcodigo = 0 AND ttecodigo = 1 ';
    False:
      vpFiltroToe := ' toeorigem = ''6'' AND ttmcodigo = 0 AND ttecodigo = 1 ';
  end;
  toe.SQL.Add(' WHERE ' + vpFiltroToe);

  itm.Params[0].AsString := vpMesChave;
  itm.Open;

  listaItens.SelectedIndex := 2;
end;

procedure TfopmOperacao.listaItensColEnter(Sender: TObject);
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

procedure TfopmOperacao.listaItensColExit(Sender: TObject);
begin
  If (listaItens.SelectedIndex = 2) and (itmtoecodigo.AsString = '') Then
  begin
    BuscaOperacao;
    listaItens.SetFocus;
  end
  else
    AtualizaCFOP;
end;

procedure TfopmOperacao.listaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TfopmOperacao.listaItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfopmOperacao.listaItensKeyPress(Sender: TObject; var Key: Char);
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


procedure TfopmOperacao.VerAtualizacao(pacote: string);
type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  pack: Cardinal;
  vlVerificaAtualizacao: TVerificaAtualizacao;
begin
  if not fileexists(extractfilepath(Application.ExeName) + 'modulos\matz.bpl') then
  begin
    exit;
  end;
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



Function TfopmOperacao.MostraLista(Modulo: String; Filtro: String; Usuario: String): String;
Var
  Exec: TExec;
  Pack: HMODULE;
  Ch: String;
Begin

    if InternetAtiva then
  begin
      VerAtualizacao(pModulo);
  end;


  Pack := LoadPackage('modulos\' + Modulo + '.bpl');
  If Pack <> 0 Then
    Try
      @Exec := GetProcAddress(Pack, PChar('formu'));

      If Assigned(Exec) Then
        Ch := Exec(Application, zcone, VpUsrCodigo, 1, '', Filtro, '');
    Finally
      DoUnLoadPackage(Application, Pack);
    End;
  Result := Ch;
End;

procedure TfopmOperacao.BuscaOperacao;
var
  vToeCodigo: String;
begin
  vToeCodigo := MostraLista('mtoe', vpFiltroToe, VpUsrCodigo);

  if vToeCodigo <> '' then
  begin
    itm.Edit;
    itmtoecodigo.AsString := vToeCodigo;
    AtualizaCFOP;
  end;
end;

procedure TfopmOperacao.AtualizaCFOP;
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
