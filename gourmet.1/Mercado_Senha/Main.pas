unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, Inifiles,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImage,
  uniPanel, uniButton, uniEdit, uniSpinEdit, uniLabel, uniMemo,
  Vcl.Imaging.jpeg, uniBitBtn, uniColorButton, uniTimer;

type
  Tfrm_senha = class(TUniForm)
    pnl_zerar: TUniContainerPanel;
    pnl_novo: TUniContainerPanel;
    pnl_senha: TUniContainerPanel;
    btn_ajusta: TUniButton;
    btn_voltar: TUniButton;
    btn_novo: TUniButton;
    pnl_senhaon: TUniContainerPanel;
    etd_senha: TUniPanel;
    btn_zerar: TUniButton;
    btn_ultimo: TUniButton;
    ppl_status: TUniPanel;
    img_logo: TUniImage;
    ppl_pedidos: TUniPanel;
    tm_pedidos: TUniTimer;
    btn_alerta: TUniButton;
    btn_0: TUniButton;
    btn_01: TUniButton;
    btn_02: TUniButton;
    btn_03: TUniButton;
    btn_04: TUniButton;
    btn_05: TUniButton;
    btn_06: TUniButton;
    btn_07: TUniButton;
    btn_08: TUniButton;
    btn_09: TUniButton;
    btn_excluir: TUniButton;
    pnl_numeros: TUniPanel;
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure btn_ajustaClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_zerarClick(Sender: TObject);
    procedure tm_pedidosTimer(Sender: TObject);
    procedure btn_alertaClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_09Click(Sender: TObject);
    procedure btn_08Click(Sender: TObject);
    procedure btn_07Click(Sender: TObject);
    procedure btn_06Click(Sender: TObject);
    procedure btn_05Click(Sender: TObject);
    procedure btn_04Click(Sender: TObject);
    procedure btn_03Click(Sender: TObject);
    procedure btn_02Click(Sender: TObject);
    procedure btn_01Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
  private
    { Private declarations }
  public
    vpAltura: Integer;
    vpLargura: Integer;
    vpgetSenha: string;
    function Recuperanumero(numero: string): string;
    { Public declarations }
  end;

function frm_senha: Tfrm_senha;

implementation

{$R *.dfm}

uses midaslib,uniGUIVars, MainModule, uniGUIApplication;

function ConectBanco(Conectar: boolean): boolean;
var
  conectINI: Tinifile;
  Servidor, Base: string;
begin
  conectINI := Tinifile.Create('c:\mercato\gourmeterp.ini');
  Servidor := conectINI.ReadString('posi', 'servidor', '');
  Base := conectINI.ReadString('posi', 'nomebanco', '');
  conectINI.Free;

  mm.conexao.Server := Servidor;
  mm.conexao.Database := Base;
  mm.conexao.Port := 3306;
  mm.conexao.Username := 'root';
  mm.conexao.Password := 'xda973';

  if Conectar = True then
  begin
    mm.conexao.Connect;
  end;
  if Conectar = False then
  begin
    mm.conexao.Disconnect;
  end;
end;

function SelectBanco(Script, Paramet, Field: string): string;
var
  getData: string;
begin
  getData := FormatDateTime('dd/mm/yyyy', now);
  mm.consulta_senha.Close;
  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add(Script);
  mm.consulta_senha.ParamByName(Paramet).AsDateTime := StrToDateTime(getData);
  mm.consulta_senha.ExecSQL;
  Result := mm.consulta_senha.FieldByName(Field).AsString;
end;

function UpdateBanco(Script, Paramet1, p1vi, Paramet2, p2vi, Paramet3,
  p3vd: string): boolean;
var
  getData: string;
begin
  getData := FormatDateTime('dd/mm/yyyy', now);
  mm.consulta_senha.Close;
  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add(Script);
  mm.consulta_senha.ParamByName(Paramet1).AsInteger := StrToInt(p1vi);
  mm.consulta_senha.ParamByName(Paramet2).AsInteger := StrToInt(p2vi);
  mm.consulta_senha.ParamByName(Paramet3).AsDateTime := StrToDateTime(p3vd);
  mm.consulta_senha.ExecSQL;
end;

