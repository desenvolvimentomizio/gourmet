unit ufrabol;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, ufuncoes, uPegaBase, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfrabol = class(Tfrabase)
    uqtabelabolchave: TIntegerField;
    uqtabelagebcodigo: TIntegerField;
    uqtabelasblcodigo: TIntegerField;
    uqtabelarfichave: TIntegerField;
    ActImprimir: TAction;
    ActImprimirGrupo: TAction;
    uqtabelabolnossonumero: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelarfivencimento: TDateField;
    uqtabelarfinumero: TStringField;
    uqtabelarfivalor: TFloatField;
    uqtabelasblidentificacao: TStringField;
    uqtabelacaridentificacao: TStringField;
    uqtabelacarcodigo: TIntegerField;
    ActGeraRemessa: TAction;
    ActEmailSelecionado: TAction;
    ActEmailGrupo: TAction;
    ActCancelar: TAction;
    uqtabelarfisaldocapital: TFloatField;
    uqtabelarfisaldogeral: TFloatField;
    tteb: TUniQuery;
    ttebtitcodigo: TIntegerField;
    ttebetdcodigo: TIntegerField;
    dsTit: TUniDataSource;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    titgebcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    titetdidentificacao: TStringField;
    tittitnumero: TStringField;
    titlebcodigo: TIntegerField;
    titlebstatus: TStringField;
    titlebmensagem: TStringField;
    ActProcessarRetorno: TAction;
    ActCancelaRemessa: TAction;
    uqtabelabcocodigo: TStringField;
    uqtabelabolemissao: TDateField;
    uqtabelarmbregistro: TDateTimeField;
    ActVerificarNossoNumero: TAction;
    ActReGeraRemessa: TAction;
    uqtabelarmbcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActImprimirGrupoExecute(Sender: TObject);
    procedure ActGeraRemessaExecute(Sender: TObject);
    procedure ActEmailGrupoExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActEmailSelecionadoExecute(Sender: TObject);
    procedure ActProcessarRetornoExecute(Sender: TObject);
    procedure ActCancelaRemessaExecute(Sender: TObject);
    procedure ActVerificarNossoNumeroExecute(Sender: TObject);
    procedure ActReGeraRemessaExecute(Sender: TObject);
  private

    procedure ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo: Integer = 0; vBolChave: Integer = 0; vRmbCodigo: Integer = 0);
    procedure ModuloBoletoEmail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frabol: Tfrabol;

  // Início ID do Módulo frabol
const
  vPlIdMd = '02.02.15.000-01';
  vPlTitMdl = 'Cobrança Bancária';

  // Fim ID do Módulo frabol

implementation

uses ufbolgeb, ufbolrmb, ufbolEmail, ufbolreb;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabol := Tfrabol.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabol := Tfrabol.Create(pCargaFrame);
  try
    frabol.CriaAcoesDeAcesso;
  finally
    frabol.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabol.ActCancelaRemessaExecute(Sender: TObject);
var
  vlNumRemessa: Integer;
  vlNumRemessaBol: Integer;
  vlRmbCodigo: Integer;
