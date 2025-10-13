unit ufraivt;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
   System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfraivt = class(Tfrabase)
    uqtabelaivtchave: TIntegerField;
    uqtabelaspdexercicio: TIntegerField;
    uqtabelaspdchave: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaivtquantidade: TFloatField;
    uqtabelaivtvalor: TFloatField;
    uqtabelaivttotal: TFloatField;
    uqtabelaspddatabalanco: TDateField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fraivt: Tfraivt;

  // Início ID do Módulo fraivt
const
  vPlIdMd = '02.04.12.001-01';
  vPlTitMdl = 'Inventário';

  // Fim ID do Módulo fraivt

implementation

{$R *.dfm}

uses ufivt;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraivt := Tfraivt.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraivt := Tfraivt.Create(pCargaFrame);
  try
    fraivt.CriaAcoesDeAcesso;
  finally
    fraivt.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraivt.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfivt, uqtabelaivtchave.AsString, '');
end;

procedure Tfraivt.ActExcluirExecute(Sender: TObject);
var
  Confirma: Integer;
begin
  Confirma := Application.MessageBox(PChar('Deseja excluir o registro selecionado ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  If (Confirma = Idyes) Then
  Begin
    consulta.Close;
    consulta.SQL.Text := 'delete from ivt where ivtchave=' + self.uqtabelaivtchave.AsString;
    consulta.ExecSQL;
    self.ActAtualizar.Execute;
  End;
end;

procedure Tfraivt.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfivt, '', '');
end;

end.
