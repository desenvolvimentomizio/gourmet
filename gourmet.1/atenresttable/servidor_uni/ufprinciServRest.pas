unit ufprinciServRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DBAccess, Uni, MemDS, UniProvider, MySQLUniProvider,
  DASQLMonitor, UniSQLMonitor, DateUtils;

type
  TfprinciServRest = class(TForm)
    plrodape: TPanel;
    plip: TPanel;
    plbanco: TPanel;
    erros: TMemo;
    consulta: Tuniquery;
    cfg: Tuniquery;
    cfgcfgidentificacao: TStringField;
    plrelogio: TPanel;
    inicializar: TTimer;
    Panel1: TPanel;
    btMinimizar: TButton;
    bfechar: TButton;
    qclb: Tuniquery;
    ioc: Tuniquery;
    imm: Tuniquery;
    ito: Tuniquery;
    qpro: Tuniquery;
    Query1: Tuniquery;
    Query: Tuniquery;
    unis: Tuniquery;
    pro: Tuniquery;
    clb: Tuniquery;
    zorc: Tuniquery;
    totais: Tuniquery;
    cfgcfgnumepedido: TIntegerField;
    conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    UniSQLMonitor: TUniSQLMonitor;
    eMesas: Tuniquery;
    atrazo: Tuniquery;
    atrazoimmhorapedido: TTimeField;
    atrazoimmhoraentrega: TTimeField;
    conexaoe: TUniConnection;
    zorci: TUniQuery;
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMinimizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure immAfterInsert(DataSet: TDataSet);
    procedure conexaoAfterConnect(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function EstadoMesas: string;
    function Novoorcamento(vTrmCodigo, vIDMesa, vClbCodigo: string): string;
    function removeritem(vitochave: string): Boolean;
    function CarregaUsuario(vsenha: string): string;
    function CarregaAtendimentos(VOrcChave: string; vTrmCodigo: string): Boolean;
    function BuscaPro(vProCodigo: string): string;
    function BuscaqPro(vProCodigo: string): string;
    function BuscaoPro(vProCodigo: string): string;
    function BuscaAtendimentos(vTrmCodigo, vIDMesa, vClbCodigo: string): string;
    procedure EnviaPedido(vquantidade: double; vModo, vitochave, vUsrCodigo: string; vTrmCodigo: String);
    function IncluirNovoItem(Produto: Integer; Quantidade: double; complemento, unidade: string; pun: Integer;
      VOrcChave, vUsrCodigo, vTrmCodigo, vIDMesa: string): string;
    function Conectabanco: Boolean;
    procedure Recalculatotal(VOrcChave: string);
    function Conectabancoe: Boolean;
       function enviarparacozinha(VOrcChave: string): string;


  end;

var
  fprinciServRest: TfprinciServRest;

implementation

{$R *.dfm}

uses uSM;

function TfprinciServRest.removeritem(vitochave: string): Boolean;
var
  retorno: Boolean;
begin
  retorno := true;
  if vitochave <> '' then
  begin
    try

      consulta.Close;
      consulta.sql.text := 'delete from imm where itochave=' + vitochave;
      consulta.execsql;

      consulta.Close;
      consulta.sql.text := 'delete from ioc where itochave=' + vitochave;
      consulta.execsql;

      consulta.Close;
      consulta.sql.text := 'delete from ito where itochave=' + vitochave;
      consulta.execsql;

      retorno := true;
    except
      retorno := false;
    end;

  end;
  result := retorno;

end;

procedure TfprinciServRest.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  erros.Lines.Add(datetimetostr(now) + ': Desconecout');
  application.ProcessMessages;

end;


function TfprinciServRest.enviarparacozinha(VOrcChave: string): string;
var
  retorno: string;
begin
  retorno := '';
  // self.conexaoi.Disconnect;
  if self.Conectabanco then
  begin
    zorci.Close;
    zorci.sql.text := 'select orcchave,stocodigo from orc where orcchave=' + VOrcChave;
    zorci.Open;

    retorno := '';
    if zorci.fieldbyname('stocodigo').AsInteger <> 2 then
    begin
      zorci.Edit;
      zorci.fieldbyname('stocodigo').AsInteger := 2;
      zorci.Post;
    end;
    retorno := self.zorci.fieldbyname('orcchave').AsString;

    zorci.Close;

  end;
  result := retorno;

end;



function TfprinciServRest.CarregaUsuario(vsenha: string): string;
var
  nome: string;
begin

  clb.Close;
  clb.sql.text := 'select clbcodigo, clbidentificacao from clb where clbsenha=' + chr(39) + vsenha + chr(39);
  clb.Open;
  if not clb.IsEmpty then
  begin
    nome := self.clb.fieldbyname('clbcodigo').AsString + '-' + self.clb.fieldbyname('clbidentificacao').AsString;
  end
  else
  begin
    nome := '';
  end;

  result := nome;

end;

function TfprinciServRest.CarregaAtendimentos(VOrcChave: string; vTrmCodigo: string): Boolean;
begin

  application.ProcessMessages;

  zorc.Close;
  zorc.sql.text := 'select orcchave, stocodigo,trmcodigo,tdecodigo,orcnome from orc where orcchave=' + VOrcChave;
  zorc.Open;

  { if (zorc.fieldbyname('stocodigo').AsInteger = 1) and
    (self.zorc.fieldbyname('trmcodigo').AsString <> vTrmCodigo) then
    begin
    erros.Lines.Add(zorc.fieldbyname('stocodigo').Asstring+' '+self.zorc.FieldByName('orcnome').AsString+' '+vTrmCodigo);
    result := false;
    exit;
    end; }

  if { (zorc.fieldbyname('stocodigo').AsInteger <> 1) or }
    (zorc.fieldbyname('trmcodigo').AsString <> vTrmCodigo) then
  begin
    zorc.Edit;
    zorc.fieldbyname('stocodigo').AsInteger := 1;
    zorc.fieldbyname('trmcodigo').AsString := vTrmCodigo;
    zorc.fieldbyname('tdecodigo').AsInteger := 0;
    zorc.Post;
  end;
  result := true;

end;

function TfprinciServRest.BuscaPro(vProCodigo: string): string;
var
  vpronome: string;
begin

  pro.Close;
  pro.Connection := self.conexao;

  pro.sql.text := 'select procodigo, pronome from pro where procodigo=' + vProCodigo;
  pro.Open;
  vpronome := 'Não Localizado!';
  if not pro.IsEmpty then
  begin
    vpronome := pro.fieldbyname('pronome').AsString;
  end;
  result := vpronome;

end;

function TfprinciServRest.BuscaoPro(vProCodigo: string): string;
var
  retorno: string;
  vobs: string;
  Texto: string;

  tit1: string;
  tag1: string;

  tit2: string;
  tag2: string;

  tit3: string;
  tag3: string;

begin

  unis.Close;
  unis.Connection := self.conexao;

  unis.sql.text := 'SELECT   pun.puncodigo,   uni.unicodigo, proobs ' + ' FROM pro,     pun,     uni,     grp ' +
    ' WHERE pro.grpcodigo = grp.grpcodigo AND pro.procodigo = pun.procodigo AND pun.unicodigo = uni.unicodigo AND ' +
    '((pun.tuncodigo = 1) OR (pun.tuncodigo = 9)) AND pro.procodigo = ' + vProCodigo;
  unis.Open;

  if unis.RecordCount = 1 then
  begin
    vobs := unis.Fields[2].AsString;

    while true do
    begin

      if pos(',', vobs) > 0 then
      begin
        Texto := copy(vobs, 1, pos(',', vobs) - 1);
      end
      else if pos(',', vobs) = 0 then
      begin
        Texto := vobs;
        retorno := retorno + unis.Fields[0].AsString + '-' + Texto + '_';
        break;
      end;

      if (Texto = '') or (Texto = ',') then
      begin
        break;
      end;

      retorno := retorno + unis.Fields[0].AsString + '-' + Texto + '_';
      vobs := copy(vobs, pos(',', vobs) + 1, 500);
    end;

  end;
  result := retorno;
end;

function TfprinciServRest.BuscaqPro(vProCodigo: string): string;
var
  retorno: string;
  tit1: string;
  tag1: string;

  tit2: string;
  tag2: string;

  tit3: string;
  tag3: string;

begin

  unis.Close;
  unis.Connection := self.conexao;

  unis.sql.text := 'SELECT   pun.puncodigo,   uni.unicodigo ' + ' FROM pro,     pun,     uni,     grp ' +
    ' WHERE pro.grpcodigo = grp.grpcodigo AND pro.procodigo = pun.procodigo AND pun.unicodigo = uni.unicodigo AND ' +
    '((pun.tuncodigo = 1) OR (pun.tuncodigo = 9)) AND pro.procodigo = ' + vProCodigo;
  unis.Open;

  if unis.RecordCount > 1 then
  begin

    unis.First;
    while not unis.Eof do
    begin
      if unis.Fields[1].AsInteger = 3 then
        tit1 := 'Média';
      if unis.Fields[1].AsInteger = 4 then
        tit1 := 'Grande';
      if unis.Fields[1].AsInteger = 5 then
        tit1 := 'Gigante';
      if unis.Fields[1].AsInteger = 6 then
        tit1 := 'Com Agua';
      if unis.Fields[1].AsInteger = 7 then
        tit1 := 'Com Leite';
      tag1 := unis.Fields[0].AsString;
      unis.Next;

      if not unis.Eof then
      begin

        if unis.Fields[1].AsInteger = 3 then
          tit2 := 'Média';
        if unis.Fields[1].AsInteger = 4 then
          tit2 := 'Grande';
        if unis.Fields[1].AsInteger = 5 then
          tit2 := 'Gigante';
        if unis.Fields[1].AsInteger = 6 then
          tit2 := 'Com Agua';
        if unis.Fields[1].AsInteger = 7 then
          tit2 := 'Com Leite';
        tag2 := unis.Fields[0].AsString;
      end;

      unis.Next;
      if not unis.Eof then
      begin
        if unis.Fields[1].AsInteger = 3 then
          tit3 := 'Média';

        if unis.Fields[1].AsInteger = 4 then
          tit3 := 'Grande';

        if unis.Fields[1].AsInteger = 5 then
          tit3 := 'Gigante';

        if unis.Fields[1].AsInteger = 6 then
          tit3 := 'Com Agua';

        if unis.Fields[1].AsInteger = 7 then
          tit3 := 'Com Leite';

        tag3 := unis.Fields[0].AsString;
      end;
      break;
    end;

  end;

  retorno := tag1 + '-' + tit1 + '_' + tag2 + '-' + tit2 + '_' + tag3 + '-' + tit3 + '_';
  result := retorno;

end;

function TfprinciServRest.BuscaAtendimentos(vTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
var
  VOrcChave: String;
begin

  Query.Close;
  Query.Connection := self.conexao;

  Query.sql.text := 'select orcchave from orc where orcdataencerr is null and orcnome=' + chr(39) + vIDMesa + chr(39);
  Query.Open;

  if Query.IsEmpty then
  begin
    VOrcChave := Novoorcamento(vTrmCodigo, vIDMesa, vClbCodigo);
  end
  else
    VOrcChave := Query.Fields[0].AsString;

  Query.Close;

  result := VOrcChave;

end;

Procedure TfprinciServRest.Recalculatotal(VOrcChave: string);

Begin

  if VOrcChave <> '' then
  begin
    try
      Query.Close;
      Query.Connection := self.conexao;
      Query.sql.text := 'update ito, pro, pun set ';
      Query.sql.Add('itovalorav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav), ');
      Query.sql.Add('itototalav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade, ');
      Query.sql.Add('itosaldoav=(IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade)-itodescontoav, ');
      Query.sql.Add('itovalorap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap), ');
      Query.sql.Add('itototalap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade, ');
      Query.sql.Add('itosaldoap=(IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade)-itodescontoap ');
      Query.sql.Add('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave=' + VOrcChave);
      Query.execsql;

    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('454 ' + E.Message);
      end;
    end;

    try
      Query.Close;
      Query.Connection := self.conexao;

      Query.sql.text := 'SELECT SUM(itototalav), SUM(itodescontoav), SUM(itototalap), SUM(itodescontoap), SUM(itoquantidade) ';
      Query.sql.Add('FROM ito WHERE ito.stocodigo IN (1, 2) AND orcchave = ' + VOrcChave);
      Query.Open;
    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('468 ' + E.Message);
      end;
    end;

    try
      Query1.Close;
      Query1.Connection := self.conexao;

      Query1.sql.text := 'select orcchave, orcgeralav, orcdescontoav, orcgeralap,orcdescontoap, orctotalav, orctotalap from orc where orcchave=' +
        VOrcChave;
      Query1.Open;
    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('482 ' + E.Message);
      end;
    end;

    try
      if not Query1.Active then
      begin
        try
          Query1.Close;
          Query1.Connection := self.conexao;

          Query1.sql.text := 'select orcchave, orcgeralav, orcdescontoav, orcgeralap,orcdescontoap, orctotalav, orctotalap from orc where orcchave=' +
            VOrcChave;
          Query1.Open;
        except
          on E: Exception do
          begin
            fprinciServRest.erros.Lines.Add('499 ' + E.Message);
          end;
        end;

      end
      else
      begin
      end;

      if not Query1.IsEmpty then
      begin
        if (Query1.fieldbyname('orcgeralav').AsFloat <> Query.Fields[0].AsFloat) or
          (Query1.fieldbyname('orcdescontoav').AsFloat <> Query.Fields[1].AsFloat) or
          (Query1.fieldbyname('orcgeralap').AsFloat <> Query.Fields[2].AsFloat) or
          (Query1.fieldbyname('orcdescontoap').AsFloat <> Query.Fields[3].AsFloat) then
        begin

          Query1.Edit;
          Query1.fieldbyname('orcgeralav').AsFloat := Query.Fields[0].AsFloat;
          Query1.fieldbyname('orcdescontoav').AsFloat := Query.Fields[1].AsFloat;

          Query1.fieldbyname('orcgeralap').AsFloat := Query.Fields[2].AsFloat;
          Query1.fieldbyname('orcdescontoap').AsFloat := Query.Fields[3].AsFloat;

          Query1.fieldbyname('orctotalav').AsFloat := Query1.fieldbyname('orcgeralav').AsFloat - Query1.fieldbyname('orcdescontoav').AsFloat;
          Query1.fieldbyname('orctotalap').AsFloat := Query1.fieldbyname('orcgeralap').AsFloat - Query1.fieldbyname('orcdescontoap').AsFloat;
          Query1.Post;
        end;
      end;

    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('524 ' + E.Message);
      end;
    end;
    Query1.Close;

  end;

End;

function TfprinciServRest.Novoorcamento(vTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
Var

  VOrcChave: string;
Begin
  if self.Conectabanco then
  begin

    Query.Close;
    Query.Connection := conexao;
    Query.sql.text := 'select * from orc limit 2';
    Query.Open;

    Query.Append;
    Query.fieldbyname('stocodigo').AsInteger := 1;
    Query.fieldbyname('trmcodigo').AsString := vTrmCodigo;
    Query.fieldbyname('orcnome').AsString := vIDMesa;
    Query.fieldbyname('etdcodigo').AsInteger := 0;
    Query.fieldbyname('clbcodigo').AsString := vClbCodigo;
    Query.fieldbyname('fopcodigo').AsInteger := 1;
    Query.fieldbyname('tdecodigo').AsInteger := 0;
    Query.fieldbyname('moccodigo').AsInteger := 1;
    Query.fieldbyname('puocodigo').AsInteger := 1;
    Query.fieldbyname('orcdataabert').AsFloat := date;
    Query.fieldbyname('orchoraabert').AsFloat := Time;
    Query.fieldbyname('orcgeralav').AsFloat := 0;
    Query.fieldbyname('orcgeralap').AsFloat := 0;
    Query.fieldbyname('orcdescontoav').AsFloat := 0;
    Query.fieldbyname('orcdescontoap').AsFloat := 0;
    Query.fieldbyname('orctotalav').AsFloat := 0;
    Query.fieldbyname('orctotalap').AsFloat := 0;
    Query.fieldbyname('orcdestimpre').AsInteger := 1;
    Query.fieldbyname('edritem').AsInteger := 1;
    Query.fieldbyname('tfpcodigo').AsInteger := 0;
    Query.fieldbyname('orcpercdescav').AsFloat := 0;
    Query.fieldbyname('orcpercdescap').AsFloat := 0;
    Query.fieldbyname('trmcodigo').AsString := vTrmCodigo;

    Query.Post;
    Query.Last;

    VOrcChave := Query.fieldbyname('orcchave').AsString;

    result := VOrcChave;

  end
  else
  begin
    result := '';
  end;

End;

function TfprinciServRest.IncluirNovoItem(Produto: Integer; Quantidade: double; complemento: string; unidade: string; pun: Integer; VOrcChave: string;
  vUsrCodigo: string; vTrmCodigo: string; vIDMesa: string): string;
Var
  vProCodigo: Integer;
  VUniCodigo: Integer;
  vitochave: Integer;
  (* Variáveis para tratar novo item no orçamento *)
  VEstoqueDisponivel: Boolean;
  // Recebe retorno que identifica se produto tem saldo disponível
  vquantidade: double; // Recebe quantidade para ser lançada no novo item
  xquantidade: Integer; // Recebe quantidade para ser lançada no novo item

  VQuantidadeTotal: double;
  VTextoQuantidade: String;
  // Utilizada quando produto tem saldo positivo menor que um
  VPodeQuantidade: Boolean;
  // Utilizada quando produto tem saldo positivo menor que um
  VMensagem: String; // Utilizada quando produto tem saldo positivo menor que um

  vVariasUnidades: Boolean;
  vComplemento: Boolean;
  vSabores: Boolean;
  vVezes: Integer;
  vpun: Integer;

  retorno: string;

Begin

  erros.Lines.Add('Produto: ' + inttostr(Produto) + ' Quantidade: ' + floattostr(Quantidade) + ' complemento: ' + complemento + ' unidade: ' + unidade
    + ' pun: ' + inttostr(pun) + 'Orc: ' + VOrcChave + 'clb: ' + vUsrCodigo + 'Trm: ' + vTrmCodigo + ' Mesa: ' + vIDMesa);

  if self.Conectabanco then
  begin
    vVariasUnidades := false;
    vComplemento := false;
    vSabores := false;

    Try

      Try
        If (Produto <> 0) Then
        Begin

          qpro.Close;
          qpro.Connection := self.conexao;

          qpro.sql.text := 'SELECT   pun.puncodigo,   pro.procodigo,  pro.pronome,   uni.unisimbolo,  pun.punbarra, ' +
            'pun.punprecoav,   pun.punprecoap,   pro.prosaldodisp,   uni.unicodigo,   uni.uninome,   pun.punidentificacao,' +
            ' pro.tpocodigo,   pun.punmultiplicador,   pro.sipcodigo,  pro.propedecomple FROM pro,     pun,     uni,     grp ' +
            ' WHERE pro.grpcodigo = grp.grpcodigo AND pro.procodigo = pun.procodigo AND pun.unicodigo = uni.unicodigo AND ' +
            '((pun.tuncodigo = 1) OR (pun.tuncodigo = 9)) AND pro.procodigo = :procodigo ';
          qpro.Params[0].AsInteger := Produto;
          qpro.Open;

          if qpro.IsEmpty then
            exit;

          // Verifica se o item está inativo e avisa usuário.
          if qpro.fieldbyname('sipcodigo').AsInteger = 2 then
          begin
            retorno := 'Produto desativado não pode ser vendido.';
            exit;
          end;

          // Identifica se item tem mais de uma unidade de venda, vai pedir para selecionar no formulario de quantidade
          If (qpro.RecordCount > 1) Then
          begin
            vVariasUnidades := true;
            qpro.Locate('puncodigo', pun, []);

          end;

          vProCodigo := qpro.fieldbyname('procodigo').AsInteger;
          VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

          Try
            if not ito.Active then
            begin
              If (VOrcChave = '0') or (VOrcChave = '') Then
              begin
                retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                consulta.Close;
                consulta.Connection := self.conexao;
                consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                consulta.execsql;
              end
              else
              begin
                retorno := VOrcChave;

                try
                  consulta.Close;
                  consulta.Connection := self.conexao;
                  consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                  consulta.execsql;
                except

                  retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                  consulta.Close;
                  consulta.Connection := self.conexao;
                  consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                  consulta.execsql;
                end;
              end;

              ito.Connection := self.conexao;
              ito.sql.text := 'select * from ito where orcchave=' + retorno;
              ito.Open;
            end
            else
            begin
              If (VOrcChave = '0') or (VOrcChave = '') Then
              begin
                retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
              end
              else
              begin
                try
                  retorno := VOrcChave;
                  consulta.Close;
                  consulta.Connection := self.conexao;
                  consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                  consulta.execsql;
                except
                  retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                  consulta.Close;
                  consulta.Connection := self.conexao;
                  consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                  consulta.execsql;
                end;
              end;

            end;

            ito.Append;
            ito.fieldbyname('orcchave').AsString := retorno;
            ito.fieldbyname('itoquantidade').AsFloat := Quantidade;

            vquantidade := ito.fieldbyname('itoquantidade').AsFloat;
            xquantidade := ito.fieldbyname('itoquantidade').AsInteger;

            vProCodigo := qpro.fieldbyname('procodigo').AsInteger;
            VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

            // Soma quantidade total do item se tiver lançado no orçamento com outra unidade.

            // Verifica se produto tem saldo suficiente.
            VEstoqueDisponivel := true;

          except
            on E: Exception do
            begin
              fprinciServRest.erros.Lines.Add('807 ' + E.Message);
            end;
          end;

          if vquantidade > 0 then
          begin
            Case VEstoqueDisponivel of
              true:
                begin
                  // Caso produto tenha saldo disponível item é incluído no orçamento

                  If (VOrcChave = '0') or (VOrcChave = '') Then
                  begin
                    retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                  end
                  else
                  begin
                    try
                      retorno := VOrcChave;
                      consulta.Close;
                      consulta.Connection := self.conexao;
                      consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                      consulta.execsql;
                    except
                      retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                      consulta.Close;
                      consulta.Connection := self.conexao;
                      consulta.sql.text := 'update orc set stocodigo=1 where  orcchave=' + retorno;
                      consulta.execsql;
                    end;

                  end;

                  If (Not ito.Active) Then
                  Begin
                    ito.sql.text := 'select * from ito where orcchave=' + retorno;
                    ito.Open;
                  End;
                  ito.fieldbyname('itodescontoav').AsFloat := 0;
                  ito.fieldbyname('itodescontoap').AsFloat := 0;
                  ito.fieldbyname('procodigo').AsInteger := vProCodigo;
                  ito.fieldbyname('stocodigo').AsInteger := 2;

                  ito.fieldbyname('itovalorav').AsFloat := qpro.fieldbyname('punprecoav').AsFloat;

                  ito.fieldbyname('itocontendo').AsFloat := qpro.fieldbyname('punmultiplicador').AsFloat;
                  ito.fieldbyname('puncodigo').AsInteger := qpro.fieldbyname('puncodigo').AsInteger;
                  ito.fieldbyname('unicodigo').AsInteger := qpro.fieldbyname('unicodigo').AsInteger;
                  ito.fieldbyname('itopercdescap').AsFloat := 0;
                  ito.fieldbyname('itopercdescav').AsFloat := 0;
                  ito.fieldbyname('tdecodigo').AsInteger := 0;

                  VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

                  if (vquantidade < 1) or (vquantidade = 1) then
                    ito.fieldbyname('itoquantidade').AsFloat := vquantidade
                  else
                    ito.fieldbyname('itoquantidade').AsFloat := 1;

                  ito.fieldbyname('itototalav').AsFloat := ito.fieldbyname('itoquantidade').AsFloat * ito.fieldbyname('itovalorav').AsFloat;

                  ito.fieldbyname('itosaldoav').AsFloat := ito.fieldbyname('itototalav').AsFloat;

                  ito.fieldbyname('itovalorap').AsFloat := 0;

                  ito.fieldbyname('itototalap').AsFloat := ito.fieldbyname('itoquantidade').AsFloat * ito.fieldbyname('itovalorap').AsFloat;

                  ito.fieldbyname('itosaldoap').AsFloat := ito.fieldbyname('itototalap').AsFloat;
                  ito.fieldbyname('itoitem').AsInteger := ito.RecordCount + 1;
                  ito.fieldbyname('itoprocomple').AsString := complemento;
                  consulta.Close;
                  consulta.sql.text := 'select orcchave from orc where orcchave=' + VOrcChave;
                  consulta.Open;

                  if consulta.IsEmpty then
                  begin
                    retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                  end;
                  ito.fieldbyname('orcchave').AsString := retorno;
                  ito.Post;
                  try

                    vitochave := ito.fieldbyname('itochave').AsInteger;

                    if vquantidade > 1 then
                    begin

                      vitochave := ito.fieldbyname('itochave').AsInteger;
                      EnviaPedido(ito.fieldbyname('itoquantidade').AsFloat, '1', inttostr(vitochave), vUsrCodigo, vTrmCodigo);

                      for vVezes := 1 to (xquantidade - 1) do
                      begin

                        ito.Append;

                        ito.fieldbyname('itodescontoav').AsFloat := 0;
                        ito.fieldbyname('itodescontoap').AsFloat := 0;
                        ito.fieldbyname('procodigo').AsInteger := vProCodigo;
                        ito.fieldbyname('stocodigo').AsInteger := 2;

                        ito.fieldbyname('itovalorav').AsFloat := qpro.fieldbyname('punprecoav').AsFloat;

                        ito.fieldbyname('itocontendo').AsFloat := qpro.fieldbyname('punmultiplicador').AsFloat;
                        ito.fieldbyname('puncodigo').AsInteger := qpro.fieldbyname('puncodigo').AsInteger;
                        ito.fieldbyname('unicodigo').AsInteger := qpro.fieldbyname('unicodigo').AsInteger;
                        ito.fieldbyname('itopercdescap').AsFloat := 0;
                        ito.fieldbyname('itopercdescav').AsFloat := 0;
                        ito.fieldbyname('tdecodigo').AsInteger := 0;

                        VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

                        ito.fieldbyname('itoquantidade').AsFloat := 1;

                        ito.fieldbyname('itototalav').AsFloat := ito.fieldbyname('itoquantidade').AsFloat * ito.fieldbyname('itovalorav').AsFloat;

                        ito.fieldbyname('itototalap').AsFloat := ito.fieldbyname('itoquantidade').AsFloat * ito.fieldbyname('itovalorap').AsFloat;

                        ito.fieldbyname('itosaldoav').AsFloat := ito.fieldbyname('itototalav').AsFloat;

                        ito.fieldbyname('itovalorap').AsFloat := 0;

                        ito.fieldbyname('itosaldoap').AsFloat := ito.fieldbyname('itototalap').AsFloat;
                        ito.fieldbyname('itoitem').AsInteger := ito.RecordCount + 1;
                        ito.fieldbyname('itoprocomple').AsString := complemento;

                        consulta.Close;
                        consulta.sql.text := 'select orcchave from orc where orcchave=' + VOrcChave;
                        consulta.Open;

                        if consulta.IsEmpty then
                        begin
                          retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                        end;
                        ito.fieldbyname('orcchave').AsString := retorno;
                        ito.Post;

                        vitochave := ito.fieldbyname('itochave').AsInteger;
                        fprinciServRest.EnviaPedido(ito.fieldbyname('itoquantidade').AsFloat, '1', inttostr(vitochave), vUsrCodigo, vTrmCodigo);
                      end;

                    end
                    else
                    begin

                      vitochave := ito.fieldbyname('itochave').AsInteger;
                      fprinciServRest.EnviaPedido(ito.fieldbyname('itoquantidade').AsFloat, '1', inttostr(vitochave), vUsrCodigo, vTrmCodigo);
                    end;

                    // Ito.Edit;

                    (* Identifica se tem SERVIÇO *)

                  except
                    on E: Exception do
                    begin

                      fprinciServRest.erros.Lines.Add('830 ' + 'Erro ao adicionar o produto: ' + inttostr(vProCodigo) + #13 + E.Message);

                    end;
                  end;
                end;
              false:
                begin
                  ito.Cancel;
                end;

            End;
          end;

          try
            Recalculatotal(VOrcChave);
          except
            on E: Exception do
            begin
              fprinciServRest.erros.Lines.Add('849 ' + 'Erro ao recalcular total do produto: ' + inttostr(vProCodigo) + #13 + E.Message);

            end;
          end;

        End;
      Except
        on E: Exception do
        begin
          fprinciServRest.erros.Lines.Add('859 ' + 'Erro ao incluir produto: ' + inttostr(vProCodigo) + #13 + E.Message);
        end;
      End;
    Finally
    End;

    result := retorno;

  end;
End;

procedure TfprinciServRest.EnviaPedido(vquantidade: double; vModo: string; vitochave: string; vUsrCodigo: string; vTrmCodigo: String);
var
  vTciCodigo: string;
  vGrpCodigo: string;
  vProCodigo: string;
  vItoProComple: string;
  Textoimg: string;
begin

  if self.Conectabanco then
  begin
    if vModo = '1' then
    begin

      while true do
      begin

        try

          cfg.Close;
          cfg.Open;

          ioc.Close;
          ioc.Connection := self.conexao;
          ioc.sql.text := 'select clbcodigo,itochave, icopercentual from ioc where itochave=' + vitochave;
          ioc.Open;

          if not ioc.Locate('itochave', vitochave, []) then
          begin
            ioc.Append;
          end
          else
          begin
            if (ioc.fieldbyname('clbcodigo').AsString = '') or (ioc.fieldbyname('clbcodigo').AsString = '0') then
              ioc.Edit;
          end;
          if ioc.State <> dsbrowse then
          begin

            ioc.fieldbyname('clbcodigo').AsString := vUsrCodigo;
            ioc.fieldbyname('itochave').AsString := vitochave;
            ioc.fieldbyname('icopercentual').AsFloat := 100;
            ioc.Post;
            break;

          end;
        except
          on E: Exception do
          begin
            sleep(1000);
            self.Conectabanco;

            fprinciServRest.erros.Lines.Add('911 ' + 'Tabela ioc: ' + E.Message);
          end;
        end;

      end;
    end;

    consulta.Close;
    consulta.Connection := self.conexao;

    consulta.sql.text := 'select procodigo,itoprocomple from ito where itochave=' + vitochave;
    consulta.Open;
    vProCodigo := consulta.Fields[0].AsString;
    vItoProComple := consulta.Fields[1].AsString;

    vGrpCodigo := '';
    consulta.Close;
    consulta.Connection := self.conexao;

    consulta.sql.text := 'select grpcodigo from pro where procodigo=' + vProCodigo;
    consulta.Open;
    vGrpCodigo := consulta.Fields[0].AsString;

    if vGrpCodigo <> '' then
    begin
      consulta.Close;
      consulta.Connection := self.conexao;

      consulta.sql.text := 'select tcicodigo from gri where grpcodigo=' + vGrpCodigo;
      consulta.Open;
      while true do
      begin
        if not consulta.IsEmpty then
        begin
          vTciCodigo := consulta.Fields[0].AsString;
          imm.Close;
          imm.Connection := self.conexao;

          imm.sql.text := 'SELECT   imm.immchave,   imm.itochave,   imm.tcicodigo,   imm.immobs, ' +
            'imm.immimpresso, imm.immentregue, imm.ccxchave, imm.immmodo, imm.immquantidade, imm.immhorapedido,' +
            'imm.immhoraentrega,immnumepedido,trmcodigo FROM imm limit 2';
          imm.Open;
          try
            imm.Append;
            imm.fieldbyname('itochave').AsString := vitochave;
            imm.fieldbyname('tcicodigo').AsString := vTciCodigo;
            imm.fieldbyname('immobs').AsString := vItoProComple;
            imm.fieldbyname('immimpresso').AsInteger := 0;
            imm.fieldbyname('immmodo').AsString := vModo;
            imm.fieldbyname('immentregue').AsInteger := 0;
            imm.fieldbyname('immquantidade').AsFloat := vquantidade;
            imm.fieldbyname('immhorapedido').AsFloat := Time;
            imm.fieldbyname('immnumepedido').AsInteger := self.cfgcfgnumepedido.AsInteger;
            imm.fieldbyname('trmcodigo').AsString := vTrmCodigo;
            imm.fieldbyname('ccxchave').AsInteger := 0;
            imm.Post;
            break;
          except
            on E: Exception do
            begin
              sleep(500);
              self.Conectabanco;

              fprinciServRest.erros.Lines.Add('964 ' + 'Tabela imm: ' + E.Message);
            end;
          end;
          imm.Close;
        end;
      end;
    end;

  end;
end;

  procedure TfprinciServRest.inicializarTimer(Sender: TObject);
  begin
    inicializar.Enabled := false;
  end;

  procedure TfprinciServRest.bfecharClick(Sender: TObject);
  begin
    IF application.MessageBox(PChar('Fechar o servidor vai desconectar os TABLES de atendimento, deseja REALMENTE fechar o Servidor?!'), 'Atenção',
      MB_YESNO + MB_DEFBUTTON1 + MB_ICONWARNING) = IDNO then
    begin
      exit;
    end
    else
    begin
      application.Terminate;
    end;

  end;

  procedure TfprinciServRest.btMinimizarClick(Sender: TObject);
  begin
    self.WindowState := wsminimized;

  end;

  function TfprinciServRest.Conectabanco: Boolean;
  Var
    Arquini: Tinifile;
    Vnomebanco: String;
    Vportabanco: String;
    Vservidor: String;
    vUsuario: String;
    vsenha: String;
  Begin

    Arquini := Tinifile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
    With Arquini Do
    Begin
      Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
      Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
      vUsuario := ReadString('posi', 'usuario', 'root');
      vsenha := ReadString('posi', 'senha', 'xda973');
      Vportabanco := ReadString('posi', 'portabanco', '3306');
    End;
    Arquini.Destroy;

    if conexao.Connected = false then
    begin
      try
        conexao.Connected := false;
        conexao.Database := Vnomebanco;
        conexao.Username := 'root';
        conexao.ProviderName := 'MySql';
        conexao.Password := vsenha;
        conexao.Port := StrToInt(Vportabanco);
        conexao.server := Vservidor;
        conexao.Connected := true;

      except
        while true do
        begin
          sleep(1000);
          erros.Lines.Add(datetimetostr(now) + ' - Conectando ao servidor.');
          application.ProcessMessages;

          conexao.Connected := false;
          conexao.Database := Vnomebanco;
          conexao.Username := 'root';
          conexao.ProviderName := 'MySql';
          conexao.Password := vsenha;
          conexao.Port := StrToInt(Vportabanco);
          conexao.server := Vservidor;
          conexao.Connected := true;

          if conexao.Connected then
            break;

        end;
      end;

      plip.Caption := Vservidor;
      plbanco.Caption := Vnomebanco;

      result := conexao.Connected;

    end
    else
      result := conexao.Connected;

    result := true;

  End;

  function TfprinciServRest.Conectabancoe: Boolean;
  Var
    Arquini: Tinifile;
    Vnomebanco: String;
    Vportabanco: String;
    Vservidor: String;
    vUsuario: String;
    vsenha: String;
  Begin

    Arquini := Tinifile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
    With Arquini Do
    Begin
      Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
      Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
      vUsuario := ReadString('posi', 'usuario', 'root');
      vsenha := ReadString('posi', 'senha', 'xda973');
      Vportabanco := ReadString('posi', 'portabanco', '3306');
    End;
    Arquini.Destroy;

    if conexaoe.Connected = false then
    begin
      try

        conexaoe.Database := Vnomebanco;
        conexaoe.Username := 'root';
        conexaoe.ProviderName := 'MySql';
        conexaoe.Password := vsenha;
        conexaoe.Port := StrToInt(Vportabanco);
        conexaoe.server := Vservidor;
        conexaoe.Connected := true;

      except
        while true do
        begin
          sleep(1000);
          erros.Lines.Add(datetimetostr(now) + ' - Conectando ao servidor.');
          application.ProcessMessages;

          conexaoe.Connected := false;
          conexaoe.Database := Vnomebanco;
          conexaoe.Username := 'root';
          conexaoe.ProviderName := 'MySql';
          conexaoe.Password := vsenha;
          conexaoe.Port := StrToInt(Vportabanco);
          conexaoe.server := Vservidor;
          conexaoe.Connected := true;

          if conexaoe.Connected then
            break;

        end;
      end;

      plip.Caption := Vservidor;
      plbanco.Caption := Vnomebanco;

      result := conexaoe.Connected;

    end
    else
      result := conexaoe.Connected;

  End;

  procedure TfprinciServRest.conexaoAfterConnect(Sender: TObject);
  begin
    erros.Lines.Add(datetimetostr(now) + ': Conectou Tablets');
    application.ProcessMessages;

  end;

  procedure TfprinciServRest.FormShow(Sender: TObject);
  begin
    if Conectabanco then
    begin
      inicializar.Enabled := true;

    end;
  end;

  procedure TfprinciServRest.immAfterInsert(DataSet: TDataSet);
  begin

    consulta.Close;
    consulta.Connection := self.conexao;

    consulta.sql.text := 'select max(immchave)+1 as immchave from imm ';
    consulta.Open;

    imm.fieldbyname('immchave').AsInteger := self.consulta.Fields[0].AsInteger;

  end;


  function TfprinciServRest.EstadoMesas: string;
  var
    i, u: Integer;
    coraberta1: Integer;
    coraberta2: Integer;
    corfechada: Integer;
    corparada: Integer;

    estaatrazada: Boolean;
    estaparada: Boolean;
    estafechamento: Boolean;

    hora1: ttime;
    hora2: ttime;
    vqtd: Integer;
    vlta: string;
    vtit: string;

    retorno: string;

  begin
    { mesas }
    conexaoe.Disconnect;

    if Conectabancoe then
    begin

      vqtd := 42;
      vlta := 'm';
      vtit := 'M E S A ';

      coraberta1 := $00D90000; // azul
      coraberta2 := $000F0FFF; // laranja

      corfechada := $00FF8000;

      corparada := $00000000;
      estafechamento := false;

      for i := 1 to vqtd do
      begin

        eMesas.Close;
        eMesas.sql.text := 'select orcchave, stocodigo from orc where orcdataencerr is null and orcnome=' + chr(39) + vtit + formatfloat('00', i)
          + chr(39);
        eMesas.Open;

        if eMesas.Fields[1].AsInteger = 5 then
          estafechamento := true
        else
          estafechamento := false;

        if eMesas.Fields[0].AsInteger > 0 then
        begin

          atrazo.Close;
          atrazo.Params[0].AsInteger := eMesas.Fields[0].AsInteger;
          atrazo.Open;

          atrazo.First;

          estaparada := false;

          atrazo.First;

          if (atrazoimmhoraentrega.AsString = '') then
          begin
            estaparada := false;
          end
          else
          begin
            atrazo.Last;
            hora1 := IncMinute(atrazoimmhoraentrega.asdatetime, 5);
            hora2 := (Time);
            if (hora1 < hora2) then
            begin
              if (atrazoimmhoraentrega.AsString <> '') then
              begin
                estaparada := true;
              end
              else
                estaparada := false;

            end
            else
            begin
              estaparada := false;
            end;

          end;

        end;

        eMesas.Close;
        eMesas.sql.text := 'select orcchave from orc where orcdataencerr is null and orcnome=' + chr(39) + vtit + formatfloat('00', i) + chr(39);
        eMesas.Open;

        if eMesas.Fields[0].AsInteger > 0 then
        begin

          atrazo.Close;
          atrazo.Params[0].AsInteger := eMesas.Fields[0].AsInteger;
          atrazo.Open;

          atrazo.First;

          estaatrazada := false;
          while not atrazo.Eof do
          begin
            hora1 := IncMinute(atrazoimmhorapedido.asdatetime, 15);
            hora2 := (Time);

            if (hora1 < hora2) and (atrazoimmhoraentrega.AsString = '') then
            begin

              estaatrazada := true;
              break;
            end;

            atrazo.Next;
          end;

        end;

        if not eMesas.IsEmpty then
        begin

          if estaatrazada then
          begin
            retorno := retorno + 'm' + formatfloat('00', i) + 'Z';
          end
          else if estafechamento then
          begin
            retorno := retorno + 'm' + formatfloat('00', i) + 'R';
          end
          else
          begin
            if estaparada then
            begin
              retorno := retorno + 'm' + formatfloat('00', i) + 'P';
            end
            else
              retorno := retorno + 'm' + formatfloat('00', i) + 'A';
          end;

        end
        else
          retorno := retorno + 'm' + formatfloat('00', i) + 'F';
      end;

      result := retorno;

    end;
  end;

end.
