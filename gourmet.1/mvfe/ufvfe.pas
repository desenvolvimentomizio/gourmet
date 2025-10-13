unit ufvfe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uFuncoes;

type
  Tfvfe = class(Tfrmbase)
    registrovfecodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    Label1: TLabel;
    vfecodigo: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    clbfnccodigo: TIntegerField;
    registroclbidentificacao: TStringField;
    clbclbativo: TStringField;
    registrovfscodigo: TIntegerField;
    verifVfe: TUniQuery;
    registroclbabertura: TIntegerField;
    registroclbabertident: TStringField;
    clbabertura: TDBEdit;
    Label2: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure clbcodigoEnter(Sender: TObject);
    procedure clbcodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvfe: Tfvfe;

implementation

{$R *.dfm}

procedure Tfvfe.clbcodigoEnter(Sender: TObject);
begin
  txtFiltro := 'fnccodigo = 5 AND clbativo = ''1''';

  clb.Filter := txtFiltro;
  clb.Filtered := True;
end;

procedure Tfvfe.clbcodigoExit(Sender: TObject);
var
  vlMensagem: String;
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if clbcodigo.Field.IsNull then
    Exit;

  verifVfe.Close;
  verifVfe.Params[0].AsInteger := clbcodigo.Field.AsInteger;
  verifVfe.Open;

  if not verifVfe.IsEmpty then
  begin
    vlMensagem := 'Colaborador não permitido!' + sLineBreak + sLineBreak;
    vlMensagem := vlMensagem + 'Existe processo de venda fora do estabelecimento pendente:' + sLineBreak;
    vlMensagem := vlMensagem + 'Processo: ' + verifVfe.FieldByName('vfecodigo').AsString + sLineBreak;
    vlMensagem := vlMensagem + 'Colaborador: ' + verifVfe.FieldByName('clbcodigo').AsString + ' - ' + verifVfe.FieldByName('clbidentificacao').AsString +
      sLineBreak;
    vlMensagem := vlMensagem + 'Data: ' + verifVfe.FieldByName('vferegistro').AsString + sLineBreak;

    Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
    clbcodigo.SetFocus;
  end;
end;

procedure Tfvfe.FormShow(Sender: TObject);
begin
  inherited;

  clbabertura.Enabled := False;
  clbabertura.Color := PEG_COR_VALORPADRAO;
end;

procedure Tfvfe.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbabertura.AsInteger := Acesso.Usuario;
  registrotrmcodigo.AsInteger := Acesso.Terminal;
  registrovfscodigo.AsInteger := vfsEmAberto;
end;

end.
