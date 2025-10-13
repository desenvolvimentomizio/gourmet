unit ufraete;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfraete = class(Tfrabase)
    uqtabelaetecodigo: TIntegerField;
    uqtabelaetecontato: TStringField;
    uqtabelaetedepartamento: TStringField;
    uqtabelaeteemail: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaeteenvianfe: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    uqtabelasenidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraete: Tfraete;

  // Início ID do Módulo fraete
const
  vPlIdMd = '01.01.80.003-01';
  vPlTitMdl = 'E-mail';

  // Fim ID do Módulo fraete

implementation

{$R *.dfm}

uses ufete;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraete := Tfraete.Create(pCargaFrame);
  Result := fraete;
end;
exports execute;

procedure Tfraete.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfete, self.uqtabelaetecodigo.AsString, self.vChaveMestre);
end;

procedure Tfraete.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfete, '', self.vChaveMestre);
end;

procedure Tfraete.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin
  Inherited;

  fixRect := Rect;
  If Column.Field = uqtabelaeteenvianfe Then
  Begin
    If uqtabelaeteenvianfe.AsString = '0' Then // desbloqueado
      imgIndex := 11 // AZUL
    Else If uqtabelaeteenvianfe.AsString = '1' Then // bloqueio total
      imgIndex := 10; // vermelho

    { bitmap := TBitmap.Create;
      Try
      ImagensManutencao.GetBitmap(imgIndex, bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      DBGLista.Canvas.StretchDraw(fixRect, bitmap);
      Finally
      bitmap.Free;
      End; }

    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  End;

  TDbGrid(Sender).DefaultDrawDataCell(fixRect, TDbGrid(Sender).columns[DataCol].Field, State);

end;

end.
