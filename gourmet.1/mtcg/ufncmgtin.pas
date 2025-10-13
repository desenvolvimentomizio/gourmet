unit ufncmgtin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni,ufuncoes;

type
  Tfncmgtin = class(TForm)
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
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fncmgtin: Tfncmgtin;

implementation

{$R *.dfm}

procedure Tfncmgtin.bcancelaClick(Sender: TObject);
begin
modalresult:=mrcancel;
end;

procedure Tfncmgtin.bconfirmaClick(Sender: TObject);
begin
modalresult:=mrok;
end;

procedure Tfncmgtin.EdBarraKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin

 key:=#0;
  edbarra.Text:=trim(sonumeros(edbarra.Text));
  edbarra.Text:=formatfloat('00000000000000',strtofloat( edbarra.Text));
  ncm.Close;
  ncm.SQL.Text:='select punbarra, proncm, pronome from ncm where punbarra='+QuotedStr(edbarra.Text);
  ncm.Open;

  if not ncm.IsEmpty then
  begin
    mmpronome.Lines.Text:=ncm.FieldByName('pronome').AsString;
    EdNCM.Text:=ncm.FieldByName('proncm').AsString;
    bconfirma.SetFocus;
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
