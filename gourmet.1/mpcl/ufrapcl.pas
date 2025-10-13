unit ufrapcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfrapcl = class(Tfrabase)
    uqtabelapclchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelacctchave: TIntegerField;
    uqtabelapcldatainicial: TDateField;
    uqtabelapcldatafinal: TDateField;
    uqtabelapclpercentual: TFloatField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdapelido: TStringField;
    uqtabelacctidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapcl: Tfrapcl;
  // Início ID do Módulo frapcl
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Participações de Colaboradores';

  // Fim ID do Módulo frapcl


implementation

uses
  ufpcl;

{$R *.dfm}

procedure Tfrapcl.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfpcl, uqtabelapclchave.AsString, vChaveMestre);
end;

procedure Tfrapcl.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfpcl, '', vChaveMestre);
end;

end.
