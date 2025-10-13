unit ufecb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uPegaBase, System.ImageList,ufuncoes;

type
  Tfraecb = class(Tfrmbase)
    registrocfgcaminhotoledo: TStringField;
    registrocfgcaminhofilizola: TStringField;
    registrocfgcaminhoramuza: TStringField;
    lcfgcaminhotoledo: TLabel;
    cfgcaminhotoledo: TDBEdit;
    lcfgcaminhofilizola: TLabel;
    cfgcaminhofilizola: TDBEdit;
    lcfgcaminhoramuza: TLabel;
    cfgcaminhoramuza: TDBEdit;
    ActConfirma: TAction;
    registrocfgsetorbalanca: TStringField;
    cfgsetorbalanca: TDBEdit;
    Label33: TLabel;
    pro: TUniQuery;
    mostra: TProgressBar;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ChamaCargaFilizola(modulo, funcao, vSql, vPro, vSet, vnomesetor: string);
    procedure ChamaCargaToledo(modulo, funcao, vSql, vPro, vTcl: string);
    { Private declarations }
  public
    { Public declarations }
  end;

  TCargaToledo = function(AOwner: TComponent; conexao: TUniConnection; vSql: string; vArqPro: string; vArqTcl: string): string;

  TCargaFilizola = function(AOwner: TComponent; conexao: TUniConnection; vSql: string; vArqPro: string; vArqSet: string; vnomesetor: string): string;

var
  fraecb: Tfraecb;

  // Início ID do Módulo frmecb
const
  vPlIdMd = '03.06.81.002-01';
  vPlTitMdl = 'Carga de Balanças';

  // Fim ID do Módulo frmecb

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraecb := Tfraecb.Create(pCargaFrame);
  try
    fraecb.ShowModal;
  finally
    fraecb.Free;
  end;
end;

exports formu;

procedure Tfraecb.bconfirmaClick(Sender: TObject);
var
  vSql: string;
  vprodutosFilizola: string;
  vsetores: string;
  vnomesetor: string;

  vprodutosToledo: string;
  vsetoresToledo: string;

  arqbp:TStringList;
  vllinhabp:string;
begin

  vprodutosToledo := 'txitens.txt';
  vsetoresToledo := 'txsetores.txt';



  // 0 vai para balanca, 1 simbolo unidade, 2 nome produto, 3 preco de venda, 4 validade, 5 codigo produto, 6 tecla de atalho

  { inherited; }

  vSql := 'SELECT pro.probalanca, uni.unisimbolo, pro.pronomereduzido, pun.punprecoav, ' +
    'pro.provalidade, if ((SELECT cpbcodbalanca FROM cpb b where b.procodigo=pro.procodigo limit 1 )<>0,(SELECT cpbcodbalanca FROM cpb b where b.procodigo=pro.procodigo limit 1),pro.procodigo  ) as    procodigo, pro.protecla FROM pro '
    + 'INNER JOIN uni ON pro.unicodigo = uni.unicodigo ' + 'INNER JOIN pun ON pun.procodigo = pro.procodigo AND pun.unicodigo = uni.unicodigo ' +
    'where probalanca=' + chr(39) + '1' + chr(39);

  if self.cfgcaminhofilizola.Field.AsString <> '' then
  begin
    if DirectoryExists(self.cfgcaminhofilizola.Field.AsString) then
    begin
      vprodutosFilizola := self.cfgcaminhofilizola.Field.AsString + 'cadtxt.txt';
      vsetores := self.cfgcaminhofilizola.Field.AsString + 'setortxt.txt';
      vnomesetor := self.cfgsetorbalanca.Field.AsString;

      ChamaCargaFilizola('mcbt', 'CargaFilizola', vSql, vprodutosFilizola, vsetores, vnomesetor);
    end;
  end;

  if self.cfgcaminhotoledo.Field.AsString <> '' then
  begin
    if DirectoryExists(self.cfgcaminhotoledo.Field.AsString) then
    begin
      vprodutosToledo := self.cfgcaminhotoledo.Field.AsString + vprodutosToledo;
      vsetoresToledo := self.cfgcaminhotoledo.Field.AsString + vsetoresToledo;

      ChamaCargaToledo('mcbt', 'CargaToledo', vSql, vprodutosToledo, vsetoresToledo);
    end;
  end;

  if self.cfgcaminhoramuza.Field.AsString <> '' then
  begin
    if DirectoryExists(self.cfgcaminhoramuza.Field.AsString) then
    begin
      vprodutosFilizola := self.cfgcaminhoramuza.Field.AsString + 'produtos.txt';
      vsetores := self.cfgcaminhoramuza.Field.AsString + 'setores.txt';
      vnomesetor := self.cfgsetorbalanca.Field.AsString;

      ChamaCargaFilizola('mcbt', 'CargaFilizola', vSql, vprodutosFilizola, vsetores, vnomesetor);
    end;
  end;


    arqbp:=TStringList.Create;
 // Carga para Busca Preço

  pro.close;
  pro.SQL.Clear;
  pro.SQL.Add('select pro.procodigo, punbarra, pro.pronomereduzido, unisimbolo, punprecoav '+
       'from pro, pun, uni where pro.procodigo=pun.procodigo  and  uni.unicodigo=pun.unicodigo       order by pro.procodigo ');

  pro.Open;
  pro.First;
  While Not pro.eof Do
  Begin
    // 7896054900167|SUCO DE LIMÃO|0,50|

    vllinhabp := formatfloat('0000000000000', strtofloat(copy(pro.FieldByName('punbarra').AsString, 2, 13)));
    vllinhabp := vllinhabp + '|';
    vllinhabp := vllinhabp + trim(semacento(format('%-30s', [copy(pro.FieldByName('pronomereduzido').AsString, 1, 30)])));
    vllinhabp := vllinhabp + '|';
    vllinhabp := vllinhabp + trim(format('%10.2f', [pro.FieldByName('punprecoav').AsFloat]));
    vllinhabp := vllinhabp + '|';

    arqbp.Add(vllinhabp);
    pro.Next;
  End;

  Try
    CreateDir(pchar(extractfilepath(application.ExeName) + 'buscapreco'));
  Except
  End;

  arqbp.SaveToFile(extractfilepath(application.ExeName) + 'buscapreco\TBp_produto.txt');








  close;

end;

Procedure Tfraecb.ChamaCargaFilizola(modulo: string; funcao: string; vSql: string; vPro: string; vSet: string; vnomesetor: string);
var
  exec: TCargaFilizola;
  vu: string;
begin
  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar(funcao));

      if Assigned(exec) then
      begin
        vu := exec(self.Owner, zcone, vSql, vPro, vSet, vnomesetor);
      end;
    finally
      DoUnLoadPackage(pack);
    end;
End;

Procedure Tfraecb.ChamaCargaToledo(modulo: string; funcao: string; vSql: string; vPro: string; vTcl: string);
var
  exec: TCargaToledo;
  vu: string;
begin
  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar(funcao));

      if Assigned(exec) then
      begin
        vu := exec(Application, zcone, vSql, vPro, vTcl);
      end;
    finally
      DoUnLoadPackage(pack);
    end;
End;

procedure Tfraecb.FormShow(Sender: TObject);
begin
  registro.ParamByName('flacodigo').AsInteger := Acesso.Filial;

  inherited;

end;

end.
