unit ufSabores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfSabores = class(TForm)
    plRodaPe: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    DBGSbr: TDBGrid;
    pltopo: TPanel;
    Panel1: TPanel;
    edPesquisar: TEdit;
    procedure edPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSabores: TfSabores;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure TfSabores.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if edPesquisar.Text<>'' then
  begin
   self.DBGSbr.DataSource.DataSet.Locate('pronome',edPesquisar.Text,[loCaseInsensitive, loPartialKey]);


  end;

end;

procedure TfSabores.edPesquisarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

      if (Key = 13) then
      begin
        key:=0;
        BtnConfirmar.Click;
      end;

      if (Key = 38) then
      begin
        key:=0;
        if DBGSbr.visible then
        begin
          self.DBGSbr.SetFocus;
        end;
        self.DBGSbr.DataSource.DataSet.Prior;
        exit;
      end;

      if (Key = 40) or (Key = 39) then
      begin
        if DBGSbr.visible then
        begin
          try
            self.DBGSbr.SetFocus;
          except

          end;
        end;
        self.DBGSbr.DataSource.DataSet.Next;
        exit;
      end;


end;

end.
