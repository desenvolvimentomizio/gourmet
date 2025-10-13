unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, DBAccess, Uni, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, uniLabel, unimLabel, unimPanel, uniTimer,
  unimTimer, uniButton, uniBitBtn, unimBitBtn, dateutils, unimButton;

type
  TMainmForm = class(TUnimForm)
    UnimDBGridPedidos: TUnimDBGrid;
    UniDataSourceImm: TUniDataSource;
    AtualzadorAutomatico: TUnimTimer;
    unimPltopo: TUnimPanel;
    lbRelogio: TUnimLabel;
    UnimPanelSelecao: TUnimPanel;
    UnimBitBtnSelecionar: TUnimBitBtn;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    procedure AtualzadorAutomaticoTimer(Sender: TObject);
    procedure UnimDBGridPedidosClick(Sender: TObject);
    procedure UnimBitBtnSelecionarClick(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpcznchave: String;
    vpMitCodigo: String;
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UnimFormClb, ufsetor;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
var
  vlrecno: integer;
begin

  try
    vpMitCodigo := UniApplication.Cookies.Values['ControleProducaoSetor'];

    UniMainModule.imm.DisableControls;
    vlrecno := UniMainModule.imm.RecNo;

    UniMainModule.imm.close;
    UniMainModule.imm.ParamByName('tcicodigo').AsString := vpMitCodigo;
    UniMainModule.imm.Open;

    UniMainModule.imm.RecNo := vlrecno;
  finally
    UniMainModule.imm.EnableControls;
  end;

end;

procedure TMainmForm.UnimBitBtn2Click(Sender: TObject);
begin

  fsetor.ShowFormModal(
    procedure
    begin
      UniMainModule.vpMitCodigo := UniMainModule.mittcicodigo.AsString;
      vpMitCodigo := UniMainModule.mittcicodigo.AsString;

      UniMainModule.imm.close;
      UniMainModule.imm.ParamByName('tcicodigo').AsString := vpMitCodigo;
      UniMainModule.imm.Open;

      MainmForm.Caption := UniMainModule.mitmitidentificacao.AsString + ' - CONTROLE DE PRODUÇÃO';

      UniApplication.Cookies.SetCookie('ControleProducaoSetor', vpMitCodigo, Now + (760.0 / 1440.0));

    end);

end;

procedure TMainmForm.UnimBitBtnSelecionarClick(Sender: TObject);
var
  i: integer;
  vlPodeAtualizar: Boolean;
  vlrecno: integer;
  vlPodeDesmarcar: Boolean;
  vlOrcchave: string;

  Seconds: Word;

begin

  if MainModule.UniMainModule.Conexao.Connected then
  begin

    MainModule.UniMainModule.consulta.close;
    MainModule.UniMainModule.consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    MainModule.UniMainModule.consulta.Open;
    if MainModule.UniMainModule.consulta.IsEmpty then
    begin
      Showmessage('Atenção:' + ''#13'' + ''#13'' + 'A Cozinha não esta aberta, solicite a abertura da Cozinha!');
      Application.Terminate;
    end
    else
    begin
      vpcznchave := MainModule.UniMainModule.consulta.Fields[0].AsString;
    end;

    MainModule.UniMainModule.consulta.close;
    MainModule.UniMainModule.consulta.SQL.Text := 'select count(immchave) marcas from imm where immrecebido=1 and cznchave=' + vpcznchave;
    MainModule.UniMainModule.consulta.Open;

    if MainModule.UniMainModule.consulta.FieldByName('marcas').AsInteger <> 0 then
    begin

      vlPodeDesmarcar := false;

      fUnimFormClb.ShowFormModal(
        procedure
        begin

          UniMainModule.clb.First;
          while not UniMainModule.clb.Eof do
          begin

            if UniMainModule.clbclbmarca.AsString = '>>' then
            begin

              UniMainModule.imm.First;
              while not UniMainModule.imm.Eof do
              begin

                if UniMainModule.immmarca.AsString = '>>' then
                begin
                  if not UniMainModule.imp.Active then
                    UniMainModule.imp.Open;

                  UniMainModule.imp.Append;
                  UniMainModule.impclbcodigo.AsInteger := UniMainModule.clbclbcodigo.AsInteger;
                  UniMainModule.impitmchave.AsInteger := 0;
                  UniMainModule.impitochave.AsInteger := UniMainModule.immitochave.AsInteger;
                  UniMainModule.impimpinicio.AsDateTime := UniMainModule.immimmhoraimpresso.AsDateTime;

                  UniMainModule.impimpfinal.AsDateTime := Now();

                  UniMainModule.imp.Post;

                end;

                UniMainModule.imm.Next;
              end;

              UniMainModule.clb.Edit;
              UniMainModule.clbclbmarca.AsString := '';
              UniMainModule.clb.Post;
              vlPodeDesmarcar := true;
            end;

            UniMainModule.clb.Next;
          end;
          if vlPodeDesmarcar then
          begin
            UniMainModule.imm.First;
            while not UniMainModule.imm.Eof do
            begin
              if UniMainModule.immmarca.AsString = '>>' then
              begin
                UniMainModule.imm.Edit;
                UniMainModule.immimmrecebido.AsInteger := 2;
                UniMainModule.immpdscodigo.AsInteger := 3;
                UniMainModule.imm.Post;

                UniMainModule.consulta.close;
                UniMainModule.consulta.SQL.Text := 'update imm set pdscodigo=3 where immchave=' + UniMainModule.immimmchave.AsString;
                UniMainModule.consulta.ExecSQL;

                UniMainModule.consulta.close;
                UniMainModule.consulta.SQL.Text := 'select orcchave from ito where itochave=' + UniMainModule.immitochave.AsString;
                UniMainModule.consulta.Open;

                vlOrcchave := UniMainModule.consulta.FieldByName('orcchave').AsString;

                UniMainModule.consulta.close;
                UniMainModule.consulta.SQL.Text := 'update orc set pdscodigo=3 where orcchave=' + vlOrcchave +
                  ' and (select count(imm.pdscodigo) prontos from imm,ito,gri,pro WHERE  ito.procodigo=pro.procodigo AND pro.grpcodigo=gri.gricodigo and gri.tcicodigo=imm.tcicodigo  and  imm.itochave=ito.itochave and ito.orcchave='
                  + vlOrcchave + ' and imm.pdscodigo=2 and ito.procodigo NOT IN (SELECT procodigo from bai))=0';
                UniMainModule.consulta.ExecSQL;

              end;

              UniMainModule.imm.Next;
            end;

            // teste
          end;

          UniMainModule.imm.Refresh;

        end);

    end
    else
    begin
      Showmessage('Atenção:' + ''#13'' + ''#13'' + 'É necessário selecionar  item para atribuir produção!');

    end;

  end;

end;

procedure TMainmForm.UnimDBGridPedidosClick(Sender: TObject);
var
  vlrecno: integer;
begin
  if pos('TODOS SETORES', uppercase(self.Caption)) > 0 then
  begin

  end
  else
  begin

    try

      UniMainModule.imm.DisableControls;
      vlrecno := UniMainModule.imm.RecNo;

      if UniMainModule.immhorapedido.AsString = '' then
      begin
        Showmessage('Este item ainda nao foi impresso, não pode ser ser selecionado!');
      end
      else if UniMainModule.immstocodigo.AsInteger = 88 then
      begin
        Showmessage('Este item foi CANCELADO, não pode ser ser selecionado!');
      end
      else
      begin

        UniMainModule.imm.Edit;
        if UniMainModule.immimmrecebido.AsString = '1' then
          UniMainModule.immimmrecebido.AsString := '0'
        else
          UniMainModule.immimmrecebido.AsString := '1';
        UniMainModule.imm.Post;

        UniMainModule.imm.RefreshRecord;
        UniMainModule.imm.Refresh;

      end;
    finally

      UniMainModule.imm.RecNo := vlrecno;
      UniMainModule.imm.EnableControls;
    end;

  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  vpMitCodigo := UniApplication.Cookies.Values['ControleProducaoSetor'];
  AtualzadorAutomatico.Interval := (UniMainModule.cfgcfgmgoutempoatuproducao.AsInteger * 1000);

end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin

  { if vpMitCodigo='' then
    vpMitCodigo:='0';



    if vpMitCodigo<>'' then
    begin
    UniMainModule.imm.close;
    UniMainModule.imm.ParamByName('tcicodigo').AsString := vpMitCodigo;
    UniMainModule.imm.Open;
    if not UniMainModule.imm.IsEmpty then
    begin
    MainmForm.Caption := UniMainModule.mitmitidentificacao.AsString + ' - CONTROLE DE PRODUÇÃO';
    end;
    end; }

end;

procedure TMainmForm.AtualzadorAutomaticoTimer(Sender: TObject);
var
  i: integer;
  vlPodeAtualizar: Boolean;
  vlrecno: integer;

begin
  vpMitCodigo := UniApplication.Cookies.Values['ControleProducaoSetor'];

  if vpMitCodigo = '' then
    vpMitCodigo := '0';

  if self.Caption = 'TODOS SETORES - Controle de Produção' then
    vpMitCodigo := '0';

  vlPodeAtualizar := true;

  lbRelogio.Caption := timetostr(Now());
  lbRelogio.Repaint;

  if not MainModule.UniMainModule.Conexao.Connected then
  begin
    try
      MainModule.UniMainModule.Conexao.Connect;
    except
    end;

  end;

  if MainModule.UniMainModule.Conexao.Connected then
  begin

    MainModule.UniMainModule.consulta.close;
    MainModule.UniMainModule.consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
    MainModule.UniMainModule.consulta.Open;
    if MainModule.UniMainModule.consulta.IsEmpty then
    begin
      Showmessage('Atenção:' + ''#13'' + ''#13'' + 'A Cozinha não esta aberta, solicite a abertura da Cozinha!');
      Application.Terminate;
    end
    else
    begin
      vpcznchave := MainModule.UniMainModule.consulta.Fields[0].AsString;
    end;

    MainModule.UniMainModule.consulta.close;
    MainModule.UniMainModule.consulta.SQL.Text := 'SELECT COUNT( imm.immchave) marcas FROM pro, gri, ito, imm, czn, clb,  orc, tci,  mit ';
    MainModule.UniMainModule.consulta.SQL.Add(' WHERE ito.itochave = imm.itochave ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND pro.procodigo = ito.procodigo ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND pro.grpcodigo = gri.grpcodigo ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND imm.cznchave= czn.cznchave ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND cznfechamento IS NULL ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND orc.orcchave = ito.orcchave ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND gri.tcicodigo =tci.tcicodigo ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND mit.mitcodigo=tci.mitcodigo ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND imm.clbcodigo=clb.clbcodigo ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND orc.stocodigo <> 88 ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND ito.stocodigo <> 88 ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND imm.clbcodigoent = 0 ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND imm.immrecebido = 1 ');
    MainModule.UniMainModule.consulta.SQL.Add(' AND gri.gricontrolaproducao=1 ');
    MainModule.UniMainModule.consulta.SQL.Add(' and immrecebido<>2 ');
    MainModule.UniMainModule.consulta.SQL.Add(' and czn.cznchave=' + vpcznchave);
    MainModule.UniMainModule.consulta.SQL.Add(' AND  if(imm.immnumepedido<5000, imm.immhoraimprimir is not null,true) ');
    MainModule.UniMainModule.consulta.SQL.Add(' and if(:tcicodigo=0,1=1,tci.tcicodigo=:tcicodigo) ');
    MainModule.UniMainModule.consulta.SQL.Add(' order by imm.immchave ');
    MainModule.UniMainModule.consulta.ParamByName('tcicodigo').AsString := vpMitCodigo;

    MainModule.UniMainModule.consulta.Open;

    if MainModule.UniMainModule.consulta.FieldByName('marcas').AsInteger = 0 then
    begin

      vlPodeAtualizar := true;
      UnimLabel1.Caption := 'PODE ATUALIZAR';
    end
    else
    begin
      vlPodeAtualizar := false;
      UnimLabel1.Caption := 'NÃO ATUALIZA';
    end;

    if MainModule.UniMainModule.cfgcfgmgouatualizaproducao.AsInteger = 1 then
    begin
      vlPodeAtualizar := true;
    end;

    if vlPodeAtualizar then
    begin

      vlrecno := UniMainModule.imm.RecNo;
      // UniMainModule.imm.DisableControls;
      UnimDBGridPedidos.Repaint;

      UniMainModule.imm.close;
      UniMainModule.imm.ParamByName('tcicodigo').AsString := vpMitCodigo;
      UniMainModule.imm.Open;

      UniMainModule.imm.RecNo := vlrecno;
      // UniMainModule.imm.EnableControls;

    end;

  end;

end;

initialization

RegisterAppFormClass(TMainmForm);

end.
