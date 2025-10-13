unit ufivdacu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, uBuscaProduto,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfivdacu = class(Tfrmbase)
    Label2: TLabel;
    ivdchave: TDBEdit;
    Label1: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    ivdquantidade: TDBEdit;
    Label4: TLabel;
    ivdvalor: TDBEdit;
    Label5: TLabel;
    ivdtotal: TDBEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    pun: TUniQuery;
    punpuncusto: TFloatField;
    registroivdchave: TIntegerField;
    registrospdchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registropcccodigo: TStringField;
    registroivdquantidade: TFloatField;
    registroivdvalor: TFloatField;
    registroivdtotal: TFloatField;
    registroivdproprietario: TStringField;
    registroivddescricao: TStringField;
    registroetdcodigo: TIntegerField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspddatabalanco: TDateField;
    spdpcccodigo: TStringField;
    cfgcfgusagrade: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    edQuantidade: TEdit;
    Label6: TLabel;
    edBarra: TEdit;
    procedure procodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ivdquantidadeChange(Sender: TObject);
    procedure ivdtotalEnter(Sender: TObject);
    procedure ivdtotalExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure edQuantidadeChange(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edBarraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vpquantidade: double;
    VCBarra: String;
  end;

var
  fivdacu: Tfivdacu;

implementation

{$R *.dfm}

procedure Tfivdacu.bconfirmaClick(Sender: TObject);
var
  I: Integer;
begin
  if not ValidaCamposRequeridos then
    Exit;

  Self.ivdtotal.Field.AsCurrency := Self.ivdquantidade.Field.AsFloat * Self.ivdvalor.Field.AsCurrency;

  if registro.State in [dsEdit, dsInsert] then
    registro.Post;

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TDBEdit then
      TDBEdit(Self.Components[I]).Enabled := False;

  bconfirma.Enabled := True;
  bcancela.Enabled := False;

  if Self.Height < 650 then
    Self.Height := 650;

  registro.Edit;
  inherited;
end;

procedure Tfivdacu.edBarraKeyPress(Sender: TObject; var Key: Char);
var
  vEmbalagem: Integer;
  vVariacao: Integer;
  vlProcodigo: Integer;

begin
  inherited;
  if Key = #13 then
  begin
    if length(edBarra.Text) >= 7 then
    begin
      VCBarra := edBarra.Text;
      vlProcodigo := 0;
      vlProcodigo := BuscaProdutoBarra(application, ZCone, VCBarra, vEmbalagem, vVariacao);

      { Consulta.Close;
        Consulta.SQL.Text := 'select procodigo from pun where punbarra=' + QuotedStr(formatfloat('00000000000000', strtofloat(edBarra.Text)));
        Consulta.Open; }

      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo from pun where procodigo=' + inttostr(vlProcodigo);
      Consulta.Open;

      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        edBarra.Visible := False;
        edQuantidade.SetFocus;
      end;

    end
    else if length(edBarra.Text) = 0 then
    begin
      edBarra.Visible := False;
      procodigo.SetFocus;
    end
    else
    begin
      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo from pun where procodigo=' + edBarra.Text;
      Consulta.Open;

      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        edBarra.Visible := False;
        edQuantidade.SetFocus;
      end;
    end;

  end;
  if Key = #27 then
  begin
    edBarra.Visible := False;
    procodigo.SetFocus;

  end;

end;

procedure Tfivdacu.edQuantidadeChange(Sender: TObject);
begin
  inherited;

  Consulta.Close;
  Consulta.SQL.Text := 'SELECT i.ivdchave , p.procodigo , p.pronome, i.ivdquantidade ';
  Consulta.SQL.Add('FROM ivd i ');
  Consulta.SQL.Add('JOIN pro p ON i.procodigo = p.procodigo ');
  Consulta.SQL.Add('WHERE i.procodigo = ' + procodigo.Field.AsString + ' ');
  Consulta.SQL.Add('AND i.spdchave = ' + registrospdchave.AsString + ' ');
  Consulta.Open;

  if not Consulta.IsEmpty then
  begin
    vpquantidade := Consulta.FieldByName('ivdquantidade').AsFloat;
  end
  else
  begin
    vpquantidade := 0;
  end;

  try
    Self.ivdquantidade.Field.AsFloat := Strtofloat(Self.edQuantidade.Text) + vpquantidade;
    Self.ivdtotal.Field.AsFloat := Self.ivdvalor.Field.AsFloat * Self.ivdquantidade.Field.AsFloat;
  except
    Self.ivdquantidade.Field.AsFloat := Strtofloat('0') + vpquantidade;
    Self.ivdtotal.Field.AsFloat := Self.ivdvalor.Field.AsFloat * Self.ivdquantidade.Field.AsFloat;

  end;

end;

procedure Tfivdacu.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    bconfirma.SetFocus;
  end;
end;

procedure Tfivdacu.ivdquantidadeChange(Sender: TObject);
begin
  inherited;
  inherited;

end;

procedure Tfivdacu.ivdtotalEnter(Sender: TObject);
begin
  inherited;
  Self.ivdtotal.Field.AsCurrency := Self.ivdquantidade.Field.AsFloat * Self.ivdvalor.Field.AsCurrency;

end;

procedure Tfivdacu.ivdtotalExit(Sender: TObject);
begin
  inherited;
  Self.bconfirma.SetFocus;

end;

procedure Tfivdacu.procodigoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;
  vpquantidade := 0;

  if Self.procodigo.Field.AsString <> '' then
  begin
    Consulta.Close;
    Consulta.SQL.Text := 'SELECT i.ivdchave , p.procodigo , p.pronome, i.ivdquantidade ';
    Consulta.SQL.Add('FROM ivd i ');
    Consulta.SQL.Add('JOIN pro p ON i.procodigo = p.procodigo ');
    Consulta.SQL.Add('WHERE i.procodigo = ' + procodigo.Field.AsString + ' ');
    Consulta.SQL.Add('AND i.spdchave = ' + registrospdchave.AsString + ' ');

    if Situacao = 'Alterando' then
      Consulta.SQL.Add('AND i.ivdchave <> ' + registroivdchave.AsString);

    Consulta.Open;

    if not Consulta.IsEmpty then
    begin

      vpquantidade := Consulta.FieldByName('ivdquantidade').AsFloat;
      registro.Cancel;
      registro.Close;
      registro.ParamByName('ivdchave').AsInteger := Consulta.FieldByName('ivdchave').AsInteger;
      registro.Open;
      registro.Edit;

    end
    else
    begin
      vpquantidade := 0;
    end;

    Consulta.Close;
    Consulta.SQL.Text := 'SELECT pun.puncusto FROM pun ';
    Consulta.SQL.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo AND pun.unicodigobase = pro.unicodigo ');
    Consulta.SQL.Add('where pro.procodigo=' + Self.procodigo.Field.AsString);
    Consulta.Open;
    Self.ivdvalor.Field.AsString := Consulta.Fields[0].AsString;
    Consulta.Close;

  end;
end;

procedure Tfivdacu.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  spd.Close;
  spd.Open;

  Self.registrospdchave.AsInteger := Self.spdspdchave.AsInteger;
  Self.registropcccodigo.AsString := Self.spdpcccodigo.AsString;
  Self.registroivdproprietario.AsInteger := 0;
  Self.registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
end;

end.
