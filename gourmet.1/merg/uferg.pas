unit uferg;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,      Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Vcl.ComCtrls, VirtualTable, Vcl.Mask,
  Vcl.DBCtrls, ufuncoes;

type
  Tferg = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    consulta: tuniquery;
    mostra: TProgressBar;
    cfg: TVirtualTable;
    cfgflacodigo: TIntegerField;
    cfgrmgdtinicial: TDateField;
    cfgrmgdtfinal: TDateField;
    Label1: TLabel;
    flacodigo: TDBEdit;
    Dcfg: tunidatasource;
    Label2: TLabel;
    rmgdtinicial: TDBEdit;
    Label3: TLabel;
    rmgdtfinal: TDBEdit;
    fla: tuniquery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    clb: tuniquery;
    fcb: tuniquery;
    Dfla: tunidatasource;
    rmg: tuniquery;
    drg: tuniquery;
    Drmg: tunidatasource;
    drgrmgchave: TIntegerField;
    drgpcgcodigo: TIntegerField;
    drgdrgvalor: TFloatField;
    rmgrmgchave: TIntegerField;
    rmgflacodigo: TIntegerField;
    rmgphgcodigo: TIntegerField;
    rmgrmgdata: TDateField;
    rmgrmgvalor: TFloatField;
    rmgrmgcomplemento: TStringField;
    rmgpcgdebito: TIntegerField;
    rmgpcgcredito: TIntegerField;
    fcbflacodigo: TIntegerField;
    fcbclbcodigo: TIntegerField;
    flaidentificacao: TDBLookupComboBox;
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;
  public
    { Public declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  ferg: Tferg;

implementation

{$R *.dfm}

function expmovi(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string): string;
var
  i: integer;
  fltfla: string;
Begin
  try
    application.CreateForm(Tferg, ferg);

    ferg.clb.Connection := conexao;
    ferg.clb.Close;
    ferg.clb.Filter := 'clbcodigo=' + usrcodigo;
    ferg.clb.Filtered := true;
    ferg.clb.Open;

    ferg.fcb.Connection := conexao;
    ferg.fcb.Close;
    ferg.fcb.Filter := 'clbcodigo=' + usrcodigo;
    ferg.fcb.Filtered := true;
    ferg.fcb.Open;

    if ferg.fcb.RecordCount > 1 then
    begin
      while not ferg.fcb.Eof do
      begin
        fltfla := fltfla + 'flacodigo=' + chr(39) + ferg.fcbflacodigo.asstring + chr(39) + ' or ';
        ferg.fcb.Next;
      end;
    end
    else
    begin
      fltfla := 'flacodigo=' + ferg.fcbflacodigo.asstring;
    end;

    if copy(fltfla, length(fltfla) - 3, 4) = ' or ' then
    begin
      fltfla := trim(copy(fltfla, 1, length(fltfla) - 3));
    end;

    ferg.fla.Connection := conexao;
    ferg.fla.Close;
    ferg.fla.Filter := fltfla;
    ferg.fla.Filtered := true;
    ferg.fla.Open;

    ferg.rmg.Connection := conexao;
    ferg.drg.Connection := conexao;

    ferg.cfg.Open;
    ferg.cfg.Append;

    For i := 0 To ferg.ComponentCount - 1 Do
    Begin
      If ferg.Components[i] Is tuniquery Then
      Begin
        (ferg.Components[i] As tuniquery).Connection := conexao;
      End;
    End;

    ferg.ShowModal;

    result := '';

  finally
    freeandnil(ferg);
  end;

End;

exports expmovi;

procedure Tferg.bcancelaClick(Sender: TObject);
begin
  Close;
end;

procedure Tferg.bconfirmaClick(Sender: TObject);
var
  arqu: string;
  dire: string;
  arq: tstringlist;
  linha: string;
  cdb: string;
  ccr: string;
  vlr: string;
  vlg: string;
  chg: string;
  dta: string;
begin
  if cfg.State <> dsbrowse then
  begin
    cfg.Post;
  end;

  mostra.Visible := true;
  try

    arq := tstringlist.Create;

    dire := extractfilepath(application.ExeName) + 'exportado';

    if not DirectoryExists(dire) then
    begin
      createdir(dire);
    end;

    arqu := formatfloat('00', self.cfgflacodigo.AsInteger) + FormatDateTime('mmdd', self.cfgrmgdtinicial.AsFloat)+ '.txt';
    if fileexists(dire + '\' + arqu) then
    begin
      deletefile(dire + '\' + arqu);
    end;

    rmg.Close;
    rmg.SQL.Text:='select rmgchave, flacodigo,phgcodigo,rmgdata,rmgvalor,rmgcomplemento,pcgdebito,pcgcredito from rmg where '+
    'flacodigo=' + chr(39) + cfgflacodigo.asstring + chr(39) + ' and rmgdata>=' + chr(39) +
      ajustadata(self.cfgrmgdtinicial.asstring) + chr(39) + ' and rmgdata<=' + chr(39) + ajustadata(self.cfgrmgdtfinal.asstring)
      + chr(39);
    rmg.Open;

    mostra.Max := rmg.RecordCount;
    mostra.Position:=0;
    rmg.First;
    while not rmg.Eof do
    begin
      mostra.Position:=mostra.Position+1;
      application.ProcessMessages;
      if self.rmgpcgdebito.asstring = '' then
      begin
        cdb := '0';
      end
      else
      begin
        cdb := self.rmgpcgdebito.asstring;
      end;

      if self.rmgpcgcredito.asstring = '' then
      begin
        ccr := '0';
      end
      else
      begin
        ccr := self.rmgpcgcredito.asstring;
      end;

      vlr := self.rmgrmgvalor.asstring;
      vlr := buscatroca(vlr, '.', '');
      vlr := buscatroca(vlr, '.', '');
      vlr := buscatroca(vlr, '.', '');
      vlr := buscatroca(vlr, '.', '');
      vlr := buscatroca(vlr, '.', '');
      vlr := buscatroca(vlr, ',', '.');

      if self.rmgphgcodigo.asstring = '' then
      begin
        chg := '0';
      end
      else
      begin
        chg := self.rmgphgcodigo.asstring;
      end;

      dta := FormatDateTime('ddmmyy', self.rmgrmgdata.AsFloat);

      linha := self.rmgflacodigo.asstring + ',' + dta + ',' + cdb + ',' + ccr + ',' + vlr + ',' + chg + ',' + chr(34) +
        self.rmgrmgcomplemento.asstring + chr(34);
      arq.Add(linha);

      drg.Close;
      drg.SQL.Text:='select rmgchave, pcgcodigo, drgvalor, drgtipo from drg where rmgchave='+self.rmgrmgchave.AsString+' order by drgtipo';
      drg.Open;

      drg.First;
      while not drg.Eof do
      begin
        vlg := self.drgdrgvalor.asstring;
        vlg := buscatroca(vlg, '.', '');
        vlg := buscatroca(vlg, '.', '');
        vlg := buscatroca(vlg, '.', '');
        vlg := buscatroca(vlg, '.', '');
        vlg := buscatroca(vlg, '.', '');
        vlg := buscatroca(vlg, ',', '.');
        linha := self.drgpcgcodigo.asstring + ',' + vlg;
        arq.Add(linha);

        drg.Next;
      end;

      rmg.Next;
    end;
  finally
    arq.SaveToFile(dire + '\' + arqu);
    freeandnil(arq);

  end;

  showmessage('Exportação realizada com sucesso!');

end;

procedure Tferg.bfecharClick(Sender: TObject);
begin
close;
end;

procedure Tferg.FormKeyPress(Sender: TObject; var Key: Char);
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
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;

end;

end.
