Unit ufajustapreco;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess,      StdCtrls, Buttons, ExtCtrls,  Mask, DBCtrls,
  ufuncoes, Uni;

Type
  Tfajustapreco = Class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    registro: tuniquery;
    Dsregistro: tunidatasource;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    punbarra: TDBEdit;
    punprecoav: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    punprecoap: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    unisimbolo: TDBEdit;
    punidentificacao: TDBEdit;
    consulta: tuniquery;
    registropunprecoav: TFloatField;
    registropunprecoap: TFloatField;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    novopunprecoav: TEdit;
    novopunprecoap: TEdit;
    Procedure bconfirmaClick(Sender: TObject);
    Procedure DsregistroStateChange(Sender: TObject);
    Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    Procedure bcancelaClick(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  fajustapreco: Tfajustapreco;

Implementation


{$R *.dfm}

Procedure Tfajustapreco.bcancelaClick(Sender: TObject);
Begin
  If Dsregistro.DataSet.State <> dsbrowse Then
  Begin
    Dsregistro.DataSet.cancel;
  End;
  modalresult := mrcancel;

End;

Procedure Tfajustapreco.bconfirmaClick(Sender: TObject);
Var
  nv1: String;
  nv2: String;
Begin
  { inherited; }
  If self.novopunprecoav.Text = '' Then
  Begin
    nv1 := '0';
  End
  Else
  Begin
    nv1 := self.novopunprecoav.Text;
  End;


  If self.novopunprecoap.Text = '' Then
  Begin
    nv2 := '0';
  End
  Else
  Begin
    nv2 := self.novopunprecoap.Text;
  End;

  consulta.close;
  consulta.SQL.clear;
  consulta.SQL.Add('update pro set procarga=1 where procodigo=' + registroprocodigo.AsString);
  consulta.Execsql;


  If punprecoap.Visible Then
  Begin
    consulta.close;
    consulta.SQL.clear;
    consulta.SQL.Add('update pun set punprecoav=' + trim
      (BuscaTroca(nv1, ',', '.'))
      + ', punprecoap=' + trim(BuscaTroca(nv2, ',', '.')) + ' where puncodigo=' + registropuncodigo.AsString);
    consulta.Execsql;
  End
  Else
  Begin
    consulta.close;
    consulta.SQL.clear;
    consulta.SQL.Add('update pun set punprecoav=' + trim
      (BuscaTroca(nv1, ',', '.'))
      + ' where puncodigo=' +  registropuncodigo.AsString);
    consulta.Execsql;

  End;


  modalresult := mrok;

End;



Procedure Tfajustapreco.DsregistroStateChange(Sender: TObject);
Begin
  If Dsregistro.DataSet <> Nil Then
  Begin

    If Dsregistro.DataSet.State = dsinsert Then
    Begin
      psituacao.Caption := 'Incluindo';
    End
    Else If Dsregistro.DataSet.State = dsedit Then
    Begin
      psituacao.Caption := 'Alterando';
    End
    Else
    Begin
      psituacao.Caption := '';
    End;
  End;
End;

Procedure Tfajustapreco.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
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
End;

End.

