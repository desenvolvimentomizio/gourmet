unit ufraprf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraprf = class(Tfrabase)
    uqtabelafapcodigo: TIntegerField;
    uqtabelafabcodigo: TIntegerField;
    uqtabelafabidentificacao: TStringField;
    uqtabelafapproprio: TStringField;
    uqtabelaprocodigo: TIntegerField;
    ActRemoveRefe: TAction;
    ActIncluirRefe: TAction;
    procedure ActRemoveRefeExecute(Sender: TObject);
    procedure ActIncluirRefeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraprf: Tfraprf;

  // Início ID do Módulo frapun
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Referências de Fabricantes';

  // Fim ID do Módulo frapun

implementation

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraprf := Tfraprf.Create(pCargaFrame);
  Result := fraprf;
end;

exports execute;

procedure Tfraprf.ActIncluirRefeExecute(Sender: TObject);
begin
  MostraFormu('mfap', '', vChaveMestre);
  ActAtualizar.execute;
end;

procedure Tfraprf.ActRemoveRefeExecute(Sender: TObject);
begin
  inherited;

  if uqtabela.IsEmpty then
    Exit;

  if Application.MessageBox(PChar('Deseja realmente remover essa referência?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO then
    Exit;

  consulta.Close;
  consulta.SQL.Text := 'DELETE FROM prf ';
  consulta.SQL.Add('WHERE procodigo = ' + uqtabelaprocodigo.AsString + ' ');
  consulta.SQL.Add('AND fapcodigo = ' + uqtabelafapcodigo.AsString);
  consulta.ExecSQL;

  ActAtualizar.execute;
end;

procedure Tfraprf.Carregar;
begin
  uqtabela.Filter := 'procodigo=' + vChaveMestre;
  uqtabela.Filtered := True;

  inherited;

end;

end.
