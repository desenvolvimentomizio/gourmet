unit ufobs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, db,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniBitBtn, unimBitBtn, uniLabel, unimLabel, uniGUIBaseClasses,
  unimPanel, uniEdit, unimEdit, unimSpinner, uniMemo, uniDBMemo, unimDBMemo,
  uniDBEdit, unimDBEdit, uniPanel, uniPageControl, unimTabPanel, uniBasicGrid,
  uniDBGrid, unimDBListGrid, uniMultiItem, unimSelect, unimDBSelect,
  uniDBNavigator, unimDBNavigator, unimCarousel, uniToolBar, unimToolbar,
  unimDBGrid, unimList, unimDBList;

type
  TDialogCallback = reference to procedure;

type
  Tfobs = class(TUnimForm)
    UnimBitBtnCancela: TUnimBitBtn;
    UnimBitBtnConfirma: TUnimBitBtn;
    Obs: TUnimDBMemo;
    Paineltopo: TUnimPanel;
    procedure UnimFormShow(Sender: TObject);
    procedure UnimBitBtnCancelaClick(Sender: TObject);
    procedure UnimBitBtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    fcallback: TDialogCallback;

  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);

  end;

function fobs: Tfobs;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fobs: Tfobs;
begin
  Result := Tfobs(MainModule.UniMainModule.GetFormInstance(Tfobs));

end;

procedure Tfobs.ShowFormModal(aCallBack: TDialogCallback);
begin
  fcallback := aCallBack;
  ShowModal;
end;

procedure Tfobs.UnimBitBtnCancelaClick(Sender: TObject);
begin
UniMainModule.vtItens.cancel;
close;
end;

procedure Tfobs.UnimBitBtnConfirmaClick(Sender: TObject);
begin
UniMainModule.vtItens.Post;
close;
end;

procedure Tfobs.UnimFormShow(Sender: TObject);
begin
UniMainModule.vtItens.Edit;
end;

end.
