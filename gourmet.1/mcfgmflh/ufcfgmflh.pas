unit ufcfgmflh;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uPegaBase, DAScript, UniScript, System.ImageList, Dialogs;

type
  Tfcfgmflh = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgphgpagto: TIntegerField;
    registrocfgevfpagto: TIntegerField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    Label1: TLabel;
    cfgevfpagto: TDBEdit;
    Label2: TLabel;
    cfgphgpagto: TDBEdit;
    registrophgidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    actImplantarEventosPadroes: TButton;
    UniScript: TUniScript;
    registrocfgccgcodigo: TIntegerField;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    lblccgcodigo: TLabel;
    cfgccgcodigo: TDBEdit;
    cfgcfgusactb: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    registrocfgmodeloleitor: TIntegerField;
    cfgmodeloleitor: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure actImplantarEventosPadroesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmflh: Tfcfgmflh;

  // Início ID do Módulo fracfg
const
  vPlIdMd = '03.06.81.011-01';
  vPlTitMdl = 'Configurações da Folha Gerencial';

  // Fim ID do Módulo fracfg

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmflh := Tfcfgmflh.Create(pCargaFrame);
  fcfgmflh.ShowModal;
  fcfgmflh.Free;
end;

exports formulario;

procedure Tfcfgmflh.actImplantarEventosPadroesClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select evachave from eva';
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Showmessage('Já existem lançamentos para folha, não é possivel implantar envetos padrões!');
    exit;
  end;

  If application.MessageBox(PChar('Confirma a IMPLANTAÇÃO dos eventos padrões?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin
    UniScript.Connection := ZCone;
    UniScript.Execute;
  end;

end;

procedure Tfcfgmflh.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  registro.Params[0].AsString := vChaveMestre;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  if (cfgcfgctbusaccg.AsInteger = 1) and (cfgcfgusactb.AsInteger = 0) then
  begin
    lblccgcodigo.Visible := true;
    cfgccgcodigo.Visible := true;
    registrocfgccgcodigo.Required := true;
  end
  else
  begin
    lblccgcodigo.Visible := False;
    cfgccgcodigo.Visible := False;
    registrocfgccgcodigo.Required := False;
  end;

  inherited;

end;

procedure Tfcfgmflh.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocfgcodigo.AsString := vChaveMestre;
end;

end.
