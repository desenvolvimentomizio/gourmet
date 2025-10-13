unit uFprinciMonitorProducao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, REST.Response.Adapter, inifiles,
  FMX.DialogService, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListView.Appearances, FMX.ListView.Types, FMX.ListView.Adapters.Base,
  FMX.Objects, FMX.ListView, System.Rtti, System.Bindings.Outputs,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, MultiDetailAppearanceU, FMX.Bind.Editors,
  System.IOUtils;

type
  TFprinciMonitorProducao = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    btConfiguracao: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    Temporizador: TTimer;
    lbRelogio: TLabel;
    ListViewPedidos: TListView;
    LinkListControlToField1: TLinkListControlToField;
    Rectangle1: TRectangle;
    sbSelecionarColavoradores: TSpeedButton;
    procedure GravarIPServidorREST(vIPServidorREST: string);
    function LerIPServidorREST: string;
    procedure btConfiguracaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListViewPedidosItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ListViewPedidosButtonChange(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure TemporizadorTimer(Sender: TObject);
  private
    procedure AjustaIPServidorREST;
    procedure Mensagem(vTexto: string);
    { Private declarations }
  public
    { Public declarations }
    vpIPServidorREST: string;
  end;

var
  FprinciMonitorProducao: TFprinciMonitorProducao;

implementation

uses
  uClientClasses, uClientModule, uDMDados;

{$R *.fmx}

procedure TFprinciMonitorProducao.Mensagem(vTexto: string);
begin
{$IFDEF ANDROID}
  // Toast(vTexto, ShortToast);
{$ENDIF}
end;

procedure TFprinciMonitorProducao.TemporizadorTimer(Sender: TObject);
var
  i: integer;
  vlPodeAtualizar: Boolean;
begin
  vlPodeAtualizar := True;

  lbRelogio.Text := timetostr(now());
  lbRelogio.Repaint;

  for i := 0 to ListViewPedidos.ItemCount - 1 do
  begin
    if ListViewPedidos.Items.GetChecked(i) then
    begin
      vlPodeAtualizar := false;
      break;
    end;
  end;

  if vlPodeAtualizar then
  begin
    dmdados.CarregaPedidos;
  end;

end;

procedure TFprinciMonitorProducao.GravarIPServidorREST(vIPServidorREST: string);
var
  loIniFIle: TInifile;
  vlNomeArqIni: string;
begin

{$IFDEF ANDROID}
  vlNomeArqIni := GetHomePath + PathDelim + 'config.ini';
{$ELSE WINDOS}
  vlNomeArqIni := extractfilepath(ParamStr(0)) + 'gourmeterp.ini';
{$ENDIF}
  loIniFIle := TInifile.Create(vlNomeArqIni);
  loIniFIle.WriteString('posi', 'servidorrest', vIPServidorREST);
  loIniFIle.Free;

end;

function TFprinciMonitorProducao.LerIPServidorREST: string;
var
  loIniFIle: TInifile;
  vlIPServidorREST: string;
  vlNomeArqIni: String;
begin
{$IFDEF ANDROID}
  vlNomeArqIni := GetHomePath + PathDelim + 'config.ini';
{$ELSE}
  vlNomeArqIni := extractfilepath(ParamStr(0)) + 'gourmeterp.ini';
{$ENDIF}
  loIniFIle := TInifile.Create(vlNomeArqIni);
  vlIPServidorREST := loIniFIle.ReadString('posi', 'servidorrest', '');
  loIniFIle.Free;
  Result := vlIPServidorREST;
end;

procedure TFprinciMonitorProducao.ListViewPedidosButtonChange(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
var
  vlAItem: TListItem;
begin

  vlAItem := AItem;
end;

procedure TFprinciMonitorProducao.ListViewPedidosItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  i: integer;
  vlAItem: TListViewItem;
begin
  dmdados.pedidos.Edit;
  if dmdados.pedidosmarca.AsInteger = 0 then
  begin
    dmdados.pedidosmarca.AsInteger := 1;

  end
  else
  begin
    dmdados.pedidosmarca.AsInteger := 0;

  end;
  dmdados.pedidos.Post;

end;

procedure TFprinciMonitorProducao.btConfiguracaoClick(Sender: TObject);
begin
  AjustaIPServidorREST;
end;

procedure TFprinciMonitorProducao.FormCreate(Sender: TObject);
var
  loIniFIle: TInifile;
  cmd: TServerMethodsClient;
  cnx: TClientModule;
begin
  vpIPServidorREST := LerIPServidorREST;
  if (vpIPServidorREST = '') or (vpIPServidorREST = '127.0.0.1') then
  begin
    AjustaIPServidorREST;
  end
  else
  begin
    try

      cnx := TClientModule.Create(self);
    except
      ShowMessage('Servidor indisponivel, verifique!');
    end;
  end;

end;

procedure TFprinciMonitorProducao.FormShow(Sender: TObject);
var
  i: integer;
  AItem: TListViewItem;
begin

  Temporizador.Enabled := True;

  // dmdados.CarregaPedidos;

end;

procedure TFprinciMonitorProducao.AjustaIPServidorREST;
var
  LPrompt: string;
  LDefaultValue: string;
  TaskName: string;
begin
  try
    LPrompt := 'IP do servidor';
    LDefaultValue := LerIPServidorREST;

    TDialogService.InputQuery('Informe o IP do SERVIDOR', [LPrompt], [LDefaultValue],
      procedure(const AResult: TModalResult; const AValues: array of string)
      begin
        if AResult = mrOk then
        begin
          TaskName := AValues[0];
          GravarIPServidorREST(TaskName);
          vpIPServidorREST := TaskName;
        end
        else
          TaskName := '';

      end);
  except
    on E: Exception do
    begin
      Mensagem(E.Message);
    end;
  end;
end;

end.