function InsertBanco(Script, Paramet1, p1vi, Paramet2, p2vi, Paramet3, p3vd,
  Paramet4, p4vd, Paramet5, p5vd, Paramet6, p6vd: string): boolean;
var
  getData: string;
begin
  getData := FormatDateTime('dd/mm/yyyy', now);
  mm.consulta_senha.Close;
  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add(Script);
  mm.consulta_senha.ParamByName(Paramet1).value := p1vi;
  mm.consulta_senha.ParamByName(Paramet2).value := p2vi;
  mm.consulta_senha.ParamByName(Paramet3).AsDateTime := StrToDateTime(p3vd);
  mm.consulta_senha.ParamByName(Paramet4).value := p4vd;
  mm.consulta_senha.ParamByName(Paramet5).value := p5vd;
  mm.consulta_senha.ParamByName(Paramet6).value := p6vd;
  mm.consulta_senha.ExecSQL;
end;

function frm_senha: Tfrm_senha;
begin
  Result := Tfrm_senha(mm.GetFormInstance(Tfrm_senha));
end;

procedure Tfrm_senha.btn_01Click(Sender: TObject);
var
  n: string;
begin
  n := '1';
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_02Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '2';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_03Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '3';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_04Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '4';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_05Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '5';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_06Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '6';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_07Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '7';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_08Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '8';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_09Click(Sender: TObject);
var
  n: string;
begin
  if etd_senha.Caption = '0' then
  begin
    exit
  end;
  n := '9';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_0Click(Sender: TObject);
var
  n: string;
begin
  n := '0';
  etd_senha.Caption := Recuperanumero(n);
end;

procedure Tfrm_senha.btn_ajustaClick(Sender: TObject);
var
  getData, resultsenha, Temp, numero: string;
var
  incertbancodados: string;
  convertData: TDateTime;
