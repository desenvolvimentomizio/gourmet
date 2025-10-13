unit fUnimFormClb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimPanel, uniGUIBaseClasses, uniMultiItem, unimList, unimDBList, Data.DB,
  DBAccess, Uni, uniButton, uniBitBtn, unimBitBtn;

type
  TDialogCallback = reference to procedure;

type
  TUnimFormClb = class(TUnimForm)
    UniDataSourceClb: TUniDataSource;
    UnimDBList1: TUnimDBList;
    UnimPanel1: TUnimPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtnCancela: TUnimBitBtn;
  private
    { Private declarations }
    fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

function UnimFormClb: TUnimFormClb;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimFormClb: TUnimFormClb;
begin
  Result := TUnimFormClb(UniMainModule.GetFormInstance(TUnimFormClb));
end;

procedure TUnimFormClb.ShowFormModal(aCallBack: TDialogCallback);
begin

  fcallback := aCallBack;
  ShowModal;
end;

end.
