unit ufrapto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, System.ImageList, Vcl.ImgList,
  NBioAPI_Type, ufuncoes,
  BSPInter, IndexSearchInter, IndexSearchType, Vcl.ComCtrls,  DateUtils,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrapto = class(Tfrabase)
    uqtabelaptochave: TIntegerField;
    uqtabelaptodata: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaptoiniciomanha: TTimeField;
    uqtabelaptofinalmanha: TTimeField;
    uqtabelaptoiniciotarde: TTimeField;
    uqtabelaptofinaltarde: TTimeField;
    uqtabelaclbautorizaextra: TIntegerField;
    uqtabelaptomotivoextra: TStringField;
    uqtabelaptoinicioextra: TTimeField;
    uqtabelaptofinalextra: TTimeField;
    uqtabelaclbidentificacao: TStringField;
    ActBiometria: TAction;
    ActRegistro: TAction;
    progressIdentify: TProgressBar;
    CODIGO: TEdit;
    pnome: TPanel;
    LVCandidate: TListView;
    LVUsers: TListView;
    pto: TUniQuery;
    ptoptochave: TIntegerField;
    ptoptodata: TDateField;
    ptoclbcodigo: TIntegerField;
    ptoptoiniciomanha: TTimeField;
    ptoptofinalmanha: TTimeField;
    ptoptoiniciotarde: TTimeField;
    ptoptofinaltarde: TTimeField;
    ptoclbautorizaextra: TIntegerField;
    ptoptomotivoextra: TStringField;
    ptoptoinicioextra: TTimeField;
    ptoptofinalextra: TTimeField;
    uqtabelaptodifinimanha: TTimeField;
    uqtabelaptodiffinmanha: TTimeField;
    uqtabelaptodifinitarde: TTimeField;
    uqtabelaptodiffintarde: TTimeField;
    uqtabelaptohorasnormais: TTimeField;
    uqtabelaptohorasextras: TTimeField;
    uqtabelaptohorasfaltas: TTimeField;
    ActCalcular: TAction;
    cpto: TUniQuery;
    cptoptochave: TIntegerField;
    cptoptodata: TDateField;
    cptoclbcodigo: TIntegerField;
    cptoptoiniciomanha: TTimeField;
    cptoptofinalmanha: TTimeField;
    cptoptoiniciotarde: TTimeField;
    cptoptofinaltarde: TTimeField;
    cptoclbautorizaextra: TIntegerField;
    cptoptomotivoextra: TStringField;
    cptoptoinicioextra: TTimeField;
    cptoptofinalextra: TTimeField;
    cptoptodifinimanha: TTimeField;
    cptoptodiffinmanha: TTimeField;
    cptoptodifinitarde: TTimeField;
    cptoptodiffintarde: TTimeField;
    cptoptohorasnormais: TTimeField;
    cptoptohorasextras: TTimeField;
    cptoptohorasfaltas: TTimeField;
    hrt: TUniQuery;
    hrthrtinimanha: TTimeField;
    hrthrtfinmanha: TTimeField;
    hrthrtchave: TIntegerField;
    hrthrtinitarde: TTimeField;
    hrthrtfintarde: TTimeField;
    cptoptotipodifinimanha: TIntegerField;
    cptoptotipodiffinmanha: TIntegerField;
    cptoptotipodifinitarde: TIntegerField;
    cptoptotipodiffintarde: TIntegerField;
    uqtabelaptotipodifinimanha: TIntegerField;
    uqtabelaptotipodiffinmanha: TIntegerField;
    uqtabelaptotipodifinitarde: TIntegerField;
    uqtabelaptotipodiffintarde: TIntegerField;
    uqtabelaptotipositinimanha: TIntegerField;
    uqtabelaptotipositfinmanha: TIntegerField;
    uqtabelaptotipositinitarde: TIntegerField;
    uqtabelaptotipositfintarde: TIntegerField;
    cptoptotipositinimanha: TIntegerField;
    cptoptotipositfinmanha: TIntegerField;
    cptoptotipositinitarde: TIntegerField;
    cptoptotipositfintarde: TIntegerField;
    domingo: TUniQuery;
    domingoptochave: TIntegerField;
    domingoptodata: TDateField;
    domingoclbcodigo: TIntegerField;
    domingoptoiniciomanha: TTimeField;
    domingoptofinalmanha: TTimeField;
    domingoptoiniciotarde: TTimeField;
    domingoptofinaltarde: TTimeField;
    domingoclbautorizaextra: TIntegerField;
    domingoptomotivoextra: TStringField;
    domingoptoinicioextra: TTimeField;
    domingoptofinalextra: TTimeField;
    domingoptotipositinimanha: TIntegerField;
    domingoptotipositfinmanha: TIntegerField;
    domingoptotipositinitarde: TIntegerField;
    domingoptotipositfintarde: TIntegerField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    uqtabeladiasemana: TStringField;
    cptoptoextramanha: TTimeField;
    cptoptofaltamanha: TTimeField;
    cptoptofaltatarde: TTimeField;
    uqtabelaptoextramanha: TTimeField;
    uqtabelaptofaltamanha: TTimeField;
    uqtabelaptofaltatarde: TTimeField;
    uqtabelaptoextratarde: TTimeField;
    cptoptoextratarde: TTimeField;
    cfg: TUniQuery;
    cfgcfgmodeloleitor: TIntegerField;
    cfgcfgarquivobio: TBlobField;
    abono: TUniQuery;
    abonoptochave: TIntegerField;
    abonoptodata: TDateField;
    abonoclbcodigo: TIntegerField;
    abonoptoiniciomanha: TTimeField;
    abonoptofinalmanha: TTimeField;
    abonoptoiniciotarde: TTimeField;
    abonoptofinaltarde: TTimeField;
    abonoclbautorizaextra: TIntegerField;
    abonoptomotivoextra: TStringField;
    abonoptoinicioextra: TTimeField;
    abonoptofinalextra: TTimeField;
    abonoptotipositinimanha: TIntegerField;
    abonoptotipositfinmanha: TIntegerField;
    abonoptotipositinitarde: TIntegerField;
    abonoptotipositfintarde: TIntegerField;
    ptoptotipodifinimanha: TIntegerField;
    ptoptotipodiffinmanha: TIntegerField;
    ptoptotipodifinitarde: TIntegerField;
    ptoptotipodiffintarde: TIntegerField;
    ptoptotipositinimanha: TIntegerField;
    ptoptotipositfinmanha: TIntegerField;
    ptoptotipositinitarde: TIntegerField;
    ptoptotipositfintarde: TIntegerField;
    uqtabelahrtchave: TIntegerField;
    hrthrtidentificacao: TStringField;
    uqtabelahrtidentificacao: TStringField;
    tipohorario: TUniQuery;
    tipohorariohrtchave: TIntegerField;
    tipohorariohrtinimanha: TTimeField;
    tipohorariohrtfinmanha: TTimeField;
    tipohorariohrtinitarde: TTimeField;
    tipohorariohrtfintarde: TTimeField;
    tipohorariohrtidentificacao: TStringField;
    cht: TUniQuery;
    ptohrtchave: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActBiometriaExecute(Sender: TObject);
    procedure ActRegistroExecute(Sender: TObject);
    procedure ActCalcularExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    procedure ativaleitor;
    { Private declarations }
  public
    { Public declarations }
    m_hFIR: DWORD;

    phandler: THandle;
    nAddr: THandle;
    pPassword: THandle;

  end;

