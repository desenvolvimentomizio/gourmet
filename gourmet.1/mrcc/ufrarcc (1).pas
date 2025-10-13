unit ufrarcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrarcr, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, System.SysUtils, uFuncoes,
  uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, System.ImageList, Vcl.ImgList;

type
  Tfrarcc = class(Tfrarcr)
    ActEstornar: TAction;
    spbTodos: TAction;
    spbCancelados: TAction;
    spbEmAberto: TAction;
    spbTransferidos: TAction;
    uqtabelarcrchave: TIntegerField;
    uqtabelatcridentificacao: TStringField;
    uqtabelatscidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelarcrdata: TDateField;
    uqtabelarcrhistorico: TStringField;
    uqtabelamcechave: TIntegerField;
    uqtabelatmcidentificacao: TStringField;
    uqtabelatmccodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelarcrvalor: TFloatField;
    uqtabelamcrvalorbaixa: TFloatField;
    uqtabelarcrsaldo: TFloatField;
    uqtabelamcemotivo: TStringField;
    uqtabelamecregistro: TDateTimeField;
    uqtabelatcrcodigo: TIntegerField;
    uqtabelatsccodigo: TIntegerField;
    uqtabelatnccodigo: TIntegerField;
    uqtabelarcrhora: TTimeField;
    uqtabelatsccodigo_1: TIntegerField;
    mcemcechave: TIntegerField;
    mcercrchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    mceclbidentificacao: TStringField;
    mcetmcidentificacao: TStringField;
    mcemcevalor: TFloatField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActTransferenciaExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActEstornarExecute(Sender: TObject);
    procedure spbTodosExecute(Sender: TObject);
    procedure spbCanceladosExecute(Sender: TObject);
    procedure spbEmAbertoExecute(Sender: TObject);
    procedure spbTransferidosExecute(Sender: TObject);
    procedure DSTabelaStateChange(Sender: TObject);
  private
    procedure RecalculaTotais;

    { Private declarations }
  public
    { Public declarations }
    vtnccodigo: Integer;
    procedure Carregar; override;

  end;

var
  frarcc: Tfrarcc;

  // Início ID do Módulo frarcc
const
  vPlIdMd = '02.02.87.002-01';
  vPlTitMdl = 'Controle de Créditos de Clientes';

  // Fim ID do Módulo frarcc

implementation

{$R *.dfm}

uses ufrcc, ufrcctrans, ufmce, ufmceest;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarcc := Tfrarcc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarcc := Tfrarcc.Create(pCargaFrame);
  try
    frarcc.CriaAcoesDeAcesso;
  finally
    frarcc.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrarcc.Carregar;
begin

  inherited Carregar;
  if PlBotoes.FindComponent('b' + spbEmAberto.Name) <> nil then
    TSpeedButton(PlBotoes.FindComponent('b' + spbEmAberto.Name)).Down := True;
end;

procedure Tfrarcc.DSTabelaStateChange(Sender: TObject);
begin
  inherited;
  if uqtabela.Active then
  begin
    if uqtabelarcrchave.AsString <> '' then
    begin

      mce.Close;
      mce.Params[0].AsString := uqtabelarcrchave.AsString;
      mce.Open;

    end;
  end;

end;

procedure Tfrarcc.ActAlterarExecute(Sender: TObject);
var
  pode: boolean;
  vlAcao: string;
begin
  inherited;

  vlAcao := inttostr((Sender as TAction).Tag);

  pode := True;
  consulta.Close;
  consulta.sql.Text := 'select count(mcrchave) from mcr where rcrchave=' + self.uqtabelarcrchave.AsString;
  consulta.Open;
  if consulta.Fields[0].AsInteger > 0 then
    pode := False;

  if (uqtabelatsccodigo.AsInteger = tscEmAberto) and (uqtabelatcrcodigo.AsInteger = tcrCreditoAvulso) and (uqtabelarcrsaldo.AsCurrency > 0) and (pode) then
  begin
    if RegistroAcessoOperacao(vlAcao, 'Registro') then
    begin

      CriaFormulario(Tfrcc, self.uqtabelarcrchave.AsString, '');
    end;
  end
  else
  begin
    ShowMessage('Este registro não pode ser alterado!');
  end;
end;

procedure Tfrarcc.ActAtualizarExecute(Sender: TObject);
var
  vfilsitu: string;

