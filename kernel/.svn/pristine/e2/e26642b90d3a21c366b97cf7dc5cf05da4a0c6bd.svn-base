unit ulmfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframfi, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils, Uni, uPegaBase;

type
  Tlmfi = class(Tlfrmbase)
    framfi: Tframfi;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmfi: Tlmfi;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmfi := Tlmfi.Create(pCargaFrame);
  try
    lmfi.ShowModal;
    Result := lmfi.framfi.vretorno;
  finally
    lmfi.Free;
  end;
end;

function formuver(pCargaFrame: TCargaFrame; Acesso: Tacesso; vrfichave: string): string;
begin

  pCargaFrame.Titulo := vPlTitMdl;
  lmfi := Tlmfi.Create(pCargaFrame);
  try
    lmfi.framfi.uqtabela.FilterSQL := 'rfi.rfichave=' + vrfichave;
    lmfi.framfi.ActAtualizar.Execute;
    lmfi.framfi.CarregarColunas(lmfi.framfi.DBGTitulos);
    lmfi.Caption := 'Detalhe';
    lmfi.framfi.PlTitulo.Caption := lmfi.Caption;
    lmfi.pbotoes.visible := false;
    lmfi.framfi.plEstornar.visible := false;

    lmfi.ActiveControl := lmfi.framfi.DBGTitulos;

    lmfi.ShowModal;
    Result := lmfi.framfi.vretorno;
  finally
    lmfi.Free;
  end;
end;

function formuest(pCargaFrame: TCargaFrame; Acesso: Tacesso;vrfichave: string): string;
begin

  pCargaFrame.Titulo := vPlTitMdl;
  lmfi := Tlmfi.Create(pCargaFrame);
  try
    lmfi.framfi.uqtabela.FilterSQL := 'rfi.rfichave=' + vrfichave;
    lmfi.framfi.ActAtualizar.Execute;

    lmfi.framfi.CarregarColunas(lmfi.framfi.DBGTitulos);
    lmfi.Caption := 'Estorno';
    lmfi.framfi.PlTitulo.Caption := lmfi.Caption;
    lmfi.pbotoes.visible := false;
    lmfi.framfi.plEstornar.visible := true;

    lmfi.ActiveControl := lmfi.framfi.DBGTitulos;

    lmfi.ShowModal;
    Result := lmfi.framfi.vretorno;
  finally
    lmfi.Free;
  end;
end;

Exports formu, formuver, formuest;

procedure Tlmfi.FormShow(Sender: TObject);
begin
  inherited;
  if lmfi.Caption = 'Estorno' then
  begin
    self.pbotoes.visible := false;
  end
  else
  begin
    lmfi.framfi.ccm.Open;
    lmfi.framfi.ccm.Append;
  end;

end;

end.
