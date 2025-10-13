unit ufccotransfdev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufccotransfche, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfccotransfdev = class(Tfccotransfche)
    procedure ctacodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccotransfdev: Tfccotransfdev;

implementation

{$R *.dfm}

procedure Tfccotransfdev.ctacodigoExit(Sender: TObject);
begin
  inherited;
   self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre+' and tctcodigo=1';
    cta.Filter := Self.txtFiltro;
  cta.Filtered := True;
  ValidaSaida(sender);
end;

end.
