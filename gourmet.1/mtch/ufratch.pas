unit ufratch;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfratch = class(Tfrabase)
    uqtabelatchcodigo: TIntegerField;
    uqtabelactacodigo: TIntegerField;
    uqtabelatchfolhainicial: TIntegerField;
    uqtabelatchfolhafinal: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelatchtotalfolhas: TIntegerField;
    uqtabelacheutilizados: TIntegerField;
    uqtabelatchfolhasdisp: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    FCheChave: Integer;
    procedure SetCheChave(const Value: Integer);
    { Private declarations }
  published
    property CheChave: Integer read FCheChave write SetCheChave;
    function AjustaFiltroBusca(vFiltro: String): String;
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fratch: Tfratch;

  // Início ID do Módulo fratch
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Talonário de Cheque';

  // Fim ID do Módulo fratch

implementation

{$R *.dfm}

uses uftch;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratch := Tfratch.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratch := Tfratch.Create(pCargaFrame);
  try
    fratch.CriaAcoesDeAcesso;
  finally
    fratch.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratch.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[1].AsInteger := Acesso.Usuario;
  inherited;
end;

procedure Tfratch.ActExcluirExecute(Sender: TObject);
begin
  { }
end;

procedure Tfratch.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftch, '', '');
end;

function Tfratch.AjustaFiltroBusca(vFiltro: String): String;
var
  vlFiltro: String;
  vlCheChave, vlErroPos: Integer;
begin
  vlFiltro := Copy(vFiltro, 1, Pos('|', vFiltro) - 1);

  (* Valida o valor encontrado no texto *)
  Val(vlFiltro, vlCheChave, vlErroPos);

  if vlErroPos = 0 then
    CheChave := vlCheChave
  else
    CheChave := -1;

  vlFiltro := Copy(vFiltro, Pos('|', vFiltro) + 1, Length(vFiltro));

  Result := vlFiltro;
end;

procedure Tfratch.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      TxtFiltro := AjustaFiltroBusca(TxtFiltro);

      uqtabela.Filter := Trim(TxtFiltro);
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfratch.SetCheChave(const Value: Integer);
begin
  FCheChave := Value;

  uqtabela.Params[0].AsInteger := FCheChave;
end;

end.
