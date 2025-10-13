unit ufTransfereMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniBitBtn, unimBitBtn, uniGUIBaseClasses, uniEdit, unimEdit,
  uniLabel, unimLabel;
type
  TDialogCallback = reference to procedure;

type
  TfTrnasfereMesa = class(TUnimForm)
    edMesaOrigem: TUnimEdit;
    edMesaDestino: TUnimEdit;
    btConfirma: TUnimBitBtn;
    btCancela: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
    { Private declarations }
        fcallback: TDialogCallback;
  public
    { Public declarations }
    procedure ShowFormModal(aCallBack: TDialogCallback);
  end;

  function fTrnasfereMesa: TfTrnasfereMesa;

implementation

uses
  uniGUIApplication, MainModule;

{$R *.dfm}


function fTrnasfereMesa: TfTrnasfereMesa;
begin
  Result := TfTrnasfereMesa(MainModule.UniMainModule.GetFormInstance(TfTrnasfereMesa));
end;

procedure TfTrnasfereMesa.btCancelaClick(Sender: TObject);
begin
  edMesaOrigem.text := '';
  edMesaDestino.text := '';
    Close;
end;

procedure TfTrnasfereMesa.btConfirmaClick(Sender: TObject);
var

  vlOrcChave: integer;
  vlNumMesaOrigem: string;
  vlNumMesaDestino: string;
  vlOrcorigem:Integer;

begin
  vlNumMesaOrigem := edMesaOrigem.text;
  vlNumMesaDestino := edMesaDestino.text;

  UniMainModule.orc.Close;
  UniMainModule.orc.Params[0].AsString := vlNumMesaOrigem;
  UniMainModule.orc.Open;

  vlOrcChave := UniMainModule.orcorcchave.AsInteger;

  UniMainModule.trfmesa.Close;
  UniMainModule.trfmesa.Params[0].AsInteger := vlOrcChave;
  UniMainModule.trfmesa.Params[1].AsString := 'Mesa';
  UniMainModule.trfmesa.Open;

  // aplicando filtro para mostrar apenas mesas que ainda não foram incluidas
  UniMainModule.trfmesa.Filter := 'sel = 0';
  UniMainModule.trfmesa.Filtered := true;




  with UniMainModule do
  begin
    if not ttro.IsEmpty then
      ttro.ApplyUpdates;

    TransfereMesa.Close;
    TransfereMesa.Params[0].AsString:= vlNumMesaDestino;
    TransfereMesa.ExecProc;

    if TransfereMesa.Fields[0].AsInteger = 0 then
    begin

      // ShowMessage(TransfereMesa.Fields[1].AsString);
    {  ito.Close;
      ito.Params[0].Asstring := vlNumMesaDestino;
      ito.Open;}

    end;

  end;




  Close;
end;


procedure TfTrnasfereMesa.ShowFormModal(aCallBack: TDialogCallback);
begin

  fcallback := aCallBack;
  ShowModal;
end;


end.
