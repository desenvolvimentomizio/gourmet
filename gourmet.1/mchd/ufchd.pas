unit ufchd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfchd = class(Tfrmbase)
    registrochdchave: TIntegerField;
    registrochdregistro: TDateTimeField;
    registrotcmcodigo: TIntegerField;
    registrochdidentificacao: TStringField;
    registrottccodigo: TIntegerField;
    registrotprcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotsoemail: TStringField;
    Label1: TLabel;
    chdchave: TDBEdit;
    Label3: TLabel;
    tcmcodigo: TDBEdit;
    Label4: TLabel;
    chdidentificacao: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    tprcodigo: TDBEdit;
    Label7: TLabel;
    etdcodigo: TDBEdit;
    Label8: TLabel;
    tsoemail: TDBEdit;
    ttccodigo: TDBEdit;
    registrochddescricao: TStringField;
    chddescricao: TDBMemo;
    Label2: TLabel;
    tcm: TUniQuery;
    tcmtcmcodigo: TIntegerField;
    tcmtcmidentificacao: TStringField;
    registrotcmidentificacao: TStringField;
    ttc: TUniQuery;
    ttcttccodigo: TIntegerField;
    ttcttcidentificacao: TStringField;
    registrottcidentificacao: TStringField;
    tpr: TUniQuery;
    tprtprcodigo: TIntegerField;
    registrotpridentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    tprtpridentificacao: TStringField;
    tso: TUniQuery;
    tsotsoemail: TStringField;
    tsotsoidentificacao: TStringField;
    registrotsoidentificacao: TStringField;
    ech: TUniQuery;
    echechchave: TIntegerField;
    echchdchave: TIntegerField;
    echechregistro: TDateTimeField;
    echclbcodigo: TIntegerField;
    echteccodigo: TIntegerField;
    tec: TUniQuery;
    tecteccodigo: TIntegerField;
    rch: TUniQuery;
    rchrchchave: TIntegerField;
    rchchdchave: TIntegerField;
    rchrchregistro: TDateTimeField;
    rchclbcodigo: TIntegerField;
    rchrchatribuinte: TIntegerField;
    registrochdidtela: TStringField;
    Label9: TLabel;
    chdidtela: TDBEdit;
    clr: TUniQuery;
    clrclrchave: TIntegerField;
    clretdcodigo: TIntegerField;
    clrcrtcodigo: TIntegerField;
    clrtalcodigo: TIntegerField;
    clrctdcodigo: TIntegerField;
    clrclrcnaeprincipal: TStringField;
    clrcrtidentificacao: TStringField;
    clretdidentificacao: TStringField;
    clrtalidentificacao: TStringField;
    clrctdidentificacao: TStringField;
    plregimetributario: TPanel;
    Dclr: TDataSource;
    ctdidentificacao: TDBEdit;
    pltopregimetribitario: TPanel;
    crtidentificacao: TDBEdit;
    talidentificacao: TDBEdit;
    registromdpcodigo: TIntegerField;
    registrobtmcodigo: TIntegerField;
    mdp: TUniQuery;
    mdpmdpcodigo: TIntegerField;
    mdpmdpidentificacao: TStringField;
    registromdpidentificacao: TStringField;
    btm: TUniQuery;
    btmbtmcodigo: TIntegerField;
    btmbtmidentificacao: TStringField;
    registrobtmidentificacao: TStringField;
    registroteccodigo: TIntegerField;
    registrorchchave: TIntegerField;
    registroechchave: TIntegerField;
    registrochddata: TDateField;
    clrclrvencimentocertificado: TDateField;
    clrvencimentocertificado: TDBEdit;
    Panel1: TPanel;
    registrotagcodigo: TIntegerField;
    tag: TUniQuery;
    tagtagcodigo: TIntegerField;
    tagtagidentificacao: TStringField;
    registrotagidentificacao: TStringField;
    tagcodigo: TDBEdit;
    Label10: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure etdcodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure chddescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure chddescricaoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chddescricaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
    procedure ttccodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fchd: Tfchd;

implementation

{$R *.dfm}

procedure Tfchd.bconfirmaClick(Sender: TObject);
var
  vlSituacao: String;
begin
  vlSituacao := psituacao.Caption;

  inherited;

  tec.Close;
  tec.ParamByName('ttccodigo').AsInteger := ttccodigo.Field.AsInteger;
  tec.Open;
  ech.Close;
  ech.ParamByName('chdchave').AsInteger := registrochdchave.AsInteger;
  ech.ParamByName('teccodigo').AsInteger := tecteccodigo.AsInteger;
  ech.Open;

  if ech.IsEmpty then
    ech.Append
  else
    ech.Edit;

  echchdchave.AsInteger := registrochdchave.AsInteger;
  echechregistro.AsString := agora(application, ZCone);
  echclbcodigo.AsInteger := acesso.Usuario;
  echteccodigo.AsInteger := tecteccodigo.AsInteger;
  ech.Post;

  rch.Close;
  rch.ParamByName('chdchave').AsInteger := registrochdchave.AsInteger;
  rch.Open;

  if rch.IsEmpty then
  begin
    rch.Append;
    rchchdchave.AsInteger := registrochdchave.AsInteger;
    rchrchregistro.AsString := agora(application, ZCone);
    rchclbcodigo.AsInteger := acesso.Usuario;
    rchrchatribuinte.AsInteger := acesso.Usuario;
    rch.Post;
  end;

  registro.Edit;
  registroteccodigo.AsInteger := tecteccodigo.AsInteger;
  registroechchave.AsInteger := echechchave.AsInteger;
  registrorchchave.AsInteger := rchrchchave.AsInteger;
  registrochddata.AsString := hoje(application, ZCone);
  registro.Post;

end;

procedure Tfchd.chddescricaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { inherited; }

end;

procedure Tfchd.chddescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  { inherited; }

end;

procedure Tfchd.chddescricaoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { inherited; }

end;

procedure Tfchd.DSRegistroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  plregimetributario.Visible := False;

  if registro.Active then
    if registroetdcodigo.AsString <> '' then
    begin
      clr.Close;
      clr.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
      clr.Open;

      if not clr.IsEmpty then
      begin
        plregimetributario.Visible := true;

        if (clrclrvencimentocertificado.AsString <> '') then
        begin
          if clrvencimentocertificado.Field.AsFloat <= DATE - 45 then
          begin
            plregimetributario.Color := clred;
          end;
        end;

      end
      else
        plregimetributario.Visible := False;
    end
    else
      plregimetributario.Visible := False;

end;

procedure Tfchd.etdcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  consulta.Close;
  consulta.SQL.Text := 'select eteemail, etecontato from ete where etdcodigo=' + self.etdcodigo.Field.AsString;
  consulta.Open;
  while not consulta.Eof do
  begin
    if not tso.locate('tsoemail', consulta.FieldByName('eteemail').AsString, []) then
    begin
      tso.Append;
      tsotsoemail.AsString := consulta.FieldByName('eteemail').AsString;
      tsotsoidentificacao.AsString := consulta.FieldByName('etecontato').AsString;
      tso.Post;
    end;

    consulta.Next;
  end;
  tso.Refresh;

end;

procedure Tfchd.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrochdregistro.AsString := agora(application, ZCone);
end;

procedure Tfchd.ttccodigoExit(Sender: TObject);
begin
  // inherited;

  if self.ActiveControl = bcancela then
    Exit;

 
  self.ValidaSaida(Sender);
end;

end.
