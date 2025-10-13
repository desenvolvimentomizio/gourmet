unit ufccotransfdep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufccotransfche, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfccotransfdep = class(Tfccotransfche)
    procedure ctacodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ctacodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccotransfdep: Tfccotransfdep;

implementation

{$R *.dfm}

procedure Tfccotransfdep.ctacodigoEnter(Sender: TObject);
begin
 { inherited;}
    self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre+' and tctcodigo=2';

end;

procedure Tfccotransfdep.ctacodigoExit(Sender: TObject);
begin
 { inherited;}
  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=2';
  cta.Filter := self.txtFiltro;
  cta.Filtered := True;
  ValidaSaida(Sender);


end;

procedure Tfccotransfdep.FormShow(Sender: TObject);
begin
  inherited;
  ctacodigo.SetFocus;
end;

end.
