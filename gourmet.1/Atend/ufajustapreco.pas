unit ufajustapreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Data.DB;

type
  Tfajustapreco = class(TForm)
    PlTitulo: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    DSAjtPreco: TDataSource;
    Panel2: TPanel;
    DbeValorAV: TDBEdit;
    LbAVista: TLabel;
    LbAPrazo: TLabel;
    DbeValorAP: TDBEdit;
    pnome: TPanel;
    PnlNotificacao: TPanel;
    plcusto: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    PnlCusto: TPanel;
    PnlMinimo: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbeValorAVChange(Sender: TObject);
    procedure DbeValorAVExit(Sender: TObject);
    procedure DbeValorAPExit(Sender: TObject);
  private
    Procedure ValidaValor;
    { Private declarations }
  public
    { Public declarations }
    vCusto: Double;
    vMinimo: Double;
    vSomenteAVista: Boolean;
  end;

var
  fajustapreco: Tfajustapreco;

implementation

{$R *.dfm}

procedure Tfajustapreco.bcancelaClick(Sender: TObject);
begin
  Close;
  ModalResult := mrCancel;
end;

procedure Tfajustapreco.bconfirmaClick(Sender: TObject);
begin
  Close;
  ModalResult := mrOk;
end;

procedure Tfajustapreco.DbeValorAPExit(Sender: TObject);
begin
  if DbeValorAP.field.Text = '' then
    DbeValorAP.field.Text := '0';

  ValidaValor;
end;

procedure Tfajustapreco.DbeValorAVChange(Sender: TObject);
begin
  ValidaValor;
end;

procedure Tfajustapreco.DbeValorAVExit(Sender: TObject);
begin
  if DbeValorAV.field.Text = '' then
    DbeValorAV.field.Text := '0';

  ValidaValor;
end;

procedure Tfajustapreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tfajustapreco.FormShow(Sender: TObject);
begin
  vMinimo := 0;

  PnlCusto.Caption := Format('%2.2f', [vCusto]);

  if vCusto > 0 then
    vMinimo := vCusto + (vCusto * 0.4);

  PnlMinimo.Caption := Format('%2.2f', [vMinimo]);

  if vSomenteAVista then
  begin
    DbeValorAP.Visible := False;
    LbAPrazo.Visible := False;
    DbeValorAV.Top := DbeValorAV.Top + 15;
    LbAVista.Top := LbAVista.Top + 15;
    PnlNotificacao.Top := PnlNotificacao.Top - 15;
    self.Height := self.Height - 15;
  end;

  PnlNotificacao.Visible := False;
end;

Procedure Tfajustapreco.ValidaValor;
var
  vValorAV, vValorAP: Double;
  vRetorno: Boolean;
begin

  vRetorno := True;
  if plcusto.Visible then
  begin

    if vMinimo > 0 then
    begin
      TRY
        vValorAV := DbeValorAV.field.Value;
        vValorAP := DbeValorAP.field.Value;

      EXCEPT
        vValorAV := 0;
        vValorAP := 0;
      END;

      if (vValorAV < vMinimo) or ((vValorAP < vMinimo) and (vSomenteAVista = False)) then
        vRetorno := False;
    end;

    if not vRetorno then
      PnlNotificacao.Visible := True
    else
      PnlNotificacao.Visible := False;

  end
  else
  begin
    PnlNotificacao.Visible := False;

  end;

end;

end.
