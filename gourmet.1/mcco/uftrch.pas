unit uftrch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Forms, ufdvch,
  Datasnap.DBClient, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftrch = class(Tfdvch)
    Label4: TLabel;
    dchhistorico: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ctacodigodesEnter(Sender: TObject);
  private
    procedure CarregaCheques;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrch: Tftrch;

  // Início ID do Módulo ftrch
const
  vPlIdMd = '02.02.07.007-03';

  // Fim ID do Módulo ftrch

implementation

{$R *.dfm}

procedure Tftrch.ctacodigodesEnter(Sender: TObject);
begin
  inherited;
  cta.Filter := 'ctacodigo<>' + Self.vChaveMestre + ' and tctcodigo<>2';
  cta.Filtered := true;

end;

procedure Tftrch.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;

  tmp.CreateDataSet;


  inherited;

  che.Close;
  che.Params[0].Asstring :=vChaveMestre;
  che.Params[1].AsString := '1';
  che.Open;

  CarregaCheques;

  Self.txtFiltro := 'ctacodigo<>' + Self.vChaveMestre + ' and tctcodigo<>2';

end;

procedure Tftrch.CarregaCheques;
var
  i: Integer;
begin
  tmp.EmptyDataSet;
  che.First;
  while not che.Eof do
  begin
    if cheschcodigo.AsString = '1' then
    begin
      tmp.append;
      for i := 0 to che.Fields.Count - 1 do
      begin
        tmp.Fieldbyname(che.Fields[i].FieldName).AsString := che.Fieldbyname(che.Fields[i].FieldName).AsString;
      end;
      tmp.Fieldbyname('tmpselecionar').AsString := '0';
      tmp.Fieldbyname('mdccodigo').AsString := '0';

      tmp.post;
    end;
    che.Next;
  end;

end;

end.
