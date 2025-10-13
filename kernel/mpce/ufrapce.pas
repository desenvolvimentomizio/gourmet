unit ufrapce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase, Vcl.ComCtrls;

type
  Tfrapce = class(Tfrabase)
    uqtabelapcedatahorainicio: TDateTimeField;
    uqtabelapcedatahorafinal: TDateTimeField;
    uqtabelapcechave: TIntegerField;
    uqtabelaspdchave: TIntegerField;
    ice: TUniQuery;
    DSice: TDataSource;
    DBGIce: TDBGrid;
    ActIncluirContagem: TAction;
    iceicechave: TIntegerField;
    iceprocodigo: TIntegerField;
    icepronome: TStringField;
    iceicequantidade: TFloatField;
    iceunisimbolo: TStringField;
    icepcechave: TIntegerField;
    iceicedatahoraregistro: TDateTimeField;
    iceclbidentificacao: TStringField;
    ActExcluirContagem: TAction;
    iceiceorigem: TStringField;
    qrEncerra: TUniQuery;
    qrEncerraprocodigo: TIntegerField;
    qrEncerramesinclusao: TDateTimeField;
    qrEncerraitmquantidade: TFloatField;
    qrEncerrattocodigo: TIntegerField;
    ivd: TUniQuery;
    ivdivdchave: TIntegerField;
    ivdspdchave: TIntegerField;
    ivdprocodigo: TIntegerField;
    ivdpcccodigo: TStringField;
    ivdivdquantidade: TFloatField;
    ivdivdvalor: TFloatField;
    ivdivddescricao: TStringField;
    ivdivdtotal: TFloatField;
    ivdivdproprietario: TStringField;
    ivdetdcodigo: TIntegerField;
    ivdflacodigo: TIntegerField;
    ivdivdregistro: TDateTimeField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    cfg: TUniQuery;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgcodigo: TIntegerField;
    mostra: TProgressBar;
    qrEncerrapuncodigo: TIntegerField;
    compras: TUniQuery;
    vendas: TUniQuery;
    vendasprocodigo: TIntegerField;
    vendasqtdvenda: TFloatField;
    comprasprocodigo: TIntegerField;
    comprasqtdcompra: TFloatField;
    icecontagem: TUniQuery;
    ivt: TUniQuery;
    ivtivtchave: TIntegerField;
    ivtspdchave: TIntegerField;
    ivtprocodigo: TIntegerField;
    ivtpcccodigo: TStringField;
    ivtivtquantidade: TFloatField;
    ivtivtvalor: TFloatField;
    ivtivttotal: TFloatField;
    ivtivtproprietario: TStringField;
    ivtivtdescricao: TStringField;
    ivtetdcodigo: TIntegerField;
    ivtflacodigo: TIntegerField;
    ivtivtregistro: TDateTimeField;
    icecontagemicechave: TIntegerField;
    icecontagempcechave: TIntegerField;
    icecontagemicedatahoraregistro: TDateTimeField;
    icecontagemprocodigo: TIntegerField;
    icecontagempuncodigo: TIntegerField;
    icecontagemicequantidade: TFloatField;
    ActInventarioInicial: TAction;
    spdinventarios: TUniQuery;
    spdinventariosspdchave: TIntegerField;
    spdinventariosspddatabalanco: TDateField;
    comprasfiscal: TUniQuery;
    vendasfiscal: TUniQuery;
    ActInventarioFiscalInicial: TAction;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirContagemExecute(Sender: TObject);
    procedure DBGIceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActExcluirContagemExecute(Sender: TObject);
    procedure ActInventarioInicialExecute(Sender: TObject);
    procedure ActInventarioFiscalInicialExecute(Sender: TObject);
  private
    procedure GerarInventarioDisponivel(vspdchave: Integer);
    procedure GeraInventarioNaoContados(vspdchave: Integer; vZerar: Boolean = false; vHora: String = ' 23:59:59');
    procedure GeraInventarioNaoContadosFiscal(vspdchave: Integer; vZerar: Boolean = false; vHora: string = ' 23:59:59');
    procedure GerarInventarioFiscal(vspdchave: Integer);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapce: Tfrapce;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'Periodo de Contagem do Estoque';

  // Fim ID do Módulo fracpr

