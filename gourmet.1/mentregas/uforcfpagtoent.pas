unit uforcfpagtoent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.Mask, uni, ufuncoes;

type
  Tforcfpagtoent = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    ImageList1: TImageList;
    plDinheiro: TPanel;
    sbDinheiro: TSpeedButton;
    plCartaoCredito: TPanel;
    sbCartaoCredito: TSpeedButton;
    plConvenio: TPanel;
    sbConvenio: TSpeedButton;
    plCartaoDebito: TPanel;
    sbCartaoDebito: TSpeedButton;
    MenuFormaPagto: TPopupMenu;
    mnCartaoCredito: TMenuItem;
    mnCartaoDebito: TMenuItem;
    mnDinheiro: TMenuItem;
    mnConvenio: TMenuItem;
    plTotalGeral: TPanel;
    pltotal: TPanel;
    Panel2: TPanel;
    sbAFaturar: TSpeedButton;
    mnAFaturar: TMenuItem;
    plTotalLiquido: TPanel;
    plDesconto: TPanel;
    procedure sbCartaoCreditoClick(Sender: TObject);
    procedure sbCartaoDebitoClick(Sender: TObject);
    procedure sbDinheiroClick(Sender: TObject);
    procedure sbConvenioClick(Sender: TObject);
    procedure mnCartaoCreditoClick(Sender: TObject);
    procedure mnCartaoDebitoClick(Sender: TObject);
    procedure mnDinheiroClick(Sender: TObject);
    procedure mnConvenioClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sbAFaturarClick(Sender: TObject);
    procedure sbARetirarClick(Sender: TObject);
    procedure mnAFaturarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpFormaPagto: string;
    vpFinalizar: string;
    vpRetiraBalcao: string;

    vpValorTroco: string;
    vpDesconto: double;
    vpTotalBruto: double;
    procedure AjustaSpeedButton(Sender: TObject);

  end;

var
  forcfpagtoent: Tforcfpagtoent;

implementation

uses
  uFprinciEntregas;



{$R *.dfm}

procedure Tforcfpagtoent.bcancelaClick(Sender: TObject);
begin
  
  modalresult := mrcancel;
end;

procedure Tforcfpagtoent.bconfirmaClick(Sender: TObject);
var
  vlDesconto: string;
begin


  if sbCartaoDebito.Down then
  begin
    vpFormaPagto := '5';
  end
  else if sbCartaoCredito.Down then
  begin
    vpFormaPagto := '4';
  end
  else if sbDinheiro.Down then
  begin
    vpFormaPagto := '1';
  end
  else if sbConvenio.Down then
  begin
    vpFormaPagto := '7';
  end
  else if sbAFaturar.Down then
  begin
    vpFormaPagto := '9';
  end;



  if not((sbCartaoDebito.Down or sbCartaoCredito.Down or sbDinheiro.Down or sbConvenio.Down or sbAFaturar.Down) IN [True]) then
  begin
    ShowMessage('ATENÇÃO: ' + #13 + #13 + 'É necessário informar a Forma de Pagamento!');
  end
  else
  begin
    modalresult := mrok;
  end;

end;


procedure Tforcfpagtoent.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    if bcancela.Visible then
    begin
      bcancela.SetFocus;
      Key := #0;
      bcancela.Click;
    end
    else if bfechar.Visible then
    begin
      bfechar.SetFocus;
      Key := #0;
      bfechar.Click;
    end;
  End;
end;

procedure Tforcfpagtoent.FormShow(Sender: TObject);
begin
  vpFinalizar := '0';
end;

procedure Tforcfpagtoent.mnAFaturarClick(Sender: TObject);
begin
  sbAFaturar.Click;
end;

procedure Tforcfpagtoent.mnCartaoCreditoClick(Sender: TObject);
begin
  sbCartaoCredito.Click;
end;

procedure Tforcfpagtoent.mnCartaoDebitoClick(Sender: TObject);
begin
  sbCartaoDebito.Click;
end;

procedure Tforcfpagtoent.mnConvenioClick(Sender: TObject);
begin
  sbConvenio.Click;
end;

procedure Tforcfpagtoent.mnDinheiroClick(Sender: TObject);
begin
  sbDinheiro.Click;
end;

procedure Tforcfpagtoent.sbAFaturarClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);
end;

procedure Tforcfpagtoent.sbCartaoCreditoClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);

end;

procedure Tforcfpagtoent.sbCartaoDebitoClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);
end;

procedure Tforcfpagtoent.sbConvenioClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);
end;

procedure Tforcfpagtoent.sbDinheiroClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);

end;



procedure Tforcfpagtoent.sbARetirarClick(Sender: TObject);
begin
  AjustaSpeedButton(Sender);
end;

procedure Tforcfpagtoent.AjustaSpeedButton(Sender: TObject);
begin
  TSpeedButton(Sender).Down := (TSpeedButton(Sender).Tag = 0);
  TSpeedButton(Sender).Tag := 1 - TSpeedButton(Sender).Tag;

  TSpeedButton(Sender).Glyph.Assign(nil);
  if TSpeedButton(Sender).Down then
    ImageList1.GetBitmap(1, TSpeedButton(Sender).Glyph)
  else
    ImageList1.GetBitmap(0, TSpeedButton(Sender).Glyph);
end;

end.
