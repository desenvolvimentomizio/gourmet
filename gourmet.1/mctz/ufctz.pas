unit ufctz;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, ufrmbase, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList, System.ImageList;

type
  Tfctz = class(Tfrmbase)
    registrormgchave: TIntegerField;
    registromlgchave: TIntegerField;
    registrophgcodigo: TIntegerField;
    registrormgdata: TDateField;
    registrormgvalor: TFloatField;
    registrormgcomplemento: TStringField;
    registropcgcodigo: TIntegerField;
    registrormgtipo: TIntegerField;
    Label1: TLabel;
    pcgcodigo: TDBEdit;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentideb: TStringField;
    Label2: TLabel;
    rmgvalor: TDBEdit;
    Label4: TLabel;
    rmgcomplemento: TDBEdit;
    Label5: TLabel;
    rmgchave: TDBEdit;
    registrormginclusao: TDateTimeField;
    registrormgcompetencia: TDateField;
    mlg: TUniQuery;
    mlgmlgchave: TIntegerField;
    mlgclbcodigo: TIntegerField;
    mlgmlgsituacao: TIntegerField;
    mlgflacodigo: TIntegerField;
    mlgmlgdata: TDateField;
    mlgltechave: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    PlDrg: TPanel;
    drg: TUniQuery;
    drgdrgchave: TIntegerField;
    drgmlgchave: TIntegerField;
    drgdrgvalor: TFloatField;
    drgdrgtipo: TIntegerField;
    drgccgcodigo: TIntegerField;
    drgdrgpercentual: TFloatField;
    phgcodigo: TDBEdit;
    Label3: TLabel;
    registrocedcodigo: TIntegerField;
    cfgcfgctbmodo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure rmgvalorExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure pcgcodigoEnter(Sender: TObject);
  private
    procedure MostraRateioCC;
    procedure salvacolunasframes;
    { Private declarations }
  public
    { Public declarations }
    hdrg: thandle;
    vpPhgCodigo: string;
    vpLteChave: string;
    vpFlaCodigo: string;
    vpCedCodigo: string;
    vpPcgCodigo: string;
    vpRmgValor: string;
  end;

var
  fctz: Tfctz;

  // Início ID do Módulo fctz
const
  vPlIdMd = '03.10.81.002-03';

  // Fim ID do Módulo fctz

implementation

{$R *.dfm}

procedure Tfctz.MostraRateioCC;
var
  fra: Tfrabase;
  I: integer;
