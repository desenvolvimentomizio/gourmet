unit ufcfgmctb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, System.SysUtils, System.Contnrs, uFuncoes, uPegaBase,
  System.ImageList, DAScript, UniScript;

type
  Tfcfgmctb = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgctbcliindiv: TIntegerField;
    registrocfgctbforindiv: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosencliindiv: TStringField;
    registrosenforindiv: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    tog: TUniQuery;
    togtogcodigo: TIntegerField;
    togtogidentificacao: TStringField;
    toggtocodigo: TIntegerField;
    togtogcampo: TStringField;
    togtogdescricao: TStringField;
    togtogtabela: TStringField;
    toggtoidentificacao: TStringField;
    cfgmctb: TUniQuery;
    Dcfgmctb: TDataSource;
    registroccgcodigo: TIntegerField;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    Label6: TLabel;
    ccgcodigo: TDBEdit;
    registrocfgctbmodo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrocfgctbpcgpagamentos: TIntegerField;
    registrocfgctbpcgrecebimentos: TIntegerField;
    registropcgrecebimentos: TStringField;
    registropcgpagamentos: TStringField;
    Label1: TLabel;
    cfgctbpcgpagamentos: TDBEdit;
    Label12: TLabel;
    cfgctbpcgrecebimentos: TDBEdit;
    cfgcfgcodigo: TIntegerField;
    cfgcfgusaccg: TIntegerField;
    registrocfgctbusaccg: TIntegerField;
    registrosenusaccg: TStringField;
    Label19: TLabel;
    cfgctbusaccg: TDBEdit;
    bcfgctbcpr: TButton;
    bcfgctbvnd: TButton;
    bcfgctbsrv: TButton;
    bcfgctbpgto: TButton;
    bcfgctbrcto: TButton;
    bcfgctbcco: TButton;
    bcfgctbpdr: TButton;
    registrocfgctbclbindiv: TIntegerField;
    registrocfgctbtrnindiv: TIntegerField;
    registrosenclbindiv: TStringField;
    registrosentrnindiv: TStringField;
    UniScript: TUniScript;
    btImplantarContabilizacaoPadrao: TButton;
    registrocfgctbusanucleosgeren: TIntegerField;
    registrosencfgctbusanucleosgeren: TStringField;
    registrocfgctgusaorcamento: TIntegerField;
    registrosencfgctgusaorcamento: TStringField;
    Label2: TLabel;
    ccgmultajuros: TDBEdit;
    registroccgmultajuros: TIntegerField;
    registroccgccgmultajuros: TStringField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bcfgctbcprClick(Sender: TObject);
    procedure bcfgctbvndClick(Sender: TObject);
    procedure bcfgctbsrvClick(Sender: TObject);
    procedure bcfgctbpgtoClick(Sender: TObject);
    procedure bcfgctbrctoClick(Sender: TObject);
    procedure bcfgctbccoClick(Sender: TObject);
    procedure bcfgctbpdrClick(Sender: TObject);
    procedure btImplantarContabilizacaoPadraoClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpCfgCodigo: string;
  end;

var
  fcfgmctb: Tfcfgmctb;

  // Início ID do Módulo fra
const
  vPlIdMd = '03.10.81.001-01';


  // Fim ID do Módulo fra

implementation

uses
  ufcfgctbcpr, ufcfgctbvnd, ufcfgctbsrv, ufcfgctbpgto, ufcfgctbrcto, ufcfgctbcco, ufcfgctbpdr;

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmctb := Tfcfgmctb.Create(pCargaFrame);
  fcfgmctb.ShowModal;
  fcfgmctb.Free;
end;

exports formulario;

procedure Tfcfgmctb.bcfgctbccoClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbcco, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbcprClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbcpr, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbpdrClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbpdr, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbpgtoClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbpgto, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbrctoClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbrcto, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbsrvClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbsrv, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bcfgctbvndClick(Sender: TObject);
begin
  if (registro.State = dsInsert) or (registro.State = dsEdit) then
    registro.Post;

  CriaFormulario(Tfcfgctbvnd, registrocfgcodigo.AsString, '');
end;

procedure Tfcfgmctb.bconfirmaClick(Sender: TObject);
begin

if registro.State=dsbrowse then
registro.Edit;

  registrocfgctbforindiv.AsInteger:=0;
  registrocfgctbcliindiv.AsInteger:=0;
  registrocfgctbclbindiv.AsInteger:=0;
  registrocfgctbtrnindiv.AsInteger:=0;
  registrocfgctgusaorcamento.AsInteger:=0;
  registrocfgctbmodo.AsInteger:=2;
  registrocfgctbusanucleosgeren.AsInteger:=0;
  inherited;

end;

procedure Tfcfgmctb.btImplantarContabilizacaoPadraoClick(Sender: TObject);
begin
  inherited;

  If application.MessageBox(PChar('Confirma a IMPLANTAÇÃO dos eventos padrões?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin
    UniScript.Connection:=ZCone;
    UniScript.Execute;
  end;

end;

procedure Tfcfgmctb.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  vpCfgCodigo := vChaveMestre;

  if vpCfgCodigo <> '' then
    registro.Params[0].AsString := vpCfgCodigo;

  inherited;

end;

procedure Tfcfgmctb.registroAfterInsert(DataSet: TDataSet);
begin
  registrocfgcodigo.AsString := vpCfgCodigo;
  registrocfgctbcliindiv.AsInteger := 0;
end;

end.
