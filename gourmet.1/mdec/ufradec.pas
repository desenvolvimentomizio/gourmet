unit ufradec;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,     Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  Tfradec = class(Tfrabase)
    uqtabeladeccodigo: TIntegerField;
    uqtabeladecidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  fradec: Tfradec;

  // Início ID do Módulo fradec
const
  vPlIdMd = '03.06.80.004-01';
  vPlTitMdl = 'Naturezas';

  // Fim ID do Módulo fradec

implementation

{$R *.dfm}

end.
