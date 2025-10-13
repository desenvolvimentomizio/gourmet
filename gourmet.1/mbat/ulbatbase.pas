unit ulbatbase;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufuncoes,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.DB, MemDS, DBAccess,
  Vcl.Menus;

type
  Tlbatbase = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bsair: TBitBtn;
    GroupBox1: TGroupBox;
    DBGListaItens: TDBGrid;
    pservico: TPanel;
    Panel8: TPanel;
    PnlDadosCliente: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edrrua: TDBEdit;
    edrnumero: TDBEdit;
    edrbairro: TDBEdit;
    cddnome: TDBEdit;
    edrcep: TDBEdit;
    etftelefone: TDBEdit;
    Panel1: TPanel;
    EdBusca: TEdit;
    Panel3: TPanel;
    baixados: TCheckBox;
    DBGLista: TDBGrid;
    etd: tuniquery;
    Detd: tunidatasource;
    lito: tuniquery;
    Dlito: tunidatasource;
    breimprimir: TBitBtn;
    bbaixarsemconfirmacao: TButton;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    litoprocodigo: TIntegerField;
    litopronome: TStringField;
    litoitoquantidade: TFloatField;
    consulta: tuniquery;
    UqTabela: tuniquery;
    UqTabelaorcchave: TIntegerField;
    UqTabelaetdcodigo: TIntegerField;
    UqTabelaetdidentificacao: TStringField;
    UqTabelaorcdataabert: TDateField;
    UqTabelaclbcodigo: TIntegerField;
    UqTabelaclbidentificacao: TStringField;
    UqTabelaorcnome: TStringField;
    UqTabelaorctelefone: TStringField;
    UqTabelaorcendereco: TStringField;
    UqTabelaorcdescrpagto: TStringField;
    DsTabela: tunidatasource;
    litoorcchave: TIntegerField;
    PlTitulo: TPanel;
    UqTabelaorcgeral: TFloatField;
    UqTabelaorcdesconto: TFloatField;
    UqTabelaorctotal: TFloatField;
    UqTabelastoidentificacao: TStringField;
    UqTabelapuoidentificacao: TStringField;
    litostoidentificacao: TStringField;
    litoitovalor: TFloatField;
    litoitototal: TFloatField;
    litoitodesconto: TFloatField;
    litoitosaldo: TFloatField;
    MenuGerador: TPopupMenu;
    Gerador1: TMenuItem;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrbairro: TStringField;
    etdetftelefone: TStringField;
    etdtsecodigo: TIntegerField;
    etdcddnome: TStringField;
    etdufssigla: TStringField;
    Label6: TLabel;
    ufssigla: TDBEdit;
    etdedrcep: TStringField;
    itoproservico: TDBMemo;
    PnlNomeCliente: TPanel;
    LbDadosConsumidor: TLabel;
    litoitoproservico: TStringField;
    UqTabelaedrcodigo: TIntegerField;
    procedure EdBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bsairClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bbaixarsemconfirmacaoClick(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure breimprimirClick(Sender: TObject);
    procedure Gerador1Click(Sender: TObject);
    procedure baixadosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DetdDataChange(Sender: TObject; Field: TField);
    procedure DlitoDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DsTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    vQueryOriginal: String;
    procedure AtualizaConsulta;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vmoccodigo: Integer;
    vstocodigo: Integer;
    vorcchave: string;
    vusrcodigo: string;
    vDirRelat: String;
  end;

  TGridCracker = class(TCustomGrid);

var
  lbatbase: Tlbatbase;

implementation

{$R *.dfm}

procedure Tlbatbase.baixadosClick(Sender: TObject);
begin
  AtualizaConsulta;
end;

procedure Tlbatbase.bbaixarsemconfirmacaoClick(Sender: TObject);
begin
  case Application.MessageBox(PChar('Processo irreversível!' + #13 + 'Você realmente deseja cancelar esse lançamento?'), 'Atenção',
    MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) of
    IDNO:
      Exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update orc set stocodigo=88 where orcchave=' + self.UqTabelaorcchave.AsString;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'update ito set stocodigo=88 where orcchave=' + self.UqTabelaorcchave.AsString;
  consulta.ExecSQL;

  self.lito.Refresh;
  self.UqTabela.Refresh;
  self.etd.Refresh;
end;

procedure Tlbatbase.bsairClick(Sender: TObject);
begin
  vorcchave := '';
  modalresult := mrcancel;
end;

procedure Tlbatbase.bconfirmaClick(Sender: TObject);
begin
  if bconfirma.Enabled = True then
  begin
    Dlito.DataSet.Close;
    vorcchave := self.UqTabelaorcchave.AsString;
    modalresult := mrok;
  end;
end;

procedure Tlbatbase.breimprimirClick(Sender: TObject);
begin
  mrfrImprimir(Application, zcone, DsTabela, vDirRelat, tiImprimir);
end;

procedure Tlbatbase.DBGListaDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

procedure Tlbatbase.DetdDataChange(Sender: TObject; Field: TField);
begin
  IF etdetdcodigo.AsInteger = 0 then
  begin
    if UqTabelaorcnome.AsString = '' then
      LbDadosConsumidor.Caption := etdetdidentificacao.AsString
    else
      LbDadosConsumidor.Caption := UqTabelaorcnome.AsString + ' - ' + UqTabelaorcendereco.AsString + ' - ' + UqTabelaorctelefone.AsString;;
  end
  else
    LbDadosConsumidor.Caption := etdetdidentificacao.AsString;
end;

procedure Tlbatbase.DlitoDataChange(Sender: TObject; Field: TField);
begin
  if litoitoproservico.AsString <> '' then
    pservico.Visible := True
  else
    pservico.Visible := False;
end;

procedure Tlbatbase.DsTabelaDataChange(Sender: TObject; Field: TField);
begin
  if not UqTabela.Active then
    Exit;

  etd.Close;
  etd.ParamByName('edrcodigo').AsInteger := UqTabelaedrcodigo.AsInteger;
  etd.Open;

end;

procedure Tlbatbase.EdBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  vOrdenacao: String;
  vSituacao: string;
  vBuscaCli: string;
Begin
  { try }
  If (Key = 39) or (Key = 40) Then
    DBGLista.SetFocus
  else
    AtualizaConsulta;

end;

procedure Tlbatbase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  etd.Close;
  lito.Close;
end;

procedure Tlbatbase.FormKeyPress(Sender: TObject; var Key: Char);
begin
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
    // Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bsair.Click;
  End;
end;

procedure Tlbatbase.AtualizaConsulta;
Var
  vOrdenacao: String;
  vSituacao: string;
  vBuscaCli: string;
Begin

  if vQueryOriginal = '' then
    vQueryOriginal := UqTabela.SQL.Text;

  vOrdenacao := ' order by orcdataabert, orcchave';

  If EdBusca.Text = '' Then
  Begin
    UqTabela.Close;
    lito.Close;
    etd.Close;
  End
  Else
  Begin

    If EdBusca.Text = '*' Then
      vBuscaCli := ' and lower(etd.etdidentificacao) like ' + QuotedStr('%%')
    else
      vBuscaCli := ' and (lower(etd.etdidentificacao) like ' + QuotedStr('%' + lowercase(EdBusca.Text) + '%') + ' or ' + (* *)
        'lower(orc.orcnome) like ' + QuotedStr('%' + lowercase(EdBusca.Text) + '%') + ')';

    If baixados.Checked Then
      // vstocodigo = 3 Fechado - 6 - A faturar 8- Cond. Retornado 4-Unificado
      vSituacao := ' and (sto.stocodigo=8 or sto.stocodigo=3 or sto.stocodigo=6 or sto.stocodigo=88 or sto.stocodigo=4) '
    Else
      // vstocodigo   2 - Em Aberto
      vSituacao := ' and ((sto.stocodigo=2) or (sto.stocodigo=6)) ';

    UqTabela.Close;
    UqTabela.SQL.Text := vQueryOriginal + vBuscaCli + vSituacao + vOrdenacao;
    UqTabela.Params[0].AsInteger := vmoccodigo;
    UqTabela.Open;

    If Not lito.Active Then
      lito.Open;

    // If Not etd.Active Then
    // etd.Open;

    If UqTabela.Active Then
      UqTabela.Last;

  End;

  if (UqTabela.IsEmpty) or (baixados.Checked) then
  begin
    bconfirma.Enabled := False;
    bbaixarsemconfirmacao.Enabled := False;
  end
  else
  begin
    bconfirma.Enabled := True;
    bbaixarsemconfirmacao.Enabled := True;
  end;

end;

procedure Tlbatbase.Gerador1Click(Sender: TObject);
begin
  mrfrImprimir(Application, zcone, DsTabela, vDirRelat, tiGerador);
end;

end.