var
  frapto: Tfrapto;

  // Início ID do Módulo frapto
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Registros de Ponto';

  // Fim ID do Módulo frapto

implementation

uses
  ufpto, ufbiome, SynoAPIEx, ufMensagemLeitor;

{$R *.dfm}

function MyIndexSearchCallBack(pCallbackParam0: NBioAPI_INDEXSEARCH_CALLBACK_PARAM_PTR_0; pUserParam: Pointer): DWORD; stdcall;
var
  pParam0: NBioAPI_INDEXSEARCH_CALLBACK_PARAM_PTR_0;
  pInfo: TINDEX_INFO_PTR;
  nResult: Integer;
  dwTempTime: DWORD;
  dwStartEx, dwTimeout: DWORD;
  dwVal: DWORD;

begin
  pParam0 := pCallbackParam0;
  pInfo := pUserParam;

  dwStartEx := pInfo^.dwStartEx;
  dwTimeout := pInfo^.dwTimeout;

  nResult := NBioAPI_INDEXSEARCH_CALLBACK_OK;

  if (dwTimeout > 0) then
  begin
    dwTempTime := GetTickCount;
    dwVal := dwTempTime - dwStartEx;

    if (dwVal <= dwTimeout) then
    begin
      { fbuscabiome.lblCallback.Caption := 'ID: ' + IntToStr(pParam0^.FpInfo.ID)
        + ' / Finger#:' + IntToStr(pParam0^.FpInfo.FingerID)
        + ' / Sample#:' + IntToStr(pParam0^.FpInfo.SampleNumber);

        fbuscabiome.progressIdentify.Position := pParam0^.ProgressPos; }
    end
    else
    begin
      nResult := NBioAPI_INDEXSEARCH_CALLBACK_STOP;
    end;

  end;

  result := nResult;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapto := Tfrapto.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapto := Tfrapto.Create(pCargaFrame);
  try
    frapto.CriaAcoesDeAcesso;
  finally
    frapto.Free;
  end;
end;

exports formuFrame, defineacesso;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfrapto.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpto, uqtabelaptochave.AsString, '');
end;

procedure Tfrapto.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpto, '', '');
end;

procedure Tfrapto.ActBiometriaExecute(Sender: TObject);
begin
  inherited;
  application.CreateForm(tfbiome, fbiome);
  fbiome.vpFlacodigo := acesso.Filial;

  cfg.Connection := self.ZCone;
  cfg.ParamByName('cfgcodigo').AsInteger := acesso.Filial;
  cfg.Open;

  fbiome.vlTipoLeitor := cfgcfgmodeloleitor.AsInteger;
  fbiome.cfg.Connection := self.ZCone;

  fbiome.clb.Connection := self.ZCone;
  fbiome.clb.Open;

  // fbiome.EdtUserID.Text := lmac.cliclicodigo.AsString;
  fbiome.ShowModal;
  // close;
end;

procedure Tfrapto.ActCalcularExecute(Sender: TObject);
var
  vlDiaSemana: Integer;
  vlDif: Double;

  vlExtraInicioManha: Ttime;
  vlExtraFinalManha: Ttime;

  vlExtraInicioTarde: Ttime;
  vlExtraFinalTarde: Ttime;

  vlFaltaInicioManha: Ttime;
  vlFaltaFinalManha: Ttime;

  vlFaltaInicioTarde: Ttime;
  vlFaltaFinalTarde: Ttime;

  vlDifToleravel: Ttime;
  vlfaltas: Ttime;

  vlUltimoDia: Tdate;
  vlDia: Tdate;