implementation

uses
  ufpce, ufice;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapce := Tfrapce.Create(pCargaFrame);
  frapce.TxtFiltro := pCargaFrame.Filtro;

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapce := Tfrapce.Create(pCargaFrame);
  try
    frapce.CriaAcoesDeAcesso;
  finally
    frapce.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrapce.ActAlterarExecute(Sender: TObject);
var
  vlsaldo: Double;
  vlCompra: Double;

  vlVenda: Double;

  vlContagem: Double;
  vlSpdChave: Integer;

begin
  inherited;
  if CriaFormulario(tfpce, uqtabelapcechave.AsString, '') then
  begin
    cfg.Close;
    cfg.ParamByName('cfgcodigo').AsInteger := 1;
    cfg.Open;

    ivd.Close;
    ivd.Open;

    ivt.Close;
    ivt.Open;

    spd.Close;
    spd.Open;
    vlSpdChave := spdspdchave.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'delete from ivd where spdchave=' + spdspdchave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from ivt where spdchave=' + spdspdchave.AsString;
    consulta.ExecSQL;

    icecontagem.Close;
    icecontagem.ParamByName('pcechave').AsInteger := uqtabelapcechave.AsInteger;
    icecontagem.Open;

    mostra.Visible := true;
    mostra.Position := 0;
    mostra.max := icecontagem.RecordCount;

    vlsaldo := 0;
    vlCompra := 0;
    vlVenda := 0;
    vlContagem := 0;

    while not icecontagem.Eof do
    begin

      mostra.Position := mostra.Position + 1;
      application.ProcessMessages;

      vlsaldo := icecontagem.FieldByName('icequantidade').AsFloat;

      if vlsaldo > 0 then
      begin

        if ivd.locate('procodigo;ivddescricao;spdchave;ivdregistro',
          vararrayof([qrEncerraprocodigo.AsInteger, 'CONTAGEM MANUAL', spdspdchave.AsInteger, icecontagem.FieldByName('icedatahoraregistro').AsString]
          ), []) then
          ivd.Edit
        else
          ivd.append;

        ivdspdchave.AsInteger := spdspdchave.AsInteger;
        ivdprocodigo.AsInteger := icecontagem.FieldByName('procodigo').AsInteger;
        ivdpcccodigo.AsString := '1.01.03.01.01';
        ivdivdquantidade.AsFloat := vlsaldo;
        ivdivdvalor.AsFloat := 0;
        ivdivddescricao.AsString := 'CONTAGEM MANUAL';
        ivdivdtotal.AsFloat := 0;
        ivdivdproprietario.AsString := '1';
        ivdetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
        ivdflacodigo.AsInteger := 1;
        ivdivdregistro.AsString := icecontagem.FieldByName('icedatahoraregistro').AsString;
        ivd.Post;

        if ivt.locate('procodigo;ivtdescricao;spdchave;ivtregistro',
          vararrayof([qrEncerraprocodigo.AsInteger, 'CONTAGEM MANUAL', spdspdchave.AsInteger, icecontagem.FieldByName('icedatahoraregistro').AsString]
          ), []) then
          ivt.Edit
        else
          ivt.append;

        ivtspdchave.AsInteger := spdspdchave.AsInteger;
        ivtprocodigo.AsInteger := icecontagem.FieldByName('procodigo').AsInteger;
        ivtpcccodigo.AsString := '1.01.03.01.01';
        ivtivtquantidade.AsFloat := vlsaldo;
        ivtivtvalor.AsFloat := 0;
        ivtivtdescricao.AsString := 'CONTAGEM MANUAL';
        ivtivttotal.AsFloat := 0;
        ivtivtproprietario.AsString := '1';
        ivtetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
        ivtflacodigo.AsInteger := 1;
        ivtivtregistro.AsString := icecontagem.FieldByName('icedatahoraregistro').AsString;
        ivt.Post;

      end;

      icecontagem.Next;
    end;

  mostra.Position := 0;
  mostra.Visible := false;
  application.ProcessMessages;

  GeraInventarioNaoContados(vlSpdChave, true, copy(uqtabelapcedatahorafinal.AsString, 11, 8));
  GeraInventarioNaoContadosFiscal(vlSpdChave, true, copy(uqtabelapcedatahorafinal.AsString, 11, 8));

  showmessage('Encerramento concluido com sucesso!');

  end;