begin
  if (btn_ajusta.Caption = 'AJUSTAR') then
  begin
    btn_ajusta.Caption := 'SALVAR';
    pnl_senha.Visible := True;
    pnl_novo.Visible := False;
  end
  else if (btn_ajusta.Caption = 'SALVAR') then
  begin
    if etd_senha.Caption = '' then
    begin
      exit
    end;
    btn_ajusta.Caption := 'AJUSTAR';
    pnl_senha.Visible := False;
    pnl_novo.Visible := True;

    getData := FormatDateTime('dd/mm/yyyy', now);

    incertbancodados := SelectBanco('SELECT * FROM ese WHERE esedata = :data',
      'data', 'esenumero');

    UpdateBanco
      ('UPDATE ese SET esenumero = :senha WHERE esenumero = :senhatroca AND esedata = :data',
      'senha', etd_senha.Caption, 'senhatroca', incertbancodados,
      'data', getData);

    incertbancodados := SelectBanco('SELECT * FROM ese WHERE esedata = :data',
      'data', 'esetemp');

    UpdateBanco
      ('UPDATE ese SET esetemp = :senha WHERE esetemp = :senhatroca AND esedata = :data',
      'senha', etd_senha.Caption, 'senhatroca', incertbancodados,
      'data', getData);

    incertbancodados := SelectBanco('SELECT * FROM ese WHERE esedata = :data',
      'data', 'eseusada');

    numero := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
      'esenumero');

    UpdateBanco
      ('UPDATE ese SET eseusada = :senha WHERE eseusada = :senhatroca AND esedata = :data',
      'senha', etd_senha.Caption, 'senhatroca', incertbancodados,
      'data', getData);

    tm_pedidos.Enabled := True;
    pnl_numeros.Visible := False;
  end
  else if (btn_ajusta.Caption = 'ABRIR SENHAS') then
  begin

    ppl_pedidos.Visible := True;
    ConectBanco(True);

    mm.ajusta_senha.Close;
    mm.ajusta_senha.Open;

    getData := FormatDateTime('dd/mm/yyyy', now);

    if mm.ajusta_senha.IsEmpty then
    begin

      { incertbancodados := SelectBanco('SELECT * FROM ese WHERE esedata = :data',
        ':data', ':eseusada'); }
      InsertBanco
        ('INSERT INTO ese (esedata,esenumero,eseusada,stscodigo,eserecupera,esetemp) VALUES (:esedata,:esenumero,:eseusada,:stscodigo,:eserecupera,:esetemp)',
        'esenumero', '0', 'eseusada', '0', 'esedata', getData, 'stscodigo', '1',
        'eserecupera', '0', 'esetemp', '0');

    end
    else
    begin

      ConectBanco(True);
      getData := FormatDateTime('dd/mm/yyyy', now);

      incertbancodados := SelectBanco('SELECT * FROM ese WHERE esedata = :data',
        'data', 'esedata');

      if incertbancodados <> getData then
      begin
        InsertBanco
          ('INSERT INTO ese (esedata,esenumero,eseusada,stscodigo,eserecupera,esetemp) VALUES (:esedata,:esenumero,:eseusada,:stscodigo,:eserecupera,:esetemp)',
          'esenumero', '0', 'eseusada', '0', 'esedata', getData, 'stscodigo',
          '1', 'eserecupera', '0', 'esetemp', '0');
        incertbancodados :=
          SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
          'esenumero');

        getData := FormatDateTime('dd/mm/yyyy', now);
        convertData := StrToDateTime(getData) - 1;
        getData := DateTimeToStr(convertData);

        mm.consulta_senha.SQL.Clear;
        mm.consulta_senha.SQL.Add('SELECT * FROM ese WHERE esedata = :data');
        mm.consulta_senha.ParamByName('data').AsDateTime :=
          StrToDateTime(getData);
        mm.consulta_senha.ExecSQL;
        resultsenha := mm.consulta_senha.FieldByName('eseusada').AsString;

        if resultsenha = '' then
        begin
          exit
        end;

        getData := FormatDateTime('dd/mm/yyyy', now);

        UpdateBanco
          ('UPDATE ese SET eseusada = :senha WHERE eseusada = :senhatroca AND esedata = :data',
          'senha', resultsenha, 'senhatroca', '0', 'data', getData);

        etd_senha.Caption := incertbancodados;
      end
      else
      begin
        incertbancodados :=
          SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
          'esenumero');
        etd_senha.Caption := incertbancodados;
      end;
    end;
    etd_senha.Visible := True;
    btn_ajusta.Caption := 'AJUSTAR';
    btn_voltar.Enabled := True;
    btn_novo.Enabled := True;
    pnl_novo.Visible := True;
  end;
  Temp := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
    'esetemp');
  if Temp = '' then
  begin
    exit
  end;
  ppl_pedidos.Caption := 'NA FILA: ' + Temp;
  ppl_status.Caption := 'SENHA ATUAL';
  img_logo.Visible := False;
  btn_alerta.Visible := True;

end;

procedure Tfrm_senha.btn_alertaClick(Sender: TObject);
var
  getData: string;
begin
  getData := FormatDateTime('dd/mm/yyyy', now);
  ConectBanco(True);
  UpdateBanco
    ('Update ese SET esealerta = :um WHERE esealerta = :zero AND esedata = :data',
    'um', '1', 'zero', '0', 'data', getData);
end;

procedure Tfrm_senha.btn_excluirClick(Sender: TObject);
begin
  etd_senha.Caption := '';
end;

procedure Tfrm_senha.btn_novoClick(Sender: TObject);
var
  getData: string;
var
  getsenha: string;
  conversenha: Integer;
  recebesenha: string;
  Temp: string;
begin

  Temp := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
    'esetemp');

  if etd_senha.Caption = Temp then
  begin
    exit
  end;

  getData := FormatDateTime('dd/mm/yyyy', now);

  recebesenha := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
    'dataselect', 'esenumero');

  getsenha := recebesenha;
  conversenha := StrToInt(getsenha) + 1;
  getsenha := IntToStr(conversenha);

  UpdateBanco
    ('UPDATE ese SET esenumero = :senha WHERE esenumero = :senhatroca AND esedata = :data',
    'senha', getsenha, 'senhatroca', recebesenha, 'data', getData);
  etd_senha.Caption := getsenha;
  recebesenha := '';
  getsenha := '';
  conversenha := 0;

  recebesenha := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
    'dataselect', 'eseusada');

  getsenha := recebesenha;
  conversenha := StrToInt(getsenha) + 1;
  getsenha := IntToStr(conversenha);

  UpdateBanco
    ('UPDATE ese SET eseusada = :senha WHERE eseusada = :senhatroca AND esedata = :data',
    'senha', getsenha, 'senhatroca', recebesenha, 'data', getData);

