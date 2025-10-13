unit ufcfgmcli;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Actions, Vcl.ActnList, Vcl.ImgList, PngImageList, System.ImageList;

type
  Tfcfgmcli = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgmcliusarefpes: TIntegerField;
    registrocfgmcliusarefecom: TIntegerField;
    registrocfgmcliusarefban: TIntegerField;
    registrocfgmcliusaconemp: TIntegerField;
    registrocfgmcliusadapefi: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenusarefpes: TStringField;
    registrosenusarefcom: TStringField;
    registrosenusarefban: TStringField;
    registrosenusaconemp: TStringField;
    registrosenusadapefi: TStringField;
    Label1: TLabel;
    cfgmcliusarefpes: TDBEdit;
    Label3: TLabel;
    cfgmcliusarefecom: TDBEdit;
    Label4: TLabel;
    cfgmcliusarefban: TDBEdit;
    Label5: TLabel;
    cfgmcliusaconemp: TDBEdit;
    Label6: TLabel;
    cfgmcliusadapefi: TDBEdit;
    registrocfgmclivalidacpf: TIntegerField;
    Label2: TLabel;
    cfgmclivalidacpf: TDBEdit;
    registrosenvalidacpf: TStringField;
    registrocfgmcliocultainativo: TIntegerField;
    registrosencfgmcliocultainativo: TStringField;
    Label7: TLabel;
    cfgmcliocultainativo: TDBEdit;
    registrocfgmclicarteira: TIntegerField;
    registrosencfgmclicarteira: TStringField;
    Label8: TLabel;
    cfgmclicarteira: TDBEdit;
    registrocfgmclisimplificado: TIntegerField;
    registrosencfgmclisimplificado: TStringField;
    Label9: TLabel;
    cfgmclisimplificado: TDBEdit;
    registrocfgmclifoto: TIntegerField;
    registrosencfgmclifoto: TStringField;
    Label10: TLabel;
    cfgmclifoto: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmcli: Tfcfgmcli;

implementation

{$R *.dfm}

procedure Tfcfgmcli.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocfgcodigo.AsInteger:=1;
 end;

end.