begin

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    if uqtabelaptotipositinimanha.AsInteger = 9 then
    begin
      consulta.close;
      consulta.SQL.Text := 'delete from pto where ptochave=' + uqtabelaptochave.AsString;
      consulta.ExecSQL;
    end;

    uqtabela.Next;
  end;

  uqtabela.Refresh;

  inherited;
  uqtabela.IndexFieldNames := 'ptodata';
  uqtabela.First;

  vlDia := uqtabelaptodata.AsDateTime;

  uqtabela.Last;
  vlUltimoDia := uqtabelaptodata.AsDateTime;
  clb.close;
  clb.Open;
  if uqtabela.RecordCount > 6 then
  begin
    while true do
    begin
      vlDia := IncDay(vlDia, 1);

      clb.First;
      while not clb.Eof do
      begin

        domingo.close;
        domingo.ParamByName('clbcodigo').AsInteger := clbclbcodigo.AsInteger;
        domingo.ParamByName('ptodata').AsDate := vlDia;
        domingo.Open;

        if domingo.IsEmpty then
        begin
          domingo.Append;
          domingoptodata.AsDateTime := vlDia;
          domingoclbcodigo.AsInteger := clbclbcodigo.AsInteger;
          domingoptoiniciomanha.AsString := '07:30:00';
          domingoptofinalmanha.AsString := '11:30:00';
          domingoptoiniciotarde.AsString := '13:30:00';
          domingoptofinaltarde.AsString := '17:30:00';
          domingoclbautorizaextra.AsFloat := 0;
          domingoptomotivoextra.AsFloat := 0;
          domingoptoinicioextra.AsFloat := 0;
          domingoptofinalextra.AsFloat := 0;
          domingoptotipositinimanha.AsFloat := 9;
          domingoptotipositfinmanha.AsFloat := 9;
          domingoptotipositinitarde.AsFloat := 9;
          domingoptotipositfintarde.AsFloat := 9;
          domingo.Post;
        end;

        clb.Next;
      end;

      if vlDia = vlUltimoDia then
        break;

    end;

  end;

   uqtabela.First;
  while not uqtabela.Eof do
  begin



          cht.close;
          cht.FilterSQL:='clbcodigo='+uqtabelaclbcodigo.AsString;
          cht.Open;

          pto.close;
          pto.ParamByName('ptodata').AsDate :=uqtabelaptodata.AsFloat;
          pto.ParamByName('clbcodigo').AsString := uqtabelaclbcodigo.AsString;
          pto.Open;

          if pto.IsEmpty then
            pto.Append
          else
            pto.edit;

          vlDiaSemana := dayofweek(ptoptodata.AsDateTime) - 1;
          case vlDiaSemana of
            0:
              ptohrtchave.AsInteger := cht.FieldByName('hrtdomingo').AsInteger;
            1:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsegunda').AsInteger;
            2:
              ptohrtchave.AsInteger := cht.FieldByName('hrtterca').AsInteger;
            3:
              ptohrtchave.AsInteger := cht.FieldByName('hrtquarta').AsInteger;
            4:
              ptohrtchave.AsInteger := cht.FieldByName('hrtquinta').AsInteger;
            5:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsexta').AsInteger;
            6:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsabado').AsInteger;
          end;


          pto.Post;


      uqtabela.Next;
  end;

   uqtabela.Close;
   uqtabela.Open;


  uqtabela.First;
  while not uqtabela.Eof do
  begin

    cpto.close;
    cpto.ParamByName('ptochave').AsInteger := uqtabelaptochave.AsInteger;

    cpto.Open;

    vlDiaSemana := dayofweek(cptoptodata.AsDateTime) - 1;

    abono.close;
    abono.ParamByName('clbcodigo').AsInteger := uqtabelaclbcodigo.AsInteger;
    abono.ParamByName('ptodata').AsDate := uqtabelaptodata.AsDateTime;
    abono.Open;

    if not abono.IsEmpty then
    begin
      abono.edit;

      if vlDiaSemana = 1 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end
      else if vlDiaSemana = 2 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;

        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end
      else if vlDiaSemana = 3 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end
      else if vlDiaSemana = 4 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end
      else if vlDiaSemana = 5 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end

      else if vlDiaSemana = 6 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end
      else if vlDiaSemana = 7 then
      begin
        hrt.close;
        hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
        hrt.Open;
        if (uqtabelahrtchave.AsString = '') or (uqtabelahrtchave.AsString = '0') then
        begin
          uqtabela.edit;
          uqtabelahrtchave.AsString := hrthrtchave.AsString;
          uqtabela.Post;
        end;

      end;

      if cptoptotipositinimanha.AsInteger = 2 then
      begin

        abonoptoiniciomanha.AsString := hrthrtinimanha.AsString;
      end;

      if cptoptotipositfinmanha.AsInteger = 2 then
      begin
        abonoptofinalmanha.AsString := hrthrtfinmanha.AsString;
      end;

      if cptoptotipositinitarde.AsInteger = 2 then
      begin
        abonoptoiniciotarde.AsString := hrthrtinitarde.AsString;
      end;

      if cptoptotipositfintarde.AsInteger = 2 then
      begin
        abonoptofinaltarde.AsString := hrthrtfintarde.AsString;
      end;

      abono.Post;
    end;
    uqtabela.Next;
  end;

  uqtabela.First;
  while not uqtabela.Eof do
  begin

    vlExtraInicioManha := 0;
    vlExtraFinalManha := 0;

    vlExtraInicioTarde := 0;
    vlExtraFinalTarde := 0;

    vlFaltaInicioManha := 0;
    vlFaltaFinalManha := 0;

    vlFaltaInicioTarde := 0;
    vlFaltaFinalTarde := 0;

    vlfaltas := 0;

    cpto.close;
    cpto.ParamByName('ptochave').AsInteger := uqtabelaptochave.AsInteger;
    cpto.Open;

    vlDiaSemana := dayofweek(cptoptodata.AsDateTime) - 1;

    if vlDiaSemana = 0 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end

    else if vlDiaSemana = 1 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end
    else if vlDiaSemana = 2 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end
    else if vlDiaSemana = 3 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end
    else if vlDiaSemana = 4 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end

    else if vlDiaSemana = 5 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end

    else if vlDiaSemana = 6 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end
    else if vlDiaSemana = 7 then
    begin
      hrt.close;
      hrt.ParamByName('hrtchave').AsInteger := uqtabelahrtchave.AsInteger;
      hrt.Open;
      if uqtabelahrtchave.AsString = '' then
      begin
        uqtabela.edit;
        uqtabelahrtchave.AsString := hrthrtchave.AsString;
        uqtabela.Post;
      end;

    end;

    cpto.edit;

    // manha - hora inicial

    vlDifToleravel := StrToTime('00:05:01');
    if hrthrtinimanha.AsFloat > 0 then
    begin

      if (uqtabelaptoiniciomanha.AsFloat - hrthrtinimanha.AsFloat) = 0 then
      begin
        cptoptodifinimanha.AsString := '00:00:01';
        cptoptotipodifinimanha.AsInteger := 9;
        cptoptohorasnormais.AsFloat := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat
      end
      else
      begin

        if uqtabelaptoiniciomanha.AsFloat < hrthrtinimanha.AsFloat then
        begin
          if uqtabelaptoiniciomanha.AsFloat = 0 then
          begin
            cptoptotipodifinimanha.AsInteger := 0;
          end
          else
          begin
            vlDif := (uqtabelaptoiniciomanha.AsFloat - hrthrtinimanha.AsFloat);
            if vlDif < 0 then
              vlDif := vlDif * -1;

            cptoptotipodifinimanha.AsInteger := 1;
          end;
        end;

        if uqtabelaptoiniciomanha.AsFloat > hrthrtinimanha.AsFloat then
        begin
          vlDif := (hrthrtinimanha.AsFloat - uqtabelaptoiniciomanha.AsFloat);
          if vlDif < 0 then
            vlDif := vlDif * -1;

          cptoptotipodifinimanha.AsInteger := 0;
        end;

        if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
        begin
          cptoptodifinimanha.AsFloat := uqtabelaptoiniciomanha.AsFloat - hrthrtinimanha.AsFloat;
          vlfaltas := vlfaltas + vlDif;

          if uqtabelaptoiniciomanha.AsFloat < hrthrtinimanha.AsFloat then
          begin
            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlExtraInicioManha := vlDif
            else
              vlExtraInicioManha := 0;

          end
          else if uqtabelaptoiniciomanha.AsFloat > hrthrtinimanha.AsFloat then
          begin
            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlFaltaInicioManha := vlDif
            else
              vlFaltaInicioManha := 0;

          end;

        end
        else
        begin
          cptoptodifinimanha.AsString := '00:00:01';
          cptoptotipodifinimanha.AsInteger := 9;

          if (uqtabelaptoiniciomanha.AsFloat = 0) and (uqtabelaptofinalmanha.AsFloat = 0) then
          begin

            cptoptohorasnormais.AsFloat := 0;
          end
          else
          begin
            cptoptohorasnormais.AsFloat := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat
          end;

        end;

      end;
    end
    else
    begin

      if (hrthrtinimanha.AsFloat = 0) and (hrthrtfinmanha.AsFloat = 0) then
      begin
        if (uqtabelaptoiniciomanha.AsFloat <> 0) and (uqtabelaptofinalmanha.AsFloat <> 0) then
        begin
          vlExtraInicioManha := uqtabelaptoiniciomanha.AsFloat;
          vlExtraFinalManha := uqtabelaptofinalmanha.AsFloat;

        end;
      end;

      cptoptodifinimanha.AsString := '00:00:01';
    end;


    // manha - hora final

    vlDif := 0;
    if hrthrtfinmanha.AsFloat > 0 then
    begin
      if (uqtabelaptofinalmanha.AsFloat - hrthrtfinmanha.AsFloat) = 0 then
      begin
        cptoptodiffinmanha.AsString := '00:00:01';
        cptoptotipodiffinmanha.AsInteger := 9;
      end
      else
      begin

        if uqtabelaptofinalmanha.AsFloat > hrthrtfinmanha.AsFloat then
        begin
          if uqtabelaptofinalmanha.AsFloat = 0 then
          begin
            cptoptotipodiffinmanha.AsInteger := 0;
            cptoptodiffinmanha.AsString := '00:00:01';
            vlfaltas := vlfaltas + (hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat)
          end
          else
          begin
            vlDif := (uqtabelaptofinalmanha.AsFloat - hrthrtfinmanha.AsFloat);
            if vlDif < 0 then
              vlDif := vlDif * -1;

            cptoptotipodiffinmanha.AsInteger := 1;

          end;
        end;

        if uqtabelaptofinalmanha.AsFloat < hrthrtfinmanha.AsFloat then
        begin
          if uqtabelaptofinalmanha.AsFloat = 0 then
          begin
            cptoptodiffinmanha.AsFloat := 0;
            vlfaltas := vlfaltas + (hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat)

          end
          else
          begin
            vlDif := (hrthrtfinmanha.AsFloat - uqtabelaptofinalmanha.AsFloat);
            if vlDif < 0 then
              vlDif := vlDif * -1;

            cptoptotipodiffinmanha.AsInteger := 0;
          end;

        end;

        if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
        begin
          if uqtabelaptofinalmanha.AsFloat = 0 then

          begin
            cptoptodiffinmanha.AsFloat := 0;
            vlfaltas := vlfaltas + (hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat)

          end
          else
          begin
            cptoptodiffinmanha.AsFloat := uqtabelaptofinalmanha.AsFloat - hrthrtfinmanha.AsFloat;
            vlfaltas := vlfaltas + vlDif;

          end;
          if uqtabelaptofinalmanha.AsFloat > hrthrtfinmanha.AsFloat then
          begin

            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlExtraFinalManha := vlDif
            else
              vlExtraFinalManha := 0;

          end
          else if uqtabelaptofinalmanha.AsFloat < hrthrtfinmanha.AsFloat then
          begin
            if (uqtabelaptofinalmanha.AsFloat = 0) and (uqtabelaptoiniciomanha.AsFloat = 0) then
            begin
              vlFaltaFinalManha := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
            end
            else
            begin

              if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
                vlFaltaFinalManha := vlDif
              else
                vlFaltaFinalManha := 0;

            end;
          end;

        end
        else
        begin
          if (uqtabelaptofinalmanha.AsFloat = 0) and (uqtabelaptoiniciomanha.AsFloat = 0) then
          begin
            vlFaltaFinalManha := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
            cptoptofaltamanha.AsFloat := vlFaltaFinalManha;
            cptoptodiffinmanha.AsString := '00:00:01';
          end
          else
          begin
            cptoptodiffinmanha.AsString := '00:00:01';
            cptoptotipodiffinmanha.AsInteger := 9;
            cptoptohorasnormais.AsFloat := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
          end;
        end;

      end;

    end
    else
      cptoptodiffinmanha.AsString := '00:00:01';

    if (hrthrtinimanha.AsFloat = 0) and (hrthrtfinmanha.AsFloat = 0) then
    begin

      vlDif := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
      vlfaltas := vlDif;

      if (uqtabelaptofinalmanha.AsFloat <> 0) and (uqtabelaptoiniciomanha.AsFloat <> 0) then
      begin

        vlDif := uqtabelaptofinalmanha.AsFloat - uqtabelaptoiniciomanha.AsFloat;
        vlfaltas := vlDif;

      end;

    end;


    // tarde - hora inicial

    vlDif := 0;
    if uqtabelaptoiniciotarde.AsFloat > 0 then
    begin

      if (uqtabelaptoiniciotarde.AsFloat - hrthrtinitarde.AsFloat) = 0 then
      begin
        cptoptodifinitarde.AsString := '00:00:01';
        cptoptotipodifinitarde.AsInteger := 9;
      end
      else
      begin

        if uqtabelaptoiniciotarde.AsFloat = 0 then
        begin
          vlDif := hrthrtinitarde.AsFloat - hrthrtinitarde.AsFloat;
          if vlDif < 0 then
            vlDif := vlDif * -1;

          if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
            vlFaltaFinalTarde := vlDif
          else
            vlFaltaFinalTarde := 0;

        end
        else
        begin

          if hrthrtinitarde.AsFloat = 0 then
          begin
            cptoptotipodifinitarde.AsInteger := 1;
            vlDif := 0;
          end
          else
          begin

            if uqtabelaptoiniciotarde.AsFloat < hrthrtinitarde.AsFloat then
            begin
              vlDif := (uqtabelaptoiniciotarde.AsFloat - hrthrtinitarde.AsFloat);
              if vlDif < 0 then
                vlDif := vlDif * -1;

              cptoptotipodifinitarde.AsInteger := 1;

            end;
          end;
        end;

        if uqtabelaptoiniciotarde.AsFloat > hrthrtinitarde.AsFloat then
        begin
          vlDif := (hrthrtinitarde.AsFloat - uqtabelaptoiniciotarde.AsFloat);
          if vlDif < 0 then
            vlDif := vlDif * -1;

          cptoptotipodifinitarde.AsInteger := 0;
          vlfaltas := vlfaltas + vlDif;

        end;

        if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
        begin
          cptoptodifinitarde.AsFloat := uqtabelaptoiniciotarde.AsFloat - hrthrtinitarde.AsFloat;

          if (uqtabelaptoiniciotarde.AsFloat < hrthrtinitarde.AsFloat) or (hrthrtinitarde.AsFloat = 0) then
          begin

            if (StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel))) and (hrthrtinitarde.AsFloat <> 0) then
              vlExtraInicioTarde := vlDif
            else
              vlExtraInicioTarde := 0;

          end
          else if uqtabelaptoiniciotarde.AsFloat > hrthrtinitarde.AsFloat then
          begin
            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlFaltaInicioTarde := vlDif
            else
              vlFaltaInicioTarde := 0;
          end;

        end
        else
        begin
          cptoptodifinitarde.AsString := '00:00:01';
          cptoptotipodifinitarde.AsInteger := 9;
          cptoptohorasnormais.AsFloat := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
        end;

      end;

    end
    else
    begin
      vlFaltaInicioTarde := 0;
      vlFaltaFinalTarde := hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat;

      cptoptodifinitarde.AsString := '00:00:01';
    end;

    if (uqtabelaptoiniciotarde.AsFloat = 0) and (uqtabelaptofinaltarde.AsFloat = 0) then
    begin
      vlDif := hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat;
      vlfaltas := vlfaltas + vlDif;

    end;

    // tarde - hora final

    vlDif := 0;
    if (uqtabelaptofinaltarde.AsFloat > 0) and (hrthrtfintarde.AsFloat > 0) then
    begin
      if (uqtabelaptofinaltarde.AsFloat - hrthrtfintarde.AsFloat) = 0 then
      begin
        cptoptodiffintarde.AsString := '00:00:01';
        cptoptotipodiffintarde.AsInteger := 9;
      end
      else
      begin

        if uqtabelaptofinaltarde.AsFloat > hrthrtfintarde.AsFloat then
        begin
          vlDif := (uqtabelaptofinaltarde.AsFloat - hrthrtfintarde.AsFloat);
          cptoptotipodiffintarde.AsInteger := 1;
        end;

        if uqtabelaptofinaltarde.AsFloat < hrthrtfintarde.AsFloat then
        begin
          vlDif := (hrthrtfintarde.AsFloat - uqtabelaptofinaltarde.AsFloat);
          cptoptotipodiffintarde.AsInteger := 0;
          vlfaltas := vlfaltas + vlDif;
        end;

        if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
        begin
          cptoptodiffintarde.AsFloat := uqtabelaptofinaltarde.AsFloat - hrthrtfintarde.AsFloat;

          if uqtabelaptofinaltarde.AsFloat > hrthrtfintarde.AsFloat then
          begin

            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlExtraFinalTarde := vlDif
            else
              vlExtraFinalTarde := 0;

          end
          else if uqtabelaptofinaltarde.AsFloat < hrthrtfintarde.AsFloat then
          begin

            if StrToTime(timetostr(vlDif)) > StrToTime(timetostr(vlDifToleravel)) then
              vlFaltaFinalTarde := vlDif
            else
              vlFaltaFinalTarde := 0;

          end;

        end
        else
        begin
          cptoptodiffintarde.AsString := '00:00:01';
          cptoptotipodiffintarde.AsInteger := 9;
          cptoptohorasnormais.AsFloat := hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat;
        end;

      end;

    end
    else
    begin
      cptoptodiffintarde.AsString := '00:00:01';
      vlFaltaInicioTarde := 0;
      vlFaltaFinalTarde := hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat;

    end;

    vlDif := 0;
    if cptoptotipositinimanha.AsInteger = 2 then // abonado
    begin
      cptoptohorasnormais.AsFloat := (hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat) + (hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat);
    end
    else
    begin
      if hrthrtinitarde.AsFloat > 0 then
      begin
        cptoptohorasnormais.AsFloat := (uqtabelaptofinalmanha.AsFloat - uqtabelaptoiniciomanha.AsFloat) + (uqtabelaptofinaltarde.AsFloat - uqtabelaptoiniciotarde.AsFloat);
      end
      else
      begin
        cptoptohorasnormais.AsFloat := (uqtabelaptofinalmanha.AsFloat - uqtabelaptoiniciomanha.AsFloat);
      end;
    end;
    if hrthrtinitarde.AsFloat > 0 then
    begin
      vlfaltas := ((hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat) + (hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat)) -
        ((uqtabelaptofinalmanha.AsFloat - uqtabelaptoiniciomanha.AsFloat) + (uqtabelaptofinaltarde.AsFloat - uqtabelaptoiniciotarde.AsFloat));
    end
    else
    begin
      vlfaltas := 0;

    end;

    if StrToTime(timetostr(vlfaltas)) > StrToTime('00:05:01') then
    begin
      if hrthrtinimanha.AsFloat = 0 then
      begin

        cptoptohorasextras.AsFloat := ((hrthrtfinmanha.AsFloat - hrthrtinimanha.AsFloat) + (hrthrtfintarde.AsFloat - hrthrtinitarde.AsFloat)) -
          ((uqtabelaptofinalmanha.AsFloat - uqtabelaptoiniciomanha.AsFloat) + (uqtabelaptofinaltarde.AsFloat - uqtabelaptoiniciotarde.AsFloat));

      end
      else if (hrthrtinimanha.AsFloat <> 0) and (hrthrtinitarde.AsFloat = 0) then

      begin

        vlExtraFinalTarde := uqtabelaptofinaltarde.AsFloat;

      end;

    end
    else
    begin

      if (hrthrtinimanha.AsFloat <> 0) and (hrthrtinitarde.AsFloat = 0) then

      begin

        vlExtraFinalTarde := uqtabelaptofinaltarde.AsFloat - uqtabelaptoiniciotarde.AsFloat;

      end;
      cptoptohorasextras.AsFloat := 0;
    end;

    if vlDiaSemana = 0 then
    begin
      vlFaltaInicioManha := 0;
      vlFaltaFinalManha := 0;
      vlFaltaInicioTarde := 0;
      vlFaltaFinalTarde := 0;
      vlfaltas := 0;
    end;

    if vlfaltas > StrToTime('00:05:01') then
    begin
      cptoptohorasfaltas.AsFloat := vlfaltas;
    end
    else
      cptoptohorasfaltas.AsFloat := 0;

    cptoptoextramanha.AsDateTime := vlExtraInicioManha + vlExtraFinalManha;
    cptoptoextratarde.AsDateTime := vlExtraInicioTarde + vlExtraFinalTarde;
    cptoptohorasextras.AsDateTime := cptoptoextramanha.AsDateTime + cptoptoextratarde.AsDateTime + ((uqtabelaptofinalextra.AsDateTime - uqtabelaptoinicioextra.AsDateTime));

    if cptoptotipositinimanha.AsInteger = 2 then
      vlFaltaInicioManha := 0;

    if cptoptotipositfinmanha.AsInteger = 2 then
      vlFaltaFinalManha := 0;

    if cptoptotipositinitarde.AsInteger = 2 then
      vlFaltaInicioTarde := 0;

    if cptoptotipositfintarde.AsInteger = 2 then
      vlFaltaFinalTarde := 0;

    cptoptofaltamanha.AsFloat := vlFaltaInicioManha + vlFaltaFinalManha;
    cptoptofaltatarde.AsFloat := vlFaltaInicioTarde + vlFaltaFinalTarde;

    cptoptohorasfaltas.AsFloat := cptoptofaltamanha.AsFloat + cptoptofaltatarde.AsFloat;

    cpto.Post;

    uqtabela.Next;
  end;
  ActAtualizar.Execute;
