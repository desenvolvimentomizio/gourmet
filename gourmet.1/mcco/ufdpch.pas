unit ufdpch;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufdvch, Datasnap.DBClient,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList;

type
  Tfdpch = class(Tfdvch)
    dchhistorico: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ctacodigodesEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    function contabiliza: Boolean; override;
  private
    procedure CarregaCheques;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  fdpch: Tfdpch;

  // Início ID do Módulo fdpch
const
  vPlIdMd = '02.02.07.007-05';
  vPlTitMdl = 'Depósitos de Cheques';

  // Fim ID do Módulo fdpch

implementation

{$R *.dfm}

function Tfdpch.contabiliza: Boolean;
var
  Contab: TContabilizacaoTransferencia;
begin

  pack := LoadPackage('modulos\mctz.bpl');
  if pack <> 0 then
    try
      @Contab := GetProcAddress(pack, PChar('ContabilizacaoTransferencia'));
      if Assigned(Contab) then
      begin
        consulta.close;
        consulta.sql.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigodes.Field.AsString;
        consulta.Open;

        vFlaCodigoDes := consulta.Fields[1].AsString;
        vPcgCodigoDes := consulta.Fields[2].AsString;

        consulta.close;
        consulta.sql.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigoori.Field.AsString;
        consulta.Open;

        vFlaCodigoOri := consulta.Fields[1].AsString;
        vPcgCodigoOri := consulta.Fields[2].AsString;

        result := Contab(Application, zcone, Acesso.Usuario.ToString, self.vpLteChave, vFlaCodigoOri, vFlaCodigoDes, vPcgCodigoOri, vPcgCodigoDes, '1',
          self.dchtotal.Field.AsString, registrodchhistorico.AsString);

      end;

    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfdpch.bconfirmaClick(Sender: TObject);
var
  vlLinha: string;
begin

  vlLinha := '';
  tmp.First;
  while not tmp.Eof do
  begin

    vlLinha := vlLinha + ' bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + self.tmpcheconta.AsString + ', nº ' +
      self.tmpchenumero.AsString + ', ';
    tmp.Next;
  end;

  inherited;

end;

procedure Tfdpch.ctacodigodesEnter(Sender: TObject);
begin
  inherited;
  cta.Filter := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=2';
  cta.Filtered := true;
end;

procedure Tfdpch.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;

  tmp.CreateDataSet;


  inherited;

  che.Close;
  che.Params[0].Asstring :=vChaveMestre;
  che.Params[1].AsString :=  '1';
  che.Open;

  CarregaCheques;

  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=2';

end;

procedure Tfdpch.CarregaCheques;
var
  i: Integer;
begin

  tmp.EmptyDataSet;

  che.First;
  while not che.Eof do
  begin
    if cheschcodigo.AsString='1' then
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
