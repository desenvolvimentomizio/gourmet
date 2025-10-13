unit ufimpehf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, VirtualTable, Vcl.ExtDlgs;

type
  Tfimpehf = class(Tfrmbase)
    registrorifchave: TIntegerField;
    registroflhchave: TIntegerField;
    registrorifarquivo: TBlobField;
    registroclbcodigo: TIntegerField;
    registrorifregistro: TDateTimeField;
    flh: TUniQuery;
    Label1: TLabel;
    rifchave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    registrorifnomearquivo: TStringField;
    Label3: TLabel;
    rifnomearquivo: TDBEdit;
    btCarregaArquivo: TButton;
    pllista: TPanel;
    DBGridehf: TDBGrid;
    horas: TVirtualTable;
    horasetdcodigo: TIntegerField;
    horasevfcodigo: TIntegerField;
    horasevfhoras: TTimeField;
    horasetdidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetddoc1: TStringField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    OpenTextFileDialog: TOpenTextFileDialog;
    MemoArq: TMemo;
    Dhoras: TDataSource;
    evfrbccodigo: TIntegerField;
    ehf: TUniQuery;
    ehfehfchave: TIntegerField;
    ehfflhchave: TIntegerField;
    ehfvhfcodigo: TIntegerField;
    ehftthcodigo: TIntegerField;
    ehfclbcodigo: TIntegerField;
    ehfehfregistro: TDateTimeField;
    registroriftipoevento: TIntegerField;
    registroriftipocodigo: TIntegerField;
    riftipocodigo: TDBRadioGroup;
    riftipoevento: TDBRadioGroup;
    horasevfidentificacao: TStringField;
    ehfehfhoras: TStringField;
    plTituloLinhas: TPanel;
    plTituloRegistros: TPanel;
    etddtrnumeregistro: TStringField;
    evfevfidentificacao: TStringField;
    btProcessar: TButton;
    horasdtrnumeregistro: TStringField;
    horasrbccodigo: TStringField;
    horasvhfcodigo: TIntegerField;
    horastthcodigo: TIntegerField;
    evftthcodigo: TIntegerField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btCarregaArquivoClick(Sender: TObject);
    procedure btProcessarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimpehf: Tfimpehf;

implementation

{$R *.dfm}

procedure Tfimpehf.bconfirmaClick(Sender: TObject);
begin
  inherited;

  horas.First;
  while not horas.Eof do
  begin
    if (horasetdidentificacao.AsString <> '') and (horasevfidentificacao.AsString <> '') and  (horasvhfcodigo.AsString<>'') and (horastthcodigo.AsString<>'')then
    begin

      ehf.Close;
      ehf.ParamByName('flhchave').AsInteger := flhchave.Field.AsInteger;
      ehf.ParamByName('vhfcodigo').AsInteger := horasvhfcodigo.AsInteger;
      ehf.ParamByName('tthcodigo').AsInteger := horastthcodigo.AsInteger;
      ehf.ParamByName('ehfhoras').AsString := horasevfhoras.AsString;
      ehf.Open;
      if ehf.IsEmpty then
        ehf.Append
      else
        ehf.Edit;

      ehfflhchave.AsInteger := flhchave.Field.AsInteger;
      ehfvhfcodigo.AsInteger := horasvhfcodigo.AsInteger;
      ehftthcodigo.AsInteger := horastthcodigo.AsInteger;
      ehfehfhoras.AsString := horasevfhoras.AsString;
      ehfclbcodigo.AsInteger := acesso.Usuario;
      ehfehfregistro.AsString := agora(application, ZCone);
      ehf.Post;

    end;
    horas.Next;
  end;

end;

procedure Tfimpehf.btCarregaArquivoClick(Sender: TObject);

begin
  inherited;
  OpenTextFileDialog.Execute;
  if fileexists(OpenTextFileDialog.FileName) then
  begin
    rifnomearquivo.Field.AsString := OpenTextFileDialog.FileName;
    MemoArq.Lines.LoadFromFile(OpenTextFileDialog.FileName);
    plTituloLinhas.Caption := 'Linhas de arquivo texto a importar: ' + IntTostr(MemoArq.Lines.Count);
    plTituloRegistros.Caption := 'Registro identificados a processar: ' + IntTostr(horas.RecordCount);
    application.ProcessMessages;

  end;
