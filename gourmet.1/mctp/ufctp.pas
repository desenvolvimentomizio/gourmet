unit ufctp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess, 
    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfctp = class(Tfrmbase)
    ctptecla: TDBComboBox;
    registroctpcodigo: TIntegerField;
    registroctpfuncao: TStringField;
    registroctptecla: TStringField;
    registroctpativo: TStringField;
    Label1: TLabel;
    ctpcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    ctpativo: TDBCheckBox;
    ctpfuncao: TDBComboBox;
    registromdacodigo: TIntegerField;
    registroctptroco: TIntegerField;
    ctptroco: TDBRadioGroup;
    mda: tuniquery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    registromdaidentificacao: TStringField;
    Label4: TLabel;
    mdacodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fctp: Tfctp;

  // Início ID do Módulo fractp
const
  vPlIdMd = '03.03.80.001-02';

  // Fim ID do Módulo fractp

implementation

{$R *.dfm}

procedure Tfctp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
