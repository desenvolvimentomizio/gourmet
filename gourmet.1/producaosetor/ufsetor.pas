unit ufsetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid, Data.DB, DBAccess, Uni,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn;

type
  TDialogCallback = reference to procedure;

type
  Tfsetor = class(TUnimForm)
    UnimBitBtnSelecionar: TUnimBitBtn;
    UniDataSourceMit: TUniDataSource;
    UnimDBGridPedidos: TUnimDBGrid;
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimBitBtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

function fsetor: Tfsetor;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fsetor: Tfsetor;
begin
  Result := Tfsetor(UniMainModule.GetFormInstance(Tfsetor));
end;

procedure Tfsetor.ShowFormModal(aCallBack: TDialogCallback);
begin
  fcallback := aCallBack;
  ShowModal;
end;

procedure Tfsetor.UnimBitBtnSelecionarClick(Sender: TObject);
begin

 close;
end;

procedure Tfsetor.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fcallback) then
    fcallback;
end;

end.
