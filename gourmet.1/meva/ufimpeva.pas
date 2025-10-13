unit ufimpeva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, VirtualTable, uFuncoes;

type
  Tfimpeva = class(Tfrmbase)
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetddoc1: TStringField;
    etddtrnumeregistro: TStringField;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registrorifchave: TIntegerField;
    registroflhchave: TIntegerField;
    registroflhidentificacao: TStringField;
    registrorifarquivo: TBlobField;
    registroclbcodigo: TIntegerField;
    registrorifregistro: TDateTimeField;
    registrorifnomearquivo: TStringField;
    registroriftipoevento: TIntegerField;
    registroriftipocodigo: TIntegerField;
    Label1: TLabel;
    rifchave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    rifnomearquivo: TDBEdit;
    riftipocodigo: TDBRadioGroup;
    riftipoevento: TDBRadioGroup;
    btCarregaArquivo: TButton;
    btProcessar: TButton;
    OpenTextFileDialog: TOpenTextFileDialog;
    pllista: TPanel;
    DBGridehf: TDBGrid;
    MemoArq: TMemo;
    plTituloLinhas: TPanel;
    plTituloRegistros: TPanel;
    eventos: TVirtualTable;
    eva: TUniQuery;
    evaevachave: TIntegerField;
    evaflhchave: TIntegerField;
    evaevfcodigo: TIntegerField;
    evaetdcodigo: TIntegerField;
    evaevavalor: TFloatField;
    evaphgcodigo: TIntegerField;
    evaclbcodigo: TIntegerField;
    evaevacriacao: TDateTimeField;
    evatevcodigo: TIntegerField;
    evaevahistorico: TStringField;
    evaeflcodigo: TIntegerField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfrbccodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    eventosetdcodigo: TIntegerField;
    eventosetdidentificacao: TStringField;
    eventosevfcodigo: TIntegerField;
    eventosevfidentificacao: TStringField;
    eventosdtrnumeregistro: TIntegerField;
    eventosevavalor: TFloatField;
    Deventos: TDataSource;
    evfpcgcodigo: TIntegerField;
    eventospcgcodigo: TIntegerField;
    procedure btCarregaArquivoClick(Sender: TObject);
    procedure btProcessarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimpeva: Tfimpeva;

implementation

{$R *.dfm}

procedure Tfimpeva.bconfirmaClick(Sender: TObject);
begin
  inherited;

  eventos.First;
  while not eventos.Eof do
  begin
    if (eventosetdidentificacao.AsString <> '') and (eventosevfidentificacao.AsString <> '') and (eventosevfcodigo.AsString <> '')  then
    begin

      eva.Close;
      eva.ParamByName('flhchave').AsInteger := flhchave.Field.AsInteger;
      eva.ParamByName('evfcodigo').AsInteger := eventosevfcodigo.AsInteger;
      eva.ParamByName('etdcodigo').AsInteger := eventosetdcodigo.AsInteger;
      eva.ParamByName('evavalor').AsString := eventosevavalor.AsString;
      eva.Open;
      if eva.IsEmpty then
        eva.Append
      else
        eva.Edit;

      evaflhchave.AsInteger := flhchave.Field.AsInteger;
      evaevfcodigo.AsInteger := eventosevfcodigo.AsInteger;
      evaetdcodigo.AsInteger := eventosetdcodigo.AsInteger;
      evaevavalor.AsString := eventosevavalor.AsString;
      evaphgcodigo.AsInteger := eventospcgcodigo.AsInteger;;
      evaclbcodigo.AsInteger := acesso.Usuario;
      evaevacriacao.AsString := agora(application, zcone);
      evatevcodigo.AsInteger := 2;
      evaevahistorico.AsString := '';
      evaeflcodigo.AsInteger := 2;

      eva.Post;

    end;
    eventos.Next;
  end;

end;

procedure Tfimpeva.btCarregaArquivoClick(Sender: TObject);
begin
  inherited;
  OpenTextFileDialog.Execute;
  if fileexists(OpenTextFileDialog.FileName) then
  begin
    rifnomearquivo.Field.AsString := OpenTextFileDialog.FileName;
    MemoArq.Lines.LoadFromFile(OpenTextFileDialog.FileName);
    plTituloLinhas.Caption := 'Linhas de arquivo texto a importar: ' + IntTostr(MemoArq.Lines.Count);
    plTituloRegistros.Caption := 'Registro identificados a processar: ' + IntTostr(eventos.RecordCount);
    application.ProcessMessages;

  end;
end;

procedure Tfimpeva.btProcessarClick(Sender: TObject);
var
  i: Integer;
  vllinha: string;
  vlcodigo: string;
  vlevento: string;
  vlvalor: string;
begin
  inherited;

  etd.Open;
  evf.Open;

  eventos.Open;
  vllinha := '';
  vlcodigo := '';
  vlevento := '';
  vlvalor := '';

  for i := 0 to MemoArq.Lines.Count - 1 do
  begin

    vllinha := MemoArq.Lines.Strings[i];

    vlcodigo := copy(vllinha, 1, pos(',', vllinha) - 1);
    vllinha := copy(vllinha, pos(',', vllinha) + 1, 2000);

    vlevento := copy(vllinha, 1, pos(',', vllinha) - 1);
    vllinha := copy(vllinha, pos(',', vllinha) + 1, 2000);

    vlvalor := vllinha;

    eventos.Append;
    eventosetdcodigo.AsString := vlcodigo;
    if riftipocodigo.Field.AsInteger = 1 then
    begin
      if etd.Locate('etdcodigo', vlcodigo, []) then
      begin
        eventosetdcodigo.AsString := etdetdcodigo.AsString;
        eventosetdidentificacao.AsString := etdetdidentificacao.AsString;

      end
      else
      begin
        eventosetdidentificacao.AsString := '';
      end;
    end
    else if riftipocodigo.Field.AsInteger = 2 then
    begin

      if etd.Locate('dtrnumeregistro', vlcodigo, []) then
      begin
        eventosdtrnumeregistro.AsString := vlcodigo;
        eventosetdcodigo.AsString := etdetdcodigo.AsString;
        eventosetdidentificacao.AsString := etdetdidentificacao.AsString;

      end
      else
      begin
        eventosetdcodigo.AsString := '';
        eventosetdidentificacao.AsString := '';
      end;

    end;

    eventosevfcodigo.AsString := vlevento;

    if riftipoevento.Field.AsInteger = 1 then
    begin
      if evf.Locate('evfcodigo', vlevento, []) then
      begin
        eventosevfcodigo.AsString := evfevfcodigo.AsString;
        eventospcgcodigo.AsInteger:=evfpcgcodigo.AsInteger;
        eventosevfidentificacao.AsString := evfevfidentificacao.AsString;
      end
      else
        eventosevfidentificacao.AsString := '';

    end
    else if riftipoevento.Field.AsInteger = 2 then
    begin
      if evf.Locate('rbccodigo', vlevento, []) then
      begin
        eventosevfcodigo.AsString := evfevfcodigo.AsString;
        eventosevfcodigo.AsString := evfevfcodigo.AsString;
        eventospcgcodigo.AsInteger:=evfpcgcodigo.AsInteger;
        eventosevfidentificacao.AsString := evfevfidentificacao.AsString;
      end
      else
      begin
        eventosevfcodigo.AsString := '';
        eventosevfidentificacao.AsString := '';
      end;
    end;

    eventosevavalor.AsString := vlvalor;

    eventos.Post;

  end;

  plTituloRegistros.Caption := 'Registro identificados a processar: ' + IntTostr(eventos.RecordCount);
  application.ProcessMessages;

end;

end.
