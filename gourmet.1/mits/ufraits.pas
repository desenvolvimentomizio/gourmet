unit ufraits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegabase;

type
  Tfraits = class(Tfrabase)
    uqtabelaitscodigo: TIntegerField;
    uqtabelaitsidentificacao: TStringField;
    uqtabelaitsdescricao: TStringField;
    ActExportar: TAction;
    ActImportar: TAction;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgetddoc1: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActImportarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraits: Tfraits;

  // Início ID do Módulo fratoe
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Instruções de Trabalho';

  // Fim ID do Módulo fratoe

implementation

uses
  ufits, ufexpimpits;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraits := Tfraits.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraits := Tfraits.Create(pCargaFrame);
  try
    fraits.CriaAcoesDeAcesso;
  finally
    fraits.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraits.Carregar;
begin

  cfg.Close;
  cfg.Open;

  inherited;

end;

procedure Tfraits.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfits, uqtabelaitscodigo.AsString, '');
end;

procedure Tfraits.ActExportarExecute(Sender: TObject);
begin
  inherited;
  if cfg.Fieldbyname('etddoc1').AsString = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE EXPORTAR MENUS!');
  end
  else
  begin

    try
      Application.CreateForm(Tfexpimpits, fexpimpits);
      fexpimpits.zcone := self.zcone;
      fexpimpits.Caption := 'Exportação de Instruções';
      fexpimpits.pltexto.Caption := 'Exportação de Instruções';
      fexpimpits.psituacao.Caption := 'Exportando';

      fexpimpits.ShowModal;

    finally
      FreeAndNil(fexpimpits);
    end;
  end;
end;

procedure Tfraits.ActImportarExecute(Sender: TObject);
begin
  inherited;
  if cfg.Fieldbyname('etddoc1').AsString = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE IMPORTAR MENUS!');
  end
  else
  begin

    try

      Application.CreateForm(Tfexpimpits, fexpimpits);

      fexpimpits.zcone := self.zcone;
      fexpimpits.Caption := 'Importação de Instruções';
      fexpimpits.pltexto.Caption := 'Importação de Instruções';
      fexpimpits.psituacao.Caption := 'Importando';
      fexpimpits.ShowModal;

      ActAtualizar.Execute;

    finally
      FreeAndNil(fexpimpits);
    end;
  end;

end;

procedure Tfraits.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfits, '', '');
end;

end.