end;

procedure Tfrapto.ativaleitor;

var
  ret: DWORD;
  strSkinFileName: string;
begin

  strSkinFileName := extractfilepath(application.ExeName) + 'NBSP2Por.dll';

  if SetSkinResource(PChar(strSkinFileName)) then
  begin
    // showmessage('Teste Ok');
  end;

  g_hBSP := NBioAPI_INVALID_HANDLE;
  g_hwnd := 0;
  m_hFIR := 0;

  // lblCallback.Caption := '';

  // Load Dll
  try
    g_hwnd := LoadLibrary('NBioBSP.dll');
  except
    on e: exception do
  end;

  if (g_hwnd <> 0) then
  begin
    LoadNBioBSPFunctions;
    LoadIndexSearchFunctions;

    InitNBioAPI;

    ret := InitIndexSearchEngine;

    if (ret <> NBioAPIERROR_NONE) then
    begin
      showmessage('Failed to initailize NBioBSP !');
      Exit;
    end;
  end

  else
  begin
    showmessage('LoadLibrary failed !!!');
    Exit;
  end;

  // Get NBioBSP version
  if GetBSPVersion = NBioAPIERROR_NONE then
  begin
    // Self.Caption := Self.Caption + Format(' - BSP Version : v%.4f', [g_bsp_ver.Major + g_bsp_ver.Minor / 10000]);
  end;
