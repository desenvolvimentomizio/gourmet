unit uffnc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tffnc = class(Tfrmbase)
    registrofnccodigo: TIntegerField;
    registrofncidentificacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    fncidentificacao: TDBEdit;
    fnccodigo: TDBEdit;
    bvalidar: TButton;
    Plfcf: TPanel;
    procedure bvalidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
    hfcf: thandle;
  end;

var
  ffnc: Tffnc;

  // Início ID do Módulo frafnc
const
  vPlIdMd = '01.01.02.003-02';

  // Fim ID do Módulo frafnc

implementation

{$R *.dfm}

procedure Tffnc.bvalidarClick(Sender: TObject);
Begin
  Inherited;

  self.bvalidar.Visible := false;
  registro.Post;
  self.bconfirma.Enabled := true;

  hfcf := CarregaFrame('mfcf', Plfcf, 'Usuários');

end;

procedure Tffnc.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
