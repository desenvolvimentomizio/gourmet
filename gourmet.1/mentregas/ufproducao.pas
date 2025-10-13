unit ufproducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DBAccess, Uni, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, MemDS;

type
  Tfproducao = class(TForm)
    imp: TUniQuery;
    imporcchave: TIntegerField;
    impimpchave: TIntegerField;
    impclbidentificacao: TStringField;
    impimpinicio: TDateTimeField;
    impimpfinal: TDateTimeField;
    imppronome: TStringField;
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    dsimp: TUniDataSource;
    DBGridLista: TDBGrid;
    btTrocarColaborador: TBitBtn;
    btIncluirColaborador: TBitBtn;
    btExcluirColaborador: TBitBtn;
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpOrcchave:string;
  end;

var
  fproducao: Tfproducao;

implementation

uses
  uFprinciEntregas;

{$R *.dfm}

procedure Tfproducao.bfecharClick(Sender: TObject);
begin
  close;
end;

end.
