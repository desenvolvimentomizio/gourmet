unit ufapf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfapf = class(Tfrmbase)
    registroapfchave: TIntegerField;
    registroapfdatainicial: TDateField;
    registroapfdatafinal: TDateField;
    registroapfagrupamento: TIntegerField;
    registroflacodigo: TIntegerField;
    apfchave: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    apfdatainicial: TDBEdit;
    Label3: TLabel;
    apfdatafinal: TDBEdit;
    btApurar: TButton;
    registrodmccodigo: TIntegerField;
    Label4: TLabel;
    dmccodigo: TDBEdit;
    registroapfmodo: TIntegerField;
    apfmodo: TDBRadioGroup;
    dmc: TUniQuery;
    dmcdmccodigo: TIntegerField;
    dmcdmcidentificacao: TStringField;
    registrodmcidentificacao: TStringField;
    pldpf: TPanel;
    dre: TUniQuery;
    dregrecodigo: TIntegerField;
    dregreidentificacao: TStringField;
    dredrechave: TIntegerField;
    drepcgcodigo: TIntegerField;
    drepcgidentificacao: TStringField;
    sbdre: TScrollBox;
    ofp: TUniQuery;
    ofpofpchave: TIntegerField;
    ofpdrechave: TIntegerField;
    ofpofpsql: TStringField;
    Ddre: TDataSource;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btApurarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fapf: Tfapf;

implementation

{$R *.dfm}

procedure Tfapf.bconfirmaClick(Sender: TObject);
begin
  dre.First;
  while not dre.Eof do
  begin
    if self.FindComponent('query' + dredrechave.AsString) <> nil then
    begin
      if (self.FindComponent('query' + dredrechave.AsString) as TUniQuery).State <> dsbrowse then
        (self.FindComponent('query' + dredrechave.AsString) as TUniQuery).Post;
    end;
    dre.Next;
  end;

  inherited;

end;

procedure Tfapf.btApurarClick(Sender: TObject);
var
  vlPanel: TPanel;
  vlConta: TPanel;
  vlTitulo: TPanel;
  vlgrupo: string;
  i, x, c: Integer;
  vlApura: TUniQuery;
  vlDfp: TUniQuery;

  vlDsDfp: TDataSource;
  vlEdApura: TDBEdit;
begin
  inherited;
  self.btApurar.Enabled:=false;
  dre.Close;
  dre.ParamByName('dmccodigo').AsInteger := dmccodigo.Field.AsInteger;
 // dre.ParamByName('apfchave').AsInteger := apfchave.Field.AsInteger;

  dre.Open;
  for i := 0 to sbdre.ComponentCount - 1 do
  begin
    sbdre.Components[i].Destroy;
  end;

  vlgrupo := '';
  x := 0;
  while not dre.Eof do
  begin
    if vlgrupo <> dregreidentificacao.AsString then
    begin
      vlPanel := TPanel.Create(sbdre);
      vlPanel.Parent := sbdre;
      vlPanel.Name := 'grupogrecodigo' + dregrecodigo.AsString;

      vlgrupo := dregreidentificacao.AsString;

      vlPanel.Caption := '';
      vlPanel.Align := alTop;
      vlPanel.Alignment := taLeftJustify;
      vlPanel.BorderWidth := 4;
      vlPanel.Height := 60;

      vlTitulo := TPanel.Create(self);
      vlTitulo.Parent := vlPanel;
      vlTitulo.Name := vlPanel.Name + 'grecodigo' + dregrecodigo.AsString;
      vlTitulo.Caption := vlgrupo;
      vlTitulo.Align := alTop;
      vlTitulo.Alignment := taLeftJustify;
      vlTitulo.BorderWidth := 4;
      vlTitulo.Font.Style := [fsbold];
      vlTitulo.Height := 25;
      x := x + 60;

    end;

    vlConta := TPanel.Create(self);
    vlConta.Parent := vlPanel;
    vlConta.Name := 'drechave' + dredrechave.AsString;
    vlConta.Caption := '    ' + drepcgidentificacao.AsString;

    vlConta.Alignment := taLeftJustify;
    vlConta.BorderWidth := 2;
    vlConta.Height := 25;
    vlConta.Align := alBottom;
    vlConta.Align := alTop;
    x := x + 25;
    vlPanel.Height := vlPanel.Height + 25;

    ofp.Close;
    ofp.ParamByName('drechave').AsInteger := dredrechave.AsInteger;
    ofp.Open;

    vlDfp := TUniQuery.Create(self);
    vlDfp.Connection := ZCone;
    vlDfp.Name := 'query' + dredrechave.AsString;
    vlDfp.SQL.Text := 'SELECT  dfpchave,  apfchave,  grecodigo,  apfvalor,  ';
    vlDfp.SQL.Add('drechave FROM dfp where apfchave=:apfchave ');
    vlDfp.SQL.Add(' and grecodigo=:grecodigo  and drechave=:drechave ');

    vlDfp.ParamByName('apfchave').AsInteger := apfchave.Field.AsInteger;
    vlDfp.ParamByName('grecodigo').AsInteger := dregrecodigo.AsInteger;
    vlDfp.ParamByName('drechave').AsInteger := dredrechave.AsInteger;
    vlDfp.Open;

    if vlDfp.IsEmpty then
    begin
      vlDfp.Append;
      vlDfp.FieldByName('apfvalor').AsCurrency := 0;
    end
    else
      vlDfp.Edit;

    vlDfp.FieldByName('apfchave').AsInteger := apfchave.Field.AsInteger;
    vlDfp.FieldByName('grecodigo').AsInteger := dregrecodigo.AsInteger;
    vlDfp.FieldByName('drechave').AsInteger := dredrechave.AsInteger;

    if ofpofpsql.AsString <> '' then
    begin

      vlApura := TUniQuery.Create(self);
      vlApura.Connection := ZCone;
      vlApura.SQL.Text := ofpofpsql.AsString;
      vlApura.ParamByName('datainicial').AsDate := apfdatainicial.Field.AsFloat;
      vlApura.ParamByName('datafinal').AsDate := apfdatafinal.Field.AsFloat;
      vlApura.Open;

      vlDfp.FieldByName('apfvalor').AsCurrency := vlApura.FieldByName('valor').AsCurrency;
    end;

    vlDsDfp := TDataSource.Create(self);
    vlDsDfp.DataSet := vlDfp;

    vlEdApura := TDBEdit.Create(self);
    vlEdApura.Parent := vlConta;
    vlEdApura.Align := alRight;
    vlEdApura.Width := 85;

    vlEdApura.DataSource := vlDsDfp;
    vlEdApura.DataField := 'apfvalor';








    dre.Next;
  end;

end;

procedure Tfapf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroapfagrupamento.AsInteger := 1;
  self.registroflacodigo.AsInteger := acesso.Filial;
end;

end.
