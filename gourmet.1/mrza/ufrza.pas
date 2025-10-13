unit ufrza;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,
  ufuncoes,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, uffrp, frxChart, frxClass, frxDesgn, frxDACComponents,
  frxUniDACComponents, frxDBSet, frxCross, frxBarcode, frxDCtrl, frxExportXML,
  frxExportCSV, ComObj, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, PngImageList,upegabase;

type
  Tfrza = class(Tfrmbase)
    rza: tuniquery;
    registrofrcchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrofrcdtinicial: TDateField;
    registrofrcdtfinal: TDateField;
    registrofrczeradas: TIntegerField;
    Label1: TLabel;
    frcdtinicial: TDBEdit;
    Label2: TLabel;
    frcdtfinal: TDBEdit;
    registrofrcparcial: TIntegerField;
    fcb: tuniquery;
    fcbfcbchave: TIntegerField;
    fcbclbcodigo: TIntegerField;
    fcbflacodigo: TIntegerField;
    fcbfcbmarca: TIntegerField;
    plfiliais: TPanel;
    Sp1: TSplitter;
    PlTopoFiliais: TPanel;
    bativartodas: TBitBtn;
    bdesativar: TBitBtn;
    bativar: TBitBtn;
    bdesativartodas: TBitBtn;
    Dfcb: tunidatasource;
    Panel1: TPanel;
    DBLista: TDBGrid;
    fla: tuniquery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    fcbflaidentificacao: TStringField;
    fcbmarca: TStringField;
    PlContas: TPanel;
    Sp2: TSplitter;
    frp: tuniquery;
    frpfrpchave: TIntegerField;
    frpfrcchave: TIntegerField;
    frppcgcodigo: TIntegerField;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    PlBotoes: TPanel;
    SBBotoes: TScrollBox;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    PlTopoContas: TPanel;
    Panel3: TPanel;
    DBContas: TDBGrid;
    Dfrp: tunidatasource;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenparcial: TStringField;
    registrosenzeradas: TStringField;
    Label3: TLabel;
    frczeradas: TDBEdit;
    Label4: TLabel;
    frcparcial: TDBEdit;
    Pltipo: TPanel;
    rmg: tuniquery;
    rzarmgchave: TIntegerField;
    rzaflacodigo: TIntegerField;
    rzaclbcodigo: TIntegerField;
    rzaphgcodigo: TIntegerField;
    rzarmgdata: TDateField;
    rzarmgvalor: TFloatField;
    rzarmgcomplemento: TStringField;
    rmgrmgchave: TIntegerField;
    rmgflacodigo: TIntegerField;
    rmgphgcodigo: TIntegerField;
    rmgrmgdata: TDateField;
    rmgrmgvalor: TFloatField;
    rmgrmgcomplemento: TStringField;
    mostrafiliais: TProgressBar;
    frxDialogControls: TfrxDialogControls;
    frxBarCodeObject: TfrxBarCodeObject;
    frxCrossObject: TfrxCrossObject;
    frxDados: TfrxDBDataset;
    frxUniDACComponents: TfrxUniDACComponents;
    frxDesigner: TfrxDesigner;
    frxReport: TfrxReport;
    bedit: TButton;
    rzapcgcodigo: TIntegerField;
    rzacedcodigo: TIntegerField;
    rzapcgcontra: TIntegerField;
    mostracontas: TProgressBar;
    mostrafrp: TProgressBar;
    frpseacodigo: TIntegerField;
    frppcgidentificacao: TStringField;
    frf: tuniquery;
    frffrcchave: TIntegerField;
    frfflacodigo: TIntegerField;
    rzarzaoperacao: TIntegerField;
    rmgrzaoperacao: TIntegerField;
    frpcfpoperacao: TIntegerField;
    frpcfpcodigo: TIntegerField;
    bexportar: TButton;
    zeradas: tuniquery;
    rmgpcgcodigo: TIntegerField;
    rmgcedcodigo: TIntegerField;
    rmgphgidentificacao: TStringField;
    procedure bativarClick(Sender: TObject);
    procedure bdesativarClick(Sender: TObject);
    procedure bdesativartodasClick(Sender: TObject);
    procedure bativartodasClick(Sender: TObject);
    procedure fcbCalcFields(DataSet: TDataSet);
    procedure DBListaDblClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure frcparcialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure rmgCalcFields(DataSet: TDataSet);
    procedure frpCalcFields(DataSet: TDataSet);
    procedure bexportarClick(Sender: TObject);
    procedure exportaexcelrazao;
  private
    procedure calcularazao;
  public
    { Public declarations }
  end;

