unit ufuni;

interface

uses
  Winapi.Windows, System.SysUtils, uni, Vcl.Graphics, Vcl.Dialogs, Vcl.Menus,
  Vcl.ImgList, Vcl.Controls, System.Classes, Vcl.ActnList,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Forms,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Winapi.Messages, amSplitter, ufrmbase,
  MemDS, DBAccess, Data.DB, Vcl.DBCtrls,
  ufuncoes, PngImageList, System.Actions, System.ImageList;

type
  Tfuni = class(Tfrmbase)
    registrounicodigo: TIntegerField;
    registrounisimbolo: TStringField;
    registrouninome: TStringField;
    Label1: TLabel;
    unicodigo: TDBEdit;
    unisimbolo: TDBEdit;
    uninome: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    registrotuncodigo: TIntegerField;
    procedure unisimboloExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  funi: Tfuni;

  // Início ID do Módulo frauni
const
  vPlIdMd = '01.01.05.003-02';

  // Fim ID do Módulo frauni

implementation

{$R *.dfm}

procedure Tfuni.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfuni.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotuncodigo.AsInteger := tunSaida;
end;

procedure Tfuni.unisimboloExit(Sender: TObject);
begin
  inherited;

  Self.ValidaSaida(Sender);

  Self.consulta.Close;
  Self.consulta.SQL.Text := 'SELECT unicodigo FROM uni WHERE ';
  Self.consulta.SQL.Add('tuncodigo = 0 AND '); // Filtra tipo de unidade apenas por Compra
  Self.consulta.SQL.Add('unisimbolo = ''' + Self.unisimbolo.Field.AsString + ''' ');
  Self.consulta.Open;

  if consulta.RecordCount = 1 then
  begin
    If Application.MessageBox(PChar('Esta unidade já é uma unidade de compra! '#13 + #13 + 'Deseja cadastra-la como unidade de venda ?'), 'Atenção',
      MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin

      registro.Cancel;

      registro.Close;
      registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
      registro.Open;
      registro.Edit;

      registrotuncodigo.AsInteger := 9;

      Self.psituacao.Caption := 'Alterando';
    End;
  end;
end;

end.
