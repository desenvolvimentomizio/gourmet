unit ufbarra;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, Vcl.Dialogs,
  uBuscaProduto, System.ImageList;

type
  Tfbarra = class(Tfrmbase)
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registropuncodigo: TIntegerField;
    registropunbarrasistema: TIntegerField;
    registrosenbarrasistema: TStringField;
    registropunbarra: TStringField;
    registroprocodigo: TIntegerField;
    registrounicodigo: TIntegerField;
    Label11: TLabel;
    punbarrasistema: TDBEdit;
    punbarra: TDBEdit;
    Label1: TLabel;
    ACBrValidador: TACBrValidador;
    procedure punbarrasistemaExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure punbarraEnter(Sender: TObject);
    procedure punbarraExit(Sender: TObject);
  private
    vpBarraInterna: Boolean;
    procedure AjustaBarra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbarra: Tfbarra;

implementation

{$R *.dfm}

procedure Tfbarra.bconfirmaClick(Sender: TObject);
var
  pode: Boolean;
  resultado: string;
begin

  { inherited; }
  if punbarra.Field.AsString = '' then
  begin
    application.MessageBox(pchar('Código de barra inválido, verifique!'), 'ATENÇÃO', MB_ICONWARNING + MB_OK);
    punbarrasistema.SetFocus;
    exit;

  end;

  pode := true;

  punbarra.Field.AsString := formatfloat('00000000000000', punbarra.Field.AsFloat);

  resultado := ValidaProdutoBarra(application, zcone, punbarra.Field.AsString, registroprocodigo.AsInteger, registrounicodigo.AsInteger,
    registropuncodigo.AsInteger, registropunbarrasistema.AsInteger);
  if copy(resultado, 1, 7) = 'ATENÇÃO' then
  begin
    showmessage(resultado);
    exit;

  end;

  ACBrValidador.Documento := punbarra.Field.AsString;
  if not ACBrValidador.Validar then
  begin
    application.MessageBox(pchar('Código de barra inválido, verifique!'), 'ATENÇÃO', MB_ICONWARNING + MB_OK);
    punbarrasistema.SetFocus;
    exit;
  end;

  if not pode then
    exit;

  if pode then
  begin

    If Dsregistro.DataSet.State <> dsBrowse Then
    Begin
      Dsregistro.DataSet.Post;
    End;

    { * ajusta valores no banco, e marca para enviar carga para pdvs * }
    consulta.Close;
    consulta.SQL.Text := 'UPDATE pro SET procarga = 1 WHERE procodigo = ' + registroprocodigo.AsString;
    consulta.Execsql;

    ModalResult := mrOk;
  end;

end;

procedure Tfbarra.punbarraEnter(Sender: TObject);
var
  vBarra: string;
  vpBarraAtual: string;
begin
  inherited;
  if punbarra.Field.AsString <> '' then
  begin

    vpBarraAtual := punbarra.Field.AsString;
    vBarra := GeraProdutoBarra(application, registroprocodigo.AsInteger, registrounicodigo.AsInteger);

    if vBarra = vpBarraAtual then
    begin
      punbarra.Field.AsString := '';
    end;
  end
  else
  begin

    if (Dsregistro.State = dsInsert) or (Dsregistro.State = dsEdit) then
      if punbarra.Field.AsString = '' then
      begin

        if punbarrasistema.Field.AsInteger = 1 then
        begin
          punbarra.Field.AsString := GeraProdutoBarra(application, registroprocodigo.AsInteger, registrounicodigo.AsInteger);
          punbarra.SelectAll;
        end;
      end;
  end;
end;

procedure Tfbarra.punbarraExit(Sender: TObject);
var
  resultado: string;
begin

  ValidaSaida(Sender);

  inherited;
  resultado := ValidaProdutoBarra(application, zcone, punbarra.Field.AsString, registroprocodigo.AsInteger, registrounicodigo.AsInteger,
    registropuncodigo.AsInteger, registropunbarrasistema.AsInteger);
  if copy(resultado, 1, 7) = 'ATENÇÃO' then
    showmessage(resultado)
  else
    punbarra.Field.AsString := resultado;

end;

procedure Tfbarra.punbarrasistemaExit(Sender: TObject);
var
  resultado: string;
begin
  inherited;
  AjustaBarra;
  if punbarrasistema.Enabled then
  begin
    if punbarrasistema.Field.AsInteger = 0 then
    begin
      punbarra.Enabled := true;
      punbarra.SetFocus;
    end
    else if punbarrasistema.Field.AsInteger = 1 then
    begin
      resultado := ValidaProdutoBarra(application, zcone, punbarra.Field.AsString, registroprocodigo.AsInteger, registrounicodigo.AsInteger,
        registropuncodigo.AsInteger, registropunbarrasistema.AsInteger);
      if copy(resultado, 1, 7) = 'ATENÇÃO' then
        punbarra.Field.AsString := GeraProdutoBarra(application, registroprocodigo.AsInteger, registrounicodigo.AsInteger);
      punbarra.Enabled := false;
      bconfirma.SetFocus;
    end;
  end;
end;

procedure Tfbarra.AjustaBarra;
begin

  if registropunbarrasistema.AsInteger = 0 then
  begin
    punbarrasistema.Enabled := true;
    punbarra.Enabled := true;
  end
  else
  begin
    punbarra.Enabled := false;
    punbarrasistema.Enabled := true;
  end;

end;

end.
