unit ufAjustaCpfCnpj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
    ACBrBase, ACBrValidador, Vcl.ExtCtrls,
  Vcl.ComCtrls, ufuncoes, Uni, MemDS, DBAccess;

type
  TfAjustaCpfCnpj = class(TForm)
    etd: tuniquery;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    ACBrValidador1: TACBrValidador;
    inicializar: TTimer;
    Consulta: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetddoc1: TStringField;
    etdtpecodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
  private
    procedure VerificaCpfCnpj;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAjustaCpfCnpj: TfAjustaCpfCnpj;

implementation

{$R *.dfm}

procedure TfAjustaCpfCnpj.FormShow(Sender: TObject);
begin
  inicializar.Enabled := True;
end;

procedure TfAjustaCpfCnpj.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := False;
  VerificaCpfCnpj;
end;

procedure TfAjustaCpfCnpj.VerificaCpfCnpj;
var
  I: Integer;
begin
  etd.Open;
  etd.First;

  ProgressBar1.Max := etd.RecordCount;
  I := 0;
  while not etd.Eof do
  begin
    Inc(I);
    ProgressBar1.Position := I;

    etd.Edit;
    etdetddoc1.AsString := SoNumeros(etdetddoc1.AsString);

    ACBrValidador1.AjustarTamanho := True;

    if etdtpecodigo.AsInteger = 3 then
      etdtpecodigo.AsInteger := 1;

    if etdtpecodigo.AsInteger = 1 then
      ACBrValidador1.TipoDocto := docCPF
    else
      ACBrValidador1.TipoDocto := docCNPJ;

    ACBrValidador1.Documento := etdetddoc1.AsString;

    If ACBrValidador1.Validar Then
      etdetddoc1.AsString := ACBrValidador1.Formatar;

    etd.Post;
    etd.Next;
  end;

  ModalResult := mrOk;
end;

end.
