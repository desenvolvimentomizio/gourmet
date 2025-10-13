unit ufetf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, uPegaBase, System.ImageList;

type
  Tfetf = class(Tfrmbase)
    ttf: TUniQuery;
    ttfttfcodigo: TIntegerField;
    ttfttfidentificacao: TStringField;
    registroetfcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetfcontato: TStringField;
    registroetfdepartamento: TStringField;
    registrottfcodigo: TIntegerField;
    registrottfidentificacao: TStringField;
    registroetftelefone: TStringField;
    Label5: TLabel;
    ttfcodigo: TDBEdit;
    Label2: TLabel;
    etfcontato: TDBEdit;
    Label3: TLabel;
    etfdepartamento: TDBEdit;
    etftelefone: TDBEdit;
    Label4: TLabel;
    registroetfativo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure etftelefoneExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpEtfNumero: string;
  end;

var
  fetf: Tfetf;

  // Início ID do Módulo fraetf
const
  vPlIdMd = '01.01.80.002-02';

  // Fim ID do Módulo fraetf

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fetf := Tfetf.Create(pCargaFrame);
  fetf.ShowModal;
  fetf.Free;
end;

exports formulario;

procedure Tfetf.bconfirmaClick(Sender: TObject);
begin

  if Self.psituacao.Caption = 'Incluindo' then
  begin
    if Self.ttfcodigo.field.AsInteger = 1 then
    begin
      consulta.Close;
      consulta.SQL.Clear;
      consulta.SQL.Add('SELECT COUNT(etf.etfcodigo) AS principal');
      consulta.SQL.Add('  FROM etf ');
      consulta.SQL.Add(' WHERE etf.etdcodigo = ' + Self.vChaveMestre);
      consulta.SQL.Add('   AND etf.ttfcodigo = 1;');
      consulta.Open;

      if Self.consulta.Fields[0].AsInteger >= 1 then
      begin
        showmessage('Já consta telefone Principal para este Cadastro!');
        Self.ttfcodigo.setfocus;
        Exit;
      end;
    end
    else
    begin

    end;
  end;

  inherited;
end;

procedure Tfetf.etftelefoneExit(Sender: TObject);
var
  vlTamanho: integer;
begin
  inherited;
  if etftelefone.text <> '' then
  begin

    vlTamanho := length(etftelefone.text);
    if (vlTamanho <> 11) and (vlTamanho <> 10) then
    begin
      showmessage('O número de telefone dever seguir as seguintes condições: ' + #13 + 'Número Fixo : DDNNNNNNNN' + #13 + 'Número Móvel: DDNNNNNNNNN'
        + #13 + 'Verifique por favor!');
      etftelefone.setfocus;
    end;

  end;
end;

procedure Tfetf.FormShow(Sender: TObject);
var
  vlPode: boolean;
begin
  IdModulo := vPlIdMd;
  vlPode := True;
  if pos('#', vChaveMestre) > 0 then
  begin
    vpEtfNumero := copy(vChaveMestre, pos('#', vChaveMestre) + 1, 20);
    vChaveMestre := copy(vChaveMestre, 1, pos('#', vChaveMestre) - 1);

    registrottfcodigo.Required := false;
    registrottfcodigo.Visible := false;
    vlPode := false;
  end;

  inherited;

  if (psituacao.Caption = 'Incluindo') and (vChaveMestre <> '') then
  begin
    vpEtfNumero := '';
  end;

  consulta.Close;
  consulta.SQL.text := 'Select count(etfcodigo) as qtd from etf where etfativo=1 and etdcodigo=' + Self.vChaveMestre + ' and ttfcodigo=1';
  consulta.Open;

  if consulta.Fields[0].AsInteger = 0 then
  begin
    Self.registrottfcodigo.AsInteger := 1;
    Self.registroetfativo.AsInteger := 1;
    ttfcodigo.Enabled := false;
    etftelefone.setfocus;
  end
  else
  begin
    ttfcodigo.Enabled := True;
    ttfcodigo.setfocus;
  end;

  if (psituacao.Caption = 'Incluindo') or (psituacao.Caption = '') then
  begin
    if registrottfcodigo.Visible = false then
    begin
      registrottfcodigo.AsInteger := 1;
    end;

  end;

  if vpEtfNumero <> '' then
  begin
    registroetftelefone.asstring := vpEtfNumero;
    Self.registroetfativo.AsInteger := 1;
    Self.registrottfcodigo.AsInteger := 1;
    etftelefone.TabStop := false;
    etftelefone.ReadOnly := True;
    bconfirma.Click;
  end
  else
  begin

    Label5.Visible := True;
    ttfcodigo.Visible := True;
    Self.registroetfativo.AsInteger := 1;
    if vlPode then
    begin
      Self.registrottfcodigo.AsInteger := 1;
      ttfcodigo.TabStop := True;
      ttfcodigo.Enabled := True;
      ttfcodigo.ReadOnly := false;

    end
    else
    begin
      Self.registrottfcodigo.AsInteger := 8;
      ttfcodigo.Enabled := false;
      ttfcodigo.ReadOnly := True;
    end;
    etftelefone.TabStop := True;
    ttfcodigo.TabStop := True;
    etftelefone.ReadOnly := false;
  end;

end;

end.
