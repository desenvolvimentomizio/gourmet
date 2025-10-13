unit ufraenp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraenp = class(Tfrabase)
    uqtabelaenpcodigo: TIntegerField;
    uqtabelaenpendereco: TStringField;
    ActMoverItens: TAction;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmenpnivel1: TStringField;
    cfgcfgmenpnivel2: TStringField;
    cfgcfgmenpnivel3: TStringField;
    cfgcfgmenpnivel4: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActMoverItensExecute(Sender: TObject);
    procedure ActConfigExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraenp: Tfraenp;

  // Início ID do Módulo fraenp
const
  vPlIdMd = '01.01.05.018-01';
  vPlTitMdl = 'Endereçamento de Produtos';

  // Fim ID do Módulo fraenp

implementation

uses
  ufenp, ufenpMoveItens, ufcfgmenp;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraenp := Tfraenp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraenp := Tfraenp.Create(pCargaFrame);
  try
    fraenp.CriaAcoesDeAcesso;
  finally
    fraenp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraenp.ActAlterarExecute(Sender: TObject);
begin
  if uqtabelaenpcodigo.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Registro padrão do sistema, não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfenp, self.uqtabelaenpcodigo.AsString, '');
end;

procedure Tfraenp.ActConfigExecute(Sender: TObject);
begin

  inherited;
    cfg.Close;
    cfg.Params[0].AsInteger:=acesso.Filial;
    cfg.open;
  CriaFormulario(Tfcfgmenp, Self.cfgcfgcodigo.asstring, '');
end;

procedure Tfraenp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfenp, '', '');
end;

procedure Tfraenp.ActMoverItensExecute(Sender: TObject);
begin
  CriaFormulario(TfenpMoveItens, self.uqtabelaenpcodigo.AsString, '');
end;

end.
