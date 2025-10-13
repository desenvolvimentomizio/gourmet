unit ufModalidadeNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.NumberBox, Vcl.ComCtrls;

type
  TfModalidadeNFCe = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    paginas: TPageControl;
    Principal: TTabSheet;
    Label1: TLabel;
    nbValoreRecebido: TNumberBox;
    cbTipoModalidade: TComboBox;
    Label2: TLabel;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fModalidadeNFCe: TfModalidadeNFCe;

implementation

{$R *.dfm}

procedure TfModalidadeNFCe.bcancelaClick(Sender: TObject);
begin
modalresult:=mrCancel;
end;

procedure TfModalidadeNFCe.bconfirmaClick(Sender: TObject);
begin
  modalresult:=mrok;
end;

end.
