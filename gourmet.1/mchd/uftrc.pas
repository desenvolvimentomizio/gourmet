unit uftrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes,
  Vcl.Grids, Vcl.DBGrids;

type
  Tftrc = class(Tfrmbase)
    registrotrcchave: TIntegerField;
    registrochdchave: TIntegerField;
    registrotrcregistro: TDateTimeField;
    registroclbcodigo: TIntegerField;
    registrotrcdescricao: TStringField;
    trcdescricao: TDBMemo;
    Label1: TLabel;
    trcchave: TDBEdit;
    Label2: TLabel;
    anc: TUniQuery;
    ancancchave: TIntegerField;
    ancancanexo: TBlobField;
    anctrcchave: TIntegerField;
    DSAnc: TUniDataSource;
    DBGridAnc: TDBGrid;
    Label3: TLabel;
    btIncluir: TBitBtn;
    btExcluir: TBitBtn;
    btDonwload: TBitBtn;
    OpenDialog: TOpenDialog;
    ancancidentificacao: TStringField;
    clr: TUniQuery;
    clrclrchave: TIntegerField;
    clretdcodigo: TIntegerField;
    clrcrtcodigo: TIntegerField;
    clrtalcodigo: TIntegerField;
    clrctdcodigo: TIntegerField;
    clrclrcnaeprincipal: TStringField;
    clrcrtidentificacao: TStringField;
    clretdidentificacao: TStringField;
    clrtalidentificacao: TStringField;
    clrctdidentificacao: TStringField;
    Dclr: TDataSource;
    plregimetributario: TPanel;
    ctdidentificacao: TDBEdit;
    pltopregimetribitario: TPanel;
    crtidentificacao: TDBEdit;
    talidentificacao: TDBEdit;
    clrclrvencimentocertificado: TDateField;
    Panel1: TPanel;
    clrvencimentocertificado: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btIncluirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btDonwloadClick(Sender: TObject);
    procedure trcdescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
    procedure trcdescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure trcdescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrc: Tftrc;

implementation

{$R *.dfm}

procedure Tftrc.btDonwloadClick(Sender: TObject);
begin
  inherited;
  OpenDialog.FileName := self.ancancidentificacao.AsString;
  if OpenDialog.Execute then
  begin
    ancancanexo.SaveToFile(OpenDialog.FileName);
  end;
end;

procedure Tftrc.btExcluirClick(Sender: TObject);
begin
  inherited;
  if self.trcchave.Field.AsString <> '' then
  begin
    anc.Delete;
  end;

end;

procedure Tftrc.btIncluirClick(Sender: TObject);

begin
  inherited;
  if registro.State <> dsbrowse then
  begin
    registro.Post;

    anc.Close;
    anc.ParamByName('trcchave').AsInteger := registrotrcchave.AsInteger;
    anc.Open;

    if OpenDialog.Execute then
    begin
      anc.Append;
      anctrcchave.AsInteger := registrotrcchave.AsInteger;
      ancancidentificacao.AsString := extractfilename(OpenDialog.FileName);
      ancancanexo.LoadFromFile(OpenDialog.FileName);
      anc.Post;

      anc.Refresh;
    end;
  end;

end;

procedure Tftrc.DSRegistroDataChange(Sender: TObject; Field: TField);
var
  vlEtdCodigo: String;
begin
  inherited;

  plregimetributario.Visible := False;

  if registro.Active then
    if registrochdchave.AsString <> '' then
    begin
      vlEtdCodigo := '';
      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo from chd where chdchave=' + registrochdchave.AsString;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlEtdCodigo := consulta.FieldByName('etdcodigo').AsString;
        clr.Close;
        clr.ParamByName('etdcodigo').AsString := vlEtdCodigo;
        clr.Open;
        if not clr.IsEmpty then
          plregimetributario.Visible := true
        else
          plregimetributario.Visible := False;
      end
      else
        plregimetributario.Visible := False;

    end
    else
      plregimetributario.Visible := False;

end;

procedure Tftrc.FormShow(Sender: TObject);
begin
  inherited;

  if psituacao.Caption = 'Alterando' then
  begin
    anc.Close;
    anc.ParamByName('trcchave').AsInteger := registrotrcchave.AsInteger;
    anc.Open;
  end;

end;

procedure Tftrc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrochdchave.AsString := vchavemestre;
  self.registroclbcodigo.AsInteger := acesso.Usuario;
  self.registrotrcregistro.AsString := agora(application, ZCone);
end;

procedure Tftrc.trcdescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure Tftrc.trcdescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  // inherited;

end;

procedure Tftrc.trcdescricaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

end.