end;

procedure Tfrapce.ActExcluirContagemExecute(Sender: TObject);
begin
  { inherited; }

  if uqtabelapcedatahorafinal.AsString <> '' then
  begin
    showmessage('Só pode ser excluido itens em contagens abertas!');
    exit;
  end;

  if self.Autorizado(Sender) then
  begin

    if (Sender is TAction) then
      if (Sender as TAction).Tag > 0 then
      begin
        // Exclui registro selecionado
        if ActExcluirContagem.Enabled = false then
        begin
          showmessage('Excluir não autorizada!');
        end
        else
        begin
          if application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), Pchar('Excluir'),
            MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
          begin
            consulta.Close;
            consulta.SQL.Text := 'delete from ice where icechave=' + iceicechave.AsString;
            consulta.ExecSQL;

            try
              ice.Close;
              ice.Open;
              self.ActAtualizar.Execute;
            except

            end;
          end;
        end;
      end
      else
      begin

      end
    else
    begin
      showmessage('Verificar direitos de acesso!');
    end;
  end;

end;

procedure Tfrapce.ActIncluirContagemExecute(Sender: TObject);
begin
  inherited;
  if uqtabelapcedatahorafinal.AsString = '' then
  begin
    CriaFormulario(tfice, '', uqtabelapcechave.AsString);
  end
  else
  begin
    showmessage('Só pode ser incluido itens em contagens abertas!');
  end;

end;