end;

procedure Tfrapto.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;
  end;

  if Column.FieldName = 'ptodifinimanha' then
  begin

    if self.uqtabelaptotipodifinimanha.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clGreen;
      DBGLista.Canvas.Font.Style := [fsbold];
    end
    else if self.uqtabelaptotipodifinimanha.AsString = '0' then
    begin
      DBGLista.Canvas.Font.Color := clRed;
      DBGLista.Canvas.Font.Style := [fsbold];

      if uqtabelaptotipositinimanha.AsInteger = 2 then
      begin
        DBGLista.Canvas.Font.Color := clBlack;
        DBGLista.Canvas.Font.Style := [fsbold];
      end;

    end
    else
    begin
      DBGLista.Canvas.Font.Color := clBlack;
      DBGLista.Canvas.Font.Style := [];
    end;

  end;

  if Column.FieldName = 'ptodiffinmanha' then
  begin

    if self.uqtabelaptotipodiffinmanha.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clGreen;
      DBGLista.Canvas.Font.Style := [fsbold];
    end
    else if self.uqtabelaptotipodiffinmanha.AsString = '0' then
    begin
      DBGLista.Canvas.Font.Color := clRed;
      DBGLista.Canvas.Font.Style := [fsbold];

      if uqtabelaptotipositfinmanha.AsInteger = 2 then
      begin
        DBGLista.Canvas.Font.Color := clBlack;
        DBGLista.Canvas.Font.Style := [fsbold];
      end;

    end
    else
    begin
      DBGLista.Canvas.Font.Color := clBlack;
      DBGLista.Canvas.Font.Style := [];
    end;

  end;

  if Column.FieldName = 'ptodifinitarde' then
  begin

    if self.uqtabelaptotipodifinitarde.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clGreen;
      DBGLista.Canvas.Font.Style := [fsbold];
    end
    else if self.uqtabelaptotipodifinitarde.AsString = '0' then
    begin
      DBGLista.Canvas.Font.Color := clRed;
      DBGLista.Canvas.Font.Style := [fsbold];
      if uqtabelaptotipositinitarde.AsInteger = 2 then
      begin
        DBGLista.Canvas.Font.Color := clBlack;
        DBGLista.Canvas.Font.Style := [fsbold];
      end;

    end
    else
    begin
      DBGLista.Canvas.Font.Color := clBlack;
      DBGLista.Canvas.Font.Style := [];
    end;

  end;

  if Column.FieldName = 'ptodiffintarde' then
  begin

    if self.uqtabelaptotipodiffintarde.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clGreen;
      DBGLista.Canvas.Font.Style := [fsbold];
    end
    else if self.uqtabelaptotipodiffintarde.AsString = '0' then
    begin
      DBGLista.Canvas.Font.Color := clRed;
      DBGLista.Canvas.Font.Style := [fsbold];
      if uqtabelaptotipositfintarde.AsInteger = 2 then
      begin
        DBGLista.Canvas.Font.Color := clBlack;
        DBGLista.Canvas.Font.Style := [fsbold];
      end;

    end
    else
    begin
      DBGLista.Canvas.Font.Color := clBlack;
      DBGLista.Canvas.Font.Style := [];
    end;

  end;

  if uqtabelaptotipositinimanha.AsInteger = 9 then
  begin
    DBGLista.Canvas.Brush.Color := clgray;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrapto.ActRegistroExecute(Sender: TObject);
