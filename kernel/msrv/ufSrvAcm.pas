unit ufsrvAcm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, dialogs, System.ImageList;

type
  TfsrvAcm = class(Tfrmbase)
    registroacmcodigo: TIntegerField;
    registromeschave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroclbanterior: TIntegerField;
    registroclbnovo: TIntegerField;
    registroacmtipo: TStringField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbanteriorident: TStringField;
    registroclbnovoident: TStringField;
    Label1: TLabel;
    acmcodigo: TDBEdit;
    Label2: TLabel;
    clbanterior: TDBEdit;
    Label3: TLabel;
    clbnovo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    FMesChave: String;
    FAcmTipo: String;
    FItmChave: String;
    procedure SetMesChave(const Value: String);
    procedure SetAcmTipo(const Value: String);
    procedure SetItmChave(const Value: String);
    { Private declarations }
  published
    property MesChave: String read FMesChave write SetMesChave;
    property AcmTipo: String read FAcmTipo write SetAcmTipo;
    property ItmChave: String read FItmChave write SetItmChave;
  public
    { Public declarations }
  end;

var
  fsrvAcm: TfsrvAcm;

implementation

{$R *.dfm}

procedure TfsrvAcm.bconfirmaClick(Sender: TObject);
begin
  inherited;

  (* Identifica se foi Confirmado *)
  if not(ModalResult = mrOk) then
    Exit;


  if AcmTipo = '1' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET clbvendedor = ' + registroclbnovo.AsString + ' WHERE meschave = ' + MesChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE itm i  ';
    consulta.SQL.Add('JOIN imc i1 ON i.itmchave = i1.itmchave ');
    consulta.SQL.Add('JOIN clb c ON i1.clbcodigo = c.clbcodigo AND c.fnccodigo <> 5 ');
    consulta.SQL.Add('SET i1.clbcodigo = ' + registroclbnovo.AsString + ' ');
    consulta.SQL.Add('WHERE i.meschave = ' + MesChave);
    consulta.ExecSQL;
  end
  else if AcmTipo = '9' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET clbcodigo = ' + registroclbnovo.AsString + ' WHERE meschave = ' + MesChave;
    consulta.ExecSQL;
  end
  else if AcmTipo = '3' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET clbvendedor = ' + registroclbnovo.AsString + ' WHERE meschave = ' + MesChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE itm i  ';
    consulta.SQL.Add('JOIN imc i1 ON i.itmchave = i1.itmchave ');
    consulta.SQL.Add('JOIN clb c ON i1.clbcodigo = c.clbcodigo AND c.fnccodigo <> 5 ');
    consulta.SQL.Add('SET i1.clbcodigo = ' + registroclbnovo.AsString + ' ');
    consulta.SQL.Add('WHERE i.meschave = ' + MesChave);
    consulta.ExecSQL;
  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE itm i  ';
    consulta.SQL.Add('JOIN imc i1 ON i.itmchave = i1.itmchave ');
    consulta.SQL.Add('JOIN clb c ON i1.clbcodigo = c.clbcodigo AND c.fnccodigo = 5 ');
    consulta.SQL.Add('SET i1.clbcodigo = ' + registroclbnovo.AsString + ' ');
    consulta.SQL.Add('WHERE i1.itmchave = ' + ItmChave);
    consulta.ExecSQL;
  end;
end;

procedure TfsrvAcm.FormShow(Sender: TObject);
begin
  (* Ajusta o tamanho do formulário para primeira abertura *)
  Self.Height := 230;
  Self.Width := 650;

  inherited;

  AcmTipo := txtFiltro;
  MesChave := vChaveMestre;

  txtFiltro := 'clbativo = 1 AND (fnccodigo=4 or fnccodigo=1)';

  consulta.Close;
  if AcmTipo = '1' then
    consulta.SQL.Text := 'SELECT clbvendedor FROM mes WHERE meschave = ' + MesChave
  else
  begin
    txtFiltro := 'clbativo = 1 AND (fnccodigo = 5 or fnccodigo=4 or fnccodigo=1)';

    consulta.SQL.Text := 'SELECT c.clbcodigo, i.itmchave FROM itm i ';
    consulta.SQL.Add('JOIN imc i1 ON i.itmchave = i1.itmchave ');
    consulta.SQL.Add('JOIN clb c ON i1.clbcodigo = c.clbcodigo AND c.fnccodigo = 5 ');
    consulta.SQL.Add('WHERE i.meschave = ' + MesChave);
  end;
  consulta.Open;

  registroclbanterior.AsInteger := consulta.Fields[0].AsInteger;

  if consulta.FieldCount = 2 then
    ItmChave := consulta.Fields[1].AsString;

  registroclbcodigo.AsInteger := Acesso.Usuario;

  clb.Filter := txtFiltro;
  clb.Filtered := True;
end;

procedure TfsrvAcm.SetAcmTipo(const Value: String);
begin
  FAcmTipo := Value;

  registroacmtipo.AsString := FAcmTipo;
end;

procedure TfsrvAcm.SetItmChave(const Value: String);
begin
  FItmChave := Value;
end;

procedure TfsrvAcm.SetMesChave(const Value: String);
begin
  FMesChave := Value;

  registromeschave.AsString := FMesChave;
end;

end.
