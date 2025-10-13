unit ufflh;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.DateUtils, uFuncoes, System.ImageList;

type
  Tfflh = class(Tfrmbase)
    efl: tuniquery;
    registroflhchave: TIntegerField;
    e: TIntegerField;
    registroeflcodigo: TIntegerField;
    efleflidentificacao: TStringField;
    registroflhmes: TStringField;
    registroflhano: TStringField;
    registroflhdtinicial: TDateField;
    registroflhdtfinal: TDateField;
    registroflhdtpgto: TDateField;
    Label1: TLabel;
    flhchave: TDBEdit;
    Label2: TLabel;
    eflcodigo: TDBEdit;
    Label4: TLabel;
    flhmes: TDBEdit;
    Label5: TLabel;
    flhano: TDBEdit;
    Label6: TLabel;
    flhdtinicial: TDBEdit;
    Label7: TLabel;
    flhdtfinal: TDBEdit;
    Label8: TLabel;
    flhdtpgto: TDBEdit;
    registroeflidentificacao: TStringField;
    registroflhIdentificacao: TStringField;
    Label3: TLabel;
    flhIdentificacao: TDBEdit;
    registrotflcodigo: TIntegerField;
    tflcodigo: TDBEdit;
    Label9: TLabel;
    tfl: tuniquery;
    tfltflcodigo: TIntegerField;
    tfltflidentificacao: TStringField;
    registrotflidentificacao: TStringField;
    registroflhcriacao: TDateTimeField;
    registroclbcodigo: TIntegerField;
    procedure flhIdentificacaoEnter(Sender: TObject);
    procedure flhmesExit(Sender: TObject);

    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fflh: Tfflh;

  // Início ID do Módulo fflh
const
  vplidmd = '02.12.90.001-02';
  // Fim ID do Módulo fflh

implementation

{$R *.dfm}

procedure Tfflh.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.close;
    consulta.sql.Text := 'select count(flhchave) as qtd from flh where tflcodigo=' + self.tflcodigo.Field.AsString + ' and ';
    consulta.sql.Add('tflcodigo=1 and flhmes=' + self.flhmes.Field.AsString + ' and flhano=' + self.flhano.Field.AsString);
    consulta.Open;

    if consulta.Fields[0].AsInteger >= 1 then
    begin
      ShowMessage('Não é possível criar dois movimentos iguais para o mesmo periodo!');
      tflcodigo.SetFocus;
      exit;
    end;
  end;

  inherited;

end;


procedure Tfflh.flhIdentificacaoEnter(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    self.flhIdentificacao.Field.AsString := formatfloat('0000', self.flhano.Field.AsInteger) + '-' + formatfloat('00', self.flhmes.Field.AsInteger);
  end;

end;

procedure Tfflh.flhmesExit(Sender: TObject);
begin
  flhmes.Field.AsString := SoNumeros(flhmes.Field.AsString);
  inherited;
  self.ValidaSaida(Sender);
  if flhmes.Field.AsString <> '' then
  begin
    if not(flhmes.Field.AsInteger in [1 .. 12]) then
    begin
      ShowMessage('Intervalo valido: 1 a 12' + #13 + 'Número de mes inválido!');
      flhmes.Field.AsString := '';
      flhmes.SetFocus;
    end;
  end;
end;

procedure Tfflh.FormShow(Sender: TObject);
begin
  IdModulo := vplidmd;
  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    tflcodigo.Enabled := false;
    eflcodigo.Enabled := false;
    flhmes.Enabled := false;
    flhano.Enabled := false;
    flhIdentificacao.Enabled := false;
    flhdtinicial.SetFocus;
  end;
end;

procedure Tfflh.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroeflcodigo.AsInteger := 1;
  registroflhcriacao.AsFloat := now;
  registroclbcodigo.AsInteger := Acesso.Usuario;
end;

end.
