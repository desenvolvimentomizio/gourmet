unit ufItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniBitBtn, unimBitBtn, uniGUIBaseClasses, unimPanel, uniMemo,
  unimMemo, uniPanel, uniHTMLFrame, unimHTMLFrame, unimScrollBox;

type
  TDialogCallback = reference to procedure;

  TfItem = class(TUnimForm)
    UnimPanel4: TUnimPanel;
    UnimPanel5: TUnimPanel;
    UnimBitBtn7: TUnimBitBtn;
    UnimScrollBox1: TUnimScrollBox;
    MemPro: TUnimHTMLFrame;
    procedure UnimBitBtn7Click(Sender: TObject);
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fcallback: TDialogCallback;

  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

function fItem: TfItem;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fItem: TfItem;
begin
  Result := TfItem(MainModule.uniMainModule.GetFormInstance(TfItem));
end;

procedure TfItem.ShowFormModal(aCallBack: TDialogCallback);
begin
     fcallback :=  aCallBack;
     ShowModal;
end;

procedure TfItem.UnimBitBtn7Click(Sender: TObject);
begin
     Close;
end;

procedure TfItem.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
     if Assigned(fcallback) then
        fcallback;
end;

end.
