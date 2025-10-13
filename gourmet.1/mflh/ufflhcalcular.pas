unit ufflhcalcular;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, dialogs,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, System.ImageList,
  variants;

type
  Tfflhcalcular = class(Tfrmbase)
    tfl: TUniQuery;
    tfltflcodigo: TIntegerField;
    tfltflidentificacao: TStringField;
    efl: TUniQuery;
    e: TIntegerField;
    efleflidentificacao: TStringField;
    registroflhchave: TIntegerField;
    registrotflcodigo: TIntegerField;
    registrotflidentificacao: TStringField;
    registroeflcodigo: TIntegerField;
    registroeflidentificacao: TStringField;
    registroflhIdentificacao: TStringField;
    registroflhmes: TStringField;
    registroflhano: TStringField;
    registroflhdtinicial: TDateField;
    registroflhdtfinal: TDateField;
    registroflhdtpgto: TDateField;
    registroflhcriacao: TDateTimeField;
    registroclbcodigo: TIntegerField;
    flhchave: TDBEdit;
    Label1: TLabel;
    tflcodigo: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    flhmes: TDBEdit;
    Label5: TLabel;
    flhano: TDBEdit;
    Label3: TLabel;
    flhIdentificacao: TDBEdit;
    Label6: TLabel;
    flhdtinicial: TDBEdit;
    Label7: TLabel;
    flhdtfinal: TDBEdit;
    Label8: TLabel;
    flhdtpgto: TDBEdit;
    efg: TUniQuery;
    bCalcular: TBitBtn;
    efgefgchave: TIntegerField;
    efgflhchave: TIntegerField;
    efgetdcodigo: TIntegerField;
    efgeflcodigo: TIntegerField;
    plDetalhe: TPanel;
    Defg: TDataSource;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    efgetdidentificacao: TStringField;
    plColaboradores: TPanel;
    plTitColaboradores: TPanel;
    DBGListaEtd: TDBGrid;
    plEventos: TPanel;
    plTitEventos: TPanel;
    plTotalLanca: TPanel;
    DBGListaEva: TDBGrid;
    Devaetd: TDataSource;
    evaetd: TUniQuery;
    evaetdevachave: TIntegerField;
    evaetdflhchave: TIntegerField;
    evaetdevfcodigo: TIntegerField;
    evaetdetdcodigo: TIntegerField;
    evaetdtevcodigo: TIntegerField;
    evaetdevavalor: TFloatField;
    evaetdevahistorico: TStringField;
    evaetdclbcodigo: TIntegerField;
    evaetdevacriacao: TDateTimeField;
    evaetdevfidentificacao: TStringField;
    evaetdcedidentificacao: TStringField;
    evaetdcedcodigo: TIntegerField;
    GBRecebidos: TGroupBox;
    plCreditos: TPanel;
    GBEmAberto: TGroupBox;
    plSaldo: TPanel;
    GBTotal: TGroupBox;
    plDebitos: TPanel;
    efi: TUniQuery;
    etdevf: TUniQuery;
    etdevfetdcodigo: TIntegerField;
    etdevfevfcodigo: TIntegerField;
    eva: TUniQuery;
    verieva: TUniQuery;
    verievaevachave: TIntegerField;
    verievaflhchave: TIntegerField;
    verievaevfcodigo: TIntegerField;
    verievaetdcodigo: TIntegerField;
    verievatevcodigo: TIntegerField;
    verievaevavalor: TFloatField;
    verievaevahistorico: TStringField;
    verievaclbcodigo: TIntegerField;
    verievaevacriacao: TDateTimeField;
    verievaevfidentificacao: TStringField;
    verievacedidentificacao: TStringField;
    verievacedcodigo: TIntegerField;
    calcpfh: TUniQuery;
    regeva: TUniQuery;
    regevaflhchave: TIntegerField;
    regevaevfcodigo: TIntegerField;
    regevaetdcodigo: TIntegerField;
    regevaeflcodigo: TIntegerField;
    regevatevcodigo: TIntegerField;
    regevaphgcodigo: TIntegerField;
    regevaevavalor: TFloatField;
    regevaevahistorico: TStringField;
    regevaclbcodigo: TIntegerField;
    regevaevacriacao: TDateTimeField;
    regevaevabase: TStringField;
    regevaevapercentual: TFloatField;
    regevaevavalorunitario: TFloatField;
    regevafclcodigo: TIntegerField;
    calcevf: TUniQuery;
    calcevfevfcodigo: TIntegerField;
    calcevfetdcodigo: TIntegerField;
    calcevfeflcodigo: TIntegerField;
    calcevftevcodigo: TIntegerField;
    calcevfphgcodigo: TIntegerField;
    calcevfevavalor: TFloatField;
    calcevfevahistorico: TStringField;
    calcevfevacriacao: TDateTimeField;
    calcevfevabase: TStringField;
    calcevffclcodigo: TIntegerField;
    calcevfflhchave: TIntegerField;
    calcevfclbcodigo: TIntegerField;
    calcevfevapercentual: TFloatField;
    calcevfevavalorunitario: TFloatField;
    calcpfhflhchave: TIntegerField;
    calcpfhevfcodigo: TIntegerField;
    calcpfhetdcodigo: TIntegerField;
    calcpfheflcodigo: TIntegerField;
    calcpfhtevcodigo: TIntegerField;
    calcpfhphgcodigo: TIntegerField;
    calcpfhevavalor: TFloatField;
    calcpfhevahistorico: TStringField;
    calcpfhclbcodigo: TIntegerField;
    calcpfhevacriacao: TDateTimeField;
    calcpfhevabase: TStringField;
    calcpfhevapercentual: TFloatField;
    calcpfhevavalorunitario: TFloatField;
    calcpfhfclcodigo: TIntegerField;
    regevaevaresumido: TStringField;
    calcpfhevaresumido: TStringField;
    calcevfevaresumido: TStringField;
    calcats: TUniQuery;
    calcatsflhchave: TIntegerField;
    calcatsevfcodigo: TIntegerField;
    calcatsetdcodigo: TIntegerField;
    calcatseflcodigo: TIntegerField;
    calcatstevcodigo: TIntegerField;
    calcatsphgcodigo: TIntegerField;
    calcatsevavalor: TFloatField;
    calcatsevahistorico: TStringField;
    calcatsclbcodigo: TIntegerField;
    calcatsevacriacao: TDateTimeField;
    calcatsevabase: TStringField;
    calcatsevapercentual: TFloatField;
    calcatsevavalorunitario: TFloatField;
    calcatsfclcodigo: TIntegerField;
    calcatsevaresumido: TStringField;
    calcscl: TUniQuery;
    calcsclflhchave: TIntegerField;
    calcsclevfcodigo: TIntegerField;
    calcscletdcodigo: TIntegerField;
    calcscleflcodigo: TIntegerField;
    calcscltevcodigo: TIntegerField;
    calcsclphgcodigo: TIntegerField;
    calcsclevavalor: TFloatField;
    calcsclevahistorico: TStringField;
    calcsclclbcodigo: TIntegerField;
    calcsclevacriacao: TDateTimeField;
    calcsclevabase: TStringField;
    calcsclevapercentual: TFloatField;
    calcsclevavalorunitario: TFloatField;
    calcsclfclcodigo: TIntegerField;
    calcsclevaresumido: TStringField;
    calcata: TUniQuery;
    calcataflhchave: TIntegerField;
    calcataevfcodigo: TIntegerField;
    calcataetdcodigo: TIntegerField;
    calcataeflcodigo: TIntegerField;
    calcatatevcodigo: TIntegerField;
    calcataphgcodigo: TIntegerField;
    calcataevavalor: TFloatField;
    calcataevahistorico: TStringField;
    calcataclbcodigo: TIntegerField;
    calcataevacriacao: TDateTimeField;
    calcataevabase: TStringField;
    calcataevapercentual: TFloatField;
    calcataevavalorunitario: TFloatField;
    calcatafclcodigo: TIntegerField;
    calcataevaresumido: TStringField;
    calcehf: TUniQuery;
    calcehfflhchave: TIntegerField;
    calcehfevfcodigo: TIntegerField;
    calcehfetdcodigo: TIntegerField;
    calcehfeflcodigo: TIntegerField;
    calcehftevcodigo: TIntegerField;
    calcehfphgcodigo: TIntegerField;
    calcehfevavalor: TFloatField;
    calcehfevahistorico: TStringField;
    calcehfclbcodigo: TIntegerField;
    calcehfevacriacao: TDateTimeField;
    calcehfevabase: TStringField;
    calcehfevapercentual: TFloatField;
    calcehfevavalorunitario: TFloatField;
    calcehffclcodigo: TIntegerField;
    calcehfevaresumido: TStringField;
    calcmja: TUniQuery;
    calcmjaflhchave: TIntegerField;
    calcmjaevfcodigo: TIntegerField;
    calcmjaetdcodigo: TIntegerField;
    calcmjaeflcodigo: TIntegerField;
    calcmjatevcodigo: TIntegerField;
    calcmjaphgcodigo: TIntegerField;
    calcmjaevavalor: TFloatField;
    calcmjaevahistorico: TStringField;
    calcmjaclbcodigo: TIntegerField;
    calcmjaevacriacao: TDateTimeField;
    calcmjaevabase: TStringField;
    calcmjaevapercentual: TFloatField;
    calcmjaevavalorunitario: TFloatField;
    calcmjafclcodigo: TIntegerField;
    calcmjaevaresumido: TStringField;
    calcanf: TUniQuery;
    calcanfflhchave: TIntegerField;
    calcanfevfcodigo: TIntegerField;
    calcanfetdcodigo: TIntegerField;
    calcanfeflcodigo: TIntegerField;
    calcanftevcodigo: TIntegerField;
    calcanfphgcodigo: TIntegerField;
    calcanfevavalor: TFloatField;
    calcanfevahistorico: TStringField;
    calcanfclbcodigo: TIntegerField;
    calcanfevacriacao: TDateTimeField;
    calcanfevabase: TStringField;
    calcanfevapercentual: TFloatField;
    calcanfevavalorunitario: TFloatField;
    calcanffclcodigo: TIntegerField;
    calcanfevaresumido: TStringField;
    calcdsr: TUniQuery;
    calcdsrdsrcodigo: TIntegerField;
    calcpfhvhfcodigo: TIntegerField;
    calcins: TUniQuery;
    calcinsflhchave: TIntegerField;
    calcinsevfcodigo: TIntegerField;
    calcinsetdcodigo: TIntegerField;
    calcinseflcodigo: TIntegerField;
    calcinstevcodigo: TIntegerField;
    calcinsphgcodigo: TIntegerField;
    calcinsevavalor: TFloatField;
    calcinsevahistorico: TStringField;
    calcinsclbcodigo: TIntegerField;
    calcinsevacriacao: TDateTimeField;
    calcinsevabase: TStringField;
    calcinsevapercentual: TFloatField;
    calcinsevavalorunitario: TFloatField;
    calcinsfclcodigo: TIntegerField;
    calcinsevaresumido: TStringField;
    rfh: TUniQuery;
    evavhf: TUniQuery;
    evavhfevachave: TIntegerField;
    evavhfvhfcodigo: TIntegerField;
    evavhfetdcodigo: TIntegerField;
    vhf: TUniQuery;
    evavhffclcodigo: TIntegerField;
    vhfvhfcodigo: TIntegerField;
    vhfetdcodigo: TIntegerField;
    vhffclcodigo: TIntegerField;
    calcirp: TUniQuery;
    calctco: TUniQuery;
    calctcoflhchave: TIntegerField;
    calctcoevfcodigo: TIntegerField;
    calctcoetdcodigo: TIntegerField;
    calctcoeflcodigo: TIntegerField;
    calctcotevcodigo: TIntegerField;
    calctcophgcodigo: TIntegerField;
    calctcoevavalor: TFloatField;
    calctcoevahistorico: TStringField;
    calctcoclbcodigo: TIntegerField;
    calctcoevacriacao: TDateTimeField;
    calctcoevabase: TStringField;
    calctcoevapercentual: TFloatField;
    calctcoevavalorunitario: TFloatField;
    calctcofclcodigo: TIntegerField;
    calctcoevaresumido: TStringField;
    plcalculandofolha: TPanel;
    mostra: TProgressBar;
    iti: TUniQuery;
    calcefg: TUniQuery;
    calcevfefidtfinal: TDateField;
    procedure FormShow(Sender: TObject);
    procedure bCalcularClick(Sender: TObject);
    procedure DefgDataChange(Sender: TObject; Field: TField);
    procedure DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaEvaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaEtdTitleClick(Column: TColumn);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fflhcalcular: Tfflhcalcular;

  // Início ID do Módulo fflhcalcular
