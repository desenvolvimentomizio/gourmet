unit ufrascr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, 
  System.ImageList, Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Graphics;

type
  Tfrascr = class(Tfrabase)
    extrcr: TUniQuery;
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
    uqtabelamcemotivo: TStringField;
    uqtabelamecregistro: TDateTimeField;
    uqtabelatcrcodigo: TIntegerField;
    uqtabelatsccodigo: TIntegerField;
    uqtabelatnccodigo: TIntegerField;
    uqtabelarcrhora: TTimeField;
    GBTotal: TGroupBox;
    Pltotalselecionado: TPanel;
    GBRecebidos: TGroupBox;
    Pltotaldisponivel: TPanel;
    trf: TUniQuery;
    mce: TUniQuery;
    mcemcechave: TIntegerField;
    mcercrchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    trftfrchave: TIntegerField;
    trfrcrdestino: TIntegerField;
    trfrcrorigem: TIntegerField;
    rcr: TUniQuery;
    rcrrcrchave: TIntegerField;
    rcretdcodigo: TIntegerField;
    rcrcedcodigo: TIntegerField;
    rcrrcrvalor: TFloatField;
    rcrrcrdata: TDateField;
    rcrrcrhistorico: TStringField;
    rcrtcrcodigo: TIntegerField;
    rcrtsccodigo: TIntegerField;
    rcrtnccodigo: TIntegerField;
    rcrrcrhora: TTimeField;
    mcr: TUniQuery;
    mcrmcrchave: TIntegerField;
    mcrrcrchave: TIntegerField;
    mcrmcrvalor: TFloatField;
    let: TUniQuery;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    letetdcodigo: TIntegerField;
    uqtabelarcrselecionar: TStringField;
    lcv: TUniQuery;
    lcvlcvchave: TIntegerField;
    lcvltechave: TIntegerField;
    lcvmcrchave: TIntegerField;
    uqtabelarcrsaldo: TFloatField;
    mceltechave: TIntegerField;
    mcrmcechave: TIntegerField;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  end;

var
  frascr: Tfrascr;

  // Início ID do Módulo frascr
const
  vPlIdMd = '02.02.87.005-01';
  vPlTitMdl = 'Seleção de Créditos - Verbas';

  // Fim ID do Módulo frascr

implementation

{$R *.dfm}

procedure Tfrascr.ActAtualizarExecute(Sender: TObject);
begin

  { extrcr.Close;
    extrcr.SQL.Text := 'CALL extratoRCR(:vtnccodigo)';
    extrcr.Params[0].asstring := '1';
    extrcr.ExecSQL; }

  inherited;
  vatualizando := True;

  recalculartotais;

  vatualizando := False;
end;

procedure Tfrascr.DBGListaCellClick(Column: TColumn);
begin
  if DBGLista.SelectedField.FieldName = 'rcrselecionar' then
  begin
    if uqtabelarcrselecionar.AsInteger = 1 then
    begin
      uqtabela.Edit;
      uqtabelarcrselecionar.AsInteger := 0;
      uqtabela.Post;
    end
    else
    begin
      uqtabela.Edit;
      uqtabelarcrselecionar.AsInteger := 1;
      uqtabela.Post;
    end;
    recalculartotais;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tfrascr.DBGListaDblClick(Sender: TObject);
begin
  { inherited; }

end;

procedure Tfrascr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

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
      if Column.FieldName = 'rcrselecionar' then
      begin

        // Desenha um checkbox no dbgrid

        DBGLista.Canvas.FillRect(Rect);

        Check := 0;
        if self.uqtabelarcrselecionar.AsInteger = 1 then
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

procedure Tfrascr.recalculartotais;
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
    if self.uqtabelarcrselecionar.AsInteger = 1 then
    begin
      vtotsel := vtotsel + self.uqtabelarcrsaldo.AsFloat;
    end;

    vtotdis := vtotdis + self.uqtabelarcrsaldo.AsFloat;
    self.uqtabela.Next;
  end;

  Pltotaldisponivel.Caption := formatfloat('##,###,##0.00', vtotdis);
  Pltotalselecionado.Caption := formatfloat('##,###,##0.00', vtotsel);

  self.uqtabela.EnableControls;
  self.uqtabela.RecNo := rgi;

end;

end.