begin

  If (self.registro.State = dsEdit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  bconfirma.Enabled := true;

  hdrg := CarregaFrame('mdrg', PlDrg, 'execute');

  fra := nil;
  fra := Tfrabase(Application.FindComponent('fradrg'));

  if self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if fra.vretorno = '0' then
      begin
        self.psituacao.Caption := 'Cancelando';
      end;
  end;

end;

procedure Tfctz.pcgcodigoEnter(Sender: TObject);
begin
  self.txtFiltro := 'pcgrecdes=1';
  inherited;

end;

procedure Tfctz.salvacolunasframes;
var
  fra: Tfrabase;
begin

  if hdrg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fradrg'));

    if fra <> nil then
      fra.salvacolunas;
  end;
end;

procedure Tfctz.bconfirmaClick(Sender: TObject);
var
  vlPodeFechar: boolean;
  fra: Tfrabase;
begin
  vlPodeFechar := true;
  if hdrg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fradrg'));
    if fra <> nil then
      vlPodeFechar := fra.podefechar;
  end;

  if vlPodeFechar then
    inherited;

  If self.bconfirma.Caption = 'Confirma' Then
  begin
    salvacolunasframes;
  end;

end;

procedure Tfctz.FormShow(Sender: TObject);
begin

  vpLteChave := copy(vChaveMestre, pos('&', vChaveMestre) + 1, 200);
  vpLteChave := copy(vpLteChave, 1, pos('@', vpLteChave) - 1);

  vpFlaCodigo := copy(vChaveMestre, pos('@', vChaveMestre) + 1, 200);
  vpFlaCodigo := copy(vpFlaCodigo, 1, pos('%', vpFlaCodigo) - 1);

  vpCedCodigo := copy(vChaveMestre, pos('%', vChaveMestre) + 1, 200);
  vpCedCodigo := copy(vpCedCodigo, 1, pos('#', vpCedCodigo) - 1);

  vpPcgCodigo := copy(vChaveMestre, pos('#', vChaveMestre) + 1, 200);
  vpPcgCodigo := copy(vpPcgCodigo, 1, pos('!', vpPcgCodigo) - 1);

  vpPhgCodigo := copy(vChaveMestre, pos('!', vChaveMestre) + 1, 200);
  vpPhgCodigo := copy(vpPhgCodigo, 1, pos('$', vpPhgCodigo) - 1);

  vpRmgValor := copy(vChaveMestre, pos('$', vChaveMestre) + 1, 200);
  vpRmgValor := trim(copy(vpRmgValor, 1, 200));

  vChaveMestre := copy(vChaveMestre, 1, pos('&', vChaveMestre) - 1);

  mlg.Connection := zcone;
  mlg.Close;
  mlg.Params[0].AsString := vpLteChave;
  mlg.Open;

  if cfgcfgctbmodo.AsInteger = 1 then
  begin
    if vpCedCodigo = '1' then
    begin
      self.txtFiltro := 'pcgrecdes=1 and pcgativa=1';

    end
    else if vpCedCodigo = '0' then
    begin
      self.txtFiltro := 'pcgrecdes=0 and pcgativa=1';
    end;
  end
  else
  begin

    if vpCedCodigo = '1' then
    begin
      self.txtFiltro := 'cggcodigo=3';

    end
    else if vpCedCodigo = '0' then
    begin
      self.txtFiltro := 'cggcodigo=4';
    end;
  end;

  if mlg.IsEmpty then
  begin
    mlg.Append;
  end
  else
  begin
    mlg.Edit;
  end;

  mlgclbcodigo.AsInteger := Acesso.Usuario;
  mlgmlgsituacao.AsInteger := 1;
  mlgflacodigo.AsString := vpFlaCodigo;
  mlgmlgdata.AsFloat := date;
  mlgltechave.AsString := vpLteChave;
  mlg.Post;

  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfctz.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrophgcodigo.AsString := vpPhgCodigo;
  registrormgdata.AsFloat := date;
  registrormgcompetencia.AsFloat := date;
  registrormgtipo.AsInteger := 2;
  registrormginclusao.AsFloat := now;
  registrophgcodigo.AsString := vpPhgCodigo;
  registrocedcodigo.AsString := vpCedCodigo;
  registrormgvalor.AsString := vpRmgValor;

end;

procedure Tfctz.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registromlgchave.AsInteger := mlgmlgchave.AsInteger;
  registrocedcodigo.AsString := vpCedCodigo;
end;

procedure Tfctz.rmgvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  consulta.Close;
  consulta.sql.Text := 'SELECT prcchave,   pcgcodigo,  ccgcodigo,  prcpercentual  FROM prc where pcgcodigo=' + self.pcgcodigo.Field.AsString;
  consulta.Open;

  if not self.consulta.IsEmpty then
  begin
    if (registro.State = dsEdit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    if (registro.State = dsBrowse) then
      registro.Edit;

    self.psituacao.Caption := 'Alterando';

    drg.Close;
    drg.Params[0].AsInteger := rmgchave.Field.AsInteger;
    drg.Open;

    consulta.First;
    while not consulta.Eof do
    begin
      if drg.Locate('rmgchave;ccgcodigo', VarArrayOf([self.registrormgchave.AsInteger, self.consulta.fields[2].AsInteger]), []) then
      begin
        drg.Edit;
      end
      else
      begin
        drg.Append;
      end;

      drgmlgchave.AsInteger := self.registromlgchave.AsInteger;
      drgdrgvalor.AsCurrency := self.registrormgvalor.AsCurrency * (self.consulta.fields[3].AsFloat / 100);
      drgdrgtipo.AsInteger := 1;
      drgccgcodigo.AsInteger := self.consulta.fields[2].AsInteger;
      drgdrgpercentual.AsFloat := self.consulta.fields[3].AsFloat;
      drg.Post;

      consulta.next;
    end;

    MostraRateioCC;
  end;

end;

end.
