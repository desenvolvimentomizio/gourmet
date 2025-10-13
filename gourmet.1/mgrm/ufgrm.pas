unit ufgrm;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList;

type
  Tfgrm = class(Tfrmbase)
    registrogrmcodigo: TIntegerField;
    registromdpcodigo: TIntegerField;
    registrogrmidentificacao: TStringField;
    mdp: TUniQuery;
    mdpmdpcodigo: TIntegerField;
    mdpmdpidentificacao: TStringField;
    registromdpidentificacao: TStringField;
    Label1: TLabel;
    grmcodigo: TDBEdit;
    Label2: TLabel;
    grmidentificacao: TDBEdit;
    Label3: TLabel;
    mdpcodigo: TDBEdit;
    registrogrmordem: TIntegerField;
    Label4: TLabel;
    grmordem: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgrm: Tfgrm;

const
  vPlIdMd = '03.07.80.014-02';

implementation

{$R *.dfm}

procedure Tfgrm.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