procedure Tfrapce.ActIncluirExecute(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select count(pcechave) qtd from pce where pcedatahorafinal is null';
  consulta.Open;

  if consulta.FieldByName('qtd').AsInteger > 0 then
  begin
    showmessage('Não é possível iniciar duas contagens ao mesmo tempo!');
  end
  else
  begin
    CriaFormulario(tfpce, '', '');
  end;
end;

procedure Tfrapce.GerarInventarioFiscal(vspdchave: Integer);
var
  vlsaldo: Double;
  vlCompra: Double;

  vlVenda: Double;
  vlContagem: Double;
  vlDataFinal: String;

begin
  inherited;

  cfg.Close;
  cfg.ParamByName('cfgcodigo').AsInteger := 1;
  cfg.Open;

  ivt.Close;
  ivt.Open;

  spdinventarios.Close;
  spdinventarios.ParamByName('spdchave').AsInteger := vspdchave;
  spdinventarios.Open;

  vlDataFinal := spdinventariosspddatabalanco.AsString;

  consulta.Close;
  consulta.SQL.Text := 'delete from ivt where spdchave=' + vspdchave.TOString;
  consulta.ExecSQL;

  icecontagem.Close;
  icecontagem.ParamByName('pcechave').AsInteger := uqtabelapcechave.AsInteger;
  icecontagem.Open;

  mostra.Visible := true;
  mostra.Position := 0;
  mostra.max := icecontagem.RecordCount;

  vlsaldo := 0;
  vlCompra := 0;
  vlVenda := 0;
  vlContagem := 0;

  icecontagem.First;
  while not icecontagem.Eof do
  begin

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    comprasfiscal.Close;
    comprasfiscal.ParamByName('datafinalcontagem').AsDateTime := icecontagemicedatahoraregistro.AsDateTime;
    comprasfiscal.ParamByName('procodigo').AsInteger := icecontagemprocodigo.AsInteger;
    comprasfiscal.Open;

    vlCompra := comprasfiscal.FieldByName('qtdcompra').AsFloat;

    vendasfiscal.Close;
    vendasfiscal.ParamByName('datafinalcontagem').AsDateTime := icecontagemicedatahoraregistro.AsDateTime;
    vendasfiscal.ParamByName('procodigo').AsInteger := icecontagemprocodigo.AsInteger;
    vendasfiscal.Open;

    vlVenda := vendasfiscal.FieldByName('qtdvenda').AsFloat;

    vlsaldo := icecontagem.FieldByName('icequantidade').AsFloat + vlVenda - vlCompra;

    if ivt.locate('procodigo;ivtdescricao;spdchave;ivtregistro', vararrayof([icecontagem.FieldByName('procodigo').AsInteger, 'CONTAGEM GERADA',
      vspdchave, vlDataFinal + ' 23:59:59']), []) then
      ivt.Edit
    else
      ivt.append;

    ivtspdchave.AsInteger := vspdchave;
    ivtprocodigo.AsInteger := icecontagem.FieldByName('procodigo').AsInteger;
    ivtpcccodigo.AsString := '1.01.03.01.01';
    ivtivtquantidade.AsFloat := vlsaldo;
    ivtivtvalor.AsFloat := 0;
    ivtivtdescricao.AsString := 'CONTAGEM GERADA';
    ivtivttotal.AsFloat := 0;
    ivtivtproprietario.AsString := '1';
    ivtetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
    ivtflacodigo.AsInteger := 1;
    ivtivtregistro.AsString := vlDataFinal + ' 23:59:59';
    ivt.Post;

    icecontagem.Next;
  end;

end;

procedure Tfrapce.GerarInventarioDisponivel(vspdchave: Integer);
var
  vlsaldo: Double;
  vlCompra: Double;

  vlVenda: Double;
  vlContagem: Double;
  vlDataFinal: String;

begin
  inherited;

  cfg.Close;
  cfg.ParamByName('cfgcodigo').AsInteger := 1;
  cfg.Open;

  ivd.Close;
  ivd.Open;

  spdinventarios.Close;
  spdinventarios.ParamByName('spdchave').AsInteger := vspdchave;
  spdinventarios.Open;

  vlDataFinal := spdinventariosspddatabalanco.AsString;

  consulta.Close;
  consulta.SQL.Text := 'delete from ivd where spdchave=' + vspdchave.TOString;
  consulta.ExecSQL;

  icecontagem.Close;
  icecontagem.ParamByName('pcechave').AsInteger := uqtabelapcechave.AsInteger;
  icecontagem.Open;

  mostra.Visible := true;
  mostra.Position := 0;
  mostra.max := icecontagem.RecordCount;

  vlsaldo := 0;
  vlCompra := 0;
  vlVenda := 0;
  vlContagem := 0;

  icecontagem.First;
  while not icecontagem.Eof do
  begin

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    compras.Close;
    compras.ParamByName('datafinalcontagem').AsDateTime := icecontagemicedatahoraregistro.AsDateTime;
    compras.ParamByName('procodigo').AsInteger := icecontagemprocodigo.AsInteger;
    compras.Open;

    vlCompra := compras.FieldByName('qtdcompra').AsFloat;

    vendas.Close;
    vendas.ParamByName('datafinalcontagem').AsDateTime := icecontagemicedatahoraregistro.AsDateTime;
    vendas.ParamByName('procodigo').AsInteger := icecontagemprocodigo.AsInteger;
    vendas.Open;

    vlVenda := vendas.FieldByName('qtdvenda').AsFloat;

    vlsaldo := icecontagem.FieldByName('icequantidade').AsFloat + vlVenda - vlCompra;

    { if vlsaldo < 0 then
      vlsaldo := 0; }

    if ivd.locate('procodigo;ivddescricao;spdchave;ivdregistro', vararrayof([icecontagem.FieldByName('procodigo').AsInteger, 'CONTAGEM GERADA',
      vspdchave, vlDataFinal + ' 23:59:59']), []) then
      ivd.Edit
    else
      ivd.append;

    ivdspdchave.AsInteger := vspdchave;
    ivdprocodigo.AsInteger := icecontagem.FieldByName('procodigo').AsInteger;
    ivdpcccodigo.AsString := '1.01.03.01.01';
    ivdivdquantidade.AsFloat := vlsaldo;
    ivdivdvalor.AsFloat := 0;
    ivdivddescricao.AsString := 'CONTAGEM GERADA';
    ivdivdtotal.AsFloat := 0;
    ivdivdproprietario.AsString := '1';
    ivdetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
    ivdflacodigo.AsInteger := 1;
    ivdivdregistro.AsString := vlDataFinal + ' 23:59:59';
    ivd.Post;

    icecontagem.Next;
  end;

end;

procedure Tfrapce.GeraInventarioNaoContadosFiscal(vspdchave: Integer; vZerar: Boolean = false; vHora: string = ' 23:59:59');
var
  vlDataFinal: string;
  vlsaldo: Double;
  vlCompra: Double;
  vlVenda: Double;
  vlContagem: Double;

begin

  vlsaldo := 0;
  vlCompra := 0;
  vlVenda := 0;
  vlContagem := 0;
  mostra.Position := 0;

  spdinventarios.Close;
  spdinventarios.ParamByName('spdchave').AsInteger := vspdchave;
  spdinventarios.Open;

  vlDataFinal := spdinventariosspddatabalanco.AsString + vHora;

  mostra.Visible := true;
  application.ProcessMessages;

  pro.Close;
  pro.Open;

  mostra.max := pro.RecordCount;
  while not pro.Eof do
  begin

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    if not icecontagem.locate('procodigo', proprocodigo.AsInteger, []) then
    begin
      if vZerar then
      begin
        vlsaldo := 0;
      end
      else
      begin

        comprasfiscal.Close;
        comprasfiscal.ParamByName('datafinalcontagem').AsDateTime := uqtabelapcedatahorafinal.AsDateTime;
        comprasfiscal.ParamByName('procodigo').AsInteger := proprocodigo.AsInteger;
        comprasfiscal.Open;

        vlCompra := comprasfiscal.FieldByName('qtdcompra').AsFloat;

        vendasfiscal.Close;
        vendasfiscal.ParamByName('datafinalcontagem').AsDateTime := uqtabelapcedatahorafinal.AsDateTime;
        vendasfiscal.ParamByName('procodigo').AsInteger := proprocodigo.AsInteger;
        vendasfiscal.Open;
        vlVenda := vendasfiscal.FieldByName('qtdvenda').AsFloat;

        vlsaldo := vlVenda - vlCompra;

      end;

      if ivt.locate('procodigo;ivtdescricao;spdchave;ivtregistro', vararrayof([proprocodigo.AsInteger, 'NÃO CONTADO', vspdchave, vlDataFinal]), [])
      then
        ivt.Edit
      else
        ivt.append;
      ivtspdchave.AsInteger := vspdchave;
      ivtprocodigo.AsInteger := proprocodigo.AsInteger;
      ivtpcccodigo.AsString := '1.01.03.01.01';
      ivtivtquantidade.AsFloat := vlsaldo;
      ivtivtvalor.AsFloat := 0;
      ivtivtdescricao.AsString := 'NÃO CONTADO';
      ivtivttotal.AsFloat := 0;
      ivtivtproprietario.AsString := '1';
      ivtetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
      ivtflacodigo.AsInteger := 1;

      ivtivtregistro.AsString := vlDataFinal;

      ivt.Post;

    end;
    pro.Next;
  end;
  mostra.Position := 0;
  mostra.Visible := false;
end;

procedure Tfrapce.GeraInventarioNaoContados(vspdchave: Integer; vZerar: Boolean = false; vHora: string = ' 23:59:59');
var
  vlDataFinal: string;
  vlsaldo: Double;
  vlCompra: Double;
  vlVenda: Double;
  vlContagem: Double;

begin

  vlsaldo := 0;
  vlCompra := 0;
  vlVenda := 0;
  vlContagem := 0;
  mostra.Position := 0;

  spdinventarios.Close;
  spdinventarios.ParamByName('spdchave').AsInteger := vspdchave;
  spdinventarios.Open;

  vlDataFinal := spdinventariosspddatabalanco.AsString + vHora;
  // vlDataFinal := uqtabelapcedatahorafinal.AsString;

  mostra.Visible := true;
  application.ProcessMessages;

  pro.Close;
  pro.Open;

  mostra.max := pro.RecordCount;
  while not pro.Eof do
  begin

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    if not icecontagem.locate('procodigo', proprocodigo.AsInteger, []) then
    begin
      if vZerar then
      begin
        vlsaldo := 0;
      end
      else
      begin

        compras.Close;
        compras.ParamByName('datafinalcontagem').AsDateTime := uqtabelapcedatahorafinal.AsDateTime;
        compras.ParamByName('procodigo').AsInteger := proprocodigo.AsInteger;
        compras.Open;

        vlCompra := compras.FieldByName('qtdcompra').AsFloat;

        vendas.Close;
        vendas.ParamByName('datafinalcontagem').AsDateTime := uqtabelapcedatahorafinal.AsDateTime;
        vendas.ParamByName('procodigo').AsInteger := proprocodigo.AsInteger;
        vendas.Open;
        vlVenda := vendas.FieldByName('qtdvenda').AsFloat;

        vlsaldo := vlVenda - vlCompra;

      end;

      if ivd.locate('procodigo;ivddescricao;spdchave;ivdregistro', vararrayof([proprocodigo.AsInteger, 'NÃO CONTADO', vspdchave, vlDataFinal]), [])
      then
        ivd.Edit
      else
        ivd.append;
      ivdspdchave.AsInteger := vspdchave;
      ivdprocodigo.AsInteger := proprocodigo.AsInteger;
      ivdpcccodigo.AsString := '1.01.03.01.01';
      ivdivdquantidade.AsFloat := vlsaldo;
      ivdivdvalor.AsFloat := 0;
      ivdivddescricao.AsString := 'NÃO CONTADO';
      ivdivdtotal.AsFloat := 0;
      ivdivdproprietario.AsString := '1';
      ivdetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
      ivdflacodigo.AsInteger := 1;

      ivdivdregistro.AsString := vlDataFinal;

      ivd.Post;

    end;
    pro.Next;
  end;
  mostra.Position := 0;
  mostra.Visible := false;
end;

procedure Tfrapce.ActInventarioFiscalInicialExecute(Sender: TObject);
var
  vlSpdChave: Integer;

begin
  consulta.Close;
  consulta.SQL.Text := 'select max(spdchave) spdchave from spd where spdexercicio=2021';
  consulta.Open;

  vlSpdChave := consulta.FieldByName('spdchave').AsInteger;

  GerarInventarioFiscal(vlSpdChave);

  GeraInventarioNaoContadosFiscal(vlSpdChave);

end;

procedure Tfrapce.ActInventarioInicialExecute(Sender: TObject);
var
  vlSpdChave: Integer;

begin
  consulta.Close;
  consulta.SQL.Text := 'select max(spdchave) spdchave from spd where spdexercicio=2021';
  consulta.Open;

  vlSpdChave := consulta.FieldByName('spdchave').AsInteger;

  GerarInventarioDisponivel(vlSpdChave);

  GeraInventarioNaoContados(vlSpdChave);

end;

procedure Tfrapce.DBGIceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrapce.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
  begin
    if uqtabelapcechave.AsString <> '' then
    begin
      ice.Close;
      ice.ParamByName('pcechave').AsInteger := uqtabelapcechave.AsInteger;
      ice.Open;
    end;
  end;
end;

end.