begin
  inherited;
  if uqtabela.IsEmpty then
    Exit;

  vlNumRemessa := 0;
  vlNumRemessaBol := 0;
  vlRmbCodigo := 0;

  consulta.Close;
  consulta.SQL.Text := 'select bconumremessa from bco where bcocodigo=' + QuotedStr(uqtabelabcocodigo.AsString);
  consulta.Open;

  vlNumRemessa := consulta.FieldByName('bconumremessa').AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select rmbcodigo from brm where bolchave=' + uqtabelabolchave.AsString;
  consulta.Open;

  vlNumRemessaBol := consulta.FieldByName('rmbcodigo').AsInteger;
  vlRmbCodigo := consulta.FieldByName('rmbcodigo').AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select rmbnumero from rmb where rmbcodigo=' + Inttostr(vlNumRemessaBol);
  consulta.Open;

  vlNumRemessaBol := consulta.FieldByName('rmbnumero').AsInteger;

  if vlNumRemessa = vlNumRemessaBol then
  begin

    if Application.MessageBox(PChar('Cancelamento de Remessa!!' + #13 + 'Confirma cancelamento?'), 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      try
        ZCone.StartTransaction;

        consulta.Close;
        consulta.SQL.Text := 'update bol set sblcodigo=2 where bolchave in (select bolchave from brm where rmbcodigo=' + Inttostr(vlRmbCodigo) + ')';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'delete from brm where rmbcodigo=' + Inttostr(vlRmbCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'delete from rmb where rmbcodigo=' + Inttostr(vlRmbCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update bco set bconumremessa=' + Inttostr(vlNumRemessa - 1) + ' where bcocodigo=' + QuotedStr(uqtabelabcocodigo.AsString);
        consulta.ExecSQL;
        ZCone.Commit;
        ShowMessage('Cancelamento da remessa realizado com sucesso!');

      except
        on e: Exception do
        begin
          ShowMessage(self.Name + '-' + ': ' + e.Message);
          ZCone.Rollback;
          ShowMessage('Falha no Cancelamento da remessa!');
        end;

      end;

      ActAtualizar.Execute;
    end;
  end
  else
  begin
    ShowMessage('Apenas a última remessa pode ser cancelada!');
  end;

end;

procedure Tfrabol.ActCancelarExecute(Sender: TObject);
begin
  inherited;

  if Application.MessageBox(PChar('Cancelamento de Boleto!!' + #13 + 'Confirma cancelamento?'), 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update bol set sblcodigo=9 where bolchave=' + uqtabelabolchave.AsString;
    consulta.ExecSQL;


    ActAtualizar.Execute;
  end;

end;

procedure Tfrabol.ActEmailGrupoExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  CriaFormulario(TfbolEmail, '', uqtabelagebcodigo.AsString);
end;

procedure Tfrabol.ActEmailSelecionadoExecute(Sender: TObject);
begin
  inherited;
  tit.Close;
  tit.ParamByName('gebcodigo').AsInteger := self.uqtabelagebcodigo.AsInteger;
  tit.ParamByName('flacodigo').AsInteger := acesso.Filial;
  tit.Open;

  if tit.IsEmpty then
    Exit;

  (* Apaga a tabela temporária *)
  consulta.SQL.Text := 'DROP TEMPORARY TABLE IF EXISTS tt_titulos_email_boleto;';
  consulta.ExecSQL;

  tteb.Open;

  try
    tteb.Append;
    ttebtitcodigo.AsInteger := tittitcodigo.AsInteger;
    ttebetdcodigo.AsInteger := titetdcodigo.AsInteger;
    tteb.Post;

    tteb.ApplyUpdates;
    ModuloBoletoEmail;
  finally
    tteb.Close;
    tit.Refresh;
  end;

end;

procedure Tfrabol.ModuloBoletoEmail;
type
  TModuloBoletoEmail = function(AOwner: TComponent; pConexao: TUniConnection; acesso: TAcesso; pGebCodigo, pUsuario: Integer): Boolean;
var
  Exec: TModuloBoletoEmail;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoletoEmail'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, ZCone, acesso, uqtabelagebcodigo.AsInteger, acesso.Usuario);
    finally
      // DoUnLoadPackage(Pack);
    end;
end;

procedure Tfrabol.ActGeraRemessaExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  CriaFormulario(Tfbolrmb, '', '');
end;

procedure Tfrabol.ActImprimirExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  ModuloBoleto(rblReimpressao, uqtabelagebcodigo.AsInteger, uqtabelabolchave.AsInteger);
end;

procedure Tfrabol.ActImprimirGrupoExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  ModuloBoleto(rblReimpressaoGrupo, uqtabelagebcodigo.AsInteger, uqtabelabolchave.AsInteger);
end;

procedure Tfrabol.ActIncluirExecute(Sender: TObject);
var
  vlGebCodigo: Integer;
begin
  if CriaFormulario(Tfbolgeb, '', '') then
    if RegistroFrmBase <> '' then
    begin
      vlGebCodigo := StrToInt(RegistroFrmBase);
      ActAtualizar.Execute;
      uqtabela.Locate('gebcodigo', vlGebCodigo, []);
    end;
end;

procedure Tfrabol.ActProcessarRetornoExecute(Sender: TObject);
begin
  inherited;
  if uqtabela.IsEmpty then
    Exit;

  CriaFormulario(Tfbolreb, '', '');
end;

procedure Tfrabol.ActReGeraRemessaExecute(Sender: TObject);
begin
  inherited;
   ModuloBoleto(rblReGerarRemessa,  0,  0,uqtabelarmbcodigo.AsInteger );
end;

procedure Tfrabol.ActVerificarNossoNumeroExecute(Sender: TObject);
begin
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin
    if uqtabelasblcodigo.AsInteger = 2 then
    begin
      ModuloBoleto(rblAjustarNossoNumero, 0, uqtabelabolchave.AsInteger);
    end;

    uqtabela.Next;
  end;
  uqtabela.First;
  self.ActAtualizar.Execute;

end;

procedure Tfrabol.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin
  { inherited; }

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := CLWHITE;
    End;

  If (self.uqtabelasblcodigo.AsString = '9') Then
    DBGLista.Canvas.Font.Color := clRed;

  with TFriendly(DBGLista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrabol.ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo: Integer = 0; vBolChave: Integer = 0; vRmbCodigo: Integer = 0);
type
  TModuloBoleto = function(AOwner: TComponent; Conexao: TUniConnection; vRotina: TRotinasBoletos; Acessso: TAcesso; vGebCodigo: Integer = 0; vBolChave: Integer = 0;
    vRmbCodigo: Integer = 0): Boolean;
var
  Exec: TModuloBoleto;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoleto'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, ZCone, vRotina, acesso, vGebCodigo, vBolChave,vRmbCodigo);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

end.
