unit ufraczn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
  System.ImageList, Vcl.ImgList, uFuncoes,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraczn = class(Tfrabase)
    uqtabelacznchave: TIntegerField;
    uqtabelacznabertura: TDateTimeField;
    uqtabelacznfechamento: TDateTimeField;
    uqtabelaclbcodigo: TIntegerField;
    ActProcessarVendas: TAction;
    orc: TUniQuery;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActProcessarVendasExecute(Sender: TObject);
  private
    function ProcessaVendas(vOrcchave: string): string;
    procedure AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
    { Private declarations }
  public
    { Public declarations }

  end;

  TProcessaOrc = function(AOwner: TComponent; Conexao: TUniConnection; pChave: string; pAcesso: TAcesso; AFaturar: Boolean = False): string;

var
  fraczn: Tfraczn;

  // Início ID do Módulo frabpr
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Controle de Cozinha';

  // Fim ID do Módulo frabpr

implementation

uses
  ufczn;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraczn := Tfraczn.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraczn := Tfraczn.Create(pCargaFrame);
  try
    fraczn.CriaAcoesDeAcesso;
  finally
    fraczn.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraczn.ActAlterarExecute(Sender: TObject);
begin
  inherited;

  if (uqtabelacznfechamento.AsString <> '') and (uqtabela.RecordCount > 0) then
    Showmessage('A cozinha já esta fechada!')
  else
    CriaFormulario(Tfczn, uqtabelacznchave.AsString, '');

end;

procedure Tfraczn.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  uqtabela.Last;

  if (uqtabelacznfechamento.AsString <> '') or (uqtabela.RecordCount = 0) then
    CriaFormulario(Tfczn, '', '')
  else
    Showmessage('A cozinha já esta aberta!');
end;

procedure Tfraczn.ActProcessarVendasExecute(Sender: TObject);
begin
  inherited;
  orc.Close;
  orc.SQL.Text :=
    'SELECT  count(ito.orcchave) qtd, ito.orcchave,cznchave FROM orc,ito,imm WHERE orc.moccodigo=7 and orc.orcchave=ito.orcchave and ito.itochave=imm.itochave GROUP BY ito.orcchave';
  orc.Open;
  while not orc.Eof do
  begin
    if orc.FieldByName('qtd').AsInteger > 0 then
    begin
      ProcessaVendas(orc.FieldByName('orcchave').AsString);
    end
    else
    begin

    end;
    orc.Next;
  end;
  Showmessage('Dia ' + uqtabelacznfechamento.AsString + ' processado com sucesso!');

end;

function Tfraczn.ProcessaVendas(vOrcchave: string): string;
var
  Processa: TProcessaOrc;
  vlPackopm: Cardinal;
  vmeschave: String;
  vlOrcChave: string;
begin

  vmeschave := '';
  vlOrcChave := vOrcchave;

  vlPackopm := LoadPackage('modulos\mopm.bpl');
  If vlPackopm <> 0 Then
    Try
      @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

      If Assigned(Processa) Then
      Begin
        vmeschave := '0';
        vmeschave := Processa(application, ZCone, vlOrcChave, Acesso);
      End;
    Finally
      // DoUnLoadPackage(Pack);
    End;

  If (vmeschave <> '0') and (vmeschave <> '') Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update orc set stocodigo=' + IntToStr(stoVendido) + ' where orcchave=' + vlOrcChave;
    consulta.ExecSQL;

    AtualizaSituacaoItens(vlOrcChave, stoVendido, tdfMovimentoEmAndamento);

  End;

  Result := vmeschave;

end;

Procedure Tfraczn.AtualizaSituacaoItens(ChaveOrc: String; Situacao: Integer; TipoDocumento: String);
begin
  if Situacao = stoEmCaixa then
    exit;

  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.add('UPDATE ito SET ito.tdfcodigo=' + QuotedStr(TipoDocumento) + ' ,ito.stocodigo = ' + IntToStr(Situacao) + ' ');
  consulta.SQL.add('WHERE ito.stocodigo IN (' + IntToStr(stoEmDigitacao) + ', ');
  consulta.SQL.add(IntToStr(stoEmAberto) + ', ');
  consulta.SQL.add(IntToStr(stoEmFechamento) + ',  ');
  consulta.SQL.add(IntToStr(stoVendido) + ') ');
  consulta.SQL.add('AND ito.orcchave=' + ChaveOrc);
  consulta.ExecSQL;
end;

end.
