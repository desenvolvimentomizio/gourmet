unit ulrelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  Tlrelat = class(TForm)
    Button3: TButton;
    Button4: TButton;
    FileListBox1: TFileListBox;
    nome: TEdit;
    bgerador: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure bgeradorClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vnomerelat:string;
  end;

var
  lrelat: Tlrelat;

implementation


{$R *.dfm}

procedure Tlrelat.bgeradorClick(Sender: TObject);
begin
    vnomerelat:='gerador';
    self.ModalResult:=mrok;
end;

procedure Tlrelat.Button3Click(Sender: TObject);
begin
    vnomerelat:=extractfilepath(application.ExeName) + 'relat\' + self.nome.Text;
    self.ModalResult:=mrok;
end;

procedure Tlrelat.Button4Click(Sender: TObject);
begin
   self.ModalResult:=mrcancel;
end;

procedure Tlrelat.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((key=71) or (key=103)) then
  begin
    self.bgerador.Visible:=true;
  end;

end;

end.