var
  ret: DWORD;
  input_fir: NBioAPI_INPUT_FIR;
  infoFp: NBioAPI_INDEXSEARCH_FP_INFO;
  nDataCount: DWORD;
  nFirst: Integer;
  nLast: Integer;
  callbackInfo0: NBioAPI_INDEXSEARCH_CALLBACK_INFO_0;
  pIndexInfo: TINDEX_INFO;
  vlclbcodigobio: string;

  I: Integer;
  szFileName: string;
  szTemp: string;
  fh1: TextFile;
  readData: string;
  itemData: string;
  ListItem: TListItem;
  flag: boolean;
  arq: string;
  vlclbcodigo: string;

  retorno: Integer;

  iMbAddress: Integer;
  iscore: Integer;
  fgnum: Integer;
  v: Byte;
  vlPodeFechar: boolean;

  nomearquivo: string;

  fgid: Integer;
  len: Integer;
  path: string;
  fs: TStringList;
  pbuf: TBytes;
  x: Integer;
  vlDiaSemana: Integer;

begin

  nomearquivo := extractfilepath(application.ExeName) + 'arquivobio.mb';

  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := acesso.Filial;
  cfg.Open;

  if cfgcfgarquivobio.AsString <> '' then
  begin
    if fileexists(nomearquivo) then
      DeleteFile(nomearquivo);

    cfgcfgarquivobio.SaveToFile(nomearquivo);
  end;

  if cfgcfgmodeloleitor.AsInteger = 1 then
  begin

    ativaleitor;

    ListItem := nil;

    arq := extractfilepath(application.ExeName) + 'dados.ISDB';
    szTemp := arq;

    // if szTemp <> '' then
    // begin
    // clear memory database..
    ClearIndexSearchDB;
    LVUsers.Items.Clear;

    ret := LoadIndexSearchDBFromFile(PChar(szTemp));

    // if (ret = NBioAPIERROR_NONE) then
    // begin
    LVUsers.Items.Clear;
    LVCandidate.Items.Clear;

    szFileName := Copy(szTemp, 1, Pos('.', szTemp) - 1);

    AssignFile(fh1, szFileName + '.FID');
    reset(fh1);

    while not Eof(fh1) do
    begin
      Readln(fh1, readData);

      if readData <> '' then
      begin
        flag := true;
        itemData := '';

        for I := 1 to Length(readData) do
        begin
          if readData[I] <> char(9) then
            itemData := itemData + readData[I];

          if I = Length(readData) then
            ListItem.SubItems.Add(readData[I]);

          if readData[I] = char(9) then
          begin
            if not flag then
            begin
              ListItem.SubItems.Add(itemData);
              itemData := '';
            end
            else
            begin
              ListItem := LVUsers.Items.Add;
              ListItem.Caption := itemData;
              itemData := '';
              flag := false;
            end;

          end;
        end; // end of for
      end;
    end; // End of While

    Closefile(fh1);
    // end
    // else
    // ShowMessage('Load db failed !');
    // end;

    vlclbcodigobio := '0';

    try
      nDataCount := 0;

      application.ProcessMessages;

      GetDataCountFromIndexSearchDB(nDataCount);
      progressIdentify.Max := nDataCount;
      progressIdentify.Position := 0;

      if m_hFIR <> 0 then
        FreeFIRHandle(m_hFIR);

      if (OpenDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
      begin
      end;

      ret := Capture(@m_hFIR, nil, NBioAPI_FIR_PURPOSE_IDENTIFY, DEFAULT_TIME_OUT, nil);

      if (ret = NBioAPIERROR_NONE) then
      begin
        input_fir.Form := NBioAPI_FIR_FORM_HANDLE;
        input_fir.InputFir.FIRinBSP := @m_hFIR;

        pIndexInfo.dwStartEx := GetTickCount;
        // if you want to set timeout, set below value. (unit: millisec. 0  = no timeout)
        pIndexInfo.dwTimeout := 0;

        callbackInfo0.CallBackType := 0;
        callbackInfo0.CallBackFunction := MyIndexSearchCallBack;
        callbackInfo0.UserCallBackParam := @pIndexInfo;

        nFirst := pIndexInfo.dwStartEx;
        ret := IdentifyDataFromIndexSearchDB(@input_fir, NBioAPI_FIR_SECURITY_LEVEL_NORMAL, @infoFp, @callbackInfo0);
        nLast := GetTickCount;

        LVCandidate.Items.Clear;

        if (ret = NBioAPIERROR_NONE) then
        begin
          with LVCandidate.Items.Add do
          begin
            Caption := IntToStr(infoFp.ID);
            vlclbcodigobio := IntToStr(infoFp.ID);
            SubItems.Add(IntToStr(infoFp.FingerID));
            SubItems.Add(IntToStr(infoFp.SampleNumber));
            SubItems.Add('-');
          end;
          vlclbcodigobio := IntToStr(infoFp.ID);
          // close;
        end
        else
        begin
          vlclbcodigobio := '';
          showmessage('Registro não localizado!');
        end;
      end;

      if (CloseDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
        showmessage('Leitor não localizado !!!');

      if vlclbcodigobio <> '' then
      begin
        consulta.close;
        consulta.SQL.Text := 'select clbcodigo from clb where clbrelogio=1 and clbcodigobio=' + vlclbcodigobio;
        consulta.Open;

        if not consulta.IsEmpty then
        begin

          vlclbcodigo := consulta.FieldByName('clbcodigo').AsString;

          cht.close;
          cht.ParamByName('clbcodigo').AsString := vlclbcodigo;
          cht.Open;

          pto.close;
          pto.ParamByName('ptodata').AsDate := strtodate(hoje(application, ZCone));
          pto.ParamByName('clbcodigo').AsString := vlclbcodigo;
          pto.Open;

          if pto.IsEmpty then
            pto.Append
          else
            pto.edit;

          ptoptodata.AsString := hoje(application, ZCone);
          ptoclbcodigo.AsString := vlclbcodigo;

          vlDiaSemana := dayofweek(ptoptodata.AsDateTime) - 1;
          case vlDiaSemana of
            0:
              ptohrtchave.AsInteger := cht.FieldByName('hrtdomingo').AsInteger;
            1:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsegunda').AsInteger;
            2:
              ptohrtchave.AsInteger := cht.FieldByName('hrtterca').AsInteger;
            3:
              ptohrtchave.AsInteger := cht.FieldByName('hrtquarta').AsInteger;
            4:
              ptohrtchave.AsInteger := cht.FieldByName('hrtquinta').AsInteger;
            5:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsexta').AsInteger;
            6:
              ptohrtchave.AsInteger := cht.FieldByName('hrtsabado').AsInteger;
          end;

          if ptoptoiniciomanha.AsString = '' then
          begin
            ptoptoiniciomanha.AsDateTime := now();
          end
          else if ptoptofinalmanha.AsString = '' then
          begin
            ptoptofinalmanha.AsDateTime := now();
          end
          else if ptoptoiniciotarde.AsString = '' then
          begin
            ptoptoiniciotarde.AsDateTime := now();
          end
          else if ptoptofinaltarde.AsString = '' then
          begin
            ptoptofinaltarde.AsDateTime := now();
          end
          else if ptoptoinicioextra.AsString = '' then
          begin
            ptoptoinicioextra.AsDateTime := now();
          end
          else if ptoptofinalextra.AsString = '' then
          begin
            ptoptofinalextra.AsDateTime := now();
          end;

          pto.Post;

        end
        else
        begin
          showmessage('Colaborador não registrado para Relógio Biométrico!');
        end;

        ActAtualizar.Execute;

      end;
    finally
    end;
  end
  else if cfgcfgmodeloleitor.AsInteger = 2 then
  begin

    try
      vlPodeFechar := false;

      application.CreateForm(TfMensagemLeitor, fMensagemLeitor);
      fMensagemLeitor.show;

      retorno := -1;
      nAddr := 4294967295;

      retorno := -1;
      nAddr := 4294967295;

      pPassword := 0;

      retorno := PSOpenDeviceEx(phandler, 2, 1, 1, 2, 0);
      if retorno = 0 then
      begin
        if retorno = 0 then
        begin
          retorno := PSVfyPwd(phandler, nAddr, pPassword);
        end;
      end;

      fs := TStringList.Create;
      fs.LoadFromFile(nomearquivo);

      len := 1024;
      SetLength(pbuf, 1024 + 1);
      ret := PSDownChar(phandler, nAddr, $01, pbuf, len);
      if ret = 0 then
      begin
        ret := PSStoreChar(phandler, nAddr, 1, fgid);
        if (ret = 0) then
        begin

          pPassword := 0;
          fMensagemLeitor.plMenssagemLeitor.Caption := 'Conectando ...';
          application.ProcessMessages;
          retorno := PSOpenDeviceEx(phandler, 2, 1, 1, 2, 0);
          if retorno = 0 then
          begin

            fMensagemLeitor.plMenssagemLeitor.Caption := 'Conectado';
            vlPodeFechar := false;
            application.ProcessMessages;

            if retorno = 0 then
            begin
              retorno := PSVfyPwd(phandler, nAddr, pPassword);
              fMensagemLeitor.plMenssagemLeitor.Caption := 'Fase 1 ...';
              vlPodeFechar := false;
              application.ProcessMessages;

              v := $01;
              retorno := -1;
              iMbAddress := 0;
              iscore := 0;
              fgnum := 0;
              fMensagemLeitor.plMenssagemLeitor.Caption := 'Copturando ...';
              vlPodeFechar := false;
              application.ProcessMessages;

              retorno := PSGetImage(phandler, nAddr);
              if (retorno = 0) then
              begin
                fMensagemLeitor.plMenssagemLeitor.Caption := 'Conectando 1';
                vlPodeFechar := false;
                application.ProcessMessages;

                retorno := PSGenChar(phandler, nAddr, 1);
                if (retorno = 0) then
                begin
                  fMensagemLeitor.plMenssagemLeitor.Caption := 'Pesquisando ...';
                  vlPodeFechar := false;
                  application.ProcessMessages;

                  PSTemplateNum(phandler, nAddr, fgnum);
                  retorno := PSSearch(phandler, nAddr, $01, 0, fgnum + 1, iMbAddress, iscore);

                  if (iscore > 50) then
                  begin
                    // voicePlayer.VoicePlay("007");
                    // Memo1.lines.add('Search ok at ' + Inttostr(iscore));

                    vlclbcodigobio := IntToStr(iMbAddress);

                    if vlclbcodigobio <> '' then
                    begin
                      consulta.close;
                      consulta.SQL.Text := 'select clbcodigo from clb where clbrelogio=1 and clbcodigobio=' + vlclbcodigobio;
                      consulta.Open;

                      if not consulta.IsEmpty then
                      begin

                        vlclbcodigo := consulta.FieldByName('clbcodigo').AsString;
                        pto.close;
                        pto.ParamByName('ptodata').AsDate := strtodate(hoje(application, ZCone));
                        pto.ParamByName('clbcodigo').AsString := vlclbcodigo;
                        pto.Open;

                        if pto.IsEmpty then
                          pto.Append
                        else
                          pto.edit;

                        ptoptodata.AsString := hoje(application, ZCone);
                        ptoclbcodigo.AsString := vlclbcodigo;

                        if ptoptoiniciomanha.AsString = '' then
                        begin
                          ptoptoiniciomanha.AsDateTime := now();
                        end
                        else if ptoptofinalmanha.AsString = '' then
                        begin
                          ptoptofinalmanha.AsDateTime := now();
                        end
                        else if ptoptoiniciotarde.AsString = '' then
                        begin
                          ptoptoiniciotarde.AsDateTime := now();
                        end
                        else if ptoptofinaltarde.AsString = '' then
                        begin
                          ptoptofinaltarde.AsDateTime := now();
                        end
                        else if ptoptoinicioextra.AsString = '' then
                        begin
                          ptoptoinicioextra.AsDateTime := now();
                        end
                        else if ptoptofinalextra.AsString = '' then
                        begin
                          ptoptofinalextra.AsDateTime := now();
                        end;

                        pto.Post;
                        vlPodeFechar := true;
                      end
                      else
                      begin
                        showmessage('Colaborador não registrado para Relógio Biométrico!');
                      end;

                      ActAtualizar.Execute;

                    end
                    else
                    begin
                      fMensagemLeitor.plMenssagemLeitor.Caption := 'Sem Colaborador!';
                      application.ProcessMessages;

                    end;

                  end
                  else
                  begin // voicePlayer.VoicePlay("008");
                    fMensagemLeitor.plMenssagemLeitor.Caption := 'Não Localizado !';
                    application.ProcessMessages;

                  end;
                end;
              end
              else
              begin
                fMensagemLeitor.plMenssagemLeitor.Caption := 'Sem Digital !';
                application.ProcessMessages;

              end;

            end
            else
            begin

              fMensagemLeitor.plMenssagemLeitor.Caption := 'Sem LEITOR !';
              application.ProcessMessages;

            end;

            // retorno :=    PSCloseDeviceEx(phandler);

          end;
        end;
      end;
    finally
      if vlPodeFechar then
      begin
        fMensagemLeitor.close;
      end
      else
      begin
        fMensagemLeitor.btFechar.Visible := true;
      end;
    end;
  end;

end;

end.
