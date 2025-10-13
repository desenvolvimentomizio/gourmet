unit UntListaCaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmListaCaixas = class(TForm)
    Panel4: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaCaixas: TFrmListaCaixas;

implementation

uses
  UntDmDados, UntPrincipal;

{$R *.dfm}

procedure TFrmListaCaixas.BtnConfirmarClick(Sender: TObject);
begin
  fprincigou.vpReimprimeCcxChave := dmdados.ccxccxchave.AsString;
  modalresult := mrok;
end;

procedure TFrmListaCaixas.Button2Click(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure TFrmListaCaixas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

end.
