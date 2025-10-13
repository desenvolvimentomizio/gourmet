Unit ufajustacre;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls;

Type
  Tfajustacre = Class(TForm)
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Dqbaixa: tunidatasource;
    mfivalorprincipal: TdbEdit;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Dqjuros: tunidatasource;
    mfivalorjuros: TdbEdit;
    Dqdescontos: tunidatasource;
    Label5: TLabel;
    mfivalordescontos: TdbEdit;
    DUQTabela: tunidatasource;
    rfivalor: TdbEdit;
    rfibaixado: TdbEdit;
    Dvbaixa: tunidatasource;
    PnlTipoBaixa: TPanel;
    rfijuroscalc: TdbEdit;
    rfioriginal: TdbEdit;
    mfivalorori: TdbEdit;
    Procedure bcancelaClick(Sender: TObject);
    Procedure bconfirmaClick(Sender: TObject);
    Procedure mfivalorjurosExit(Sender: TObject);
    Procedure mfivalordescontosExit(Sender: TObject);
    Procedure mfivalorprincipalExit(Sender: TObject);
    Procedure rfibaixadoKeyUp(Sender: TObject; Var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rfibaixadoEnter(Sender: TObject);
    procedure bconfirmaEnter(Sender: TObject);
  Private
    Procedure calculartotais;
    procedure ajustapainel;
    procedure ajustarrecebido;
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  fajustacre: Tfajustacre;

Implementation


{$R *.dfm}

Procedure Tfajustacre.bcancelaClick(Sender: TObject);
Begin
  If Dqbaixa.DataSet.State = dsinsert Then
  Begin
    Dqbaixa.DataSet.cancel;
  End;
  If Dqjuros.DataSet.State = dsinsert Then
  Begin
    Dqjuros.DataSet.cancel;
  End;

  If Dqdescontos.DataSet.State = dsinsert Then
  Begin
    Dqdescontos.DataSet.Cancel;
  End;

  modalresult := mrcancel;
End;

Procedure Tfajustacre.bconfirmaClick(Sender: TObject);
Begin
  If Dqbaixa.DataSet.State = dsinsert Then
  Begin
    Dqbaixa.DataSet.Post;
  End;
  If Dqjuros.DataSet.State = dsinsert Then
  Begin
    Dqjuros.DataSet.Post;
  End;

  If Dqdescontos.DataSet.State = dsinsert Then
  Begin
    Dqdescontos.DataSet.Post;
  End;
  modalresult := mrok;

End;

procedure Tfajustacre.bconfirmaEnter(Sender: TObject);
begin
ajustarrecebido;
end;

Procedure tfajustacre.calculartotais;
Var
  tot: double;
Begin

  tot := mfivalorprincipal.field.AsCurrency +
    mfivalorjuros.Field.AsCurrency -
    mfivalordescontos.Field.AsCurrency;

{rfibaixado.DataSource.DataSet.Edit;
rfibaixado.Field.AsFloat:=tot;
rfibaixado.DataSource.DataSet.post;}

End;

procedure Tfajustacre.FormKeyPress(Sender: TObject; var Key: Char);
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

Procedure Tfajustacre.mfivalordescontosExit(Sender: TObject);
Begin
  if mfivalordescontos.Field.AsString='' then
  begin
    mfivalordescontos.Field.AsString:='0';
  end;

  calculartotais;
End;

Procedure Tfajustacre.mfivalorjurosExit(Sender: TObject);
Begin

  if mfivalorjuros.Field.AsString='' then
  begin
    mfivalorjuros.Field.ascurrency:=mfivalorori.Field.ascurrency;
  end;

  if mfivalorjuros.field.ascurrency>=mfivalorori.Field.ascurrency then
  begin
  calculartotais;
  end
  else
  begin
    showmessage('O juros não pode ser baixado para menor que o calculado!');
    mfivalorjuros.field.ascurrency:=mfivalorori.Field.ascurrency;
  end;
End;

Procedure Tfajustacre.mfivalorprincipalExit(Sender: TObject);
Begin
  if mfivalorprincipal.Field.AsString='' then
  begin
    mfivalorprincipal.Field.AsString:='0';
  end;

  calculartotais;
End;

procedure Tfajustacre.rfibaixadoEnter(Sender: TObject);
Begin
ajustarrecebido;

end;
procedure Tfajustacre.ajustarrecebido;
Var
  bx: double;
  ds: double;
  vp: double;
  jr: double;
Begin

    ds:=self.mfivalordescontos.Field.AsCurrency;
    vp:=self.mfivalorprincipal.Field.AsCurrency;
    jr:=self.mfivalorjuros.Field.AsCurrency;

     bx:=vp+jr-ds;
     if rfibaixado.DataSource.DataSet.state<>dsedit then
     begin
       rfibaixado.DataSource.DataSet.Edit;
     end;

     rfibaixado.Field.AsFloat:=bx;
    ajustapainel;

end;

Procedure Tfajustacre.rfibaixadoKeyUp(Sender: TObject; Var Key: Word;
  Shift: TShiftState);
Begin
 ajustapainel;
End;

procedure tfajustacre.ajustapainel;
Var
  bx: double;
  ds: double;
  vp: double;
  vo: double;
  jr: double;
  t1:double;
  t2:double;
Begin
  Try
    bx:=self.rfibaixado.Field.AsCurrency;
    vo:=self.rfioriginal.Field.AsCurrency;
    ds:=self.mfivalordescontos.Field.AsCurrency;
    vp:=self.rfivalor.Field.AsCurrency;
    jr:=self.mfivalorjuros.Field.AsCurrency;
    t1:=(vp+jr);
    t2:=(bx+ds)-jr;

    If ((t2)>=vp) and (ds>0) Then
    Begin
      PnlTipoBaixa.Color := clGreen;
      PnlTipoBaixa.Caption := 'Baixa Total';
      mfivalorprincipal.Field.AsFloat:=vp;
      self.mfivalorjuros.Field.AsFloat:=bx-vo+ds;
    End
    Else If (t1=bx) and (ds=0) Then
    Begin
      PnlTipoBaixa.Color := clGreen;
      PnlTipoBaixa.Caption := 'Baixa Total';
      mfivalorprincipal.Field.AsCurrency:=vp;
    End
    else
    Begin
     If ((t2)>=vp) {and (jr>0)} Then
    Begin
      PnlTipoBaixa.Color := clGreen;
      PnlTipoBaixa.Caption := 'Baixa Total';
      mfivalorprincipal.Field.AsCurrency:=vo;
      self.mfivalorjuros.Field.AsCurrency:=bx-vo;
    End
    else
    begin
      PnlTipoBaixa.Color := clred;
      PnlTipoBaixa.Caption := 'Baixa Parcial';

      mfivalorprincipal.Field.AsCurrency:=
      bx+ds-jr;
    end;

    End;
  Except
    PnlTipoBaixa.Color := clBtnFace;
    PnlTipoBaixa.Caption := '';
  End;

end;

End.

