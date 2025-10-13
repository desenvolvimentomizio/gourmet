unit ufracsv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, sysutils,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, uFuncoes, Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfracsv = class(Tfrabase)
    uqtabelacsvchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelatcsidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelacsvnumero: TStringField;
    uqtabelacsvemissao: TDateField;
    uqtabelacsvregistro: TDateField;
    uqtabelacsvgeral: TFloatField;
    uqtabelarfichave: TIntegerField;
    uqtabelacsvvencimento: TDateField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string;
    vtdecodigo, vorcchave, vmeschave: String; vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;

var
  fracsv: Tfracsv;

  // Início ID do Módulo fracsv
const
  vPlIdMd = '03.08.18.001-01';
  vPlTitMdl = 'Contas de Consumo';

  // Fim ID do Módulo fracsv

implementation

{$R *.dfm}

uses ufcsv;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracsv := Tfracsv.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracsv := Tfracsv.Create(pCargaFrame);
  try
    fracsv.CriaAcoesDeAcesso;
  finally
    fracsv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracsv.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(tfcsv, self.uqtabelacsvchave.AsString, '');
end;

procedure Tfracsv.ActExcluirExecute(Sender: TObject);
var
  vrfichave: string;
  vlAcao: string;
begin
  vlAcao := IntToStr((Sender as TAction).Tag);

  if RegistroAcessoOperacao(vlAcao, 'Registro') then
  begin

    vrfichave := uqtabelarfichave.AsString;

    if vrfichave <> '' then
    begin
      { * Verifica se registro financeiro ainda esta Em Aberto * }
      consulta.Close;
      consulta.SQL.Text := 'select srfcoaigo from rfi where rfichave=' + vrfichave;
      consulta.Open;
      if consulta.Fields[0].AsInteger <> srfEmAberto then
      begin
        ShowMessage('Esta fatura já foi quitada, total o parcialmente.' + #13 + 'Não pode ser excluida!');
        exit;
      end;

      { cancelamento do registro financeiro }

      consulta.Close;
      consulta.SQL.Text := 'UPDATE rfi r SET r.srfcodigo = ' + IntToStr(srfCancelado) + ' WHERE r.rfichave = ' + vrfichave;
      consulta.ExecSQL;

    end;

    inherited;
  end
  else
  begin
    ShowMessage('Usuário não autorizado!');
  end;
end;

function Tfracsv.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string): Boolean;
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
        vRetornoUsr := auto(Application, self.zcone, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', True);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := false;
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

procedure Tfracsv.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(tfcsv, '', '');
end;

end.
