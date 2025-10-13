unit ufpde;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfpde = class(Tfrmbase)
    registropdecodigo: TIntegerField;
    registropdeidentificacao: TStringField;
    Label1: TLabel;
    pdecodigo: TDBEdit;
    Label2: TLabel;
    pdeidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpde: Tfpde;

  // Início ID do Módulo frapde
const
  vPlIdMd = '01.01.05.015-02';

  // Fim ID do Módulo frapde

implementation

{$R *.dfm}

procedure Tfpde.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT pde.pdecodigo FROM pde ';
  consulta.SQL.Add('WHERE pde.pdeidentificacao = ''' + registropdeidentificacao.AsString + ''' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND pde.pdecodigo <> ' + registropdecodigo.AsString);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Esta Prédio já está cadastrado!!' + #13 + #13 + 'Código: ' + consulta.FieldByName('pdecodigo').AsString),
      'Duplicidade de Prédio', MB_ICONWARNING + MB_OK);
end;

procedure Tfpde.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