end;

procedure Tfrm_senha.btn_ultimoClick(Sender: TObject);
var
  getData, recebesenha: string;
  convertData: TDateTime;
  resebecaption: string;
  busca: string;
  converte: Integer;
var
  resultsenha: Integer;
  dataconvert: TDateTime;
begin

  getData := FormatDateTime('dd/mm/yyyy', now);
  convertData := StrToDateTime(getData) - 1;
  getData := DateTimeToStr(convertData);

  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add('SELECT * FROM ese WHERE esedata = :data');
  mm.consulta_senha.ParamByName('data').AsDateTime := StrToDateTime(getData);
  mm.consulta_senha.ExecSQL;
  resultsenha := mm.consulta_senha.FieldByName('esenumero').AsInteger;

  if resultsenha = 0 then
  begin
    exit
  end;
  getData := FormatDateTime('dd/mm/yyyy', now);

  resebecaption := etd_senha.Caption;

  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add
    ('UPDATE ese SET esenumero = :senha WHERE esenumero = :senhatroca AND esedata = :data');
  mm.consulta_senha.ParamByName('senha').AsInteger := resultsenha;
  mm.consulta_senha.ParamByName('senhatroca').AsInteger :=
    StrToInt(resebecaption);
  mm.consulta_senha.ParamByName('data').AsDateTime := StrToDateTime(getData);
  mm.consulta_senha.ExecSQL;

  busca := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
    'dataselect', 'esetemp');

  if (busca = '0') AND (busca = '') then
  begin
    converte := 0;
    busca := IntToStr(converte);
  end;

  UpdateBanco
    ('UPDATE ese SET esetemp = :novo WHERE esetemp = :novotroca AND esedata = :data',
    'novo', IntToStr(resultsenha), 'novotroca', busca, 'data', getData);

  resultsenha := 0;
  mm.consulta_senha.SQL.Clear;
  mm.consulta_senha.SQL.Add('SELECT * FROM ese WHERE esedata = :data');
  mm.consulta_senha.ParamByName('data').AsDateTime := StrToDateTime(getData);
  mm.consulta_senha.ExecSQL;
  resultsenha := mm.consulta_senha.FieldByName('esenumero').AsInteger;
  etd_senha.Caption := IntToStr(resultsenha);
end;

procedure Tfrm_senha.btn_voltarClick(Sender: TObject);
var
  getData: string;
var
  getsenha: string;
  conversenha: Integer;
  recebesenha: string;
begin

  getData := FormatDateTime('dd/mm/yyyy', now);

  recebesenha := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
    'dataselect', 'esenumero');

  getsenha := recebesenha;
  conversenha := StrToInt(getsenha) - 1;
  getsenha := IntToStr(conversenha);

  if recebesenha = '0' then
  begin
    exit
  end;

  UpdateBanco
    ('UPDATE ese SET esenumero = :senha WHERE esenumero = :senhatroca AND esedata = :data',
    'senha', getsenha, 'senhatroca', recebesenha, 'data', getData);

  etd_senha.Caption := getsenha;

end;

procedure Tfrm_senha.btn_zerarClick(Sender: TObject);
var
  getData: string;
var
  getsenha: string;
  conversenha: Integer;
  recebesenha: string;
  busca: string;
begin
  pnl_numeros.Visible := True;
  tm_pedidos.Enabled := False;
  ppl_pedidos.Caption := '';
  etd_senha.Caption := '';
end;

function Tfrm_senha.Recuperanumero(numero: string): string;
var
  recupera: string;
begin
  recupera := etd_senha.Caption;
  Result := recupera + numero;
end;

procedure Tfrm_senha.tm_pedidosTimer(Sender: TObject);
var
  Temp, getData: string;
begin
  Temp := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
    'esetemp');
  if Temp = '' then
  begin
    exit
  end;
  ppl_pedidos.Caption := 'NA FILA: ' + Temp;
end;

procedure Tfrm_senha.UniFormCreate(Sender: TObject);
var
  quebra1, quebra2: string;
