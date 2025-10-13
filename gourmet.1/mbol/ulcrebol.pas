unit ulcrebol;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufracrebol, Uni, ufuncoes, uPegaBase;

type
  Tlcrebol = class(Tlfrmbase)
    fracrebol: Tfracrebol;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcrebol: Tlcrebol;

implementation

{$R *.dfm}

function BuscaParcelas(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; Acesso: TAcesso; vGebCodigo: Integer;
  Finalidade: TRotinasBoletos): String;
var
  lfram: Tfracrebol;
begin
  lcrebol := Tlcrebol.Create(AOwner);
  try
    lfram := lcrebol.fracrebol as Tfracrebol;
    lfram.IdModulo := vPlIdMd;
    lfram.titulo := vPlTitMdl;
    lfram.Acesso := Acesso;

    lfram.zcone := conexao;
    lfram.Acesso.Usuario := StrToInt(vUsuario);
    lfram.GebCodigo := vGebCodigo;
    lfram.Finalidade := Finalidade;

    lfram.edbusca.Tag := 1;

    lfram.carregar;

    lcrebol.ShowModal;
  finally
    FreeAndNil(lcrebol);
  end;
end;

function BuscaBoletosRemessa(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; Acesso: TAcesso; vRmbCodigo, vCarCodigo: Integer;
  Finalidade: TRotinasBoletos): String;
var
  lfram: Tfracrebol;
begin
  lcrebol := Tlcrebol.Create(AOwner);
  try
    lfram := lcrebol.fracrebol as Tfracrebol;
    lfram.IdModulo := vPlIdMd;
    lfram.titulo := vPlTitMdl;
    lfram.Acesso := Acesso;
    lfram.zcone := conexao;
    lfram.Acesso.Usuario := StrToInt(vUsuario);
    lfram.Carteira := vCarCodigo;
    lfram.RmbCodigo := vRmbCodigo;
    lfram.Finalidade := Finalidade;

    lfram.edbusca.Tag := 1;

    lfram.carregar;

    lcrebol.ShowModal;
  finally
    FreeAndNil(lcrebol);
  end;
end;
exports BuscaParcelas, BuscaBoletosRemessa;

procedure Tlcrebol.bconfirmaClick(Sender: TObject);
begin
  if fracrebol.zcone.TransactionCount > 0 then
    try
      if fracrebol.ZCone.TransactionCount > 0 then
      if fracrebol.ZCone.Transactions[0].Active then
      fracrebol.zcone.Commit;
    except
      fracrebol.zcone.Rollback;
      Exit;
    end;

  inherited;
end;

procedure Tlcrebol.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;

  if CanClose then
    if fracrebol.zcone.Transactions[0].Active then
      fracrebol.zcone.Rollback;
end;

end.
