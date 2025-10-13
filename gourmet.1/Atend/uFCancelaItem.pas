unit uFCancelaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFCancelaItem = class(TForm)
    plDireitaDetalhe: TPanel;
    IImagem: TImage;
    plEsquerdaPdv: TPanel;
    plGrupoValorUnitario: TPanel;
    plTituloValorUnitario: TPanel;
    plValorUnitario: TPanel;
    plGrupoQuantidade: TPanel;
    plTituloQuantidade: TPanel;
    plQtdUni: TPanel;
    plQuantidade: TPanel;
    plSimbolo: TPanel;
    plGrupoTotalItem: TPanel;
    Panel2: TPanel;
    plTotalItem: TPanel;
    plGrupoPronome: TPanel;
    plPronome: TPanel;
    plNomeProduto: TPanel;
    plRodapeEsquerda: TPanel;
    plRecebeDados: TPanel;
    plCodigo: TPanel;
    plTituloCodigo: TPanel;
    cdbarra: TEdit;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    btCarregaItem: TSpeedButton;
    procedure btCarregaItemClick(Sender: TObject);
    procedure cdbarraKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCancelaItem: TFCancelaItem;

implementation

{$R *.dfm}

uses uFprinciBal;

procedure TFCancelaItem.bcancelaClick(Sender: TObject);
begin
  modalresult:=mrcancel;

end;

procedure TFCancelaItem.bconfirmaClick(Sender: TObject);
begin
  modalresult:=mrok;
end;

procedure TFCancelaItem.btCarregaItemClick(Sender: TObject);
begin

  if FprinciBal.lito.Locate('itoitem', self.cdbarra.Text, []) then
  begin
    plNomeProduto.Caption := FprinciBal.litopronome.AsString;

    plValorUnitario.Caption := formatfloat('##,###,##0.00', FprinciBal.litoitovalor.AsFloat);
    plQuantidade.Caption := formatfloat('##,###,##0.0', FprinciBal.litoitoquantidade.AsFloat);
    plTotalItem.Caption := formatfloat('##,###,##0.00', FprinciBal.litoitototal.AsFloat);
    plSimbolo.Caption := FprinciBal.litounisimbolo.AsString;
     bconfirma.SetFocus;
  end
  else
  begin
     plNomeProduto.Caption :='Item não Localizado.';

  end;

end;

procedure TFCancelaItem.cdbarraKeyPress(Sender: TObject; var Key: Char);
begin
If (Key = #13) Then
  Begin
    Key := #0;
    btCarregaItem.Click;


  End
  else If (Key = #27) Then
  Begin
    Key := #0;
    self.bcancela.Click;
  End;

end;

end.
