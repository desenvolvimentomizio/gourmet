unit ufscl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, ufuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfscl = class(Tfrmbase)
    registrosclchave: TIntegerField;
    registroflhchave: TIntegerField;
    registroscldata: TDateField;
    registrovhfausente: TIntegerField;
    registrovhfsubstituto: TIntegerField;
    registrosclhoras: TFloatField;
    registrosclobservacao: TStringField;
    registroclbcodigo: TIntegerField;
    registrosclregistro: TDateTimeField;
    Label1: TLabel;
    sclchave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    scldata: TDBEdit;
    Label4: TLabel;
    vhfausente: TDBEdit;
    Label5: TLabel;
    vhfsubstituto: TDBEdit;
    Label6: TLabel;
    sclhoras: TDBEdit;
    Label7: TLabel;
    sclobservacao: TDBEdit;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    vhfvhfidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    registrovhfausenteidentificaaco: TStringField;
    registrovhfsubstitutoidentificacao: TStringField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label8: TLabel;
    phgcodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vlflhchave:string;
  public
    { Public declarations }
  end;

var
  fscl: Tfscl;

implementation

{$R *.dfm}

procedure Tfscl.bconfirmaClick(Sender: TObject);
begin
  // inherited;

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
          registro.Append;
          flhchave.Field.AsString := vlflhchave;
          scldata.SetFocus;

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

procedure Tfscl.FormShow(Sender: TObject);
begin
  inherited;
  flhchave.SetFocus;
end;

procedure Tfscl.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrosclregistro.AsString := agora(application, ZCone);

end;

end.
