unit untVerificaValorTEF;

{$IFDEF FPC}
 {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils, 
   Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, ExtCtrls,
  ACBrTEFDCliSiTef;

type

{$IFNDEF FPC}
 {$R *.dfm}
{$ELSE}
 {$R *.lfm}
{$ENDIF}

{ TForm5 }

  TFrmVerificaValorTEF = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    BtnRetornar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnConfirmar: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Panel9: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
     procedure Edit1KeyPress(Sender : TObject; var Key : char);
     procedure FormCloseQuery(Sender : TObject; var CanClose : boolean);
     procedure FormCreate(Sender : TObject);
     procedure FormShow(Sender : TObject);
  private
    { private declarations }
  public
    { public declarations }
    TipoCampo : Integer;
    Operacao  : TACBrTEFDCliSiTefOperacaoCampo;
    TamanhoMinimo, TamanhoMaximo : Integer ;
  end; 

var
  FrmVerificaValorTEF : TFrmVerificaValorTEF;

implementation

{ TForm5 }

procedure TFrmVerificaValorTEF.FormCreate(Sender : TObject);
begin
  TamanhoMinimo := 0 ;
  TamanhoMaximo := 0 ;
  Operacao      := tcString;
  TipoCampo     := 0 ;
end;

procedure TFrmVerificaValorTEF.Edit1KeyPress(Sender : TObject; var Key : char);
begin
   if Key in [#13,#8] then exit ;  { Enter e BackSpace, OK }

   if Operacao in [tcDouble, tcCMC7] then
      if not (Key in ['0'..'9', '.']) then    { Apenas números }
         Key := #0 ;

   if (TamanhoMaximo > 0) and (Length( Edit1.Text ) >= TamanhoMaximo) then
      Key := #0 ;
end;

procedure TFrmVerificaValorTEF.FormCloseQuery(Sender : TObject; var CanClose : boolean);
begin
   if (ModalResult = mrOK) and (TamanhoMinimo > 0) then
   begin
      if Length( Edit1.Text ) < TamanhoMinimo then
      begin
         ShowMessage('O Tamanho Mínimo para este campo e: '+IntToStr(TamanhoMinimo) );
         CanClose := False ;
         Edit1.SetFocus;
      end;
   end;
end;

procedure TFrmVerificaValorTEF.FormShow(Sender : TObject);
begin
   if Operacao = tcDouble then
      Edit1.Text := '0,00' ;
   Edit1.SetFocus;
end;

end.

