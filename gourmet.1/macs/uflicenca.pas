unit uflicenca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  Tflicenca = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    lbtempo: TLabel;
    lbDias: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vptempo: integer;
    vpDias: integer;
  end;

var
  flicenca: Tflicenca;

implementation

{$R *.dfm}

procedure Tflicenca.FormCreate(Sender: TObject);
begin
  vptempo := 10;
end;

procedure Tflicenca.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
  if vpDias <= 0 then
  begin
    lbDias.Caption := 'L I C E N Ç A'+#13+'E X P I R A D A';

  end
  else
  begin
    lbDias.Caption := Inttostr(vpDias) + ' dias !';
  end;
end;

procedure Tflicenca.Timer1Timer(Sender: TObject);
begin

  if vptempo <= 0 then
  begin
    if vpDias <= 0 then
    begin
      application.Terminate;
    end
    else
    begin
      close;
    end;
  end
  else
  begin

    lbtempo.Caption := 'Aguarde: ' + Inttostr(vptempo) + ' Segundos';
    if vpDias <= 0 then
    begin
       lbDias.Caption := 'L I C E N Ç A'+#13+'E X P I R A D A';
    end
    else
    begin
      lbDias.Caption := Inttostr(vpDias) + ' dias !';
    end;
    application.ProcessMessages;
    vptempo := vptempo - 1;
  end;
end;

end.