begin

  if spbEmAberto.Checked then
    vfilsitu := ' tsccodigo=' + inttostr(tscEmAberto)
  else if spbCancelados.Checked then
      vfilsitu := ' tsccodigo=' + inttostr(tscCancelado)
  else if spbTransferidos.Checked then
      vfilsitu := ' tsccodigo=' + inttostr(tscTransferido)
  else if spbTodos.Checked then
    vfilsitu := ''
  else
    vfilsitu := ' tsccodigo=' + inttostr(tscEmAberto) ;

  self.txtfiltrosql := vfilsitu;

  inherited;

  RecalculaTotais;

end;

procedure Tfrarcc.ActCancelarExecute(Sender: TObject);
var
  pode: boolean;
  vlAcao: string;
begin
  inherited;

  pode := True;
  consulta.Close;
  consulta.sql.Text := 'select count(mcrchave) from mcr where rcrchave=' + self.uqtabelarcrchave.AsString;
  consulta.Open;
  if consulta.Fields[0].AsInteger > 0 then
    pode := False;

  if (uqtabelatsccodigo.AsInteger = tscEmAberto) and (uqtabelarcrsaldo.AsCurrency > 0) and (pode) then
  begin
    if Application.MessageBox(PChar('Confirma o cancelamento do registro selecionado?'), 'Confirmação',
      MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES then
    begin

      vlAcao := inttostr((Sender as TAction).Tag);

      if RegistroAcessoOperacao(vlAcao, 'Registro') then
      begin
        CriaFormulario(Tfmce, '', self.uqtabelarcrchave.AsString);
        self.RecalculaTotais;
      end;
    end;
  end
  else
  begin
    ShowMessage('Este crédito não pode ser Cancelado!');
  end;

end;

procedure Tfrarcc.ActEstornarExecute(Sender: TObject);
var
  vlAcao: string;
begin
  inherited;

  if (uqtabelatsccodigo.AsInteger = tscCancelado) then
  begin
    if Application.MessageBox(PChar('Confirma o estorno do cancelamento do registro selecionado?'), 'Confirmação',
      MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES then
    begin
      vlAcao := inttostr((Sender as TAction).Tag);
      if RegistroAcessoOperacao(vlAcao, 'Registro') then
      begin
        CriaFormulario(Tfmceest, '', self.uqtabelarcrchave.AsString);
        self.RecalculaTotais;
      end;
    end;
  end
  else
  begin
    ShowMessage('Somente créditos cancelados podem ser estornados!');
  end;

end;

procedure Tfrarcc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrcc, '', '');
end;

procedure Tfrarcc.ActTransferenciaExecute(Sender: TObject);
begin
  inherited;
  zcone.StartTransaction;
  if CriaFormulario(Tfrctrans, '', '') then
  begin
     if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
    zcone.Commit;
    ActAtualizar.Execute;
  end
  else
  begin
     if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
    zcone.Rollback;
    ActAtualizar.Execute;
  end;
end;

procedure Tfrarcc.spbCanceladosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := True;
  spbTransferidos.Checked := False;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;

procedure Tfrarcc.spbEmAbertoExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := True;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := False;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;

procedure Tfrarcc.spbTodosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := False;
  spbTodos.Checked := True;
  self.ActAtualizar.Execute;
end;

procedure Tfrarcc.spbTransferidosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := True;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;


procedure Tfrarcc.RecalculaTotais;
var
  rg: Integer;
  vlTotGeral: Double;
  vlBaixado: Double;
  vlDisponivel: Double;

begin
  vlTotGeral := 0;
  vlBaixado := 0;
  vlDisponivel := 0;

  rg := uqtabela.RecNo;
  uqtabela.DisableControls;
  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotGeral := vlTotGeral + uqtabelarcrvalor.AsFloat;
    vlBaixado := vlBaixado + uqtabelarcrvalor.AsFloat - uqtabelarcrsaldo.AsFloat;
    vlDisponivel := vlDisponivel + uqtabelarcrsaldo.AsFloat;

    uqtabela.Next;
  end;

  uqtabela.RecNo := rg;
  uqtabela.EnableControls;

  pltotalGeral.Caption := formatfloat('##,###,##0.00', vlTotGeral);
  plbaixados.Caption := formatfloat('##,###,##0.00', vlBaixado);
  pldisponivel.Caption := formatfloat('##,###,##0.00', vlDisponivel);
end;

end.
