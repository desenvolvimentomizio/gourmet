unit ufajtpreco;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, Vcl.Dialogs, uFuncoes, uPegaBase, System.ImageList;

type
  Tfajtpreco = class(Tfrmbase)
    punidentificacao: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    punbarra: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    punprecoav: TDBEdit;
    Label6: TLabel;
    novopunprecoav: TEdit;
    novopunprecoap: TEdit;
    lpnovopunprecoap: TLabel;
    punprecoap: TDBEdit;
    lppunprecoap: TLabel;
    registropunidentificacao: TStringField;
    registropunbarra: TStringField;
    registropunprecoav: TFloatField;
    registropunprecoap: TFloatField;
    registrounicodigo: TIntegerField;
    registropunmultiplicador: TFloatField;
    Label2: TLabel;
    punmultiplicador: TDBEdit;
    unicodigo: TDBEdit;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    Label7: TLabel;
    puncusto: TDBEdit;
    registropuncusto: TFloatField;
    Uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    registrouninome: TStringField;
    registropunmargem: TFloatField;
    Label8: TLabel;
    punmargem: TEdit;
    DBpunmargem: TDBEdit;
    uniuninome: TStringField;
    apv: tuniquery;
    apvapvchave: TIntegerField;
    apvpuncodigo: TIntegerField;
    apvclbcodigo: TIntegerField;
    apvspvcodigo: TIntegerField;
    apvapvprecoav: TFloatField;
    apvapvprecoap: TFloatField;
    apvapvdatahora: TDateTimeField;
    cfgcfgmodoatuapro: TIntegerField;
    rpu: TUniQuery;
    rpurpuchave: TIntegerField;
    rpupuncodigo: TIntegerField;
    rpuclbcodigo: TIntegerField;
    rpupunprecoav: TFloatField;
    rpupunprecoap: TFloatField;
    rpupuncusto: TFloatField;
    rpupunmargem: TFloatField;
    rpupunpercacresavap: TFloatField;
    rpurpuregistro: TDateTimeField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure novopunprecoavExit(Sender: TObject);
    procedure novopunprecoapExit(Sender: TObject);
  private
    procedure AjustaMargem(ValorAv: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fajtpreco: Tfajtpreco;

  // Início ID do Módulo frapun
const
  vPlIdMd = '01.01.05.002-03';

  // Fim ID do Módulo frapun

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fajtpreco := Tfajtpreco.Create(pCargaFrame);
  fajtpreco.ShowModal;
  fajtpreco.Free;
end;

exports formulario;

procedure Tfajtpreco.bconfirmaClick(Sender: TObject);
Var
  nv1: String;
  nv2: String;
  nm1: string;
  vNovoPrecoAV: Double;
  vNovoPrecoAP: Double;
  vlSituacao: String;

Begin
  { inherited; }

  If Self.novopunprecoav.Text = '' Then
  begin
    Application.MessageBox(PChar('Por favor, digite algum valor válido!'), 'Valor inválido', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  If (Self.novopunprecoap.Text = '') and (punprecoap.Visible) Then
  begin
    Application.MessageBox(PChar('Por favor, digite algum valor válido!'), 'Valor inválido', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if StrToFloat(Self.punmargem.Text) < 0 then
    Self.punmargem.Text := '0';
  nm1 := Self.punmargem.Text;

  nv1 := Self.novopunprecoav.Text;
  nv2 := Self.novopunprecoap.Text;
  vNovoPrecoAV := StrToFloat(novopunprecoav.Text);
  vNovoPrecoAP := StrToFloat(novopunprecoap.Text);

  if not punprecoap.Visible then
    vNovoPrecoAP := StrToFloat(novopunprecoav.Text);

  if vNovoPrecoAP < vNovoPrecoAV then
  begin
    ShowMessage('Valor de preço a prazo não pode ser menor que o preço a vista!');
    novopunprecoap.SetFocus;
    Exit;
  end;

  // verificar se não aplicar preço automaticamente, salvar para alteracao por carga
  // se sim

  if cfgcfgmodoatuapro.asinteger = 1 then
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE pun SET ';

    If punprecoap.Visible Then
      consulta.SQL.Add('punprecoap = ' + Trim(BuscaTroca(nv2, ',', '.')) + ', ');

    if Self.punmargem.Text <> '' then
      consulta.SQL.Add('punmargem = ' + Trim(BuscaTroca(nm1, ',', '.')) + ', ');

    consulta.SQL.Add('punprecoav = ' + Trim(BuscaTroca(nv1, ',', '.')) + ' ');
    consulta.SQL.Add('WHERE puncodigo = ' + registropuncodigo.AsString);
    consulta.Execsql;

  end
  else
  begin
    // se nao

    apv.Open;
    apv.Append;
    apvpuncodigo.asinteger := Self.registropuncodigo.asinteger;
    apvclbcodigo.asinteger := Acesso.Usuario;
    apvspvcodigo.asinteger := 1;
    apvapvprecoav.AsFloat := vNovoPrecoAV;
    apvapvprecoap.AsFloat := vNovoPrecoAP;
    apvapvdatahora.AsDateTime := now;
    apv.Post;
    apv.Close;

    { * ajusta valores no banco, e marca para enviar carga para pdvs * }
    consulta.Close;
    consulta.SQL.Text := 'UPDATE pro SET procarga = 1 WHERE procodigo = ' + registroprocodigo.AsString;
    consulta.Execsql;

  end;


  vlSituacao := self.psituacao.Caption;

 // inherited;
  if vlSituacao = 'Alterando' then
  begin
    if not rpu.Active then
      rpu.Open;

    rpu.Append;
    rpupuncodigo.AsInteger := registropuncodigo.AsInteger;
    rpuclbcodigo.AsInteger := acesso.Usuario;
    rpupunprecoav.AsFloat := registropunprecoav.AsFloat;
    rpupunprecoap.AsFloat := registropunprecoap.AsFloat;
    rpupuncusto.AsFloat := registropuncusto.AsFloat;
    rpupunmargem.AsFloat := registropunmargem.AsFloat;
    rpurpuregistro.AsString := agora(Application, ZCone);
    rpu.Post;

  end;


  ModalResult := mrOk;
end;

procedure Tfajtpreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if not(Key in [#8, #13, '0' .. '9', ',']) then
    Key := #0;
end;

procedure Tfajtpreco.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  if cfgcfgdoisprecos.asinteger = 1 then
  begin
    punprecoap.Visible := True;
    lppunprecoap.Visible := True;
    lpnovopunprecoap.Visible := True;
    novopunprecoap.Visible := True;
    Self.Height := 290;
  end
  else
  begin
    punprecoap.Visible := False;
    lppunprecoap.Visible := False;
    lpnovopunprecoap.Visible := False;
    novopunprecoap.Visible := False;
    Self.Height := 263;
  end;

  registro.Post;

  { mostra margem atual }
  AjustaMargem(Self.registropunprecoav.AsString);

  // punmargem.Text := format('%8.3f', [Self.registropunmargem.AsFloat]);

end;

procedure Tfajtpreco.novopunprecoapExit(Sender: TObject);
var
  vNovoPrecoAV: Double;
  vNovoPrecoAP: Double;
begin
  if novopunprecoap.Text = '' then
  begin
    ShowMessage('Campo obrigatório!');
    novopunprecoap.SetFocus;
    Exit;
  end;

  try
    vNovoPrecoAV := 0;
    if novopunprecoav.Text <> '' then
      vNovoPrecoAV := StrToFloat(novopunprecoav.Text);

    vNovoPrecoAP := StrToFloat(novopunprecoap.Text);

    if vNovoPrecoAP > 0 then
      if vNovoPrecoAP < puncusto.Field.AsFloat then
      begin
        ShowMessage('Preço a prazo não pode ser inferior ao preço de custo!');
        novopunprecoap.SetFocus;
        Exit;
      end;

    if vNovoPrecoAP > 999999 then
    begin
      ShowMessage('Valor de preço a prazo inválido!');
      novopunprecoap.Text := '';
      novopunprecoap.SetFocus;
      Exit;
    end;

    novopunprecoap.Text := Format('%2.2f', [vNovoPrecoAP]);

  except
    ShowMessage('Valor de preço a prazo inválido!');
    novopunprecoap.SetFocus;
  end;

  if vNovoPrecoAP < vNovoPrecoAV then
  begin
    ShowMessage('Valor de preço a prazo não pode ser menor que o preço a vista!');
    novopunprecoap.SetFocus;
  end;
end;

procedure Tfajtpreco.AjustaMargem(ValorAv: String);
var
  vNovoPrecoAV: Double;
begin
  { * recalcula a margem de lucro * }
  try
    if puncusto.Field.AsFloat > 0 then
    begin
      vNovoPrecoAV := StrToFloat(ValorAv);
      // novopunprecoav.Text := format('%8.2f', [vNovoPrecoAV]);
      punmargem.Text := Format('%2.3f', [TBRound(((vNovoPrecoAV - puncusto.Field.AsFloat) / puncusto.Field.AsFloat) * 100, 3)]);
    end;
  except
    ShowMessage('Valor de preço a vista inválido!');
    novopunprecoav.SetFocus;
  end;
end;

procedure Tfajtpreco.novopunprecoavExit(Sender: TObject);
var
  vNovoPrecoAV: Double;
  veriDif: Double;
begin
  ActiveControlCancela := novopunprecoav;

  if Self.ActiveControl = bcancela then
    Exit;

  if novopunprecoav.Text = '' then
  begin
    ShowMessage('Campo obrigatório!');
    novopunprecoav.SetFocus;
    Exit;
  end;

  try
    vNovoPrecoAV := StrToFloat(novopunprecoav.Text);

    if vNovoPrecoAV > 0 then
      if puncusto.Field.AsFloat <> 0 then
        if vNovoPrecoAV < puncusto.Field.AsFloat then
        begin
          ShowMessage('Preço a vista não pode ser inferior ao preço de custo!');
          novopunprecoav.SetFocus;
          Exit;
        end;

    if vNovoPrecoAV > 999999 then
    begin
      ShowMessage('Valor de preço a vista inválido!');
      novopunprecoav.Text := '';
      novopunprecoav.SetFocus;
      Exit;
    end;

    novopunprecoav.Text := Format('%2.2f', [vNovoPrecoAV]);

    AjustaMargem(Self.novopunprecoav.Text);
  except
    ShowMessage('Valor de preço a vista inválido!');
    novopunprecoav.SetFocus;

  end;

  { * calcula o percentual da diferença digita para ajuste de valor de preço a vista * }

  if (puncusto.Field.AsFloat = 0) or (punprecoav.Field.AsFloat = 0) then
    Exit;

  if DBpunmargem.Field.AsFloat <> 0 then
  begin
    veriDif := punprecoav.Field.AsFloat - (((DBpunmargem.Field.AsFloat / 100) + 1) * puncusto.Field.AsFloat);
    veriDif := (veriDif / punprecoav.Field.AsFloat) * 100;

    if (veriDif > 200) or (veriDif < -200) then
    begin
      ShowMessage('Valor inválido para margem estipulada!');

      if punmargem.Enabled = True then
        punmargem.SetFocus;
    end;
  end;
end;

end.
