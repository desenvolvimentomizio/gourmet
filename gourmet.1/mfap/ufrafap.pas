unit ufrafap;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafap = class(Tfrabase)
    uqtabelafapcodigo: TIntegerField;
    uqtabelafabcodigo: TIntegerField;
    uqtabelafapproprio: TStringField;
    uqtabelafabidentificacao: TStringField;
    uqtabelafapselecionado: TIntegerField;
    prf: tuniquery;
    prfprocodigo: TIntegerField;
    prffapcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    vpProCodigo: String;

    procedure Carregar; override;
    { Public declarations }
  end;

var
  frafap: Tfrafap;

  // Início ID do Módulo frafap
const
  vPlIdMd = '01.01.05.012-01';
  vPlTitMdl = 'Códigos de Fabricante do Produto';

  // Fim ID do Módulo frafap

implementation

{$R *.dfm}

uses uffap;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafap := Tfrafap.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafap := Tfrafap.Create(pCargaFrame);
  try
    frafap.CriaAcoesDeAcesso;
  finally
    frafap.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafap.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffap, uqtabelafapcodigo.AsString, '');
end;

procedure Tfrafap.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffap, '', '');
end;

procedure Tfrafap.Carregar;
begin
  vpProCodigo := vChaveMestre;
  inherited;

end;

procedure Tfrafap.DBGListaCellClick(Column: TColumn);
begin
  if not uqtabela.IsEmpty then
    if DBGLista.SelectedField.FieldName = 'fapselecionado' then
    begin
      if not(uqtabela.State = dsEdit) then
        uqtabela.Edit;
      if uqtabelafapselecionado.AsInteger = 1 then
        uqtabelafapselecionado.AsInteger := 0
      else
        uqtabelafapselecionado.AsInteger := 1;
      // uqtabela.Post;
    end
    else
      inherited;
end;

procedure Tfrafap.DBGListaDblClick(Sender: TObject);
begin
  { inherited; }
end;

procedure Tfrafap.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;

  if edbusca.Tag = 1 then
    if Column.FieldName = 'fapselecionado' then
    begin

      // Desenha um checkbox no dbgrid

      DBGLista.Canvas.FillRect(Rect);

      Check := 0;
      if self.uqtabelafapselecionado.AsInteger = 1 then
        Check := DFCS_CHECKED
      else
        Check := 0;

      R := Rect;
      InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
      DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;
end;

end.
