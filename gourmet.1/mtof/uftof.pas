unit uftof;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uPegaBase, System.ImageList;

type
  Tftof = class(Tfrmbase)
    registrotofcodigo: TIntegerField;
    registrotofidentificacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    tofcodigo: TDBEdit;
    tofidentificacao: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftof: Tftof;

  // Início ID do Módulo fratof
const
  vPlIdMd = '02.04.80.008-02';

  // Fim ID do Módulo fratof

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  Result := '';

  ftof := Tftof.Create(pCargaFrame);
  if ftof.ShowModal = mrOk then
    Result := ftof.vchave;

  ftof.Free;
end;

exports formulario;

procedure Tftof.bconfirmaClick(Sender: TObject);
begin
  inherited;

  vchave := registrotofcodigo.AsString;
end;

procedure Tftof.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
