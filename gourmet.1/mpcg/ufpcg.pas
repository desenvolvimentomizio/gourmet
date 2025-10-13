unit ufpcg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Dialogs, System.ImageList;

type
  Tfpcg = class(Tfrmbase)
    registropcgcodigo: TIntegerField;
    registroseacodigo: TIntegerField;
    registropcgestrutural: TStringField;
    registropcgidentificacao: TStringField;
    registrocfpcodigo: TIntegerField;
    Label1: TLabel;
    pcgcodigo: TDBEdit;
    Label2: TLabel;
    seacodigo: TDBEdit;
    Label3: TLabel;
    pcgestrutural: TDBEdit;
    Label4: TLabel;
    pcgidentificacao: TDBEdit;
    sea: tuniquery;
    seaseacodigo: TIntegerField;
    seaseaidentificacao: TStringField;
    registroseaidentificacao: TStringField;
    Label5: TLabel;
    cfpcodigo: TDBEdit;
    cfp: tuniquery;
    cfpcfpcodigo: TIntegerField;
    cfpcfpidentificacao: TStringField;
    registrocfpidentificacao: TStringField;
    cfpcedcodigo: TIntegerField;
    cfpcedidentificacao: TStringField;
    Label6: TLabel;
    cedidentificacaogrupo: TDBEdit;
    registrocedidentificacaogrupo: TStringField;
    registrocedcodigo: TIntegerField;
    Label7: TLabel;
    cedcodigo: TDBEdit;
    registropcgativa: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenativo: TStringField;
    Label8: TLabel;
    pcgativa: TDBEdit;
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    cfpcfpmascara: TStringField;
    registrocfpmascara: TStringField;
    Label9: TLabel;
    cfpmascara: TDBEdit;
    registropcgrecdes: TIntegerField;
    registrosenpcgrecdes: TStringField;
    registropcccodigo: TStringField;
    Label11: TLabel;
    pcccodigo: TDBEdit;
    bbuscarplano: TButton;
    pcc: tuniquery;
    pccpcccodigo: TStringField;
    pccpccidentificacao: TStringField;
    registropccidentificacao: TStringField;
    pcgrecdes: TDBRadioGroup;
    registropcgorcamento: TIntegerField;
    registrosenpcgorcamento: TStringField;
    lbpcgorcamento: TLabel;
    pcgorcamento: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure seacodigoExit(Sender: TObject);
    procedure cedcodigoExit(Sender: TObject);
    procedure bbuscarplanoClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fpcg: Tfpcg;

  // Início ID do Módulo frapcg
const
  vPlIdMd = '02.02.16.007-02';

  // Fim ID do Módulo frapcg

implementation

{$R *.dfm}

uses ufrapcg;

procedure Tfpcg.bbuscarplanoClick(Sender: TObject);
begin
  inherited;
  criabusca(pcccodigo, registropccidentificacao);
end;

procedure Tfpcg.bconfirmaClick(Sender: TObject);
begin
  if self.registropcgcodigo.AsString = '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select max(pcgcodigo) as chave from pcg';
    consulta.Open;
    registropcgcodigo.AsInteger := consulta.Fields[0].AsInteger + 1;
  end;
  inherited;

end;

procedure Tfpcg.cedcodigoExit(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    if (self.registroseacodigo.AsInteger = 1) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select pcgcodigo from pcg where pcgestrutural like ' + chr(39) + self.pcgestrutural.Field.AsString + '.%' + chr(39);
      consulta.Open;
      if not consulta.IsEmpty then
      begin
        Application.MessageBox(PChar('Esta conta já possui sub-contas não pode sera alterada para analítica!'), 'Atenção', MB_ICONWARNING + MB_OK);
        seacodigo.Field.AsInteger := 0;
        seacodigo.SetFocus;
      end;
    end;
  end;
end;

procedure Tfpcg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  if psituacao.Caption = 'Incluindo' then
  begin
    self.registrocfpcodigo.AsString := copy(self.vChaveMestre, 1, pos('.', self.vChaveMestre) - 1);
    self.registrocedcodigo.AsInteger := self.cfpcedcodigo.AsInteger;
    self.pcgestrutural.Field.AsString := self.vChaveMestre;
    self.pcgativa.Field.AsInteger := 1;
    self.pcgativa.TabStop := false;
  end;

end;

procedure Tfpcg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registropcgativa.AsInteger := 1;
  registropcgrecdes.AsInteger := 1;
  registropcgorcamento.AsInteger := 1;
end;

procedure Tfpcg.seacodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if (length(self.registropcgestrutural.AsString) = length(self.cfpmascara.Field.AsString)) and (self.registroseacodigo.AsInteger = 0) then
  begin

    ShowMessage('Este é o último nível para este grupo de contas, não pode ser analítico!');
    seacodigo.Field.AsString := '1';
  end;

  if psituacao.Caption = 'Alterando' then
  begin
    if (self.registroseacodigo.AsInteger = 1) then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select pcgcodigo from pcg where pcgestrutural like ' + chr(39) + self.pcgestrutural.Field.AsString + '.%' + chr(39);
      consulta.Open;
      if not consulta.IsEmpty then
      begin
        Application.MessageBox(PChar('Esta conta já possui sub-contas não pode sera alterada para analítica!'), 'Atenção', MB_ICONWARNING + MB_OK);
        seacodigo.Field.AsInteger := 0;
        seacodigo.SetFocus;
      end;

    end;
  end;

end;

end.
