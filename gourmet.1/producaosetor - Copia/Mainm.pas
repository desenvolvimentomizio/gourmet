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
    procedure AtualzadorAutomaticoTimer(Sender: TObject);
    procedure UnimDBGridPedidosClick(Sender: TObject);
    procedure UnimBitBtnSelecionarClick(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
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
  uniGUIVars, MainModule, uniGUIApplication, UnimFormClb;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
var
  vlrecno: integer;
begin

  try

    UniMainModule.imm.DisableControls;
    vlrecno := UniMainModule.imm.RecNo;
    UniMainModule.imm.Refresh;
    UniMainModule.imm.RecNo := vlrecno;
  finally
    UniMainModule.imm.EnableControls;
  end;

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

    MainModule.UniMainModule.consulta.Close;
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

    MainModule.UniMainModule.consulta.Close;
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
                  UniMainModule.impimpinicio.AsString := datetostr(now()) + ' ' + UniMainModule.immhorapedido.AsString + ':00';

                  UniMainModule.impimpfinal.asfloat := IncMinute(UniMainModule.impimpinicio.AsDateTime, (MinuteOfTheDay(StrToTime(UniMainModule.immhorapedido.AsString + ':00'))));

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

                UniMainModule.consulta.Close;
                UniMainModule.consulta.SQL.Text := 'update imm set pdscodigo=3 where immchave=' + UniMainModule.immimmchave.AsString;
                UniMainModule.consulta.ExecSQL;

                UniMainModule.consulta.Close;
                UniMainModule.consulta.SQL.Text := 'select orcchave from ito where itochave=' + UniMainModule.immitochave.AsString;
                UniMainModule.consulta.Open;

                vlOrcchave := UniMainModule.consulta.FieldByName('orcchave').AsString;

                UniMainModule.consulta.Close;
                UniMainModule.consulta.SQL.Text := 'update orc set pdscodigo=3 where orcchave=' + vlOrcchave +
                  ' and (select count(imm.pdscodigo) prontos from imm,ito,gri,pro WHERE  ito.procodigo=pro.procodigo AND pro.grpcodigo=gri.gricodigo AND gri.gripedidoaux=0 and gri.tcicodigo=imm.tcicodigo  and  imm.itochave=ito.itochave and ito.orcchave='
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

  try

    UniMainModule.imm.DisableControls;
    vlrecno := UniMainModule.imm.RecNo;

    if UniMainModule.immhorapedido.AsString = '' then
    begin
      Showmessage('Este item ainda nao foi impresso, não pode ser ser selecionado!');
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

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
 AtualzadorAutomatico.Interval:=(UniMainModule.cfgcfgmgoutempoatuproducao.AsInteger*1000);
end;

procedure TMainmForm.AtualzadorAutomaticoTimer(Sender: TObject);
var
  i: integer;
  vlPodeAtualizar: Boolean;
  vlrecno: integer;

begin

  vlPodeAtualizar := true;

  lbRelogio.Caption := timetostr(now());
  lbRelogio.Repaint;

  if MainModule.UniMainModule.Conexao.Connected then
  begin

    MainModule.UniMainModule.consulta.Close;
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

    MainModule.UniMainModule.consulta.Close;
    MainModule.UniMainModule.consulta.SQL.Text := 'select count(immchave) marcas from imm where immrecebido=1 and cznchave=' + vpcznchave;
    MainModule.UniMainModule.consulta.Open;

    if MainModule.UniMainModule.consulta.FieldByName('marcas').AsInteger = 0 then
    begin

      vlPodeAtualizar := true;
    end
    else
    begin
      vlPodeAtualizar := false;
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
      MainModule.UniMainModule.imm.Refresh;
      MainModule.UniMainModule.clb.Refresh;

      UniMainModule.imm.RecNo := vlrecno;
      // UniMainModule.imm.EnableControls;

    end;

  end;

end;

initialization

RegisterAppFormClass(TMainmForm);

end.
