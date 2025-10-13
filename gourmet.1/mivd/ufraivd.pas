unit ufraivd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, SysUtils, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
   System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type
  Tfraivd = class(Tfrabase)
    uqtabelaivdchave: TIntegerField;
    uqtabelaspdexercicio: TIntegerField;
    uqtabelaspdchave: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaivdquantidade: TFloatField;
    uqtabelaivdvalor: TFloatField;
    uqtabelaivdtotal: TFloatField;
    uqtabelaspddatabalanco: TDateField;
    ActRemoverAnterior: TAction;
    ActRemoverPosterior: TAction;
    ivd: TUniQuery;
    mostra: TProgressBar;
    ActIncluirAcumulado: TAction;
    IncluirAcumulado1: TMenuItem;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActRemoverAnteriorExecute(Sender: TObject);
    procedure ActRemoverPosteriorExecute(Sender: TObject);
    procedure ActIncluirAcumuladoExecute(Sender: TObject);
  private
    procedure RemoverInventarioDisponivel(vSituacao: String);
  public
    { Public declarations }
  end;

var
  fraivd: Tfraivd;

  // Início ID do Módulo fraivd
const
  vPlIdMd = '02.04.12.001-01';
  vPlTitMdl = 'Inventário Disponível';

  // Fim ID do Módulo fraivd

implementation

{$R *.dfm}

uses ufivd, ufivdacu;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraivd := Tfraivd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraivd := Tfraivd.Create(pCargaFrame);
  try
    fraivd.CriaAcoesDeAcesso;
  finally
    fraivd.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraivd.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfivd, uqtabelaivdchave.AsString, '');
end;

procedure Tfraivd.ActIncluirAcumuladoExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfivdacu, '', '');
end;

procedure Tfraivd.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfivd, '', '');
end;

procedure Tfraivd.ActRemoverAnteriorExecute(Sender: TObject);
begin
  RemoverInventarioDisponivel('anterior');
end;

procedure Tfraivd.ActRemoverPosteriorExecute(Sender: TObject);
begin
  RemoverInventarioDisponivel('posterior');
end;

procedure Tfraivd.RemoverInventarioDisponivel(vSituacao: String);
var
  i: Integer;
begin
  inherited;
  try
    PnlRodapeGrid.Visible := True;
    mostra.Max := uqtabela.RecordCount;
    mostra.Position := 0;
    application.ProcessMessages;
    uqtabela.DisableControls;
    uqtabela.First;
    while not uqtabela.Eof do
    begin
      mostra.Position := mostra.Position + 1;
      application.ProcessMessages;
      ivd.Close;
      ivd.Parambyname('procodigo').AsString := uqtabelaprocodigo.AsString;
      ivd.Parambyname('spdexercicio').AsString := uqtabelaspdexercicio.AsString;
      ivd.Parambyname('spddatabalanco').AsDate := uqtabelaspddatabalanco.AsFloat;
      ivd.Open;

      ivd.First;
      i := 0;
      while not ivd.Eof do
      begin
        if (ivd.RecordCount > 1) then
          i := ivd.FieldByName('ivdchave').AsInteger
        else
          i := 0;
        if lowercase(vSituacao) = 'posterior' then
        begin
          if (uqtabelaivdchave.AsInteger < i) and (ivd.RecordCount > 1) then
          begin
            i := ivd.FieldByName('ivdchave').AsInteger;
            Break;
          end
          else if (uqtabelaivdchave.AsInteger > i) and (ivd.RecordCount > 1) then
          begin
            i := uqtabelaivdchave.AsInteger;
            Break;
          end
        end
        else if lowercase(vSituacao) = 'anterior' then
        begin
          if (uqtabelaivdchave.AsInteger > i) and (ivd.RecordCount > 1) then
          begin
            i := ivd.FieldByName('ivdchave').AsInteger;
            Break;
          end
          else if (uqtabelaivdchave.AsInteger < i) and (ivd.RecordCount > 1) then
          begin
            i := uqtabelaivdchave.AsInteger;
            Break;
          end;


        end;

        ivd.Next;
      end;
      if i <> 0 then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from ivd where ivdchave=' + InttoStr(i);
        consulta.ExecSQL;
      end;

      uqtabela.Next;
    end;
  finally
    uqtabela.First;
    uqtabela.EnableControls;
    PnlRodapeGrid.Visible := False;
    self.ActAtualizar.Execute;
  end;

end;

end.
