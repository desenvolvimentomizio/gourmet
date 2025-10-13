unit ufradog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfradog = class(Tfrabase)
    uqtabeladogchave: TIntegerField;
    uqtabelaogechave: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabeladogprevisao: TFloatField;
    uqtabeladogrealizado: TFloatField;
    uqtabelapcgidentificacao: TStringField;
    uqtabeladogpercentual: TFloatField;
    uqtabeladogsaldo: TFloatField;
    uqtabeladogmes: TIntegerField;
    uqtabeladogano: TIntegerField;
    DBGridMeses: TDBGrid;
    meses: TUniQuery;
    mesesmescodigo: TIntegerField;
    mesesmesidentificacao: TStringField;
    Dmeses: TDataSource;
    uqtabelapcgestrutural: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DmesesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fradog: Tfradog;


      // Início ID do Módulo fraoge
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Detalhes de Orçamentos Gerenciais';

  // Fim ID do Módulo fraoge

implementation

uses
  ufdog;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradog := Tfradog.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradog := Tfradog.Create(pCargaFrame);
  try
    fradog.CriaAcoesDeAcesso;
  finally
    fradog.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfradog.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfdog,  self.uqtabeladogchave.AsString,vchavemestre);
end;

procedure Tfradog.ActAtualizarExecute(Sender: TObject);
begin
  meses.Connection:=ZCone;
  meses.Open;
  inherited;


end;

procedure Tfradog.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfdog,  '',vchavemestre);
end;

procedure Tfradog.DmesesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  uqtabela.FilterSQL:='dogmes='+mesesmescodigo.AsString;
end;

end.