const
  vplidmd = '02.12.90.001-03';
  // Fim ID do Módulo fflhcalcular

implementation

uses uflhCalcula;

{$R *.dfm}

procedure Tfflhcalcular.bCalcularClick(Sender: TObject);
var
  dt1: string;
  i: Integer;
  vlFixaPode: Boolean;
begin
  consulta.Close;
  consulta.SQL.Text := 'DELETE FROM eva WHERE tevcodigo = 1 AND eva.flhchave =' + flhchave.Field.asstring;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'DELETE FROM eva WHERE tevcodigo = 3 AND eva.flhchave =' + flhchave.Field.asstring;
  consulta.ExecSQL;

  etdevf.Close;
  etdevf.Open;
  etdevf.First;
  mostra.Max := 20;

  mostra.Position := 0;
  plcalculandofolha.caption := 'Início do Calculo';
  application.ProcessMessages;

  while not etdevf.Eof do
  begin
    dt1 := registroflhdtinicial.asstring;

    efi.Close;
    // efi.ParamByName('datafinal').AsDate:=registroflhdtinicial.AsFloat;
    efi.ParamByName('etdcodigo').AsInteger := etdevfetdcodigo.AsInteger;
    efi.ParamByName('evfcodigo').AsInteger := etdevfevfcodigo.AsInteger;
    efi.Open;

    efi.First;
    while not efi.Eof do
    begin

      if efi.FieldByName('efidtfinal').AsFloat <= registroflhdtinicial.AsFloat then
      begin
        eva.Close;
        eva.SQL.Text := 'SELECT evachave, etdcodigo, evavalor FROM eva WHERE  evfcodigo=' + efi.FieldByName('evfcodigo').asstring + '   and etdcodigo=' +
          efi.FieldByName('etdcodigo').asstring + '  and flhchave=' + registroflhchave.asstring;
        eva.Open;

        verieva.Close;
        verieva.ParamByName('etdcodigo').AsInteger := etdevfetdcodigo.AsInteger;
        verieva.ParamByName('flhchave').asstring := registroflhchave.asstring;
        verieva.Open;

        if (not eva.IsEmpty) and (verieva.IsEmpty) then
        begin

          consulta.Close;
          consulta.SQL.Text := 'delete from efg where etdcodigo=' + efi.FieldByName('etdcodigo').asstring;
          consulta.ExecSQL;

          eva.Delete;
        end;
      end;

      efi.Next;

    end;
    etdevf.Next;
  end;

  // calculo de valores fixos
  mostra.Position := 1;
  plcalculandofolha.caption := 'Eventos Fixos';
  application.ProcessMessages;

  calcevf.Close;
  calcevf.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcevf.ParamByName('pClbcodigo').AsInteger := acesso.Usuario;
  calcevf.ParamByName('pTflcodigo').AsInteger := tflcodigo.Field.AsInteger;
  calcevf.ParamByName('pdtFinal').AsDate := flhdtfinal.Field.AsDateTime;
  calcevf.Open;

  while not calcevf.Eof do
  begin
    vlFixaPode := true;
    if calcevfefidtfinal.asstring <> '' then
    begin
      if calcevfefidtfinal.AsFloat < flhdtinicial.Field.AsDateTime then
      begin
        vlFixaPode := false;
      end;

    end;

    if vlFixaPode then
    begin
      regeva.Close;
      regeva.ParamByName('FlhChave').AsInteger := calcevf.FieldByName('flhchave').AsInteger;
      regeva.ParamByName('evfcodigo').AsInteger := calcevf.FieldByName('evfcodigo').AsInteger;
      regeva.ParamByName('evavalor').AsCurrency := calcevf.FieldByName('evavalor').AsCurrency;
      regeva.ParamByName('etdcodigo').AsInteger := calcevf.FieldByName('etdcodigo').AsInteger;
      regeva.Open;

      if regeva.IsEmpty then
        regeva.Append
      else
        regeva.Edit;
      for i := 0 to regeva.FieldCount - 1 do
      begin
        regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcevf.FieldByName(regeva.Fields[i].FieldName).asstring
      end;

      regeva.Post;
    end;

    calcevf.Next;
  end;

  // eventos progamados
  mostra.Position := 2;
  plcalculandofolha.caption := 'Eventos Programados';
  application.ProcessMessages;

  calcpfh.Close;
  calcpfh.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcpfh.Open;

  while not calcpfh.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcpfh.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcpfh.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcpfh.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcpfh.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcpfh.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcpfh.Next;
  end;

  mostra.Position := 3;
  plcalculandofolha.caption := 'DSR Eventos Programdos';
  application.ProcessMessages;

  // dsr dos eventos programados
  calcpfh.First;
  while not calcpfh.Eof do
  begin
    calcdsr.Close;
    calcdsr.ParamByName('vhfcodigo').AsInteger := calcpfhvhfcodigo.AsInteger;
    calcdsr.Open;

    if calcdsrdsrcodigo.AsInteger > 1 then
    begin

      regeva.Close;
      regeva.ParamByName('FlhChave').AsInteger := calcpfh.FieldByName('flhchave').AsInteger;
      regeva.ParamByName('evfcodigo').AsInteger := calcpfh.FieldByName('evfcodigo').AsInteger;
      regeva.ParamByName('evavalor').AsCurrency := calcpfh.FieldByName('evavalor').AsCurrency / 6;
      regeva.ParamByName('etdcodigo').AsInteger := calcpfh.FieldByName('etdcodigo').AsInteger;
      regeva.Open;

      if regeva.IsEmpty then
        regeva.Append
      else
        regeva.Edit;
      for i := 0 to regeva.FieldCount - 1 do
      begin
        regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcpfh.FieldByName(regeva.Fields[i].FieldName).asstring
      end;

      regeva.FieldByName('evahistorico').asstring := 'DSR ' + regeva.FieldByName('evahistorico').asstring;
      regeva.FieldByName('evavalor').AsCurrency := calcpfh.FieldByName('evavalor').AsCurrency / 6;

      regeva.Post;
    end;

    calcpfh.Next;
  end;

  // eventos por tenpo de serviço
  mostra.Position := 4;
  plcalculandofolha.caption := 'Tempo de Serviço';
  application.ProcessMessages;

  calcats.Close;
  calcats.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcats.ParamByName('pClbCodigo').AsInteger := acesso.Usuario;

  calcats.Open;

  while not calcats.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcats.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcats.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcats.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcats.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      if regeva.Fields[i].FieldName = 'evavalor' then
      begin
        if calcats.FieldByName(regeva.Fields[i].FieldName).asstring = '' then
          regeva.FieldByName(regeva.Fields[i].FieldName).asstring := '0'
        else
          regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcats.FieldByName(regeva.Fields[i].FieldName).asstring;

      end
      else
        regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcats.FieldByName(regeva.Fields[i].FieldName).asstring;
    end;

    regeva.Post;

    calcats.Next;
  end;

  // eventos des substituições
  mostra.Position := 5;
  plcalculandofolha.caption := 'Tempo de Substituições';
  application.ProcessMessages;

  calcscl.Close;
  calcscl.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcscl.Open;

  while not calcscl.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcscl.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcscl.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcscl.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcscl.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcscl.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcscl.Next;
  end;

  // eventos des atividae adicionais
  mostra.Position := 6;
  plcalculandofolha.caption := 'Atividades Adicionais';
  application.ProcessMessages;

  calcata.Close;
  calcata.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcata.Open;

  while not calcata.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcata.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcata.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcata.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcata.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcata.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcata.Next;
  end;

  // dsr das atividades adicionais
  mostra.Position := 7;
  plcalculandofolha.caption := 'DSR Atividades Adicionais';
  application.ProcessMessages;

  calcata.First;
  while not calcata.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcata.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcata.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcata.FieldByName('evavalor').AsCurrency / 6;
    regeva.ParamByName('etdcodigo').AsInteger := calcata.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcata.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.FieldByName('evahistorico').asstring := 'DSR ' + regeva.FieldByName('evahistorico').asstring;
    regeva.FieldByName('evavalor').AsCurrency := calcata.FieldByName('evavalor').AsCurrency / 6;

    regeva.Post;

    calcata.Next;
  end;

  // eventos des eventos a credito
  mostra.Position := 8;
  plcalculandofolha.caption := 'Eventos a Crédito';
  application.ProcessMessages;

  calcehf.Close;
  calcehf.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcehf.ParamByName('pcedcodigo').AsInteger := 1;
  calcehf.Open;

  while not calcehf.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcehf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcehf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcehf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcehf.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcehf.Next;
  end;

  // dsr des eventos a credito
  mostra.Position := 9;
  plcalculandofolha.caption := 'DSR Eventos a Crédito';
  application.ProcessMessages;

  calcehf.First;
  while not calcehf.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcehf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcehf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency / 6;
    regeva.ParamByName('etdcodigo').AsInteger := calcehf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcehf.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.FieldByName('evahistorico').asstring := 'DSR ' + regeva.FieldByName('evahistorico').asstring;
    regeva.FieldByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency / 6;

    regeva.Post;

    calcehf.Next;
  end;

  // eventos des eventos a debito
  mostra.Position := 10;
  plcalculandofolha.caption := 'Eventos a Débito';
  application.ProcessMessages;

  calcehf.Close;
  calcehf.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcehf.ParamByName('pcedcodigo').AsInteger := 0;
  calcehf.Open;

  while not calcehf.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcehf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcehf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcehf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcehf.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcehf.Next;
  end;

  // dsr des eventos a debito

  mostra.Position := 11;
  plcalculandofolha.caption := 'DSR Eventos a Débito';
  application.ProcessMessages;

  calcehf.First;
  while not calcehf.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcehf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcehf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency / 6;
    regeva.ParamByName('etdcodigo').AsInteger := calcehf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcehf.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.FieldByName('evahistorico').asstring := 'DSR ' + regeva.FieldByName('evahistorico').asstring;
    regeva.FieldByName('evavalor').AsCurrency := calcehf.FieldByName('evavalor').AsCurrency / 6;

    regeva.Post;

    calcehf.Next;
  end;

  // eventos de ajudas de custo
  mostra.Position := 12;
  plcalculandofolha.caption := 'Ajudas de Custo';
  application.ProcessMessages;

  calcmja.Close;
  calcmja.ParamByName('pFlhChave').AsInteger := flhchave.Field.AsInteger;
  calcmja.Open;

  while not calcmja.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcmja.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcmja.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcmja.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcmja.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcmja.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calcmja.Next;
  end;

  // adicional por capacitação
  mostra.Position := 13;
  plcalculandofolha.caption := 'Capacitação';
  application.ProcessMessages;

  calcanf.Close;
  calcanf.ParamByName('pflhchave').AsInteger := flhchave.Field.AsInteger;
  calcanf.ParamByName('pclbcodigo').AsInteger := acesso.Usuario;
  calcanf.Open;

  while not calcanf.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcanf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcanf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcanf.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcanf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      if regeva.Fields[i].FieldName = 'evavalor' then
      begin

        if calcanf.FieldByName(regeva.Fields[i].FieldName).asstring = '' then
          regeva.FieldByName(regeva.Fields[i].FieldName).asstring := '0'
        else
          regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcanf.FieldByName(regeva.Fields[i].FieldName).asstring;
      end
      else
        regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcanf.FieldByName(regeva.Fields[i].FieldName).asstring;
    end;

    regeva.Post;

    calcanf.Next;
  end;

  // traabalhos de concluisao
  mostra.Position := 14;
  plcalculandofolha.caption := 'Trabalhos Adicionais';
  application.ProcessMessages;

  calctco.Close;
  calctco.ParamByName('pflhchave').AsInteger := flhchave.Field.AsInteger;
  calctco.Open;

  while not calctco.Eof do
  begin
    regeva.Close;
    regeva.ParamByName('FlhChave').AsInteger := calcanf.FieldByName('flhchave').AsInteger;
    regeva.ParamByName('evfcodigo').AsInteger := calcanf.FieldByName('evfcodigo').AsInteger;
    regeva.ParamByName('evavalor').AsCurrency := calcanf.FieldByName('evavalor').AsCurrency;
    regeva.ParamByName('etdcodigo').AsInteger := calcanf.FieldByName('etdcodigo').AsInteger;
    regeva.Open;

    if regeva.IsEmpty then
      regeva.Append
    else
      regeva.Edit;
    for i := 0 to regeva.FieldCount - 1 do
    begin
      regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calctco.FieldByName(regeva.Fields[i].FieldName).asstring
    end;

    regeva.Post;

    calctco.Next;
  end;

  iti.Close;
  iti.SQL.Text := 'select * from iti';
  iti.Open;

  if (not iti.IsEmpty) then
  begin





    // CalculaFolha(Application, zcone, registroflhchave.AsInteger, acesso.usuario);

    consulta.Close;
    consulta.SQL.Text := 'SELECT * FROM efg WHERE flhchave=' + registroflhchave.asstring + ' and  etdcodigo NOT IN (SELECT etdcodigo FROM eva WHERE eva.flhchave=' +
      registroflhchave.asstring + ' )';
    consulta.Open;

    while not consulta.Eof do
    begin
      consulta.Delete;
    end;

    efg.Close;
    efg.Params[0].AsInteger := Self.registroflhchave.AsInteger;
    efg.Open;
    mostra.Position := 15;
    plcalculandofolha.caption := 'INSS e IRPF';
    application.ProcessMessages;

    efg.First;
    while not efg.Eof do
    begin

      // calculo do inss
      calcins.Close;
      calcins.ParamByName('pflhchave').AsInteger := flhchave.Field.AsInteger;
      calcins.ParamByName('pclbcodigo').AsInteger := acesso.Usuario;
      calcins.ParamByName('petdcodigo').AsInteger := efgetdcodigo.AsInteger;
      calcins.Open;

      while not calcins.Eof do
      begin
        regeva.Close;
        regeva.ParamByName('FlhChave').AsInteger := calcins.FieldByName('flhchave').AsInteger;
        regeva.ParamByName('evfcodigo').AsInteger := calcins.FieldByName('evfcodigo').AsInteger;
        regeva.ParamByName('evavalor').AsCurrency := calcins.FieldByName('evavalor').AsCurrency;
        regeva.ParamByName('etdcodigo').AsInteger := calcins.FieldByName('etdcodigo').AsInteger;
        regeva.Open;

        if regeva.IsEmpty then
          regeva.Append
        else
          regeva.Edit;
        for i := 0 to regeva.FieldCount - 1 do
        begin
          regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcins.FieldByName(regeva.Fields[i].FieldName).asstring
        end;

        regeva.Post;

        calcins.Next;
      end;

      // calculo do irpf
      calcirp.Close;
      calcirp.ParamByName('pflhchave').AsInteger := flhchave.Field.AsInteger;
      calcirp.ParamByName('pclbcodigo').AsInteger := acesso.Usuario;
      calcirp.ParamByName('petdcodigo').AsInteger := efgetdcodigo.AsInteger;
      calcirp.Open;

      while not calcirp.Eof do
      begin
        if calcirp.FieldByName('evavalor').AsCurrency > 0 then
        begin
          regeva.Close;
          regeva.ParamByName('FlhChave').AsInteger := calcirp.FieldByName('flhchave').AsInteger;
          regeva.ParamByName('evfcodigo').AsInteger := calcirp.FieldByName('evfcodigo').AsInteger;
          regeva.ParamByName('evavalor').AsCurrency := calcirp.FieldByName('evavalor').AsCurrency;
          regeva.ParamByName('etdcodigo').AsInteger := calcirp.FieldByName('etdcodigo').AsInteger;
          regeva.Open;

          if regeva.IsEmpty then
            regeva.Append
          else
            regeva.Edit;
          for i := 0 to regeva.FieldCount - 1 do
          begin
            regeva.FieldByName(regeva.Fields[i].FieldName).asstring := calcirp.FieldByName(regeva.Fields[i].FieldName).asstring
          end;

          regeva.Post;
        end;

        calcirp.Next;
      end;

      efg.Next;
    end;
  end;
  mostra.Position := 16;
  plcalculandofolha.caption := 'Finalização';
  application.ProcessMessages;

  vhf.Close;
  vhf.Open;
  evavhf.Close;
  evavhf.ParamByName('flhchave').asstring := Self.flhchave.Field.asstring;
  evavhf.Open;
  while not evavhf.Eof do
  begin
    if evavhf.FieldByName('fclcodigo').AsInteger = 0 then
    begin
      if vhf.Locate('etdcodigo', evavhfetdcodigo.AsInteger, []) then
      begin
        if evavhfevachave.asstring <> '' then
        begin
          consulta.Close;
          consulta.SQL.Text := 'update eva set vhfcodigo=' + vhfvhfcodigo.asstring + ' where evachave=' + evavhfevachave.asstring;
          consulta.ExecSQL
        end;
      end;
    end
    else
    begin
      if vhf.Locate('etdcodigo;fclcodigo', VarArrayOf([evavhf.FieldByName('etdcodigo').AsInteger, evavhf.FieldByName('fclcodigo').AsInteger]), []) then
      begin
        if evavhfevachave.asstring <> '' then
        begin
          consulta.Close;
          consulta.SQL.Text := 'update eva set vhfcodigo=' + vhfvhfcodigo.asstring + ' where evachave=' + evavhfevachave.asstring;
          consulta.ExecSQL
        end;
      end;
    end;
    evavhf.Next;
  end;

  mostra.Position := 17;
  plcalculandofolha.caption := 'Resumo';
  application.ProcessMessages;

  calcefg.Close;
  calcefg.ParamByName('flhchave').AsInteger := flhchave.Field.AsInteger;
  calcefg.ExecSQL;

  plcalculandofolha.caption := 'Criando Resumo';
  application.ProcessMessages;

  consulta.Close;
  consulta.SQL.Text := 'update eva set eflcodigo=2 where flhchave=' + flhchave.Field.asstring;
  consulta.ExecSQL;

  rfh.Close;
  rfh.ParamByName('flhchave').AsInteger := flhchave.Field.AsInteger;
  rfh.ExecSQL;

  mostra.Position := 20;
  plcalculandofolha.caption := 'Concluida!';
  application.ProcessMessages;
  efg.Close;
  efg.ParamByName('flhchave').AsInteger := flhchave.Field.AsInteger;
  efg.Open;

  efg.First;
  while not efg.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT evachave FROM eva WHERE etdcodigo=' + efgetdcodigo.asstring + ' and flhchave=' + flhchave.Field.asstring;
    consulta.Open;
    if consulta.IsEmpty then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from efg where efgchave=' + efgefgchave.asstring;
      consulta.ExecSQL;
    end;

    efg.Next;
  end;

  sleep(1000);

  showmessage('Folha calculada com sucesso!');
  bconfirma.Enabled := true;
  bcancela.Enabled := false;
  bconfirma.Click;
