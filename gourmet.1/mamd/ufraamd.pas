unit ufraamd;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
     Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfraamd = class(Tfrabase)
    uqtabelaaplcodigo: TIntegerField;
    uqtabelamdacodigo: TIntegerField;
    uqtabelamdaidentificacao: TStringField;
    uqtabelaamdchave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraamd: Tfraamd;

vPlTitMdl = 'lamd'
const
vPlTitMdl = 'lamd'
vPlTitMdl = 'lamd';
implementation

{$R *.dfm}

uses ufamd;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := 'lamd';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,'lamd');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := 'lamd';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,'lamd');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := 'lamd';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,'lamd');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := 'lamd';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,'lamd');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := ''lamd'';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,''lamd'');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := ''lamd'';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,''lamd'');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := ''lamd'';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,''lamd'');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso,defineacesso,defineacesso;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; 
vmodulo: string; vfiltro: string; vmodo: string;
  tab: TTabSheet): string;
var
  vch: string;
begin
  try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.Visible := False;
    fraamd.titulo := ''lamd'';
    fraamd.Parent := tab;
    fraamd.VTabParent := tab;

    fraamd.Align := alclient;
    fraamd.modulo := vmodulo;
    fraamd.zcone := conexao;
    fraamd.vusrcodigo := vusuario;

    if vtipolista = 1 then
    begin
      fraamd.edbusca.Tag := 1;
      fraamd.PlFiltros.Visible := True;
    end;

    fraamd.carregar;

 
  finally
  end;
end;



procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
   try
    fraamd := Tfraamd.Create(AOwner);
    fraamd.defineacesso(AOwner,fraamd,conexao,''lamd'');
   finally
     freeandnil(fraamd);
   end;
end;

exports formuFrame,defineacesso,defineacesso,defineacesso,defineacesso;




function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; 
vchavemestra: string; vmodulo: string; vmodo: string): TFrame;
begin
  fraamd := Tfraamd.Create(AOwner);
  fraamd.zcone := conexao;
  fraamd.vChaveMestre := vchavemestra;
  fraamd.modo:=vmodo;
  fraamd.txtfiltro:='aplcodigo='+vchavemestra;
  fraamd.uqtabela.Filter:=fraamd.txtfiltro;
  fraamd.uqtabela.Filtered:=true;
  fraamd.titulo := 'Gestão';
  fraamd.modulo := vmodulo;
  fraamd.vusrcodigo := vusuario;
  fraamd.PlFiltros.Visible:=false;
  fraamd.carregar;
  fraamd.Align := alclient;
  Result := fraamd;
  Result.Parent := Parente;
end;

exports execute,defineacesso,defineacesso,defineacesso;


procedure Tfraamd.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfamd, famd, self.uqtabelaamdchave.AsString, self.vChaveMestre);

end;

procedure Tfraamd.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfamd, famd, '', self.vChaveMestre);
end;

end.
