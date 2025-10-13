unit ufcte;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, Vcl.Dialogs, uFuncoes, SysUtils;

type
  Tfcte = class(Tfrmbase)
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    spd: tuniquery;
    spdspdchave: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    ict: tuniquery;
    ictictchave: TIntegerField;
    ictctechave: TIntegerField;
    ictcstcodigo: TStringField;
    ictcfocfop: TStringField;
    ictcfoidentificacao: TStringField;
    ictictaliqicm: TFloatField;
    ictictvlroperacao: TFloatField;
    ictictbicm: TFloatField;
    icticticm: TFloatField;
    ictictredbase: TFloatField;
    icttofcodigo: TIntegerField;
    tdf: tuniquery;
    tdftdfcodigo: TStringField;
    tdftdfidentificacao: TStringField;
    cfo: tuniquery;
    cfocfocfop: TStringField;
    cfocfoidentificacao: TStringField;
    sde: tuniquery;
    sdesdecodigo: TStringField;
    sdesdeidentificacao: TStringField;
    Dict: tunidatasource;
    Label1: TLabel;
    ctechave: TDBEdit;
    Label2: TLabel;
    cteemissao: TDBEdit;
    Label18: TLabel;
    ctedtaquis: TDBEdit;
    Label15: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    cteserie: TDBEdit;
    Label4: TLabel;
    ctenumero: TDBEdit;
    Label5: TLabel;
    sdecodigo: TDBEdit;
    Label6: TLabel;
    cteechave: TDBEdit;
    Label7: TLabel;
    tdfcodigo: TDBEdit;
    Label17: TLabel;
    toecodigo: TDBEdit;
    Label11: TLabel;
    ctevalordoc: TDBEdit;
    Label12: TLabel;
    ctevalor: TDBEdit;
    Label9: TLabel;
    ctedesconto: TDBEdit;
    Label13: TLabel;
    ctebicm: TDBEdit;
    Label16: TLabel;
    ctealiqicm: TDBEdit;
    Label14: TLabel;
    cteicm: TDBEdit;
    registroctechave: TIntegerField;
    registrocteserie: TStringField;
    registrocteoperacao: TStringField;
    registrocteemissor: TStringField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registrotdfcodigo: TStringField;
    registrotdfidentificacao: TStringField;
    registrosdecodigo: TStringField;
    registrosdeidentificacao: TStringField;
    registroctesubserie: TStringField;
    registroctenumero: TStringField;
    registrocteechave: TStringField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificacao: TStringField;
    registrocteemissao: TDateField;
    registroctedtaquis: TDateField;
    registrocteechaveref: TStringField;
    registroctevalor: TFloatField;
    registroctedesconto: TFloatField;
    registroctevalordoc: TFloatField;
    registroctebicm: TFloatField;
    registrocteicm: TFloatField;
    registroctevlrntrbi: TFloatField;
    registroticcodigo: TIntegerField;
    registropcccodigo: TStringField;
    registrospdchave: TIntegerField;
    registroctealiqicm: TFloatField;
    registrorefcodigo: TIntegerField;
    ref: tuniquery;
    refrefcodigo: TIntegerField;
    refrefidentificacao: TStringField;
    registrorefidentificacao: TStringField;
    refcodigo: TDBEdit;
    Label8: TLabel;
    tcf: tuniquery;
    tcftcfcodigo: TStringField;
    tcftcfidentificacao: TStringField;
    registrotcfcodigo: TStringField;
    registrotcfidentificaacao: TStringField;
    Label10: TLabel;
    tcfcodigo: TDBEdit;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ctebicmEnter(Sender: TObject);
    procedure cteicmEnter(Sender: TObject);
    procedure ctevalorEnter(Sender: TObject);
    procedure etdcodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure tdfcodigoExit(Sender: TObject);
    procedure ctenumeroExit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fcte: Tfcte;

  // Início ID do Módulo fracte
const
  vPlIdMd = '03.08.17.001-02';

  // Fim ID do Módulo fracte

implementation

{$R *.dfm}

procedure Tfcte.bcancelaClick(Sender: TObject);
begin
  If ict.State <> dsbrowse Then
    ict.Cancel;

  inherited;
end;

