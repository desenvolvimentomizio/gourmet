unit ufraipg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  ufipg,uPegabase;

type
  Tfraipg = class(Tfrabase)
    uqtabelaipgchave: TIntegerField;
    uqtabelappgchave: TIntegerField;
    uqtabelarfichave: TIntegerField;
    uqtabelatficodigo: TIntegerField;
    uqtabelarfivalor: TFloatField;
    uqtabelaipgnumerocheque: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelarfiemissao: TDateField;
    uqtabelarfivencimento: TDateField;
    uqtabelarfinumero: TStringField;
    uqtabelarfihistorico: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelarfidias: TIntegerField;
    uqtabelarfijuros: TFloatField;
    uqtabelarfisaldogeral: TFloatField;
    uqtabelatfiidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraipg: Tfraipg;


  // Início ID do Módulo fraipg
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Itens da Programação';

  // Fim ID do Módulo fraipg

implementation

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;


  fraipg := Tfraipg.Create(pCargaFrame);
  Result := fraipg;

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraipg := Tfraipg.Create(pCargaFrame);
  try
    fraipg.CriaAcoesDeAcesso;
  finally
    fraipg.Free;
  end;
end;

exports execute, defineacesso;

procedure Tfraipg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfipg ,uqtabelaipgchave.AsString ,vChaveMestre);
end;

procedure Tfraipg.ActExcluirExecute(Sender: TObject);
begin
{  inherited;}

if ActExcluir.Enabled = False then
        begin
          ShowMessage('Excluir não autorizada!');
        end
        else
        begin
          if Application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), Pchar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
          begin
            self.uqtabela.Delete;
            try
              self.ActAtualizar.Execute;
            except

            end;
          end;
        end;

end;

procedure Tfraipg.ActIncluirExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfipg ,'' ,vChaveMestre);
end;

end.
