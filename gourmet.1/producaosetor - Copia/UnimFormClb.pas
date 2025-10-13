unit UnimFormClb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimPanel, uniGUIBaseClasses, uniMultiItem, unimList, unimDBList, Data.DB,
  DBAccess, Uni, uniButton, uniBitBtn, unimBitBtn, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid;

type
  TDialogCallback = reference to procedure;

type
  TfUnimFormClb = class(TUnimForm)
    UniDataSourceClb: TUniDataSource;
    UnimPanel1: TUnimPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtnCancela: TUnimBitBtn;
    UnimDBGridClb: TUnimDBGrid;
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimBitBtnCancelaClick(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimDBGridClbClick(Sender: TObject);
  private
    { Private declarations }
    fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

function fUnimFormClb: TfUnimFormClb;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fUnimFormClb: TfUnimFormClb;
begin

  Result := TfUnimFormClb(UniMainModule.GetFormInstance(TfUnimFormClb));
end;

procedure TfUnimFormClb.ShowFormModal(aCallBack: TDialogCallback);
begin
  fcallback := aCallBack;
  ShowModal;
end;

procedure TfUnimFormClb.UnimBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfUnimFormClb.UnimBitBtnCancelaClick(Sender: TObject);
begin
  UniMainModule.clb.First;
  while not UniMainModule.clb.Eof do
  begin
    UniMainModule.clb.Edit;
    UniMainModule.clbclbmarca.AsString := '';
    UniMainModule.clb.Post;
    UniMainModule.clb.Next;
  end;

  Close;
end;

procedure TfUnimFormClb.UnimDBGridClbClick(Sender: TObject);
var
  vlrecno: integer;
begin

  try

    { UniMainModule.clb.DisableControls;
      vlrecno := UniMainModule.clb.RecNo; }

    UniMainModule.clb.Edit;
    if UniMainModule.clbclbmarca.AsString = '>>' then
      UniMainModule.clbclbmarca.AsString := ''
    else
      UniMainModule.clbclbmarca.AsString := '>>';
    UniMainModule.clb.Post;

    // UniMainModule.clb.RefreshRecord;
    // UniMainModule.clb.Refresh;

    // UniMainModule.clb.RecNo := vlrecno;

  finally

    // UniMainModule.clb.EnableControls;
    UnimDBGridClb.Repaint;
  end;

end;

procedure TfUnimFormClb.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fcallback) then
    fcallback;
end;

end.