var
  frza: Tfrza;

  // Início ID do Módulo frza
const
  vPlIdMd = '02.02.16.011-01';

  // Fim ID do Módulo frza

implementation

{$R *.dfm}

function gerarza(AOwner: TComponent; conexao: tuniconnection; acesso:TAcesso; vmodo: string): string;
var
  i: integer;
  fltfla: string;
Begin
  try
    application.CreateForm(Tfrza, frza);
    frza.frxUniDACComponents.defaultdatabase := conexao;
    frza.zcone := conexao;
    frza.vchave := vmodo;
    frza.Acesso:= acesso;

    frza.vChaveMestre :=acesso.Usuario.ToString;

    For i := 0 To frza.ComponentCount - 1 Do
    Begin
      If frza.Components[i] Is tuniquery Then
      Begin
        (frza.Components[i] As tuniquery).Connection := conexao;
      End;
    End;
   // frza.vusrcodigo := usrcodigo;
    frza.fcb.Close;
    frza.fcb.Params[0].AsString := acesso.Usuario.ToString;
    frza.fcb.Open;

    if frza.fcb.RecordCount = 1 then
    begin
      frza.fcb.Edit;
      frza.fcbfcbmarca.AsInteger := 1;
      frza.fcb.Post;

      frza.plfiliais.Enabled := false;
    end
    else
    begin
      frza.plfiliais.Enabled := true;
    end;

    frza.frp.Close;
    frza.frp.Filter := 'frcchave=' + frza.vchave;
    frza.frp.Filtered := true;
    frza.frp.Open;

    frza.ShowModal;

    result := '';

  finally
    freeandnil(frza);
  end;

End;

exports gerarza;

procedure Tfrza.balterarClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffrp,  self.frpfrpchave.AsString, self.registrofrcchave.AsString);
  frp.Close;
  frp.Filter := 'frcchave=' + self.registrofrcchave.AsString;
  frp.Filtered := true;
  frp.Open;

end;

procedure Tfrza.bativarClick(Sender: TObject);
begin
  inherited;
  fcb.Edit;
  fcbfcbmarca.AsInteger := 1;
  fcb.Post;
end;

procedure Tfrza.bativartodasClick(Sender: TObject);
begin
  inherited;
  fcb.First;
  while not fcb.Eof do
  begin
    fcb.Edit;
    fcbfcbmarca.AsInteger := 1;
    fcb.Post;
    fcb.Next;
  end;

end;

procedure Tfrza.bconfirmaClick(Sender: TObject);
var
  pode: boolean;
  arq: string;
