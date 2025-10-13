unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, IniFiles,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniButton, uniTimer, frxClass, unimButton;

type
  Tfrm_ps = class(TUniForm)
    pnl_topo: TUniContainerPanel;
    pnl_principal: TUniContainerPanel;
    ppl_topo: TUniPanel;
    ppl_avisa: TUniPanel;
    tm_apaga: TUniTimer;
    frxReport: TfrxReport;
    UniTimer1: TUniTimer;
    btn_senha2: TUniPanel;
    btn_senha1: TUniPanel;
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure btn_senha2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure tm_apagaTimer(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    vpAltura: Integer;
    vpLargura: Integer;
    senhatemp: string;
    procedure imprimirsenha;
    { Public declarations }
  end;

function frm_ps: Tfrm_ps;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function frm_ps: Tfrm_ps;
begin
  Result := Tfrm_ps(UniMainModule.GetFormInstance(Tfrm_ps));
end;

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

procedure Tfrm_ps.btn_senha2Click(Sender: TObject);
var
  Temp: string;
  converte: Integer;
  confirma: string;
  getData: string;
begin

  getData := FormatDateTime('dd/mm/yyyy', now);

  confirma := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data',
    'esetemp');
  converte := StrToInt(confirma) + 1;
  Temp := IntToStr(converte);

  UpdateBanco
    ('UPDATE ese SET esetemp = :senha WHERE esetemp = :senhatroca AND esedata = :data',
    'senha', Temp, 'senhatroca', confirma, 'data', getData);
  btn_senha1.Enabled := False;
  btn_senha2.Enabled := False;
  ppl_avisa.Caption := 'SENHA ' + Temp;
  tm_apaga.Enabled := True;
  btn_senha1.Enabled := True;
  btn_senha2.Enabled := True;

  senhatemp := Temp;
  imprimirsenha
end;

procedure Tfrm_ps.imprimirsenha;
begin
  frxReport.LoadFromFile('c:\mercato\Senhas\relat\senha.fr3');
  frxReport.Variables['senha'] := senhatemp;
  frxReport.PrepareReport();
  frxReport.PrintOptions.ShowDialog := False;
  frxReport.Print;
end;

procedure Tfrm_ps.tm_apagaTimer(Sender: TObject);
begin
  ppl_avisa.Caption := 'ABERTO';
  tm_apaga.Enabled := False;
end;

procedure Tfrm_ps.UniFormCreate(Sender: TObject);
begin
  btn_senha1.Caption := 'CLICK AQUI';
  btn_senha2.Caption := 'SENHA';
  ppl_avisa.Caption := 'ABERTO';
end;

procedure Tfrm_ps.UniFormScreenResize(Sender: TObject;
  AWidth, AHeight: Integer);

begin
  vpAltura := AHeight;
  vpLargura := AWidth;

  pnl_topo.Height := Round(vpAltura * 0.15);
  ppl_topo.Height := Round(vpAltura * 0.15);

  pnl_principal.Height := Round(vpAltura * 0.70);
 // btn_senha1.Height := Round(vpAltura * 0.0);
 // btn_senha1.Height := Round(vpAltura * 0.0);
  ppl_avisa.Height := Round(vpAltura * 0.20);
  ConectBanco(True);
end;

procedure Tfrm_ps.UniTimer1Timer(Sender: TObject);
begin
  SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data', 'esetemp');
end;

initialization

RegisterAppFormClass(Tfrm_ps);

end.
