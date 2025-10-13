unit ufraproime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfraproime = class(Tfrabase)
    uqtabelaprocodigo: TIntegerField;
    uqtabelaproncm: TStringField;
    uqtabelapronome: TStringField;
    uqtabelaprosaldo: TFloatField;
    uqtabelaprosaldodisp: TFloatField;
    uqtabelagrpcodigo: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelamaridentificacao: TStringField;
    uqtabelaicmaliquotas: TStringField;
    uqtabelaproreferencia: TStringField;
    uqtabelaproobs: TStringField;
    uqtabelaunisimbolo: TStringField;
    uqtabelapunprecoav: TFloatField;
    uqtabelapunprecoap: TFloatField;
    uqtabelasipcodigo: TIntegerField;
    uqtabelatpocodigo: TIntegerField;
    uqtabelatpoidentificacao: TStringField;
    uqtabelaenpcodigo: TIntegerField;
    uqtabelaenpendereco: TStringField;
    uqtabelacpbcodbalanca: TIntegerField;
    uqtabelagracodigo: TIntegerField;
    uqtabeladpridentificacao: TStringField;
    uqtabelaproconsolidado: TIntegerField;
    uqtabelapunpercav: TFloatField;
    uqtabelapunpercap: TFloatField;
    uqtabelapuncusto: TFloatField;
    uqtabelacstcodigo: TStringField;
    uqtabelaprocest: TStringField;
    uqtabelaimecodigo: TStringField;
    uqtabelaprobalanca: TStringField;
    uqtabelaimudtrev: TDateField;
    uqtabelaimudtultcons: TDateField;
    uqtabelapronatrecisenta: TIntegerField;
    uqtabelaproabc: TStringField;
    uqtabelapromargemcontrib: TFloatField;
    uqtabelaproproducao: TIntegerField;
    uqtabelaicmaliquotasfora: TFloatField;
    uqtabelacfocfop: TStringField;
    uqtabelacfocfopfora: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraproime: Tfraproime;
const
  vPlIdMd = '01.01.05.001-01';
  vPlTitMdl = 'Produtos para Saneamento - IMENDES';

implementation

{$R *.dfm}

end.
