unit ufradtb;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons;

type
  Tfradtb = class(Tfrabase)
    uqtabeladtbcodigo: TIntegerField;
    uqtabeladtbtabela: TStringField;
    uqtabeladtbdescricao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fradtb: Tfradtb;

const
vplidmd='03.09.80.004-02';
vPlTitMdl = 'Descrição da Tabela';
implementation

{$R *.dfm}

uses ufdtb;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fradtb := Tfradtb.Create(AOwner);
    fradtb.Visible := False;
    fradtb.titulo := 'Descrição da Tabela';
    fradtb.Parent := tab;
    fradtb.VTabParent := tab;

    fradtb.Align := alclient;
    fradtb.modulo := vmodulo;
    fradtb.zcone := conexao;
    fradtb.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fradtb.edbusca.Tag := 1;
      fradtb.PlFiltros.Visible := True;
    end;

    fradtb.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fradtb := Tfradtb.Create(AOwner);
    fradtb.defineacesso(AOwner,fradtb,conexao,'Descrição da Tabela');
   finally
     freeandnil(fradtb);
   end;
end;

exports formuFrame,defineacesso;

procedure Tfradtb.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfdtb, fdtb, self.UQTabeladtbcodigo.AsString, '');
end;

procedure Tfradtb.ActIncluirExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfdtb, fdtb, '', '');
end;

end.
