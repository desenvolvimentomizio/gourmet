unit ufice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, ufuncoes, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfice = class(Tfrmbase)
    registroicechave: TIntegerField;
    registropcechave: TIntegerField;
    registroicedatahoraregistro: TDateTimeField;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registroicequantidade: TFloatField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    icechave: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    icequantidade: TDBEdit;
    edBarra: TEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    pununisimbolo: TStringField;
    registrounisimbolo: TStringField;
    Dpun: TDataSource;
    unisimbolo: TDBText;
    registroiceorigem: TIntegerField;
    iceorigem: TDBRadioGroup;
    Label4: TLabel;
    ice: TUniQuery;
    iceicechave: TIntegerField;
    iceprocodigo: TIntegerField;
    icepronome: TStringField;
    iceicequantidade: TFloatField;
    iceunisimbolo: TStringField;
    icepcechave: TIntegerField;
    iceicedatahoraregistro: TDateTimeField;
    iceclbidentificacao: TStringField;
    DSice: TDataSource;
    DBGIce: TDBGrid;
    iceiceorigem: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure edBarraKeyPress(Sender: TObject; var Key: Char);
    procedure procodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure icequantidadeExit(Sender: TObject);
    procedure edBarraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpIceOrigem:Integer;
  end;

var
  fice: Tfice;

implementation

{$R *.dfm}

procedure Tfice.bconfirmaClick(Sender: TObject);
begin
  { inherited; }

 edBarra.Text:='';
  Try
    if bconfirma.Visible then
      bconfirma.SetFocus; // Força o ActiveControl para o botão Confirma

    if not ValidaCamposRequeridos then
      Exit;

    If (Self.bconfirma.caption = 'Confirma') or (Self.bconfirma.caption = 'Fechar') or (Self.bconfirma.caption = 'Ligação') Then
    Begin
      If Self.SalvaRegistro Then
      begin
       ice.Close;
       ice.ParamByName('pcechave').AsString:=vChaveMestre;
       ice.Open;


        vpIceOrigem:=registroiceorigem.AsInteger;
        registro.Append;
        registroiceorigem.AsInteger:=vpIceOrigem;
        edBarra.Visible := True;
        edBarra.SetFocus;

      end
      Else
        ShowMessage('Cadastro incompleto, favor verficar !');
    End
    Else
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;

      if paginas.ActivePageIndex = -1 then
        paginas.ActivePageIndex := 0;

      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;

      ajustabotoes;

      (Self.paginas.Pages[paginas.ActivePageIndex] As TTabSheet).SetFocus;

    End;
  Except
    on E: Exception do
      ShowMessage('Erro ao salvar o registro.' + #13 + 'Mensagem: ' + #13 + E.Message);
  End;

end;

procedure Tfice.edBarraExit(Sender: TObject);
begin
  inherited;

 if edBarra.Text='' then
 edBarra.Visible:=false;

end;

procedure Tfice.edBarraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if length(edBarra.Text) >= 7 then
    begin

      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo,puncodigo from pun where punbarra=' + QuotedStr(formatfloat('00000000000000', strtofloat(edBarra.Text)));
      Consulta.Open;
      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        registropuncodigo.AsString := Consulta.Fields[1].AsString;
        edBarra.Visible := False;
        icequantidade.SetFocus;
      end;

    end
    else if length(edBarra.Text) = 0 then
    begin
      edBarra.Visible := False;
      procodigo.SetFocus;
    end
    else
    begin
      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo,puncodigo from pun where procodigo=' + edBarra.Text;
      Consulta.Open;

      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        registropuncodigo.AsString := Consulta.Fields[1].AsString;
        edBarra.Visible := False;
        icequantidade.SetFocus;
      end;
    end;

  end;
  if Key = #27 then
  begin
    edBarra.Visible := False;
    procodigo.SetFocus;

  end;

end;

procedure Tfice.FormShow(Sender: TObject);
begin
  inherited;

  if vChaveMestre<>'' then
  begin
       ice.Close;
       ice.ParamByName('pcechave').AsString:=vChaveMestre;
       ice.Open;

  end;


  if Situacao = 'Incluindo' then
  begin
  registroiceorigem.AsInteger:=1;
    Exit;

  end;

  edBarra.Visible := True;
  edBarra.SetFocus;
end;

procedure Tfice.icequantidadeExit(Sender: TObject);
begin
  inherited;
  Consulta.Close;
  Consulta.SQL.Text := 'select pun.puncodigo from pun,pro  where pun.procodigo=pro.procodigo and  pun.unicodigo=pro.unicodigo and pun.procodigo=' + procodigo.Field.AsString;
  Consulta.Open;

  if Consulta.RecordCount = 1 then
  begin
    if registro.State <> dsbrowse then
    begin
      registropuncodigo.AsString := Consulta.FieldByName('puncodigo').AsString;
    end;
  end;
  bconfirma.SetFocus;

end;

procedure Tfice.procodigoExit(Sender: TObject);
begin

  if (Self.ActiveControl = bcancela) or (Self.ActiveControl = bfechar) then
    Exit;

  Self.ValidaSaida(Sender);

  inherited;
  icequantidade.SetFocus;

end;

procedure Tfice.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registropcechave.AsString := vChaveMestre;
  registroicedatahoraregistro.AsString := agora(application, ZCone);
  registroclbcodigo.AsInteger := acesso.usuario

end;

end.
