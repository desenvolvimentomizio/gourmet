unit ufnumeromesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniLabel, unimLabel, uniEdit, unimEdit, uniButton, uniBitBtn, unimBitBtn,
  uniGUIBaseClasses, unimPanel;

type
  TDialogCallback = reference to procedure;

type
  Tfnumeromesas = class(TUnimForm)
    UnimPanel4: TUnimPanel;
    UnimPanel5: TUnimPanel;
    UnimBitBtn7: TUnimBitBtn;
    UnimBitBtn1: TUnimBitBtn;
    edNumeroMesa: TUnimEdit;
    UnimLabel1: TUnimLabel;
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);

  end;

function fnumeromesas: Tfnumeromesas;

implementation

{$R *.dfm}


uses
  MainModule, uniGUIApplication;


function fnumeromesas: Tfnumeromesas;
begin
  Result := Tfnumeromesas(MainModule.uniMainModule.GetFormInstance(Tfnumeromesas));
end;


procedure Tfnumeromesas.ShowFormModal(aCallBack: TDialogCallback);
begin
     fcallback :=  aCallBack;
     ShowModal;
end;

procedure Tfnumeromesas.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Assigned(fcallback) then
        fcallback;
end;

end.
