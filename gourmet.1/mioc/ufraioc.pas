unit ufraioc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  Tfraioc = class(Tfrabase)
    uqtabelaiocchave: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaiocpercentual: TFloatField;
    uqtabelaitochave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraioc: Tfraioc;

const
  vPlIdMd = '';
  vPlTitMdl = 'Registro de Comissão';

implementation

uses
  ufioc;

{$R *.dfm}

procedure Tfraioc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfioc, self.uqtabelaiocchave.AsString, vChaveMestre);
end;

procedure Tfraioc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfioc, '', vChaveMestre);
end;

end.
