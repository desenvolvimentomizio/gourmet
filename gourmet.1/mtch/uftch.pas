unit uftch;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tftch = class(Tfrmbase)
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    ctatctcodigo: TIntegerField;
    registrotchcodigo: TIntegerField;
    registroctacodigo: TIntegerField;
    registrotchfolhainicial: TIntegerField;
    registrotchfolhafinal: TIntegerField;
    registroctaidentificacao: TStringField;
    Label1: TLabel;
    tchcodigo: TDBEdit;
    Label2: TLabel;
    ctacodigo: TDBEdit;
    Label3: TLabel;
    tchfolhainicial: TDBEdit;
    Label4: TLabel;
    tchfolhafinal: TDBEdit;
    registroclbcodigo: TIntegerField;
    tchVerif: TUniQuery;
    tchVeriftchcodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ctacodigoEnter(Sender: TObject);
    procedure tchfolhainicialExit(Sender: TObject);
    procedure tchfolhafinalExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    function PermiteTalonario: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftch: Tftch;

implementation

{$R *.dfm}

procedure Tftch.bconfirmaClick(Sender: TObject);
begin
  if tchfolhainicial.Field.AsInteger > tchfolhafinal.Field.AsInteger then
  begin
    Application.MessageBox(PChar('Folha inicial não pode ser maior que folha final.'), 'Atenção', MB_ICONWARNING + MB_OK);
    tchfolhainicial.SetFocus;
    Exit;
  end;

  if not PermiteTalonario then
    Exit;

  inherited;
end;

procedure Tftch.ctacodigoEnter(Sender: TObject);
begin
  txtFiltro := 'tctcodigo = 2';
end;

procedure Tftch.FormShow(Sender: TObject);
begin
  Self.Height := 275;
  Self.Width := 600;

  inherited;

end;

function Tftch.PermiteTalonario: Boolean;
begin
  Result := True;

  tchVerif.Close;
  tchVerif.Params[0].AsInteger := ctacodigo.Field.AsInteger;
  tchVerif.Params[1].AsInteger := tchfolhainicial.Field.AsInteger;
  tchVerif.Params[2].AsInteger := tchfolhafinal.Field.AsInteger;
  tchVerif.Open;

  if not tchVerif.IsEmpty then
  begin
    Result := False;
    Application.MessageBox(PChar('Registro de talonário não permitido.' + #13 + #13 + 'Númeração duplicada, verifique: ' + #13 + 'Talonário: ' +
      tchVeriftchcodigo.AsString), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

procedure Tftch.registroAfterInsert(DataSet: TDataSet);
begin
  registroclbcodigo.AsInteger := Acesso.Usuario;
end;

procedure Tftch.tchfolhafinalExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if tchfolhafinal.Field.IsNull then
    Exit;

  if not tchfolhainicial.Field.IsNull then
    if tchfolhainicial.Field.AsInteger > tchfolhafinal.Field.AsInteger then
      Application.MessageBox(PChar('Folha inicial não pode ser maior que folha final.'), 'Atenção', MB_ICONWARNING + MB_OK);
end;

procedure Tftch.tchfolhainicialExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if tchfolhainicial.Field.IsNull then
    Exit;

  if not tchfolhafinal.Field.IsNull then
    if tchfolhainicial.Field.AsInteger > tchfolhafinal.Field.AsInteger then
      Application.MessageBox(PChar('Folha inicial não pode ser maior que folha final.'), 'Atenção', MB_ICONWARNING + MB_OK);
end;

end.
