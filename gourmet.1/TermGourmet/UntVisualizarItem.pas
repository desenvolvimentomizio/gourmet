unit UntVisualizarItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmVisualizaItem = class(TForm)
    Panel25: TPanel;
    Panel26: TPanel;
    Button8: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    MemPro: TRichEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVisualizaItem: TFrmVisualizaItem;

implementation

{$R *.dfm}

procedure TFrmVisualizaItem.Button8Click(Sender: TObject);
begin
  Close;
end;

end.
