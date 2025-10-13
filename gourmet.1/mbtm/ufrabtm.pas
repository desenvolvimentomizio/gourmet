unit ufrabtm;

interface

uses
  Winapi.Windows, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Forms, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, uFuncoes, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrabtm = class(Tfrabase)
    uqtabelabtmcodigo: TIntegerField;
    uqtabelabplcodigo: TIntegerField;
    uqtabelabplidentificacao: TStringField;
    uqtabelabtmidentificacao: TStringField;
    uqtabelabtmformaabe: TStringField;
    uqtabelabtmtipobotao: TStringField;
    uqtabelagrmidentificacao: TStringField;
    ActExportar: TAction;
    uqtabelabtmordem: TIntegerField;
    ActImportar: TAction;
    uqtabelamdpidentificacao: TStringField;
    mUtilitarios: TMenuItem;
    mGerarImages: TMenuItem;
    uqtabelabtmimagem: TBlobField;
    uqtabelamdpcodigo: TIntegerField;
    uqtabelagrmcodigo: TIntegerField;
    uqtabelagrmordem: TIntegerField;
    uqtabelaatvidentificacao: TStringField;
    cfg: TUniQuery;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActImportarExecute(Sender: TObject);
    procedure mGerarImagesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frabtm: Tfrabtm;

  // Início ID do Módulo frabtm
const
  vPlIdMd = '03.07.80.015-01';
  vPlTitMdl = 'Menu Principal';

  // Fim ID do Módulo frabtm

implementation

uses
  ufbtm, ufexpbtm, ufimpbtm;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabtm := Tfrabtm.Create(pCargaFrame);
  frabtm.TxtFiltro := pCargaFrame.Filtro;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabtm := Tfrabtm.Create(pCargaFrame);
  try
    frabtm.CriaAcoesDeAcesso;
  finally
    frabtm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabtm.Carregar;
begin

  if TxtFiltro <> '' then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;
  end;

  inherited Carregar;
end;

procedure Tfrabtm.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbtm, uqtabelabtmcodigo.AsString, '');
end;

procedure Tfrabtm.ActExportarExecute(Sender: TObject);
begin
  if not cfg.Active then
    cfg.Open;

  if cfg.FieldByName('etddoc1').AsString = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE EXPORTAR MENUS!');
  end
  else
  begin

    if AutorizadoParaProdutores then
    begin

      If Application.MessageBox(Pchar('Confirma a exportação dos botões do sistema?'), Pchar('Exportação'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
      Begin
        try
          CriaFormulario(Tfexpbtm, '1', '');
        finally
        end;
      End;

    end;
  end;

end;

procedure Tfrabtm.ActImportarExecute(Sender: TObject);
begin
  if not cfg.Active then
    cfg.Open;

  if cfg.FieldByName('etddoc1').AsString = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE IMPORTAR MENUS!');
  end
  else
  begin

    If Application.MessageBox(Pchar('Confirma a importação dos botões do sistema?'), Pchar('Importação'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
    Begin
      try
        CriaFormulario(Tfimpbtm, '1', '');
      finally
        // FreeAndNil(fexpbtm);
      end;
    End;
  end;
end;

procedure Tfrabtm.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbtm, '', '');
end;

procedure Tfrabtm.mGerarImagesClick(Sender: TObject);

var
  BlobField: TBlobField;
  FileName: string;
begin
  uqtabela.First;
  while not uqtabela.Eof do
  begin
    BlobField := uqtabelabtmimagem as TBlobField;
    FileName := 'c:\mizio\' + uqtabelabtmcodigo.AsString + '.bmp';
    BlobField.SaveToFile(FileName);

    uqtabela.Next;
  end;

end;

end.