begin

  pode := true;
  if frcparcial.Field.AsInteger = 1 then
  begin
    if frp.RecordCount = 0 then
    begin
      pode := false;
      showmessage('Atenção, com seleção parcial de contas,' + #13 + 'tem que selecionar pelo menos uma  conta!');
    end
    else
    begin
      pode := true;
    end;
  end;
  if pode then
  begin
    inherited;

    calcularazao;

    arq := extractfilepath(application.ExeName) + 'relat\Contabilidade - Razão.fr3';
    frxReport.LoadFromFile(arq);

    with frxReport.Variables do
    begin
      Variables['usrcodigo'] := acesso.Usuario.ToString;
    end;

    frxReport.ShowReport;
  end;

end;

procedure Tfrza.bdesativarClick(Sender: TObject);
begin
  inherited;
  fcb.Edit;
  fcbfcbmarca.AsInteger := 0;
  fcb.Post;

end;

procedure Tfrza.bdesativartodasClick(Sender: TObject);
begin
  inherited;
  fcb.First;
  while not fcb.Eof do
  begin
    fcb.Edit;
    fcbfcbmarca.AsInteger := 0;
    fcb.Post;
    fcb.Next;
  end;

end;

procedure Tfrza.beditClick(Sender: TObject);
var
  pode: boolean;
  arq: string;
  debant: double;
  creant: double;
begin
  pode := true;
  if frcparcial.Field.AsInteger = 1 then
  begin
    if frp.RecordCount = 0 then
    begin
      pode := false;
      showmessage('Atenção, com seleção parcial de contas,' + #13 + 'tem que selecionar pelo menos uma  conta ! ');
    end
    else
    begin
      pode := true;
    end;
  end;
  if pode then
  begin
    inherited;
    calcularazao;

    arq := extractfilepath(application.ExeName) + 'relat\Contabilidade - Razão.fr3';
    frxReport.LoadFromFile(arq);

    with frxReport.Variables do
    begin
      Variables['usrcodigo'] := QuotedStr(acesso.Usuario.ToString);
    end;

    frxReport.DesignReport;
  end;

end;

procedure Tfrza.calcularazao;
var
  debant: double;
  creant: double;
begin
  consulta.Close;
  consulta.SQL.Text := 'delete from rza where clbcodigo=' + acesso.Usuario.ToString;;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'delete from frf where frcchave=' + self.registrofrcchave.AsString;
  consulta.ExecSQL;

  fcb.DisableControls;
  frp.DisableControls;

  rza.Close;
  rza.Open;
  self.fcb.First;
  mostrafiliais.Visible := true;
  mostrafiliais.Position := 0;
  mostrafiliais.Max := fcb.RecordCount;
  frf.Close;
  frf.Open;
  while not fcb.Eof do
  begin
    mostrafiliais.Position := mostrafiliais.Position + 1;
    application.ProcessMessages;
    if self.fcbfcbmarca.AsInteger = 1 then
    begin
      frf.Append;
      frffrcchave.AsInteger := self.registrofrcchave.AsInteger;
      frfflacodigo.AsInteger := self.fcbflacodigo.AsInteger;
      frf.Post;
    end;

    fcb.Next;
  end;

  { while not fcb.Eof do
    begin
    mostrafiliais.Position := mostrafiliais.Position + 1;
    application.ProcessMessages;

    if self.fcbfcbmarca.AsInteger = 1 then
    begin }

  frp.First;
  mostrafrp.Max := frp.RecordCount;
  mostrafrp.Position := 0;
  mostrafrp.Visible := true;

  { while not frp.Eof do
    begin
    mostrafrp.Position := mostrafrp.Position + 1;
    application.ProcessMessages;

    if frpseacodigo.AsInteger = 1 then
    begin }

  {
    sql original
    select distinct rmgchave, rmg.flacodigo, phgcodigo, rmgdata, rmgvalor, rmgcomplemento, pcgdebito,
    pcgcredito,
    (select cedcodigo from cfp,pcg where pcg.cfpcodigo=cfp.cfpcodigo and pcg.pcgcodigo=pcgdebito) as
    debnatureza,
    (select cedcodigo from cfp,pcg where pcg.cfpcodigo=cfp.cfpcodigo and pcg.pcgcodigo=pcgcredito) as
    crenatureza
    from rmg,fla,fcb where rmg.flacodigo=fla.flacodigo and fla.flacodigo=fcb.flacodigo and fcb.fcbmarca=1
    and
    fcb.clbcodigo=:clbcodigo and
    rmg.rmgdata>=:dtincial and
    rmg.rmgdata<=:dtfinal and
    (rmg.pcgdebito=:pcgcodigo or rmg.pcgcredito=:pcgcodigo)


  }

  rmg.Close;
  rmg.Params[0].AsString := acesso.Usuario.ToString;;
  rmg.Params[1].Asdate := self.registrofrcdtinicial.AsFloat;
  rmg.Params[2].Asdate := self.registrofrcdtfinal.AsFloat;
  rmg.Open;

  fcb.First;

  while not fcb.Eof do
  begin
    mostrafiliais.Position := mostrafiliais.Position + 1;
    application.ProcessMessages;
    if self.fcbfcbmarca.AsInteger = 1 then
    begin

      frp.First;
      while not frp.Eof do
      begin
        debant := 0;
        creant := 0;

        if self.frpcfpoperacao.AsInteger = 1 then
        begin

          consulta.Close;
          consulta.SQL.Text :=
            'SELECT pcgcodigo, sum(rmgvalor*if((SELECT cfp.cedcodigo FROM pcg INNER JOIN  cfp ON    (pcg.cfpcodigo = cfp.cfpcodigo)' +
            'WHERE pcg.pcgcodigo=pcgcodigo)=0,-1,1)) as debant FROM rmg,mlg where rmg.mlgchave=mlg.mlgchave and rmgdata<' + chr(39) +
            ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgcodigo=' + self.frppcgcodigo.AsString + '  and mlg.flacodigo=' +
            self.fcbflacodigo.AsString + ' group by pcgcodigo';
          consulta.Open;
          debant := consulta.Fields[1].AsFloat;
          consulta.Close;

          consulta.SQL.Text := 'SELECT pcgcodigo, sum(rmgvalor*if((SELECT cfp.cedcodigo FROM pcg INNER JOIN  cfp ON(pcg.cfpcodigo = cfp.cfpcodigo)  '
            + 'WHERE pcg.pcgcodigo=pcgcredito)=0,1,-1)) as debant FROM rmg,mlg where rmg.mlgchave=mlg.mlgchave and rmgdata<' + chr(39) +
            ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgcredito=' + self.frppcgcodigo.AsString + '  and mlg.flacodigo=' +
            self.fcbflacodigo.AsString + ' group by pcgcredito';
          consulta.Open;
          creant := consulta.Fields[1].AsFloat;
          consulta.Close;

        end
        else
        begin

          consulta.Close;
          consulta.SQL.Text :=
            'SELECT pcgcodigo, sum(rmgvalor*if((SELECT cfp.cedcodigo FROM pcg INNER JOIN  cfp ON    (pcg.cfpcodigo = cfp.cfpcodigo)' +
            'WHERE pcg.pcgcodigo=pcgcodigo)=0,1,-1)) as debant FROM rmg,mlg where rmg.mlgchave=mlg.mlgchave and rmgdata<' + chr(39) +
            ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgcodigo=' + self.frppcgcodigo.AsString + '  and mlg.flacodigo=' +
            self.fcbflacodigo.AsString + ' group by pcgcodigo';
          consulta.Open;
          debant := consulta.Fields[1].AsFloat;
          consulta.Close;

          consulta.SQL.Text := 'SELECT pcgcodigo, sum(rmgvalor*if((SELECT cfp.cedcodigo FROM pcg INNER JOIN  cfp ON(pcg.cfpcodigo = cfp.cfpcodigo)   '
            + 'WHERE pcg.pcgcodigo=pcgcredito)=0,-1,1)) as debant FROM rmg,mlg where rmg.mlgchave=mlg.mlgchave and rmgdata<' + chr(39) +
            ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgcredito=' + self.frppcgcodigo.AsString + '  and mlg.flacodigo=' +
            self.fcbflacodigo.AsString + ' group by pcgcredito';
          consulta.Open;
          creant := consulta.Fields[1].AsFloat;
          consulta.Close;
        end;

        rza.Append;
        rzarmgchave.AsInteger := 0;
        rzaflacodigo.AsInteger := self.fcbflacodigo.AsInteger;
        rzaclbcodigo.AsString :=acesso.Usuario.ToString;;
        rzaphgcodigo.AsInteger := 0;
        rzarmgdata.AsFloat := self.frcdtinicial.Field.AsFloat - 1;

        rzarmgvalor.AsFloat := creant + debant;

        rzarmgcomplemento.AsString := 'Saldo anterior';
        rzapcgcodigo.AsString := self.frppcgcodigo.AsString;
        rzapcgcontra.AsInteger := 0;
        if (creant - debant) <= 0 then
        begin
          rzacedcodigo.AsInteger := 0;
        end
        else
        begin
          rzacedcodigo.AsInteger := 1;
        end;
        rza.Post;
        frp.Next;
      end;
    end;

    fcb.Next;
  end;

  mostracontas.Visible := true;
  mostracontas.Position := 0;
  mostracontas.Max := rmg.RecordCount;
  rmg.First;

  { consulta.Close;
    consulta.SQL.Text:='insert into rza (rmgchave, clbcodigo, flacodigo, phgcodigo, rmgdata, rmgvalor,
    rmgcomplemento, pcgcodigo, cedcodigo,pcgcontra) values ('+
    'select rmgchave,frc.clbcodigo, frf.flacodigo, rmg.phgcodigo, rmgdata, rmgvalor, rmgcomplemento,
    pcgdebito, pcgcredito,
    (select cedcodigo from cfp,pcg where pcg.cfpcodigo=cfp.cfpcodigo and pcg.pcgcodigo=pcgdebito) as
    debnatureza,
    (select cedcodigo from cfp,pcg where pcg.cfpcodigo=cfp.cfpcodigo and pcg.pcgcodigo=pcgcredito) as
    crenatureza
    from rmg,fla,fcb,frp,frc,frf where rmg.flacodigo=fla.flacodigo and fla.flacodigo=fcb.flacodigo and
    fcb.fcbmarca=1 and
    fcb.clbcodigo=:clbcodigo and
    frc.frcchave=frp.frcchave and
    frc.frcchave=frf.frcchave and
    rmg.rmgdata>=:datainicial and
    rmg.rmgdata<=:datafinal and
    rmg.flacodigo=frf.flacodigo and
    (rmg.pcgdebito=frp.pcgcodigo or rmg.pcgcredito=frp.pcgcodigo)




    from rza order by flacodigo, pcgcodigo,rmgdata }

  while not rmg.Eof do
  begin
    mostracontas.Position := mostracontas.Position + 1;
    application.ProcessMessages;



    if (self.rmgpcgcodigo.AsString <> '') and (frp.Locate('pcgcodigo', self.rmgpcgcodigo.AsInteger, [])) then
    begin

      rza.Append;
      rzarmgchave.AsInteger := rmgrmgchave.AsInteger;
      rzaflacodigo.AsInteger := rmgflacodigo.AsInteger;
      rzaclbcodigo.AsString := acesso.Usuario.ToString;;
      rzaphgcodigo.AsInteger := rmgphgcodigo.AsInteger;
      rzarmgdata.AsFloat := rmgrmgdata.AsFloat;
      rzarmgvalor.AsFloat := rmgrmgvalor.AsFloat;
      rzarmgcomplemento.AsString := rmgrmgcomplemento.AsString;
      rzapcgcodigo.AsInteger := rmgpcgcodigo.AsInteger;
      rzapcgcontra.AsInteger := 0;// rmgpcgdebito.AsInteger;
      rzarzaoperacao.AsInteger := self.rmgrzaoperacao.AsInteger;
      rzacedcodigo.AsInteger := 1;
      rza.Post;

    end;
    rmg.Next;
  end;

  { end;
    frp.Next;
    end; }

  { end;
    fcb.Next;
    end; }

  rza.Close;
  rza.Open;

  { * verifica condicao de contas zeradas * }

  if frczeradas.Field.AsInteger = 0 then
  begin
    zeradas.Close;
    zeradas.SQL.Text := 'SELECT DISTINCT r.pcgcodigo, SUM(r.rmgvalor) AS rmgvalor FROM phg p ';
    zeradas.SQL.Add('RIGHT OUTER JOIN rza r ON (p.phgcodigo = r.phgcodigo) ');
   // zeradas.SQL.Add('WHERE r.clbcodigo = :clbcodigo ');
    zeradas.SQL.Add('GROUP BY  r.pcgcodigo ');
    zeradas.SQL.Add('ORDER BY  r.pcgcodigo');
  //  zeradas.Params[0].AsString := vusrcodigo;
    zeradas.Open;

    zeradas.First;
    while not zeradas.Eof do
    begin
      if (zeradas.Fields[1].AsFloat = 0) then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from rza where clbcodigo=' + acesso.Usuario.ToString + ' and pcgcodigo=' + zeradas.Fields[0].AsString;
        consulta.ExecSQL;
      end;

      zeradas.Next;
    end;

  end;

  mostrafiliais.Visible := false;
  mostracontas.Visible := false;
  mostrafrp.Visible := false;
  fcb.EnableControls;
  frp.EnableControls;
end;

{

  procedure Tfrza.calcularazao;
  var
  debant: double;
  creant: double;
  begin
  consulta.Close;
  consulta.SQL.Text := 'delete from rza where clbcodigo=' + self.vusrcodigo;
  consulta.ExecSQL;
  rza.Close;
  rza.Open;
  self.fcb.First;
  mostrafiliais.Visible := true;
  mostrafiliais.Position := 0;
  mostrafiliais.Max := fcb.RecordCount;

  while not fcb.Eof do
  begin
  mostrafiliais.Position := mostrafiliais.Position + 1;
  application.ProcessMessages;

  if self.fcbfcbmarca.AsInteger = 1 then
  begin
  frp.First;
  mostrafrp.Max := frp.RecordCount;
  mostrafrp.Position := 0;
  mostrafrp.Visible := true;

  while not frp.Eof do
  begin
  mostrafrp.Position := mostrafrp.Position + 1;
  application.ProcessMessages;

  if frpseacodigo.AsInteger = 1 then
  begin
  rmg.Close;
  rmg.Params[0].AsString := self.vusrcodigo;
  rmg.Params[1].Asdate := self.registrofrcdtinicial.AsFloat;
  rmg.Params[2].Asdate := self.registrofrcdtfinal.AsFloat;
  rmg.Params[3].AsInteger := self.fcbflacodigo.AsInteger;
  rmg.Params[4].AsInteger := self.frppcgcodigo.AsInteger;
  rmg.Open;
  debant := 0;
  creant := 0;
  consulta.Close;
  consulta.SQL.Text :=
  'SELECT pcgdebito, sum(rmgvalor*if((SELECT cedcodigo FROM pcg INNER JOIN cfp ON
  (pcg.cfpcodigo=cfp.cfpcodigo) ' +
  'WHERE pcg.pcgcodigo=pcgdebito)=0,-1,1)) as debant FROM rmg where rmgdata<' + chr(39) +
  ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgdebito=' + self.frppcgcodigo.AsString +
  '  and flacodigo=' + self.fcbflacodigo.AsString + ' group by pcgdebito';
  consulta.Open;
  debant := consulta.Fields[1].AsFloat;
  consulta.Close;
  consulta.Close;
  consulta.SQL.Text :=
  'SELECT pcgdebito, sum(rmgvalor*if((SELECT cedcodigo FROM pcg INNER JOIN cfp ON
  (pcg.cfpcodigo=cfp.cfpcodigo) ' +
  'WHERE pcg.pcgcodigo=pcgcredito)=0,-1,1)) as debant FROM rmg where rmgdata<' + chr(39) +
  ajustadata(self.frcdtinicial.Field.AsString) + chr(39) + ' and pcgcredito=' + self.frppcgcodigo.AsString +
  '  and flacodigo=' + self.fcbflacodigo.AsString + ' group by pcgcredito';
  consulta.Open;
  creant := consulta.Fields[1].AsFloat;
  consulta.Close;
  rza.Append;
  rzarmgchave.AsInteger := 0;
  rzaflacodigo.AsInteger := self.fcbflacodigo.AsInteger;
  rzaclbcodigo.AsString := self.vusrcodigo;
  rzaphgcodigo.AsInteger := 0;
  rzarmgdata.AsFloat := self.frcdtinicial.Field.AsFloat - 1;
  rzarmgvalor.AsFloat := creant - debant;
  rzarmgcomplemento.AsString := 'Saldo anterior';
  rzapcgcodigo.AsString := self.frppcgcodigo.AsString;
  rzapcgcontra.AsInteger := 0;
  if (creant - debant) <= 0 then
  begin
  rzacedcodigo.AsInteger := 0;
  end
  else
  begin
  rzacedcodigo.AsInteger := 1;
  end;
  rza.Post;
  mostracontas.Visible := true;
  mostracontas.Position := 0;
  mostracontas.Max := rmg.RecordCount;
  rmg.First;
  while not rmg.Eof do
  begin
  mostracontas.Position := mostracontas.Position + 1;
  application.ProcessMessages;

  if (frp.Locate('pcgcodigo', self.rmgpcgdebito.AsInteger, [])) then
  begin
  rza.Append;
  rzarmgchave.AsInteger := rmgrmgchave.AsInteger;
  rzaflacodigo.AsInteger := rmgflacodigo.AsInteger;
  rzaclbcodigo.AsString := self.vusrcodigo;
  rzaphgcodigo.AsInteger := rmgphgcodigo.AsInteger;
  rzarmgdata.AsFloat := rmgrmgdata.AsFloat;
  rzarmgvalor.AsFloat := rmgrmgvalor.AsFloat;
  rzarmgcomplemento.AsString := rmgrmgcomplemento.AsString;
  rzapcgcodigo.AsInteger := rmgpcgdebito.AsInteger;
  rzapcgcontra.AsInteger := rmgpcgcredito.AsInteger;
  rzacedcodigo.AsInteger := 0;
  rza.Post;
  end;

  if (frp.Locate('pcgcodigo', self.rmgpcgcredito.AsInteger, [])) then
  begin
  rza.Append;
  rzarmgchave.AsInteger := rmgrmgchave.AsInteger;
  rzaflacodigo.AsInteger := rmgflacodigo.AsInteger;
  rzaclbcodigo.AsString := self.vusrcodigo;
  rzaphgcodigo.AsInteger := rmgphgcodigo.AsInteger;
  rzarmgdata.AsFloat := rmgrmgdata.AsFloat;
  rzarmgvalor.AsFloat := rmgrmgvalor.AsFloat;
  rzarmgcomplemento.AsString := rmgrmgcomplemento.AsString;
  rzapcgcodigo.AsInteger := rmgpcgcredito.AsInteger;
  rzapcgcontra.AsInteger := rmgpcgdebito.AsInteger;
  rzacedcodigo.AsInteger := 1;
  rza.Post;
  end;
  rmg.Next;
  end;
  end;
  frp.Next;
  end;
  end;
  fcb.Next;
  end;
  rza.Close;
  rza.Open;
  mostrafiliais.Visible := false;
  mostracontas.Visible := false;
  mostrafrp.Visible := false;
  fcb.EnableControls;
  frp.EnableControls;
  end;

}

procedure Tfrza.bexcluirClick(Sender: TObject);
begin
  inherited;
  If application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO +
    MB_DEFBUTTON2) = idYes Then
  Begin
    self.frp.Delete;
  End;
  frp.Close;
  frp.Filter := 'frcchave=' + self.registrofrcchave.AsString;
  frp.Filtered := true;
  frp.Open;

end;

procedure Tfrza.bexportarClick(Sender: TObject);
var
  pode: boolean;
  arq: string;
begin

  pode := true;
  if frcparcial.Field.AsInteger = 1 then
  begin
    if frp.RecordCount = 0 then
    begin
      pode := false;
      showmessage('Atenção, com seleção parcial de contas,' + #13 + 'tem que selecionar pelo menos uma  conta ! ');
    end
    else
    begin
      pode := true;
    end;
  end;
  if pode then
  begin
    inherited;
    calcularazao;
    exportaexcelrazao;
  end;

end;

procedure Tfrza.exportaexcelrazao;
var
  excel: variant;
  l: integer;
begin
 { try
    excel := CreateOleObject('excel.application');
    if not excel.application.Visible then
      excel.application.Visible := true;
    excel.WorkBooks.Add;

    rza.Filter := 'rmgdata>=' + chr(39) + frcdtinicial.Field.AsString + chr(39) + ' and ' + 'rmgdata<=' + chr(39) + frcdtfinal.Field.AsString
      + chr(39);
    rza.Filtered := true;

    rza.First;
    l := 1;
    while not rza.Eof do
    begin
      excel.Cells[l, 1].HorizontalAlignment := 4;
      excel.Cells[l, 1].ColumnWidth := 12;
      excel.Cells[l, 1] := formatdatetime('mm/dd/yyyy', self.rzarmgdata.AsFloat);
      excel.Cells[l, 2] := self.rzarmgchave.AsString;
      consulta.Close;
      consulta.SQL.Text := 'select phgidentificacao from phg where phgcodigo=' + self.rzaphgcodigo.AsString;
      consulta.Open;
      excel.Cells[l, 3].ColumnWidth := 60;
      excel.Cells[l, 3] := buscatroca(consulta.Fields[0].AsString + ' ' + rzarmgcomplemento.AsString, '*', '');
      if rzacedcodigo.AsInteger = 0 then
      begin
        excel.Cells[l, 4].NumberFormatLocal := '#.##0,00';
        excel.Cells[l, 4].ColumnWidth := 15;
        excel.Cells[l, 4] := rzarmgvalor.AsFloat;
      end
      else
      begin
        excel.Cells[l, 5].NumberFormatLocal := '#.##0,00';
        excel.Cells[l, 5].ColumnWidth := 15;
        excel.Cells[l, 5] := rzarmgvalor.AsFloat;
      end;

      rza.Next;
      l := l + 1;
    end;

    excel.ActiveWorkBook.SaveAs('razao');
    excel.Visible := false;
    excel.quit;
    excel := unassigned;
  except
    showmessage('Ocorreu erro ao executar a transferência');
    excel.WorkBooks.Disconnect;
    // desconecta sua aplicação do documento aberto no excel.
    excel.application.Disconnect; // desconecta sua aplicação do Excel
  end;}

end;

procedure Tfrza.bincluirClick(Sender: TObject);
begin
  inherited;
  if registro.State <> dsbrowse then
  begin
    registro.Post;
  end;

  CriaFormulario(Tffrp,  '', self.registrofrcchave.AsString);
  frp.Close;
  frp.Filter := 'frcchave=' + self.registrofrcchave.AsString;
  frp.Filtered := true;
  frp.Open;
end;

procedure Tfrza.DBListaDblClick(Sender: TObject);
begin
  inherited;
  if self.fcbfcbmarca.AsInteger = 1 then
  begin
    fcb.Edit;
    fcbfcbmarca.AsInteger := 0;
    fcb.Post;
  end
  else
  begin
    fcb.Edit;
    fcbfcbmarca.AsInteger := 1;
    fcb.Post;
  end;

end;

procedure Tfrza.fcbCalcFields(DataSet: TDataSet);
begin
  inherited;
  if self.fcbfcbmarca.AsInteger = 1 then
  begin
    self.fcbmarca.AsString := '*';
  end
  else
  begin
    self.fcbmarca.AsString := '';
  end;
end;

procedure Tfrza.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  if frcparcial.Field.AsInteger = 1 then
  begin
    Pltipo.Caption := 'Parcial';
  end
  else
  begin
    Pltipo.Caption := 'Total';
  end;

end;

procedure Tfrza.frcparcialExit(Sender: TObject);
begin
  inherited;

  if self.registrofrcchave.AsString = '' then
  begin
    if registro.State <> dsbrowse then
    begin
      if frczeradas.Field.AsString = '' then
      begin
        frczeradas.Field.AsString := '0';
      end;
      registro.Post;
    end;
  end;

  if registro.State = dsbrowse then
  begin
    registro.Edit;
  end;

  self.ValidaSaida(Sender);

  if frcparcial.Field.AsInteger = 1 then
  begin

    consulta.Close;
    consulta.SQL.Text := 'delete from frp where frcchave=' + self.registrofrcchave.AsString;
    consulta.ExecSQL;
    frp.Close;
    frp.Open;

    PlContas.Visible := true;
    PlContas.Enabled := true;

    Pltipo.Caption := 'Parcial';
    // bincluir.Click;

  end
  else
  begin

    PlContas.Visible := true;
    PlContas.Enabled := false;

    consulta.Close;
    consulta.SQL.Text := 'delete from frp where frcchave=' + self.registrofrcchave.AsString;
    consulta.ExecSQL;
    frp.Close;
    frp.Open;

    consulta.Close;
    consulta.SQL.Text := 'insert into frp select ' + '@auto_increment' + ',' + self.registrofrcchave.AsString + ',pcgcodigo from pcg';
    consulta.ExecSQL;

    frp.Close;
    frp.Open;
    frp.First;
    Pltipo.Caption := 'Total';
  end;

end;

procedure Tfrza.frpCalcFields(DataSet: TDataSet);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select cfpoperacao from cfp where cfpcodigo=' + self.frpcfpcodigo.AsString;
  consulta.Open;
  frpcfpoperacao.AsInteger := self.consulta.Fields[0].AsInteger;
  consulta.Close;

end;

procedure Tfrza.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrofrczeradas.AsInteger := 0;
  self.registrofrcparcial.AsInteger := 1;
  self.registroclbcodigo.AsInteger:=acesso.Usuario;

end;

procedure Tfrza.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
 // self.registroclbcodigo.AsString := vChaveMestre;
end;

procedure Tfrza.rmgCalcFields(DataSet: TDataSet);
var
  tp: integer;
  vcfpcodigo: integer;

begin
  inherited;


  if self.rmgpcgcodigo.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select cfp.cedcodigo,cfp.cfpoperacao from cfp,pcg where pcg.cfpcodigo=cfp.cfpcodigo  and pcg.pcgcodigo =  ' +
      self.rmgpcgcodigo.AsString;
    consulta.Open;
    tp := consulta.Fields[0].AsInteger;
    vcfpcodigo := consulta.Fields[1].AsInteger;
    consulta.Close;
    rmgrzaoperacao.AsInteger := vcfpcodigo;

  end;

end;

end.
