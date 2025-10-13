unit ufraidv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, ufuncoes,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tfraidv = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesregistro: TDateField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemidentificacao: TStringField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattocodigo: TIntegerField;
    uqtabelaflasigla: TStringField;
    uqtabelamesreclassicacao: TIntegerField;
    uqtabelatoecodigo: TIntegerField;
    uqtabelatoecfopsaida: TStringField;
    uqtabelamesfrete: TFloatField;
    uqtabelamesipi: TFloatField;
    uqtabelameschavenfe: TStringField;
    uqtabelamesicms: TCurrencyField;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmcusto: TFloatField;
    itmtoecodigo: TIntegerField;
    itmcfocfopdestinacao: TStringField;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmipi: TFloatField;
    itmpuncodigo: TIntegerField;
    itmitmvaloritem: TFloatField;
    itmitmcontendo: TFloatField;
    itmitmquantidadeitens: TFloatField;
    itmitmicms: TCurrencyField;
    Ditm: TUniDataSource;
    listaitm: TDBGrid;
    itmmarcadevolver: TIntegerField;
    idt: TUniQuery;
    idtidtchave: TIntegerField;
    idtmdtchave: TIntegerField;
    idtitmchave: TIntegerField;
    idtmeschave: TIntegerField;
    idtflacodigo: TIntegerField;
    idtidtmotivo: TStringField;
    idtunicodigo: TIntegerField;
    idtidtvalor: TFloatField;
    idtidtdesconto: TFloatField;
    idtidttotal: TFloatField;
    mdt: TUniQuery;
    mdtmdtchave: TIntegerField;
    mdtclbcodigo: TIntegerField;
    mdtmeschaveorigem: TIntegerField;
    mdtmeschavedestino: TIntegerField;
    idtidtquantidade: TFloatField;
    itmunicodigo: TIntegerField;
    mdtmdtregistro: TDateField;
    idttoecodigo: TIntegerField;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaitmCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vpQtdMarcadas: Integer;
    vpetdcodigo: string;
    procedure Carregar; override;
  end;

var
  fraidv: Tfraidv;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'Compras';

  // Fim ID do Módulo fracpr

implementation

uses
  ufidt;

{$R *.dfm}

type
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraidv := Tfraidv.Create(pCargaFrame);
  fraidv.TxtFiltro := pCargaFrame.Filtro;

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraidv := Tfraidv.Create(pCargaFrame);
  try
    fraidv.CriaAcoesDeAcesso;
  finally
    fraidv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraidv.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  if not itm.Active then
    itm.Open;

end;

procedure Tfraidv.Carregar;
begin
  // inherited;

  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      consulta.Close;
      consulta.sql.Text := 'select etdcodigo from mes where meschave=' + TxtFiltro;
      consulta.Open;
      vpetdcodigo := consulta.FieldByName('etdcodigo').AsString;

      TxtFiltroSQL := 'mes.etdcodigo=' + vpetdcodigo;

    end;
  inherited Carregar;

end;

procedure Tfraidv.DBGListaDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure Tfraidv.DBGListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure Tfraidv.DBGListaKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure Tfraidv.DBGListaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure Tfraidv.listaitmCellClick(Column: TColumn);
var
  rgi: Integer;
  vlToeCodigo: string;
begin

  mdt.Close;
  mdt.ParamByName('meschaveorigem').AsString := uqtabelameschave.AsString;
  mdt.ParamByName('meschavedestino').AsString := TxtFiltro;

  mdt.Open;

  if mdt.IsEmpty then
  begin
    mdt.Append;
    mdtmdtregistro.Asfloat := strtodate(hoje(application, ZCone));
    mdtclbcodigo.AsInteger := acesso.usuario;
    mdtmeschaveorigem.AsString := uqtabelameschave.AsString;
    mdtmeschavedestino.AsString := TxtFiltro;
    mdt.post;
  end;

  idt.Close;
  idt.ParamByName('mdtchave').AsString := mdtmdtchave.AsString;
  idt.Open;

  try
    rgi := itm.RecNo;
    itm.DisableControls;

    if listaitm.SelectedField.FieldName = 'marcadevolver' then
    begin
      if itmmarcadevolver.AsInteger = 1 then
      begin
        itm.Edit;
        itmmarcadevolver.AsInteger := 0;
        itm.post;

        if idt.locate('itmchave', itmitmchave.AsInteger, []) then
        begin
          idt.Delete;
        end;

      end
      else
      begin

        consulta.Close;
        consulta.sql.Text := 'select itmchave from idt where mdtchave<>' + mdtmdtchave.AsString + ' and itmchave=' + itmitmchave.AsString;
        consulta.Open;

        if not consulta.IsEmpty then
        begin
          ShowMessage('Este item já consta em outra nota de devolução!');
          exit;
        end;

        itm.Edit;
        itmmarcadevolver.AsInteger := 1;
        itm.post;

        if idt.locate('itmchave', itmitmchave.AsInteger, []) then
          idt.Edit
        else
          idt.Append;

        idtmdtchave.AsString := mdtmdtchave.AsString;
        idtitmchave.AsString := itmitmchave.AsString;
        idtmeschave.AsString := uqtabelameschave.AsString;
        idtflacodigo.AsInteger := acesso.Filial;
        idtidtquantidade.Asfloat := itmitmquantidade.Asfloat;
        idtidtmotivo.AsString := '';
        idtunicodigo.AsInteger := itmunicodigo.AsInteger;
        idtidtvalor.Asfloat := itmitmvalor.Asfloat;
        idtidtdesconto.Asfloat := itmitmdesconto.Asfloat;
        idtidttotal.Asfloat := itmitmtotal.Asfloat;

        vlToeCodigo := '';

        if TxtFiltro <> '' then
        begin
          consulta.Close;
          consulta.sql.Text := 'select toecodigo from mes where meschave=' + TxtFiltro;
          consulta.Open;
          vlToeCodigo := consulta.FieldByName('toecodigo').AsString;
          idttoecodigo.AsString := vlToeCodigo;
        end;

        idt.post;
      if  CriaFormulario(tfidt, idtidtchave.AsString, itmitmquantidade.AsString, vlToeCodigo) then
      begin
         vpQtdMarcadas:=vpQtdMarcadas+1;
      end;

      end;

    end;

  finally

    itm.First;
    while not itm.Eof do
    begin
      if itmmarcadevolver.AsInteger = 1 then
      begin
        vpQtdMarcadas := vpQtdMarcadas + 1;
      end;
      itm.Next;
    end;

    if vpQtdMarcadas > 0 then
    begin
      DBGLista.Enabled := false;
      if (self.parent as tform).FindComponent('bconfirma') <> nil then
      begin
        ((self.parent as tform).FindComponent('bconfirma') as tbitbtn).Enabled := true;
      end;
    end
    else
    begin
      DBGLista.Enabled := true;
      if (self.parent as tform).FindComponent('bconfirma') <> nil then
      begin
        ((self.parent as tform).FindComponent('bconfirma') as tbitbtn).Enabled := false;
      end;

    end;

    itm.EnableControls;
    itm.RecNo := rgi;

  end;

end;

procedure Tfraidv.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  r: TRect;

begin
  inherited;
  r := Rect;
  GridZebrado(Sender, Rect, DataCol, Column, State);

  if Column.FieldName = 'marcadevolver' then
  begin

    listaitm.Canvas.FillRect(Rect);

    Check := 0;
    if self.itmmarcadevolver.AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;

    r := Rect;
    InflateRect(r, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(listaitm.Canvas.Handle, r, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

end.