end;

procedure Tfimpehf.btProcessarClick(Sender: TObject);
var
  i: Integer;
  vllinha: string;
  vlcodigo: string;
  vlevento: string;
  vlhora: string;
begin
  inherited;

  etd.Open;
  evf.Open;
  ehf.Open;

  horas.Open;
  vllinha := '';
  vlcodigo := '';
  vlevento := '';
  vlhora := '';

  for i := 0 to MemoArq.Lines.Count - 1 do
  begin

    vllinha := MemoArq.Lines.Strings[i];

    vlcodigo := copy(vllinha, 1, pos(',', vllinha) - 1);
    vllinha := copy(vllinha, pos(',', vllinha) + 1, 2000);

    vlevento := copy(vllinha, 1, pos(',', vllinha) - 1);
    vllinha := copy(vllinha, pos(',', vllinha) + 1, 2000);

    vlhora := vllinha;

    horas.Append;
    horasetdcodigo.AsString := vlcodigo;
    if riftipocodigo.Field.AsInteger = 1 then
    begin
      if etd.Locate('etdcodigo', vlcodigo, []) then
      begin
        horasetdcodigo.AsString := etdetdcodigo.AsString;
        horasetdidentificacao.AsString := etdetdidentificacao.AsString;

      end
      else
      begin
        // horasetdcodigo.AsString := '';
        horasetdidentificacao.AsString := '';
      end;
    end
    else if riftipocodigo.Field.AsInteger = 2 then
    begin

      if etd.Locate('dtrnumeregistro', vlcodigo, []) then
      begin
        horasdtrnumeregistro.AsString := vlcodigo;
        horasetdcodigo.AsString := etdetdcodigo.AsString;
        horasetdidentificacao.AsString := etdetdidentificacao.AsString;

        vhf.Close;
        vhf.ParamByName('etdcodigo').AsString := etdetdcodigo.AsString;
        vhf.Open;

        if vhf.RecordCount = 1 then
        begin
          horasvhfcodigo.AsInteger := vhfvhfcodigo.AsInteger;
        end;

      end
      else
      begin
        horasetdcodigo.AsString := '';
        horasetdidentificacao.AsString := '';
      end;

    end;

    vhf.Close;
    vhf.ParamByName('etdcodigo').AsString := etdetdcodigo.AsString;
    vhf.Open;

    if vhf.RecordCount = 1 then
    begin
      horasvhfcodigo.AsInteger := vhfvhfcodigo.AsInteger;
    end;

    horasevfcodigo.AsString := vlevento;

    if riftipoevento.Field.AsInteger = 1 then
    begin
      if evf.Locate('evfcodigo', vlevento, []) then
      begin
        horasevfcodigo.AsString := evfevfcodigo.AsString;
        horastthcodigo.AsString := evftthcodigo.AsString;
        horasevfidentificacao.AsString := evfevfidentificacao.AsString;
        horastthcodigo.AsInteger := evftthcodigo.AsInteger;

      end
      else
        horasevfidentificacao.AsString := '';

    end
    else if riftipoevento.Field.AsInteger = 2 then
    begin
      if evf.Locate('rbccodigo', vlevento, []) then
      begin
        horasevfcodigo.AsString := evfevfcodigo.AsString;
        horasevfcodigo.AsString := evfevfcodigo.AsString;
        horasevfidentificacao.AsString := evfevfidentificacao.AsString;
        horastthcodigo.AsInteger := evftthcodigo.AsInteger;
      end
      else
      begin
        horastthcodigo.AsString := '';
        horasevfcodigo.AsString := '';
        horasevfidentificacao.AsString := '';
      end;
    end;

    horasevfhoras.AsDateTime := StrToTime(vlhora);

    horas.Post;

  end;

  plTituloRegistros.Caption := 'Registro identificados a processar: ' + IntTostr(horas.RecordCount);
  application.ProcessMessages;

end;

procedure Tfimpehf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrorifregistro.AsString := agora(application, ZCone);
end;

end.
