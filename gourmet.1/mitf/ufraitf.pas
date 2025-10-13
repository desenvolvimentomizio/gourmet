unit ufraitf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, ufuncoes, System.ImageList,
  Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraitf = class(Tfrabase)
    uqtabelaitfchave: TIntegerField;
    uqtabelaorcchave: TIntegerField;
    uqtabelafercodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaitfdatasaida: TDateField;
    uqtabelaitfdataretorno: TDateField;
    uqtabelaferidentificacao: TStringField;
    ActRetorno: TAction;
    uqtabelameschave: TIntegerField;
    uqtabelamesregistro: TDateField;
    uqtabelaetdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActRetornoExecute(Sender: TObject);
  private
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string; vtabela:string='';vregistro:string=''): String;
    { Private declarations }
  public
    { Public declarations }
  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string;
    vtdecodigo, vorcchave, vMesChave: String; vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false;vtabela:string='';vregistro:string=''): string;

var
  fraitf: Tfraitf;

  // Início ID do Módulo fraitf
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Situação de Utensílios';

  // Fim ID do Módulo fraitf

implementation

uses
  ufitf;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraitf := Tfraitf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraitf := Tfraitf.Create(pCargaFrame);
  try
    fraitf.CriaAcoesDeAcesso;
  finally
    fraitf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraitf.ActAlterarExecute(Sender: TObject);
begin
  inherited;

  if (self.uqtabelaorcchave.AsString <> '') then
  begin
    CriaFormulario(Tfitf, uqtabelaitfchave.AsString, self.uqtabelaorcchave.AsString);
  end;
end;

procedure Tfraitf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  if vChaveMestre <> '' then
    CriaFormulario(Tfitf, '', vChaveMestre);
end;

function Tfraitf.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string; vtabela:string='';vregistro:string=''): String;
var
  auto: TliberacaoRFI;
  vRetornoUsr: string;
  vLiberacao: String;
  Pack: Cardinal;
begin

  vLiberacao := '';

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vRetornoUsr := auto(Application, self.zcone, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', True);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := '';
      end;
    finally
      DoUnLoadPackage(Application, Pack);
    end;

  Result := vLiberacao;
end;

procedure Tfraitf.ActRetornoExecute(Sender: TObject);
var
  vlAcao: String;
  vlclbcodigo: string;
begin
  inherited;

  If Application.MessageBox(PChar('Confirma a RETORNO deste utensílio ??'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update itf set clbretorno=' + Acesso.Usuario.ToString + ' ,itfdataretorno=' +
      QuotedStr(formatdatetime('yyyy-mm-dd', StrToDate(hoje(Application, zcone)))) + ' where itfchave=' + uqtabelaitfchave.AsString;
    consulta.ExecSQL;
    self.ActAtualizar.Execute;
  end;

end;

end.