procedure Tfcte.bconfirmaClick(Sender: TObject);
begin
  if not ValidaCamposRequeridos then
    Exit;

  inherited;

  If registro.State <> dsbrowse Then
    registro.Post;

  ict.Close;
  ict.SQL.Text := 'select * from ict where ctechave=' + self.ctechave.Field.AsString;
  ict.Open;

  If ict.RecordCount = 1 Then
    ict.Edit
  Else
    ict.Append;

  ictctechave.AsInteger := self.ctechave.Field.AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + self.toecodigo.Field.AsString;
  consulta.Open;

  ictcfocfop.AsString := self.consulta.Fields[0].AsString;

  ictcstcodigo.AsString := '090';
  ictictredbase.AsFloat := 0;
  ictictvlroperacao.AsFloat := self.ctevalordoc.Field.AsFloat;
  ictictbicm.AsFloat := self.ctebicm.Field.AsFloat;
  icticticm.AsFloat := self.cteicm.Field.AsFloat;
  icttofcodigo.AsString := '1';
  ictictaliqicm.AsFloat := ctealiqicm.Field.AsFloat;
  ict.Post;
end;

procedure Tfcte.ctebicmEnter(Sender: TObject);
begin
  inherited;
  ctebicm.Field.AsFloat := ctevalor.Field.AsFloat;
end;

procedure Tfcte.cteicmEnter(Sender: TObject);
begin
  inherited;
  cteicm.Field.AsFloat := self.ctebicm.Field.AsFloat * (self.ctealiqicm.Field.AsFloat / 100);

end;

procedure Tfcte.ctenumeroExit(Sender: TObject);
begin
  inherited;

  if self.ActiveControl = bcancela then
    Exit;

  self.ValidaSaida(Sender);

  consulta.Close;
  consulta.SQL.Text := 'select ctechave from cte where etdcodigo=' + etdcodigo.Field.AsString + ' and lower(ctenumero)=' +
    QuotedStr(Trim(LowerCase(ctenumero.Field.AsString)));
  consulta.Open;

  if Not consulta.IsEmpty then
  begin
    ShowMessage('Atenção. Já existe um Conhecimento de Transporte com este número registrado para este Transportador.' + #13 + 'Chave do Registro: ' +
      consulta.Fields[0].AsString);
    ctenumero.Field.AsString := '';
    ctenumero.SetFocus;
  end;

end;

procedure Tfcte.ctevalorEnter(Sender: TObject);
begin
  inherited;
  ctevalor.Field.AsFloat := ctevalordoc.Field.AsFloat;
end;

procedure Tfcte.etdcodigoEnter(Sender: TObject);
begin
  inherited;
  If (self.ctedtaquis.Field.AsFloat >= self.spdspddatainicial.AsFloat) And (self.ctedtaquis.Field.AsFloat <= self.spdspddatafinal.AsFloat) Then
  Begin

  End
  Else
  Begin
    ShowMessage('ATENÇÃO, Data de entrada fora do período ativo do Sistema');
    self.ctedtaquis.SetFocus;
  End;
end;

procedure Tfcte.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  spd.Open;

  ict.Open;
  If psituacao.caption = 'Alterando' Then
    ict.Edit
  Else If psituacao.caption = 'Incluindo' Then
    ict.Append;
end;

procedure Tfcte.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotcfcodigo.AsString := '0';
  registroctesubserie.AsString := '0';
  registrocteoperacao.AsString := '0';
  registrocteemissor.AsString := '1';
  registroctedesconto.AsFloat := 0;
  registrotdfcodigo.AsString := '57';
  registrosdecodigo.AsString := '00';
  registroctevlrntrbi.AsFloat := 0;
  registroticcodigo.AsInteger := 1;
  registropcccodigo.AsString := '3.01.01.03.03.00.00';

  if not spd.Active then
    spd.Open;

  registrospdchave.AsInteger := spdspdchave.AsInteger;
end;

procedure Tfcte.tdfcodigoExit(Sender: TObject);
begin
  inherited;

  ValidaSaida(Sender);

  if tdfcodigo.Field.AsString <> '' then
    if tdfcodigo.Field.AsString = '57' then
    begin
      cteechave.Field.Required := True;
      cteechave.Color := PEG_COR_VALORREQUERIDO;
    end
    else
    begin
      cteechave.Field.Required := False;
      cteechave.Color := clWindow;
    end;
end;

end.
