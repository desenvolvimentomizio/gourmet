unit ufrarcm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
   System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfrarcm = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesemissao: TDateField;
    uqtabelamesregistro: TDateField;
    uqtabelatdfcodigo: TStringField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelamestotal: TFloatField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatemidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelattoidentificacao: TStringField;
    plbotoesitens: TPanel;
    LbItensSai: TLabel;
    PlTotaisSai: TPanel;
    PlVlrTotalSai: TPanel;
    PlQtItensSai: TPanel;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmunisimbolo: TStringField;
    itmitmcontendo: TFloatField;
    itmunisimbolobase: TStringField;
    DSitm: TUniDataSource;
    listaitens: TDBGrid;
    plbotoesitensEnt: TPanel;
    LbItensEnt: TLabel;
    PlTotaisEnt: TPanel;
    PlVlrTotalEnt: TPanel;
    PlQtItensEnt: TPanel;
    itmEnt: TUniQuery;
    itmEntitmchave: TIntegerField;
    itmEntitmitem: TIntegerField;
    itmEntprocodigo: TIntegerField;
    itmEntpronome: TStringField;
    itmEntitmquantidade: TFloatField;
    itmEntitmvalor: TFloatField;
    itmEntitmdesconto: TFloatField;
    itmEntitmtotal: TFloatField;
    itmEntunisimbolo: TStringField;
    itmEntitmcontendo: TFloatField;
    itmEntunisimbolobase: TStringField;
    DSitmEnt: TUniDataSource;
    listaitensEnt: TDBGrid;
    uqtabelameschaverecla: TIntegerField;
    itmmeschave: TIntegerField;
    itmEntmeschave: TIntegerField;
    SplRodapeGrid: TSplitter;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaitensEntDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  frarcm: Tfrarcm;

  // Início ID do Módulo frarcm
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Reclassificação de Mercadorias';

  // Fim ID do Módulo frarcm

implementation

{$R *.dfm}

uses ufrcm;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarcm := Tfrarcm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarcm := Tfrarcm.Create(pCargaFrame);
  try
    frarcm.CriaAcoesDeAcesso;
  finally
    frarcm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrarcm.ActAlterarExecute(Sender: TObject);
begin
  criaformulario(Tfrcm, uqtabelameschave.AsString, '');
end;

procedure Tfrarcm.ActExcluirExecute(Sender: TObject);
var
  vlPodeEntrada: Boolean;
  vlPodeSaida: Boolean;
  vlChaveMesEntrada: string;
  vlChaveMesSaida: string;

begin

  vlPodeEntrada := False;
  vlPodeSaida := False;

  vlChaveMesEntrada := '';
  vlChaveMesSaida := '';

  if itmEntmeschave.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select tdfcodigo from mes where meschave=' + itmEntmeschave.AsString;
    consulta.Open;

    if consulta.FieldByName('tdfcodigo').AsString = '00' then
    begin
      vlChaveMesSaida := itmEntmeschave.AsString;
      vlPodeSaida := true;
    end
    else
      vlPodeSaida := False;

  end;

  if uqtabelatdfcodigo.AsString = '00' then
  begin
    vlChaveMesEntrada := uqtabelameschave.AsString;
    vlPodeEntrada := true;
  end
  else
    vlPodeEntrada := False;

  if vlPodeEntrada and vlPodeSaida then
  begin

    if (vlChaveMesEntrada <> '') and (vlChaveMesSaida <> '') then

    begin

      if Application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), 'Excluir', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
        Exit;
      try


        consulta.Close;
        consulta.SQL.Text := 'delete from mes where meschave=' + vlChaveMesEntrada;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'delete from mes where meschave=' + vlChaveMesSaida;
        consulta.ExecSQL;

      except


        ShowMessage('Falha na exclusão da reclassicação!');

      end;
      Self.ActAtualizar.Execute;
    end;
  end
  else
  begin
    ShowMessage('Já foi emitido documento fiscal, não pode ser excluida!');

  end;

end;

procedure Tfrarcm.ActIncluirExecute(Sender: TObject);
begin
  criaformulario(Tfrcm, '', '');
end;

procedure Tfrarcm.Carregar;
begin
  inherited;

  itm.Open;
  itmEnt.Open;
end;

procedure Tfrarcm.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrarcm.listaitensEntDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

end.
