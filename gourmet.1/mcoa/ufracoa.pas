unit ufracoa;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,     Vcl.Menus,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  Tfracoa = class(Tfrabase)
    uqtabelacoacodigo: TIntegerField;
    uqtabeladtbcodigo: TIntegerField;
    uqtabeladcpcodigo: TIntegerField;
    uqtabelacoadata: TDateField;
    uqtabelaclbcodigo: TIntegerField;
  private
  public
    { Public declarations }
  end;

var
  fracoa: Tfracoa;

  // In�cio ID do M�dulo fracoa
const
  vPlIdMd = '03.09.80.002-01';
  vPlTitMdl = 'Controle Altera��o de Campos';

  // Fim ID do M�dulo fracoa

implementation

{$R *.dfm}

end.
