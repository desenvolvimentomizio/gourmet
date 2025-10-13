unit ufrarcf;

interface

uses
  Winapi.Windows, Winapi.Messages, ufrarcr, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, uFuncoes, Xml.xmldom, Xml.XMLIntf,
 Xml.XMLDoc;

type
  Tfrarcf = class(Tfrarcr)
    spbEmAberto: TAction;
    spbCancelados: TAction;
    spbTransferidos: TAction;
    spbTodos: TAction;
    uqtabelarcfchave: TIntegerField;
    uqtabelatcridentificacao: TStringField;
    uqtabelatscidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelarcfdata: TDateField;
    uqtabelarcfhistorico: TStringField;
    uqtabelamfechave: TIntegerField;
    uqtabelatmcidentificacao: TStringField;
    uqtabelatmccodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelarcfvalor: TFloatField;
    uqtabelamcrvalorbaixa: TFloatField;
    uqtabelarcfsaldo: TFloatField;
    uqtabelamfemotivo: TStringField;
    uqtabelamferegistro: TDateTimeField;
    uqtabelatcrcodigo: TIntegerField;
    uqtabelatsccodigo: TIntegerField;
    uqtabelatnccodigo: TIntegerField;
    uqtabelarcfhora: TTimeField;
    mcemfechave: TIntegerField;
    mcercfchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemfemotivo: TStringField;
    mcemferegistro: TDateTimeField;
    mceclbidentificacao: TStringField;
    mcetmcidentificacao: TStringField;
    mcemfevalor: TFloatField;
    procedure spbTodosExecute(Sender: TObject);
    procedure DSTabelaStateChange(Sender: TObject);
  private
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActEstornarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActTransferenciaExecute(Sender: TObject);
    procedure spbCanceladosExecute(Sender: TObject);
    procedure spbEmAbertoExecute(Sender: TObject);
    procedure spbTransferidosExecute(Sender: TObject);
    procedure RecalculaTotais;
    { Private declarations }
  public
    { Public declarations }
    vtnccodigo: Integer;
    procedure Carregar; override;

  end;

var
  frarcf: Tfrarcf;


  // Início ID do Módulo frarcc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Controle de Créditos de Fornecedores';

  // Fim ID do Módulo frarcc


implementation

uses
  ufrce, ufrcf, ufrcftrans;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarcf := Tfrarcf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarcf := Tfrarcf.Create(pCargaFrame);
  try
    frarcf.CriaAcoesDeAcesso;
  finally
    frarcf.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfrarcf.Carregar;
begin

  inherited Carregar;
  if PlBotoes.FindComponent('b' + spbEmAberto.Name) <> nil then
    TSpeedButton(PlBotoes.FindComponent('b' + spbEmAberto.Name)).Down := True;
end;

procedure Tfrarcf.DSTabelaStateChange(Sender: TObject);
begin
  inherited;
  if uqtabela.Active then
  begin
    if uqtabelarcfchave.AsString <> '' then
    begin

      mce.Close;
      mce.Params[0].AsString := uqtabelarcfchave.AsString;
      mce.Open;

    end;
  end;

end;

procedure Tfrarcf.ActAlterarExecute(Sender: TObject);
var
  pode: boolean;
  vlAcao: string;
begin
  inherited;

  vlAcao := inttostr((Sender as TAction).Tag);

  pode := True;
  consulta.Close;
  consulta.sql.Text := 'select count(mcrchave) from mcr where rcrchave=' + self.uqtabelarcfchave.AsString;
  consulta.Open;
  if consulta.Fields[0].AsInteger > 0 then
    pode := False;

  if (uqtabelatsccodigo.AsInteger = tscEmAberto) and (uqtabelatcrcodigo.AsInteger = tcrCreditoAvulso) and (uqtabelarcfsaldo.AsCurrency > 0) and (pode) then
  begin
    if RegistroAcessoOperacao(vlAcao, 'Registro') then
    begin

      CriaFormulario(Tfrcf, self.uqtabelarcfchave.AsString, '');
    end;
  end
  else
  begin
    ShowMessage('Este registro não pode ser alterado!');
  end;
end;

procedure Tfrarcf.ActAtualizarExecute(Sender: TObject);
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

procedure Tfrarcf.ActCancelarExecute(Sender: TObject);
var
  pode: boolean;
  vlAcao: string;
begin
  inherited;

  pode := True;
  consulta.Close;
  consulta.sql.Text := 'select count(mcrchave) from mcr where rcrchave=' + self.uqtabelarcfchave.AsString;
  consulta.Open;
  if consulta.Fields[0].AsInteger > 0 then
    pode := False;

  if (uqtabelatsccodigo.AsInteger = tscEmAberto) and (uqtabelarcfsaldo.AsCurrency > 0) and (pode) then
  begin
    if Application.MessageBox(PChar('Confirma o cancelamento do registro selecionado?'), 'Confirmação',
      MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES then
    begin

      vlAcao := inttostr((Sender as TAction).Tag);

      if RegistroAcessoOperacao(vlAcao, 'Registro') then
      begin
        CriaFormulario(Tfrce, '', self.uqtabelarcfchave.AsString);
        self.RecalculaTotais;
      end;
    end;
  end
  else
  begin
    ShowMessage('Este crédito não pode ser Cancelado!');
  end;

end;

procedure Tfrarcf.ActEstornarExecute(Sender: TObject);
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
        CriaFormulario(Tfrce, '', self.uqtabelarcfchave.AsString);
        self.RecalculaTotais;
      end;
    end;
  end
  else
  begin
    ShowMessage('Somente créditos cancelados podem ser estornados!');
  end;

end;

procedure Tfrarcf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrcf, '', '');
end;

procedure Tfrarcf.ActTransferenciaExecute(Sender: TObject);
begin
  inherited;
  zcone.StartTransaction;
  if CriaFormulario(Tfrcftrans, '', '') then
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

procedure Tfrarcf.spbCanceladosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := True;
  spbTransferidos.Checked := False;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;

procedure Tfrarcf.spbEmAbertoExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := True;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := False;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;

procedure Tfrarcf.spbTodosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := False;
  spbTodos.Checked := True;
  self.ActAtualizar.Execute;
end;

procedure Tfrarcf.spbTransferidosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := False;
  spbCancelados.Checked := False;
  spbTransferidos.Checked := True;
  spbTodos.Checked := False;
  self.ActAtualizar.Execute;

end;


procedure Tfrarcf.RecalculaTotais;
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
    vlTotGeral := vlTotGeral + uqtabelarcfvalor.AsFloat;
    vlBaixado := vlBaixado + uqtabelarcfvalor.AsFloat - uqtabelarcfsaldo.AsFloat;
    vlDisponivel := vlDisponivel + uqtabelarcfsaldo.AsFloat;

    uqtabela.Next;
  end;

  uqtabela.RecNo := rg;
  uqtabela.EnableControls;

  pltotalGeral.Caption := formatfloat('##,###,##0.00', vlTotGeral);
  plbaixados.Caption := formatfloat('##,###,##0.00', vlBaixado);
  pldisponivel.Caption := formatfloat('##,###,##0.00', vlDisponivel);
end;



end.
