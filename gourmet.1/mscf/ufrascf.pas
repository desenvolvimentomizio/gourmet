unit ufrascf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, UniProvider, MySQLUniProvider, Xml.xmldom, Xml.XMLIntf,
 Xml.XMLDoc;

type
  Tfrascf = class(Tfrabase)
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
    uqtabelamfemotivo: TStringField;
    uqtabelamferegistro: TDateTimeField;
    uqtabelatcrcodigo: TIntegerField;
    uqtabelatsccodigo: TIntegerField;
    uqtabelatnccodigo: TIntegerField;
    uqtabelarcfsaldo: TFloatField;
    uqtabelarcfhora: TTimeField;
    uqtabelarcfselecionar: TStringField;
    GBRecebidos: TGroupBox;
    Pltotaldisponivel: TPanel;
    GBTotal: TGroupBox;
    Pltotalselecionado: TPanel;
    let: TUniQuery;
    mfr: TUniQuery;
    tff: TUniQuery;
    mfe: TUniQuery;
    lfv: TUniQuery;
    mfrmfrchave: TIntegerField;
    mfrrcfchave: TIntegerField;
    mfrmfrvalor: TFloatField;
    mfrmfechave: TIntegerField;
    mfemfechave: TIntegerField;
    mfercfchave: TIntegerField;
    mfetmccodigo: TIntegerField;
    mfeclbcodigo: TIntegerField;
    mfemfemotivo: TStringField;
    mfemferegistro: TDateTimeField;
    mfeltechave: TIntegerField;
    lfvlfvchave: TIntegerField;
    lfvltechave: TIntegerField;
    lfvmfrchave: TIntegerField;
    tfftffchave: TIntegerField;
    tffrcfdestino: TIntegerField;
    tffrcforigem: TIntegerField;
    letetdcodigo: TIntegerField;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    vatualizando: boolean;
    procedure recalculartotais;
    { Private declarations }
  public
  { Public declarations }
    vpTncCodigo: string;
    vpRcrChave: string;
    vpSaldo: double;
    vpVlrNecess: double;
    vpLote: string;
    { Public declarations }
  end;

var
  frascf: Tfrascf;

  // Início ID do Módulo frascr
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Seleção de Créditos - Verbas';

  // Fim ID do Módulo frascr

implementation

{$R *.dfm}

procedure Tfrascf.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  { extrcr.Close;
    extrcr.SQL.Text := 'CALL extratoRCR(:vtnccodigo)';
    extrcr.Params[0].asstring := '1';
    extrcr.ExecSQL; }

  inherited;
  vatualizando := True;

  recalculartotais;

  vatualizando := False;
end;

procedure Tfrascf.DBGListaCellClick(Column: TColumn);
begin
  inherited;
 if DBGLista.SelectedField.FieldName = 'rcfselecionar' then
  begin
    if uqtabelarcfselecionar.AsInteger = 1 then
    begin
      uqtabela.Edit;
      uqtabelarcfselecionar.AsInteger := 0;
      uqtabela.Post;
    end
    else
    begin
      uqtabela.Edit;
      uqtabelarcfselecionar.AsInteger := 1;
      uqtabela.Post;
    end;
    recalculartotais;
  end
  else
  begin
    inherited;
  end;
end;

procedure Tfrascf.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;
  if uqtabela.Active then
  begin
    if not uqtabela.IsEmpty then
    begin
      if Column.FieldName = 'rcfselecionar' then
      begin

        // Desenha um checkbox no dbgrid

        DBGLista.Canvas.FillRect(Rect);

        Check := 0;
        if self.uqtabelarcfselecionar.AsInteger = 1 then
          Check := DFCS_CHECKED
        else
          Check := 0;

        R := Rect;
        InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
        DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

    end;
  end;
end;


procedure Tfrascf.recalculartotais;
var
  rgi: Integer;
  vtotsel: double;
  vtotdis: double;

begin
  if self.uqtabela.Active then
    rgi := self.uqtabela.RecNo
  else
    rgi := 0;

  self.uqtabela.DisableControls;
  self.uqtabela.First;

  vtotsel := 0;
  vtotdis := 0;

  while not self.uqtabela.Eof do
  begin
    if self.uqtabelarcfselecionar.AsInteger = 1 then
    begin
      vtotsel := vtotsel + self.uqtabelarcfsaldo.AsFloat;
    end;

    vtotdis := vtotdis + self.uqtabelarcfsaldo.AsFloat;
    self.uqtabela.Next;
  end;

  Pltotaldisponivel.Caption := formatfloat('##,###,##0.00', vtotdis);
  Pltotalselecionado.Caption := formatfloat('##,###,##0.00', vtotsel);

  self.uqtabela.EnableControls;
  self.uqtabela.RecNo := rgi;

end;


end.
