unit ufresgat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufccotransf, Data.DB, ufuncoes,
     Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, Uni;

type
  Tfresgat = class(Tfccotransf)
    ccovalorrec: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ccovalorrecEnter(Sender: TObject);
    procedure ccovalorEnter(Sender: TObject);
    procedure ccovalorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fresgat: Tfresgat;

implementation

{$R *.dfm}

procedure Tfresgat.bconfirmaClick(Sender: TObject);
begin
  { inherited; }

  if registro.State <> dsedit then
    registro.Edit;

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := '<Resgate de Cheques>';
  registrotoccodigo.AsInteger := tocResgate;
  registro.post;

  if cco.State <> dsbrowse then
    cco.post;

  Close;

end;

procedure Tfresgat.ccovalorEnter(Sender: TObject);

begin
  { inherited; }

end;

procedure Tfresgat.ccovalorExit(Sender: TObject);
var
  vccoctadestino: integer;
  vccochaveatu: integer;
  vtctorigem: integer;
  vtctdestino: integer;
  vretorno: string;
begin
  { inherited; }
  self.registroccohistorico.AsString := 'Resgate de Cheques';

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := '<Resgate>';
  registrotoccodigo.AsInteger := tocResgate;
  // registroccovalor.AsString := '0';
  registro.post;

  // identificar os tipos de contas de origem e destino
  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  vtctorigem := consulta.Fields[0].AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.ctactacodigo.AsString;
  consulta.Open;
  vtctdestino := consulta.Fields[0].AsInteger;
  //

  consulta.Close;

  if ((vtctorigem = tctContaBancaria) and (vtctdestino = tctContaBancaria)) or ((vtctorigem = tctContaBancaria) and (vtctdestino = tctContaCaixa)) or
    ((vtctorigem = tctContaCaixa) and (vtctdestino = tctContaBancaria)) then
  begin

    vchave := self.registroccochave.AsString;
    vretorno := finaliza(vchave);

  end
  else
  begin
    vchave := self.registroccochave.AsString;
    vretorno := finaliza(vchave);
  end;

  registro.Edit;
  self.ccovalor.Field.AsString := vretorno;

  ccovalorrec.SetFocus;

end;

procedure Tfresgat.ccovalorrecEnter(Sender: TObject);
var
  vretorno: string;
begin
  inherited;

  if (ccovalor.Text = '') or (ccovalor.Text = '0') or (ccovalor.Text = '0,00') then
  begin
    showmessage('Por favor informe o valor a resgatar de cheques!');
    exit;
  end;

  self.ccoccohistorico.AsString := 'Resgate de Cheques';

  ccoetdcodigo.AsInteger := 0;
  ccoccofavorecido.AsString := '<Resgate de Cheques>';
  ccotoccodigo.AsInteger := tocResgate;
  ccoctacodigo.AsString := self.ctactacodigo.AsString;
  ccocedcodigo.AsInteger := cedCredito;
  cco.post;

  vchave := self.ccoccochave.AsString;
  vretorno := finaliza(vchave);

  cco.Edit;
  ccovalorrec.Field.AsString := vretorno;

  Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfresgat.FormShow(Sender: TObject);
begin
  inherited;
  ctacodigo.Field.AsString := self.vChaveMestre;

end;

end.
