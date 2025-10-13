unit uframda;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, IOUtils, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tframda = class(Tfrabase)
    uqtabelamdacodigo: TIntegerField;
    uqtabelamdaidentificacao: TStringField;
    uqtabelamdabpl: TStringField;
    ActImportar: TAction;
    mdv: tuniquery;
    mdvmdacodigo: TIntegerField;
    mdvmdvdescricao: TStringField;
    dpm: tuniquery;
    mdvmdvchave: TIntegerField;
    fns: tuniquery;
    fnv: tuniquery;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActImportarExecute(Sender: TObject);
  private
    procedure DirList(ASource: string; ADirList: TStringList);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  framda: Tframda;

const
  vPlTitMdl = 'Módulos';

implementation

{$R *.dfm}

uses ufmda;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    framda := Tframda.Create(AOwner);
    framda.Visible := False;
    framda.titulo := 'M#243dulos';
    framda.Parent := tab;
    framda.VTabParent := tab;

    framda.Align := alclient;
    framda.modulo := vmodulo;
    framda.zcone := conexao;
    framda.vusrcodigo := vusuario;
    framda.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      framda.edbusca.Tag := 1;
      framda.PlFiltros.Visible := True;
    end;

    framda.carregar;

  finally
  end;
end;

exports formuFrame;

function execute(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string; vchavemestra: string; vmodulo: string;
  vmodo: string): TFrame;
begin
  framda := Tframda.Create(AOwner);
  framda.zcone := conexao;
  framda.vChaveMestre := vchavemestra;
  framda.modo := vmodo;
  framda.txtfiltro := 'aplcodigo=' + vchavemestra;
  framda.uqtabela.Filter := framda.txtfiltro;
  framda.uqtabela.Filtered := True;
  framda.titulo := 'Gestão';
  framda.modulo := vmodulo;
  framda.vusrcodigo := vusuario;
  framda.PlFiltros.Visible := False;
  framda.carregar;
  framda.Align := alclient;
  Result := framda;
  Result.Parent := Parente;
end;

exports execute;

procedure Tframda.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmda, fmda, self.uqtabelamdacodigo.AsString, self.vChaveMestre);
end;

procedure Tframda.ActImportarExecute(Sender: TObject);
var
  contador: Integer;
  lista: TStringList;
  i, x, f: Integer;
  Path, Directory: string;
  FilterPredicate: TDirectory.TFilterPredicate;

  bpl: string;
  arqdpk: TStringList;
  linhadpk: string;
  iniciar, interno: boolean;

  arqpas: TStringList;
  linhapas: string;
  dir: string;

  linha: string;
  vmdvchave: string;

begin
  lista := TStringList.Create;
  arqdpk := TStringList.Create;
  arqpas := TStringList.Create;

  FilterPredicate := function(const Path: string; const SearchRec: TSearchRec): boolean
    begin
      Result := (TPath.MatchesPattern(SearchRec.Name, '*.dpk', False)) AND (SearchRec.Attr = faArchive);
    end;

  for Directory in TDirectory.GetDirectories('C:\mizio_zeo-fontes', TSearchOption.soAllDirectories, nil) do
    for Path in TDirectory.GetFiles(Directory, FilterPredicate) do
      lista.Add(Format('%s', [Path]));

  consulta.Close;
  consulta.SQL.Text := 'select mdacodigo, mdaidentificacao, mdabpl from mda';
  consulta.Open;

  mdv.Open;
  fns.Open;
  fnv.Open;

  for i := 0 to lista.Count - 1 do
  begin

    bpl := ChangeFileExt(extractfilename(lista[i]), '.bpl');

    consulta.Append;
    consulta.Fields[1].AsString := extractfilename(lista[i]);
    consulta.Fields[2].AsString := bpl;
    consulta.Post;

    dir := extractfilepath(lista[i]);
    mdv.Append;
    mdv.Fields[1].AsString := self.consulta.Fields[0].AsString;
    mdv.Fields[2].AsString := 'Versão inicial';
    mdv.Post;
    vmdvchave := self.mdvmdvchave.AsString;

    arqdpk.LoadFromFile(lista[i]);

    iniciar := False;

    dpm.Close;
    dpm.SQL.Text := 'select dpmchave, mdacodigo, dpmarquivo from dpm';
    dpm.Open;

    for x := 0 to arqdpk.Count - 1 do
    begin
      linhadpk := arqdpk[x];

      if iniciar then
      begin
        dpm.Append;
        dpm.Fields[1].AsString := self.consulta.Fields[0].AsString;
        dpm.Fields[2].AsString := copy(trim(linhadpk), 1, length(trim(linhadpk)) - 1);
        dpm.Post;

        if pos(';', linhadpk) > 0 then
        begin
          iniciar := False;
        end;

      end;
      if linhadpk = 'requires' then
      begin
        iniciar := True;
      end;
    end;

    iniciar := False;
    for x := 0 to arqdpk.Count - 1 do
    begin
      linhadpk := arqdpk[x];
      if iniciar then
      begin

        linhapas := copy(trim(linhadpk), 1, pos(' in ', trim(linhadpk)) - 1) + '.pas';
        if fileexists(dir + linhapas) then
        begin
          arqpas.Clear;
          arqpas.LoadFromFile(dir + linhapas);
          interno := False;
          for f := 0 to arqpas.Count - 1 do
          begin
            linha := lowercase(arqpas[f]);

            if linha = 'interface' then
            begin
              interno := True;
            end;

            if interno then
            begin
              if pos('procedure', linha) > 0 then
              begin
                fns.Append;
                if pos('click(sender: tobject)', linha) > 0 then
                begin
                  fns.Fields[1].AsString := trim(copy(linha, 1, pos('click(sender: tobject)', linha) - 1));
                  fns.Fields[1].AsString := copy(fns.Fields[1].AsString, 11, 200);
                end
                else
                begin
                  fns.Fields[1].AsString := trim(copy(linha, 1, 500));
                end;
                fns.Fields[2].AsString := vmdvchave;
                if pos('click(sender: tobject)', linha) > 0 then
                begin
                  fns.Fields[3].AsString := '1';
                end
                else
                begin
                  fns.Fields[3].AsString := '2';
                end;
                fns.Post;

                fnv.Append;
                fnv.Fields[1].AsString := 'Versão Inicial';
                fnv.Fields[2].AsString := self.fns.Fields[0].AsString;
                fnv.Fields[3].AsString := '1';
                fnv.Post;

              end;
            end;

            if pos('implementation', linha) > 0 then
            begin
              interno := False;
              break
            end;

          end;
        end;

      end;

      if linhadpk = 'contains' then
      begin
        iniciar := True;
      end;

    end;

  end;
end;

procedure Tframda.DirList(ASource: string; ADirList: TStringList);

var
  SearchRec: TSearchRec;
  Result: Integer;
begin
  Result := FindFirst(ASource, faAnyFile, SearchRec);
  if Result = 0 then
    while (Result = 0) do
    begin
      if (SearchRec.Name + ' ')[1] = '.' then
      { Se pegou nome de SubDiretorio }
      begin
        Result := FindNext(SearchRec);
        Continue;
      end;
      ADirList.Add(SearchRec.Name);
      Result := FindNext(SearchRec);
    end;
  FindClose(SearchRec);
  ADirList.Sort;
end;

procedure Tframda.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfmda, fmda, '', self.vChaveMestre);

end;

end.
