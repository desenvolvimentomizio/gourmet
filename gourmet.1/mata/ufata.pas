unit ufata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfata = class(Tfrmbase)
    registroatachave: TIntegerField;
    registroflhchave: TIntegerField;
    registrovhfcodigo: TIntegerField;
    registrottacodigo: TIntegerField;
    registroatadata: TDateField;
    registroatahorainicial: TTimeField;
    registroatahorafinal: TTimeField;
    registroatahoras: TFloatField;
    registroclbcodigo: TIntegerField;
    registroataregistro: TDateTimeField;
    Label1: TLabel;
    atachave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    vhfcodigo: TDBEdit;
    Label4: TLabel;
    ttacodigo: TDBEdit;
    Label5: TLabel;
    atadata: TDBEdit;
    Label6: TLabel;
    atahorainicial: TDBEdit;
    Label7: TLabel;
    atahorafinal: TDBEdit;
    Label8: TLabel;
    atahoras: TDBEdit;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    vhfvhfidentificacao: TStringField;
    registrovhfidentificacao: TStringField;
    tta: TUniQuery;
    ttattacodigo: TIntegerField;
    ttattaidentificacao: TStringField;
    registrottaidentificacao: TStringField;
    registroataobservacao: TStringField;
    ataobservacao: TDBEdit;
    Label9: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
    vlflhchave: String;
  public
    { Public declarations }
  end;

var
  fata: Tfata;

implementation

{$R *.dfm}

procedure Tfata.bcancelaClick(Sender: TObject);
var
  smsg: string;
begin
  // inherited;
  if psituacao.caption = 'Alterando' then
    smsg := 'Deseja realmente abandonar as alterações ?'
  else
    smsg := 'Deseja realmente abandonar a inclusão do registro ?';

  If Application.MessageBox(Pchar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin
    If Self.DSRegistro.DataSet.State = dsBrowse Then
      Self.DSRegistro.DataSet.Edit;

    If Self.DSRegistro.DataSet.State <> dsBrowse Then
      Self.DSRegistro.DataSet.Cancel;

   { If psituacao.caption = 'Incluindo' Then
      If (Not registro.IsEmpty) and (bfechar.Visible = false) then
        Self.DSRegistro.DataSet.Delete;}

    Self.ModalResult := mrCancel;
  end
  else
    Self.ActiveControl := ActiveControlCancela;

end;

procedure Tfata.bconfirmaClick(Sender: TObject);
begin
  // inherited;

  Try
    if bconfirma.Visible then
      bconfirma.SetFocus; // Força o ActiveControl para o botão Confirma

    if not ValidaCamposRequeridos then
      Exit;


    If (Self.bconfirma.caption = 'Confirma')  Then
    Begin
      registro.Post;

      If Self.SalvaRegistro Then
      begin
        if psituacao.caption = 'Incluindo' then
        begin
          vlflhchave := flhchave.Field.AsString;

          registro.Append;
          flhchave.Field.AsString := vlflhchave;
          vhfcodigo.SetFocus;
          psituacao.caption := 'Incluindo';

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

      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
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

procedure Tfata.FormShow(Sender: TObject);
begin
  inherited;
  flhchave.SetFocus;
end;

procedure Tfata.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroataregistro.AsString := agora(Application, zcone);

end;

end.
