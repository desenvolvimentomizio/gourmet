unit ufccg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.ImageList ;

type
  Tfccg = class(Tfrmbase)
    registroccgcodigo: TIntegerField;
    registroccgestrutural: TStringField;
    registroccgidentificacao: TStringField;
    Label1: TLabel;
    ccgcodigo: TDBEdit;
    Label2: TLabel;
    ccgestrutural: TDBEdit;
    Label3: TLabel;
    ccgidentificacao: TDBEdit;
    registroseacodigo: TIntegerField;
    sea: TUniQuery;
    seaseacodigo: TIntegerField;
    seaseaidentificacao: TStringField;
    registroseaidentificacao: TStringField;
    Label4: TLabel;
    seacodigo: TDBEdit;
    registrogcccodigo: TIntegerField;
    gcc: TUniQuery;
    gccgcccodigo: TIntegerField;
    gccgccidentificacao: TStringField;
    registrogccidentificacao: TStringField;
    Label5: TLabel;
    gcccodigo: TDBEdit;
    gccgccmascara: TStringField;
    registrogccmascara: TStringField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registroccgrecdes: TIntegerField;
    pcgrecdes: TDBRadioGroup;
    registrocedcodigo: TIntegerField;
    Label6: TLabel;
    cedcodigo: TDBEdit;
    registrocedidentificacao: TStringField;
    registroccgvalidade: TDateField;
    Label7: TLabel;
    ccgvalidade: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure seacodigoExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccg: Tfccg;

  // Início ID do Módulo fccg
const
  vPlIdMd = '01.01.16.002-02';
  // Fim ID do Módulo fccg

implementation

{$R *.dfm}

procedure Tfccg.bconfirmaClick(Sender: TObject);
begin
  if self.registroccgcodigo.AsString = '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select max(ccgcodigo) as chave from ccg';
    consulta.Open;
    registroccgcodigo.AsInteger := consulta.Fields[0].AsInteger + 1;
  end;
  inherited;

end;

procedure Tfccg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  if psituacao.Caption = 'Incluindo' then
  begin
    self.registrogcccodigo.AsString := copy(self.vChaveMestre, 1, pos('.', self.vChaveMestre) - 1);
    self.ccgestrutural.Field.AsString := self.vChaveMestre;
  end;

end;

procedure Tfccg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
self.registroccgrecdes.AsInteger:=9;
end;

procedure Tfccg.seacodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if (length(self.registroccgestrutural.AsString) = length(registrogccmascara.AsString)) and (self.registroseacodigo.AsInteger = 0) then
  begin

    ShowMessage('Este é o último nível para este grupo de contas, não pode ser analítico!');
    seacodigo.Field.AsString := '1';
  end;

end;

end.