begin
  btn_ajusta.Caption := 'ABRIR SENHAS';
  quebra1 := 'CONTINUAR' + '</br>' + 'DO DIA ' + '</br>' + 'ANTERIOR';
  quebra2 := 'EDITAR' + '</br>' + 'SENHAS';
  btn_ultimo.Caption := quebra1;
  btn_zerar.Caption := quebra2;
  btn_voltar.Enabled := False;
  btn_novo.Enabled := False;
  pnl_senha.Visible := False;
  etd_senha.Visible := False;
  ppl_status.Caption := 'BEM VINDO';
  pnl_novo.Visible := False;
end;

procedure Tfrm_senha.UniFormScreenResize(Sender: TObject;
  AWidth, AHeight: Integer);
begin

  vpAltura := AHeight;
  vpLargura := AWidth;

  pnl_novo.Height := Round(vpAltura * 0.15);
  pnl_zerar.Height := Round(vpAltura * 0.15);

  btn_voltar.Width := Round(vpLargura * 0.30);
  btn_novo.Width := Round(vpLargura * 0.30);

  pnl_senhaon.Height := Round(vpAltura * 0.20);
  pnl_senha.Height := Round(vpAltura * 0.20);

  btn_zerar.Width := Round(vpLargura * 0.33);
  btn_ultimo.Width := Round(vpLargura * 0.33);

  btn_alerta.Width := Round(vpLargura * 0.15);
  btn_alerta.Height := Round(vpAltura * 0.15);

  ppl_status.Height := Round(vpAltura * 0.10);
  ppl_pedidos.Height := Round(vpAltura * 0.10);
  img_logo.Height := Round(vpAltura * 0.40);

  // btn teclado numerico

  btn_0.Width := Round(vpLargura * 0.09);
  btn_0.Height := Round(vpAltura * 0.09);

  btn_01.Width := Round(vpLargura * 0.09);
  btn_01.Height := Round(vpAltura * 0.09);

  btn_02.Width := Round(vpLargura * 0.09);
  btn_02.Height := Round(vpAltura * 0.09);

  btn_03.Width := Round(vpLargura * 0.09);
  btn_03.Height := Round(vpAltura * 0.09);

  btn_04.Width := Round(vpLargura * 0.09);
  btn_04.Height := Round(vpAltura * 0.09);

  btn_05.Width := Round(vpLargura * 0.09);
  btn_05.Height := Round(vpAltura * 0.09);

  btn_06.Width := Round(vpLargura * 0.09);
  btn_06.Height := Round(vpAltura * 0.09);

  btn_07.Width := Round(vpLargura * 0.09);
  btn_07.Height := Round(vpAltura * 0.09);

  btn_08.Width := Round(vpLargura * 0.09);
  btn_08.Height := Round(vpAltura * 0.09);

  btn_09.Width := Round(vpLargura * 0.09);
  btn_09.Height := Round(vpAltura * 0.09);

  btn_excluir.Width := Round(vpLargura * 0.09);
  btn_excluir.Height := Round(vpAltura * 0.09);

  ConectBanco(True);
  tm_pedidos.Enabled := True;
end;

initialization

RegisterAppFormClass(Tfrm_senha);

end.

// Antigo botão para zerar as senhas e alocar para retornar a senha zeradas
{ getData := FormatDateTime('dd/mm/yyyy', now);

  recebesenha := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
  'dataselect', 'esenumero');

  busca := SelectBanco('SELECT * FROM ese WHERE esedata = :dataselect',
  'dataselect', 'eserecupera');

  if (busca = '0') AND (busca = '') then
  begin
  conversenha := 0;
  busca := IntToStr(conversenha);
  end;

  UpdateBanco
  ('UPDATE ese SET eserecupera = :senha WHERE eserecupera = :senhatroca AND esedata = :data',
  'senha', recebesenha, 'senhatroca', busca, 'data', getData);

  conversenha := 0;
  getsenha := IntToStr(conversenha);

  if recebesenha = '0' then
  begin
  exit
  end;

  UpdateBanco
  ('UPDATE ese SET esenumero = :senha WHERE esenumero = :senhatroca AND esedata = :data',
  'senha', getsenha, 'senhatroca', recebesenha, 'data', getData);

  etd_senha.Caption := getsenha; }
