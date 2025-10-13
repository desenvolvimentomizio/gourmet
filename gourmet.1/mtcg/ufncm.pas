unit ufncm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni,ufuncoes;

type
  Tfncm = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    ncm: TUniQuery;
    EdBarra: TEdit;
    Label1: TLabel;
    mmpronome: TMemo;
    Label2: TLabel;
    EdNCM: TEdit;
    Label3: TLabel;
    procedure EdBarraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fncm: Tfncm;

implementation

{$R *.dfm}

procedure Tfncm.EdBarraKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  edbarra.Text:=trim(sonumeros(edbarra.Text));
  edbarra.Text:=formatfloat('00000000000000',strtofloat( edbarra.Text));
  ncm.Close;
  ncm.ParamByName('proncm').AsString:=edbarra.Text;
  ncm.Open;

  if not ncm.IsEmpty then
  begin
    mmpronome.Lines.Text:=ncm.FieldByName('pronome').AsString;
    EdNCM.Text:=ncm.FieldByName('proncm').AsString;
  end
  else
  begin
    ShowMessage('Código de barra não localizada!');
    mmpronome.Lines.Text:='';
    EdNCM.Text:='';

  end;


 end;

end;

end.
