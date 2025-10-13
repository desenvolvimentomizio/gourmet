unit ufrarcr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uFuncoes, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfrarcr = class(Tfrabase)
    PlDetalhe: TPanel;
    GbGeral: TGroupBox;
    pltotalGeral: TPanel;
    GBBaixados: TGroupBox;
    plbaixados: TPanel;
    GBDisponivel: TGroupBox;
    pldisponivel: TPanel;
    ActTransferir: TAction;
    ActCancelar: TAction;
    mce: TUniQuery;
    Dmce: TDataSource;
    DBGListaMce: TDBGrid;
    procedure DBGListaMceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    vpTncCodigo: string;

    function RegistroAcessoOperacao(vactcodigo, vMotivo: string): Boolean;

  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string;
    vtdecodigo, vorcchave, vmeschave: String; vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;

var
  frarcr: Tfrarcr;

implementation

{$R *.dfm}

function Tfrarcr.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string): Boolean;
var
  auto: TliberacaoRFI;
  vRetornoUsr: string;
  vLiberacao: Boolean;
  Pack: Cardinal;
begin

  vLiberacao := True;

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vRetornoUsr := auto(Application, Self.zcone, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', True);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := false;
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

procedure Tfrarcr.DBGListaMceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);

end;

end.
