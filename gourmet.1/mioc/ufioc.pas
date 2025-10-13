unit ufioc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfioc = class(Tfrmbase)
    registroiocchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroitochave: TIntegerField;
    registroiocpercentual: TFloatField;
    registroflacodigo: TIntegerField;
    Label1: TLabel;
    iocchave: TDBEdit;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    Label3: TLabel;
    iocpercentual: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    cfgcfgajustaperccomissao: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure clbcodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fioc: Tfioc;

implementation

{$R *.dfm}

procedure Tfioc.bconfirmaClick(Sender: TObject);
begin

  if iocpercentual.Field.AsFloat = 0 then
  begin
    ShowMessage('Percentual de comissão não pode ser 0,000');
    exit;
  end;

  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select iocchave from ioc where itochave=' + vChaveMestre + ' and clbcodigo=' + clbcodigo.Field.AsString;
    consulta.Open;

    if consulta.IsEmpty then
    begin
      inherited;
    end
    else
    begin
      ShowMessage('Este colaborador ja foi registrado neste item!');
    end;
  end
  else
    inherited;

end;

procedure Tfioc.clbcodigoExit(Sender: TObject);
begin
  inherited;
  if ActiveControl <> bcancela then
  begin
    self.ValidaSaida(Sender);

    if cfgcfgajustaperccomissao.AsInteger = 1 then
    begin
      iocpercentual.Enabled := true;

    end
    else
    begin

      if clbcodigo.Field.Text <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select clbperccomissao from clb where clbcodigo=' + clbcodigo.Field.Text;
        consulta.Open;

        if consulta.FieldByName('clbperccomissao').AsFloat > 0 then
        begin
          self.iocpercentual.Field.AsFloat := consulta.FieldByName('clbperccomissao').AsFloat;
        end;

      end;

      if self.iocpercentual.Field.Text <> '' then
      begin

        iocpercentual.Enabled := false;
      end
      else
      begin

        iocpercentual.Enabled := true;
      end;
    end;

  end;
end;

procedure Tfioc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroitochave.AsString := vChaveMestre;
  registroflacodigo.AsInteger := acesso.Filial;
end;

end.
