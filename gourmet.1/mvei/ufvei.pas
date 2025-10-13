unit ufvei;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, uFuncoes;

type
  Tfvei = class(Tfrmbase)
    registroveicodigo: TIntegerField;
    registroveiplaca: TStringField;
    registromrvcodigo: TIntegerField;
    registroufscodigo: TIntegerField;
    registrocddcodigo: TIntegerField;
    registrocbvcodigo: TIntegerField;
    registroveimodelo: TStringField;
    registroveianofabricacao: TIntegerField;
    registroveianomodelo: TIntegerField;
    registroveiniv: TStringField;
    registroveirenavan: TStringField;
    registroveinummotor: TStringField;
    registroveikilometragem: TFloatField;
    registroveiobs: TStringField;
    ufs: tuniquery;
    cdd: tuniquery;
    mrv: tuniquery;
    cbv: tuniquery;
    ufsufssigla: TStringField;
    cddcddnome: TStringField;
    cddcddcodigo: TStringField;
    ufsufscodigo: TStringField;
    mrvmrvcodigo: TIntegerField;
    mrvmrvidentificacao: TStringField;
    cbvcbvcodigo: TIntegerField;
    cbvcbvidentificacao: TStringField;
    registromrvidentificacao: TStringField;
    registroufssigla: TStringField;
    registrocddnome: TStringField;
    registrocbvidentificacao: TStringField;
    Label1: TLabel;
    veicodigo: TDBEdit;
    Label2: TLabel;
    veiplaca: TDBEdit;
    Label3: TLabel;
    mrvcodigo: TDBEdit;
    Label4: TLabel;
    ufscodigo: TDBEdit;
    Label5: TLabel;
    cddcodigo: TDBEdit;
    Label6: TLabel;
    cbvcodigo: TDBEdit;
    Label7: TLabel;
    veimodelo: TDBEdit;
    Label8: TLabel;
    veianofabricacao: TDBEdit;
    Label9: TLabel;
    veianomodelo: TDBEdit;
    Label10: TLabel;
    veiniv: TDBEdit;
    Label11: TLabel;
    veirenavan: TDBEdit;
    Label12: TLabel;
    veinummotor: TDBEdit;
    Label13: TLabel;
    veikilometragem: TDBEdit;
    Label14: TLabel;
    veiobs: TDBEdit;
    registroveimaquina: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenmaquina: TStringField;
    Label15: TLabel;
    veimaquina: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure veiplacaExit(Sender: TObject);
    procedure cddcodigoEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure veinivExit(Sender: TObject);
    procedure veimaquinaExit(Sender: TObject);
  private
    procedure AjustaTipoVeiculos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvei: Tfvei;

  // Início ID do Módulo fravei
const
  vPlIdMd = '01.03.80.001-02';

  // Fim ID do Módulo fravei

implementation

{$R *.dfm}

procedure Tfvei.cddcodigoEnter(Sender: TObject);
begin
  inherited;
  cdd.Close;
  cdd.Filter := 'ufscodigo = ' + ufscodigo.Field.AsString;
  cdd.Open;
end;

procedure Tfvei.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  AjustaTipoVeiculos;

  if Situacao = 'Alterando' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT veicodigo FROM vor ';
    consulta.SQL.Add('WHERE vor.veicodigo = ' + veicodigo.Field.AsString);
    consulta.Open;

    if consulta.IsEmpty then
      Exit;

    veiplaca.Enabled := False;
    ufscodigo.SetFocus;
  end;
end;

procedure Tfvei.registroAfterInsert(DataSet: TDataSet);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT cdd.cddcodigo, cdd.ufscodigo FROM cdd, cfgmcfg, edr ';
  consulta.SQL.Add('WHERE edr.etdcodigo = cfgmcfg.cfgetdempresa ');
  consulta.SQL.Add('AND cdd.cddcodigo = edr.cddcodigo;');
  consulta.Open;

  registrocddcodigo.AsInteger := consulta.Fields[0].AsInteger;
  registroufscodigo.AsInteger := consulta.Fields[1].AsInteger;

  registroveimaquina.AsInteger := 0;
end;

procedure Tfvei.veimaquinaExit(Sender: TObject);
begin
  AjustaTipoVeiculos;
end;

procedure Tfvei.veinivExit(Sender: TObject);
begin
  try
    if veiniv.Field.AsString = '' then
      Exit;

    consulta.Close;
    consulta.SQL.Text := 'SELECT veicodigo, veiniv FROM vei WHERE ';
    consulta.SQL.Add('veicodigo <> :veicodigo AND');
    consulta.SQL.Add('veiniv = :veiniv');
    consulta.Params[0].AsInteger := veicodigo.Field.AsInteger;
    consulta.Params[1].AsString := veiniv.Field.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      Application.MessageBox(PChar('Esta veículo já está cadastrado.' + #13 + #13 + 'Verifique o código ' + consulta.Fields[0].AsString + '.'), '',
        MB_ICONWARNING + MB_OK);
      veiniv.SetFocus;
      Exit;
    end;
  finally
    ValidaSaida(Sender);
  end;
end;

procedure Tfvei.veiplacaExit(Sender: TObject);
begin
  if veimaquina.Field.AsInteger = 1 then
    if registroveiplaca.AsString = '' then
      Exit;

  consulta.Close;
  consulta.SQL.Text := 'SELECT veicodigo, veiplaca FROM vei WHERE ';
  consulta.SQL.Add('veicodigo <> :veicodigo AND');
  consulta.SQL.Add('veiplaca = :veiplaca');
  consulta.Params[0].AsInteger := veicodigo.Field.AsInteger;
  consulta.Params[1].AsString := veiplaca.Field.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Este veículo já está cadastrado.' + #13 + #13 + 'Verifique o código ' + consulta.Fields[0].AsString + '.'), '',
      MB_ICONWARNING + MB_OK);
    veiplaca.SetFocus;
    Exit;
  end;

  ValidaSaida(Sender);
end;

procedure Tfvei.AjustaTipoVeiculos;
begin
  if veimaquina.Field.AsInteger = 1 then
  begin
    veiplaca.Field.Required := False;
    veiplaca.Color := clWhite;
    veiplaca.ReadOnly := True;
    veirenavan.ReadOnly := True;

    veiniv.Field.Required := True;
    veiniv.Color := PEG_COR_VALORREQUERIDO;
  end
  else
  begin
    veiplaca.Field.Required := True;
    veiplaca.Color := PEG_COR_VALORREQUERIDO;
    veiplaca.ReadOnly := False;
    veirenavan.ReadOnly := False;

    veiniv.Field.Required := False;
    veiniv.Color := clWhite;
  end;
end;

end.
