unit ufrapun;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.SysUtils, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrapun = class(Tfrabase)
    uqtabelapuncodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelaunisimbolo: TStringField;
    uqtabelapunidentificacao: TStringField;
    uqtabelapunprecoav: TFloatField;
    uqtabelapunprecoap: TFloatField;
    uqtabelapunbarra: TStringField;
    uqtabelatuncodigo: TIntegerField;
    cfg: tuniquery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlteraPrecoExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    FAlterandoPreco: Boolean;
    procedure atualizacolunas;
    procedure SetAlterandoPreco(const Value: Boolean);
  published
    property AlterandoPreco: Boolean read FAlterandoPreco write SetAlterandoPreco;
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frapun: Tfrapun;

  // Início ID do Módulo frapun
const
  vPlIdMd = '01.01.05.002-01';
  vPlTitMdl = 'Embalagens';

  // Fim ID do Módulo frapun

implementation

{$R *.dfm}

uses ufpun;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapun := Tfrapun.Create(pCargaFrame);
  Result := frapun;

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapun := Tfrapun.Create(pCargaFrame);
  try
    frapun.CriaAcoesDeAcesso;
  finally
    frapun.Free;
  end;
end;

exports execute, defineacesso;

procedure Tfrapun.atualizacolunas;
begin
  cfg.Close;
  cfg.Open;

  if cfgcfgdoisprecos.AsInteger = 1 then
    ocultarcoluna('punprecoap', True, dbglista)
  else
    ocultarcoluna('punprecoap', False, dbglista);
end;

procedure Tfrapun.Carregar;
begin
  if FormaFrame = ffDocado then
  begin
    uqtabela.Filter := 'procodigo=' + vChaveMestre + ' and (tuncodigo=1 or tuncodigo=9)';
    uqtabela.Filtered := True;
  end
  else if FormaFrame = ffFormu then
  begin
    if Pos('procodigo = ', TxtFiltro) > 0 then
    begin
      vChaveMestre := Trim(copy(TxtFiltro, Pos('procodigo = ', TxtFiltro) + 11, 10));
    end;



  end;

  inherited;

end;

procedure Tfrapun.SetAlterandoPreco(const Value: Boolean);
begin
  FAlterandoPreco := Value;

  if FAlterandoPreco then
  begin
    ActAlterar.Enabled := False;
    ActIncluir.Enabled := False;
  end;
end;

procedure Tfrapun.ActAlteraPrecoExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;

  { rg := uqtabela.RecNo;

    if CriaFormulario(Tfajtpreco, fajtpreco, Self.uqtabelapuncodigo.AsString, Self.vChaveMestre) then
    Self.vretorno := Self.vchave
    else
    Self.vretorno := '0';

    Self.ActAtualizar.execute;
    uqtabela.RecNo := rg; }
end;

procedure Tfrapun.ActAlterarExecute(Sender: TObject);
begin
  if CriaFormulario(Tfpun, Self.uqtabelapuncodigo.AsString, Self.vChaveMestre) then
    Self.vretorno := Self.vchave
  else
    Self.vretorno := '0';
end;

procedure Tfrapun.ActAtualizarExecute(Sender: TObject);
begin
  if TxtFiltro <> '' then
  begin
    Self.uqtabela.Filter := TxtFiltro;
    Self.uqtabela.Filtered := True;
  end;

  inherited;

  atualizacolunas;
end;

procedure Tfrapun.ActExcluirExecute(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'select procodigo from itm where puncodigo=' + Self.uqtabelapuncodigo.AsString;
  consulta.Open;

  if consulta.IsEmpty then
  begin
    // inherited;

    if Self.autorizado(Sender) then
      if (Sender is TAction) then
        if (Sender as TAction).Tag > 0 then
        begin
          // Exclui registro selecionado
          if ActExcluir.Enabled = False then
          begin
            showmessage('Excluir não autorizada!');
          end
          else
          begin
            if application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'),
              MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idyes then
            begin
              consulta.Close;
              consulta.SQL.Text := 'delete from pun where puncodigo=' + uqtabelapuncodigo.AsString;
              consulta.Execsql;

              try
                Self.actatualizar.execute;
              except

              end;
            end;
          end;
        end;



    // inherited;

  end
  else
  begin
    showmessage('Esat unidade tem movimentação, não pode ser excluida!');
  end;

end;

procedure Tfrapun.ActIncluirExecute(Sender: TObject);
begin
  if CriaFormulario(Tfpun, '', Self.vChaveMestre) then
    Self.vretorno := Self.vchave
  else
    Self.vretorno := '0';
end;

end.
