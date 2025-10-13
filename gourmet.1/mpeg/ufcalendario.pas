unit ufcalendario;

interface

uses
  Vcl.Forms, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  System.Classes, Vcl.Controls, System.SysUtils;

type
  Tfcalendario = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    calendario: TMonthCalendar;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure calendarioDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vdata: tdate;
  end;

var
  fcalendario: Tfcalendario;

implementation

{$R *.dfm}

procedure Tfcalendario.bcancelaClick(Sender: TObject);
begin
  self.ModalResult := mrcancel;

end;

procedure Tfcalendario.bconfirmaClick(Sender: TObject);
begin
  vdata := self.calendario.Date;
  self.ModalResult := mrok;
end;

procedure Tfcalendario.calendarioDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

procedure Tfcalendario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    bconfirma.Click;
  end;
end;

procedure Tfcalendario.FormShow(Sender: TObject);
begin
  if (datetostr(vdata) <> '') and (datetostr(vdata) <> '30/12/1899') then
    calendario.Date := vdata
  else
    calendario.Date := Date;

end;

end.
