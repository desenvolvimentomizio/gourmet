unit ufImpressoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, DBAccess, Uni, uniButton, uniBitBtn, unimBitBtn, unimPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid;

type
  TDialogCallback = reference to procedure;
type
  TfImpressoras = class(TUnimForm)
    UnimDBGridPedidos: TUnimDBGrid;
    UnimPanelSelecao: TUnimPanel;
    UnimBitBtnSelecionar: TUnimBitBtn;
    UniDataSourceMit: TUniDataSource;
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimBitBtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

function fImpressoras: TfImpressoras;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fImpressoras: TfImpressoras;
begin
  Result := TfImpressoras(UniMainModule.GetFormInstance(TfImpressoras));
end;


procedure TfImpressoras.ShowFormModal(aCallBack: TDialogCallback);
begin
  fcallback := aCallBack;
  ShowModal;
end;


procedure TfImpressoras.UnimBitBtnSelecionarClick(Sender: TObject);
begin

  Close;
end;

procedure TfImpressoras.UnimFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         if Assigned(fcallback) then
    fcallback;
end;

end.