end;

procedure Tfflhcalcular.bconfirmaClick(Sender: TObject);
begin

  if registro.State = dsbrowse then
    registro.Edit;

  registroeflcodigo.AsInteger := 2;
  inherited;

end;

procedure Tfflhcalcular.DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfflhcalcular.DBGListaEtdTitleClick(Column: TColumn);
begin
  inherited;
  efg.IndexFieldNames := Column.FieldName;
end;

procedure Tfflhcalcular.DBGListaEvaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfflhcalcular.DefgDataChange(Sender: TObject; Field: TField);
var
  vlDebitos: double;
  vlCreditos: double;
  vlSaldo: double;

begin
  inherited;
  if efg.Active then
  begin
    if efg.State = dsbrowse then
    begin
      vlDebitos := 0;
      vlCreditos := 0;
      vlSaldo := 0;

      if efgetdcodigo.asstring <> '' then
      begin
        evaetd.Close;
        evaetd.Params[0].AsInteger := registroflhchave.AsInteger;
        evaetd.Params[1].AsInteger := efgetdcodigo.AsInteger;
        evaetd.Open;
      end;

      if not evaetd.IsEmpty then
      begin
        evaetd.DisableControls;
        while not evaetd.Eof do
        begin
          if Self.evaetdcedcodigo.AsInteger = 0 then
            vlDebitos := vlDebitos + Self.evaetdevavalor.AsCurrency
          else
            vlCreditos := vlCreditos + Self.evaetdevavalor.AsCurrency;

          evaetd.Next;
        end;
      end;

      if evaetd.Active then
      begin
        evaetd.First;
        evaetd.EnableControls;
      end;

      vlSaldo := vlCreditos - vlDebitos;
      plDebitos.caption := formatfloat('##,###,##0.00', vlDebitos);
      plCreditos.caption := formatfloat('##,###,##0.00', vlCreditos);
      plSaldo.caption := formatfloat('##,###,##0.00', vlSaldo);
    end;
  end;
end;

procedure Tfflhcalcular.FormShow(Sender: TObject);
begin
  IdModulo := vplidmd;
  inherited;

end;

end.
