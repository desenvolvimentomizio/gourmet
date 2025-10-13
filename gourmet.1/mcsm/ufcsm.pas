unit ufcsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes, math, Vcl.Grids, Vcl.DBGrids;

type
  Tfcsm = class(Tfrmbase)
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registromeschavenfe: TStringField;
    registrotoecodigo: TIntegerField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromestotal: TFloatField;
    registrotfpcodigo: TIntegerField;
    registrorefcodigo: TIntegerField;
    registromesfrete: TFloatField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    registromespis: TFloatField;
    registromescofins: TFloatField;
    registromespiss: TFloatField;
    registromescofinss: TFloatField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registromesprotocolo: TStringField;
    registrotrfcodigo: TStringField;
    registrotemcodigo: TIntegerField;
    registroedritem: TIntegerField;
    registromesprodutos: TFloatField;
    registromesservicos: TFloatField;
    registrotdecodigo: TIntegerField;
    Label1: TLabel;
    meschave: TDBEdit;
    Label3: TLabel;
    mesemissao: TDBEdit;
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcfgtoeconsumointerno: TIntegerField;
    spd: TUniQuery;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspdativo: TIntegerField;
    Label2: TLabel;
    mesnumero: TDBEdit;
    bvalidar: TButton;
    Dvitm: TUniDataSource;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmcstcodigo: TStringField;
    itmprocodigoori: TStringField;
    itmpronomeori: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmtoeidentificacao: TStringField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmpunidentificacao: TStringField;
    itmprogtin: TStringField;
    itmunisimbolo: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmunisimbolobase: TStringField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmtipodesc: TIntegerField;
    itmitmpercdesc: TFloatField;
    itmitmtotalbru: TFloatField;
    Bvregistro: TBevel;
    plbotoesitens: TPanel;
    BActIncluir: TBitBtn;
    BActAlterar: TBitBtn;
    BActEcluir: TBitBtn;
    listaitens: TDBGrid;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    proprosaldo: TFloatField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    puntuncodigo: TIntegerField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpunmultiplicador: TFloatField;
    uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    PlDetalhe: TPanel;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    toetoeorigem: TStringField;
    toettecodigo: TIntegerField;
    toettmcodigo: TIntegerField;
    toettocodigo: TIntegerField;
    uniunisimbolo: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure mesemissaoExit(Sender: TObject);
    procedure BActIncluirClick(Sender: TObject);
    procedure BActAlterarClick(Sender: TObject);
    procedure BActEcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcsm: Tfcsm;

implementation

uses
  ufitmcsm;

{$R *.dfm}



procedure Tfcsm.BActAlterarClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfitmcsm, itmitmchave.AsString, Self.meschave.Field.AsString);

  itm.Close;
  itm.ParamByName('meschave').AsString := Self.meschave.Field.AsString;
  itm.Open;
  itm.Last;

end;

procedure Tfcsm.BActEcluirClick(Sender: TObject);
begin
  inherited;

  if Application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), Pchar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
  begin
    consulta.Close;
    consulta.SQL.Text := 'delete from itm where itmchave=' + itmitmchave.AsString;
    consulta.ExecSQL;

    itm.Close;
    itm.ParamByName('meschave').AsString := Self.meschave.Field.AsString;
    itm.Open;
    itm.Last;

  end;
end;

procedure Tfcsm.BActIncluirClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfitmcsm, '', Self.meschave.Field.AsString);

  itm.Close;
  itm.ParamByName('meschave').AsString := Self.meschave.Field.AsString;
  itm.Open;
  itm.Last;

end;

procedure Tfcsm.bvalidarClick(Sender: TObject);
begin
  inherited;
  PlDetalhe.Visible := True;

  If psituacao.Caption = 'Incluindo' Then
  Begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT COUNT(mesnumero), meschave FROM mes WHERE ';
    consulta.SQL.Add('mesnumero <> ' + QuotedStr('') + ' AND ');
    consulta.SQL.Add('mesnumero <> ' + QuotedStr('0') + ' AND ');
    consulta.SQL.Add('mesnumero = ' + QuotedStr(Self.mesnumero.Field.AsString));
    consulta.Open;

    If consulta.Fields[0].AsInteger > 0 Then
    Begin
      ShowMessage('Este documento já esta lançado no registro: ' + Self.consulta.Fields[1].AsString);
    End
    Else
    Begin
      if registro.State <> dsBrowse then
        registro.Post;

      bconfirma.Enabled := True;
      itm.Close;
      If Not itm.active Then
      Begin
        itm.Params[0].AsInteger := registromeschave.AsInteger;
        itm.Open;
      End;

      listaitens.SetFocus;
      listaitens.SelectedIndex := 1;

      If psituacao.Caption = 'Incluindo' Then
        if Self.BActIncluir.Visible then
          Self.BActIncluir.SetFocus;

    End;
  End
  Else
  Begin
    registro.Post;
    bconfirma.Enabled := True;
    If Not itm.active Then
    Begin
      itm.Params[0].AsInteger := registromeschave.AsInteger;
      itm.Open;
    End;
  End;


end;

procedure Tfcsm.FormCreate(Sender: TObject);
begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  inherited;

end;

procedure Tfcsm.FormShow(Sender: TObject);
begin
  inherited;


  if Self.meschave.Field.AsString <> '' then
  begin
    itm.Close;
    itm.ParamByName('meschave').AsString := Self.meschave.Field.AsString;
    itm.Open;
    itm.Last;
  end;
end;

procedure Tfcsm.mesemissaoExit(Sender: TObject);
begin
  inherited;
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;



end;

procedure Tfcsm.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrosdecodigo.AsString := '00';
  registromesvalor.AsFloat := 0;
  registromesdesconto.AsFloat := 0;
  registromestotal.AsFloat := 0;
  registromesprodutos.AsFloat := 0;
  registromesservicos.AsFloat := 0;
  registromesfrete.AsFloat := 0;
  registromesseguro.AsFloat := 0;
  registromesoutras.AsFloat := 0;
  registromesbicm.AsFloat := 0;
  registromesicm.AsFloat := 0;
  registromesbicms.AsFloat := 0;
  registromesicms.AsFloat := 0;
  registromesipi.AsFloat := 0;
  registromespis.AsFloat := 0;
  registromescofins.AsFloat := 0;
  registromespiss.AsFloat := 0;
  registromescofinss.AsFloat := 0;
  registrorefcodigo.AsInteger := 1;
  registrotfpcodigo.AsInteger := 0;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrotrmcodigo.AsInteger := acesso.Terminal;
  registromesregistro.AsFloat := date;
  registrotemcodigo.AsInteger := 1;
  registrotrfcodigo.AsInteger := 0;
  registromeschavenfe.AsString := '0';
  registrotdfcodigo.AsString := 'CI';
  registromesnumero.AsInteger := 0;
  registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registrotoecodigo.AsInteger := cfgcfgtoeconsumointerno.AsInteger;
  registromesregistro.AsString := hoje(Application, ZCone);
  registromesemissao.AsString := hoje(Application, ZCone);

end;

end.
