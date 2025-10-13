unit ufmja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, UFuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfmja = class(Tfrmbase)
    registromjachave: TIntegerField;
    registroflhchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotjacodigo: TIntegerField;
    registromjadata: TDateField;
    registromjanumero: TStringField;
    registromjaquantidade: TFloatField;
    registromjavalor: TFloatField;
    registromjatotal: TFloatField;
    registroclbcodigo: TIntegerField;
    registromjaregistro: TDateTimeField;
    Label1: TLabel;
    mjachave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    tjacodigo: TDBEdit;
    Label5: TLabel;
    mjadata: TDBEdit;
    vlbmjanumero: TLabel;
    mjanumero: TDBEdit;
    vlbmjaquantidade: TLabel;
    mjaquantidade: TDBEdit;
    vlbmjavalor: TLabel;
    mjavalor: TDBEdit;
    Label9: TLabel;
    mjatotal: TDBEdit;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    tja: TUniQuery;
    tjatjacodigo: TIntegerField;
    tjatjaidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registrotjaidentificacao: TStringField;
    fcl: TUniQuery;
    registrofclcodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure tjacodigoExit(Sender: TObject);
  private
    { Private declarations }
    vlflhchave: string;
    vetdcodigo: string;
    vtjacodigo: string;

  public
    { Public declarations }
  end;

var
  fmja: Tfmja;

implementation

{$R *.dfm}

procedure Tfmja.bconfirmaClick(Sender: TObject);
begin
  // inherited;

  if registro.State=dsbrowse then
  registro.Edit;

  fcl.Close;
  fcl.ParamByName('etdcodigo').AsString:=etdcodigo.Field.AsString;
  fcl.Open;

  if not fcl.IsEmpty then
  registrofclcodigo.AsString:=fcl.FieldByName('fclcodigo').AsString;



  Try
    if bconfirma.Visible then
      bconfirma.SetFocus; // Força o ActiveControl para o botão Confirma

    if not ValidaCamposRequeridos then
      Exit;


    If (Self.bconfirma.caption = 'Confirma') or (Self.bconfirma.caption = 'Fechar') Then
    Begin
      If Self.SalvaRegistro Then
      begin
        if psituacao.caption = 'Incluindo' then
        begin
          vlflhchave := flhchave.Field.AsString;
          vetdcodigo := etdcodigo.Field.AsString;
          vtjacodigo := tjacodigo.Field.AsString;
          registro.Append;
          flhchave.Field.AsString := vlflhchave;
          etdcodigo.Field.AsString := vetdcodigo;
          tjacodigo.Field.AsString := vtjacodigo;
          mjadata.SetFocus;

        end
        else
          ModalResult := mrOk;
      end
      Else
        ShowMessage('Cadastro incompleto, favor verficar !');
    End
    Else
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;

      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;

      ajustabotoes;

      (Self.paginas.Pages[paginas.ActivePageIndex] As TTabSheet).SetFocus;

    End;
  Except
    on E: Exception do
      ShowMessage('Erro ao salvar o registro.' + #13 + 'Mensagem: ' + #13 + E.Message);
  End;

end;

procedure Tfmja.FormShow(Sender: TObject);
begin
  inherited;
  flhchave.SetFocus;
end;

procedure Tfmja.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registromjaregistro.AsString := agora(application, zcone);

end;

procedure Tfmja.tjacodigoExit(Sender: TObject);
begin
  inherited;
  if Self.ActiveControl = bcancela then
    Exit;

  if tjacodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select tjausanumero, tjausaquantidade from tja where tjacodigo=' + tjacodigo.Field.AsString;
    consulta.Open;

    if consulta.FieldByName('tjausanumero').AsInteger = 1 then
    begin
      vlbmjanumero.Visible := true;
      mjanumero.Visible := true;
    end
    else
    begin
      vlbmjanumero.Visible := False;
      mjanumero.Visible := False;
    end;

    if consulta.FieldByName('tjausaquantidade').AsInteger = 1 then
    begin
      vlbmjaquantidade.Visible := true;
      mjaquantidade.Visible := true;
      vlbmjavalor.Visible := true;
      mjavalor.Visible := true;
    end
    else
    begin
      vlbmjaquantidade.Visible := False;
      mjaquantidade.Visible := False;
      vlbmjavalor.Visible := False;
      mjavalor.Visible := False;

    end;

  end;

end;

end.
