unit ufimpprolay01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni,
  Data.DB, MemDS, DBAccess, ufuncoes;

type
  Tfimpprolay01 = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    b1Arquivo: TBitBtn;
    bcancela: TBitBtn;
    mostra: TProgressBar;
    Panel1: TPanel;
    Label1: TLabel;
    edArquivo: TEdit;
    btLocalizar: TButton;
    OpenTextFileDialog: TOpenTextFileDialog;
    texto: TMemo;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    propronomereduzido: TStringField;
    promarcodigo: TIntegerField;
    progrpcodigo: TIntegerField;
    protrbcodigo: TIntegerField;
    proicmcodigo: TStringField;
    prounicodigo: TIntegerField;
    protpocodigo: TIntegerField;
    proprominimo: TFloatField;
    proproproprio: TStringField;
    propronumserie: TStringField;
    proproncm: TStringField;
    proprocomposto: TStringField;
    proprobalanca: TStringField;
    proprotecla: TStringField;
    proprovalidade: TIntegerField;
    proproestoque: TStringField;
    proproobs: TStringField;
    proproreferencia: TStringField;
    proprounitrib: TIntegerField;
    proproqtdtrib: TFloatField;
    prosipcodigo: TIntegerField;
    proproanpcodigo: TIntegerField;
    proenpcodigo: TIntegerField;
    propropedecomple: TIntegerField;
    propropededescrserv: TIntegerField;
    propropedetecnicoserv: TIntegerField;
    progracodigo: TIntegerField;
    prodprcodigo: TIntegerField;
    proprousagrade: TIntegerField;
    procstcodigo: TStringField;
    grp: TUniQuery;
    tgr: TUniQuery;
    Uni: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    grptgrcodigo: TIntegerField;
    tgrtgrcodigo: TIntegerField;
    tgrtgridentificacao: TStringField;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    unituncodigo: TIntegerField;
    pun: TUniQuery;
    punprocodigo: TIntegerField;
    punpunquantidade: TFloatField;
    pununicodigo: TIntegerField;
    punpunmultiplicador: TFloatField;
    punpunidentificacao: TStringField;
    pundgrcodigo: TIntegerField;
    punpuncusto: TFloatField;
    punpunmargem: TFloatField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    pununicodigobase: TIntegerField;
    punpunbarra: TStringField;
    puntuncodigo: TIntegerField;
    punpununitrib: TIntegerField;
    punpunqtdtrib: TFloatField;
    punpunbarrasistema: TIntegerField;
    punpunmargemap: TFloatField;
    punpunpercacresavap: TFloatField;
    uniuninome: TStringField;
    erros: TMemo;
    b2Arquivo: TButton;
    mar: TUniQuery;
    marmarcodigo: TIntegerField;
    marmaridentificacao: TStringField;
    cpb: TUniQuery;
    cpbcpbcodigo: TIntegerField;
    cpbprocodigo: TIntegerField;
    cpbcpbcodbalanca: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure proAfterInsert(DataSet: TDataSet);
    procedure uniAfterInsert(DataSet: TDataSet);
    procedure b1ArquivoClick(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure punPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure b2ArquivoClick(Sender: TObject);
  private
    { Private declarations }
    FZCone: TUniConnection;
    procedure SetZCone(const Value: TUniConnection);
    procedure processartexto;
    procedure processartexto1;
  public
    { Public declarations }
  published
    property ZCone: TUniConnection read FZCone write SetZCone;

  end;

var
  fimpprolay01: Tfimpprolay01;

implementation

{$R *.dfm}

procedure Tfimpprolay01.SetZCone(const Value: TUniConnection);
var
  i: Integer;
begin
  FZCone := Value;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TUniQuery then
      (Self.Components[i] as TUniQuery).Connection := Self.ZCone;
  end;
end;

procedure Tfimpprolay01.uniAfterInsert(DataSet: TDataSet);
begin
  unituncodigo.AsInteger := 9;
end;

procedure Tfimpprolay01.b1ArquivoClick(Sender: TObject);
begin
  processartexto;
end;

function StrIsInteger(const S: string): boolean;
begin
  try
    StrToInt(S);
    Result := true;
  except
    Result := false;
  end;
end;

procedure Tfimpprolay01.processartexto;
var
  vlLinha: String;
  vlLinha1: String;

  vlGrpCodigo: Integer;
  vlGrpIdentificacao: string;
  vlTgrCodigo: string;
  vlTgrIdentificacao: string;
  vlValor: String;
  i: Integer;

begin


  if not pro.Active then
    pro.Open;

 { while not pro.Eof do
  begin
    try
      pro.Delete;
    except

    end;
  end; }



  if not cpb.Active then
    cpb.Open;

 { while not cpb.Eof do
  begin
    try
      cpb.Delete;
    except

    end;
  end;}

  if not pun.Active then
    pun.Open;

 { while not pun.Eof do
  begin
    try
      pun.Delete;
    except

    end;
  end;}

  if not grp.Active then
    grp.Open;

 { while not grp.Eof do
  begin
    try
      grp.Delete;
    except
      grp.Next;
    end;
  end;}

  if not tgr.Active then
    tgr.Open;

{  while not tgr.Eof do
  begin
    try
      tgr.Delete;
    except

    end;
  end; }

  if not Uni.Active then
    Uni.Open;

{  while not Uni.Eof do
  begin
    try
      Uni.Delete;
    except
      Uni.Next;
    end;
  end;}

  mostra.max := texto.Lines.Count;
  mostra.Position := 0;
  application.ProcessMessages;

  vlGrpCodigo := 0;
  for i := 0 to texto.Lines.Count - 1 do
  begin
    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    vlLinha := texto.Lines[i];

    if (pos('GRUPO......:', vlLinha) > 0) then
    begin
      try
        vlGrpCodigo := vlGrpCodigo + 1;

        vlTgrCodigo := sonumeros(trim(copy(vlLinha, 13, 5)));
        vlTgrIdentificacao := trim(copy(vlLinha, 19, 15));

        if tgr.Locate('tgridentificacao', vlTgrIdentificacao, [locaseinsensitive]) then
          tgr.Edit
        else
        begin
          if tgr.Locate('tgrcodigo', StrToInt(vlTgrCodigo), []) then
            tgr.Edit
          else
            tgr.Append;
        end;

        tgrtgrcodigo.AsString := vlTgrCodigo;
        tgrtgridentificacao.AsString := vlTgrIdentificacao;
        tgr.Post;

        vlGrpIdentificacao := texto.Lines[i + 5];
        vlGrpIdentificacao := trim(copy(vlGrpIdentificacao, 19, 15));

        if grp.Locate('grpidentificacao', vlGrpIdentificacao, [locaseinsensitive]) then
          grp.Edit
        else
        begin
          if grp.Locate('grpcodigo', vlGrpCodigo, []) then
            grp.Edit
          else
            grp.Append;
        end;

        grpgrpcodigo.AsInteger := vlGrpCodigo;

        grpgrpidentificacao.AsString := vlGrpIdentificacao;
        grptgrcodigo.AsString := vlTgrCodigo;

        grp.Post;
      except
        if grp.State <> dsbrowse then
          grp.Cancel;

        vlGrpCodigo := 1;
        erros.Lines.Add(texto.Lines[i]);
      end;
      vlGrpCodigo := grpgrpcodigo.AsInteger;
    end;
    vlLinha := texto.Lines[i];

    if (copy(vlLinha, 1, 1) <> ' ') and (StrIsInteger(copy(vlLinha, 1, 6))) then
    begin

      if trim(copy(vlLinha, 7, 40)) <> '' then
      begin
        // try

        if pro.Locate('procodigo', StrToInt(copy(vlLinha, 1, 6)), []) then
          pro.Edit
        else
          pro.Append;

        proprocodigo.AsString := copy(vlLinha, 1, 6);
        propronome.AsString := trim(copy(vlLinha, 7, 40));

        propronome.AsString := StringReplace(propronome.AsString, 'UN/001', '',  [rfReplaceAll, rfIgnoreCase]);
        propronome.AsString :=StringReplace(propronome.AsString, 'KG/001', '',  [rfReplaceAll, rfIgnoreCase]);
        propronome.AsString :=StringReplace(propronome.AsString, 'DS/001', '',  [rfReplaceAll, rfIgnoreCase]);

        propronomereduzido.AsString := StringReplace(propronomereduzido.AsString, 'UN/001', '',  [rfReplaceAll, rfIgnoreCase]);
        propronomereduzido.AsString := StringReplace(propronomereduzido.AsString, 'KG/001', '',  [rfReplaceAll, rfIgnoreCase]);
        propronomereduzido.AsString := StringReplace(propronomereduzido.AsString, 'DS/001', '',  [rfReplaceAll, rfIgnoreCase]);


        promarcodigo.AsInteger := 1;
        if grp.Locate('grpcodigo', vlGrpCodigo, []) then
          progrpcodigo.AsInteger := vlGrpCodigo
        else
          progrpcodigo.AsInteger := 1;
        protrbcodigo.AsInteger := 1;
        proicmcodigo.AsString := '00';

        if (pos(' KG/0', vlLinha) > 0) then
        begin
          if Uni.Locate('unisimbolo', 'KG', []) then
          begin
            prounicodigo.AsInteger := uniunicodigo.AsInteger;
          end
          else
          begin
            Uni.Append;
            uniunisimbolo.AsString := 'KG';
            uniuninome.AsString := 'QUILO';
            Uni.Post;
          end;
          proprobalanca.AsString := '1';

        end;

        if (pos(' UN/0', vlLinha) > 0) then
        begin
          if Uni.Locate('unisimbolo', 'UN', []) then
          begin
            prounicodigo.AsInteger := uniunicodigo.AsInteger;
          end
          else
          begin
            Uni.Append;
            uniunisimbolo.AsString := 'UN';
            uniuninome.AsString := 'UNIDADE';
            Uni.Post;
          end;
          proprobalanca.AsString := '0';
          proprotecla.AsString := '';
        end;

        prounicodigo.AsInteger := uniunicodigo.AsInteger;
        protpocodigo.AsInteger := 0;
        proprominimo.AsFloat := 0;
        proproproprio.AsString := '';
        propronumserie.AsString := '0';
        proproncm.AsString := '';
        proprocomposto.AsString := '0';

        proprovalidade.AsInteger := 0;
        proproestoque.AsString := '0';
        proproobs.AsString := '';
        proproreferencia.AsString := '';
        proprounitrib.AsInteger := prounicodigo.AsInteger;
        proproqtdtrib.AsFloat := 1;
        prosipcodigo.AsInteger := 1;
        proproanpcodigo.AsInteger := 0;
        proenpcodigo.AsInteger := 0;
        propropedecomple.AsInteger := 0;
        propropededescrserv.AsInteger := 0;
        propropedetecnicoserv.AsInteger := 0;
        // progracodigo.AsInteger := 0;
        prodprcodigo.AsInteger := 1;
        proprousagrade.AsInteger := 0;
        procstcodigo.AsString := '000';

        pro.Post;


        if (pos(' KG/0', vlLinha) > 0) then
        begin


          if cpb.Locate('procodigo', proprocodigo.AsString, []) then
            cpb.Edit
          else
            cpb.Append;

          cpbprocodigo.AsString := proprocodigo.AsString;
          cpbcpbcodbalanca.AsString := proprocodigo.AsString;
          cpb.Post;

        end;





        if not pun.Locate('procodigo', proprocodigo.AsInteger, []) then
          pun.Append
        else
          pun.Edit;

        vlValor := trim(copy(vlLinha, 95, 15));

        punprocodigo.AsInteger := proprocodigo.AsInteger;
        pununicodigo.AsInteger := prounicodigo.AsInteger;
        punpunmultiplicador.AsFloat := 1;
        punpunquantidade.AsFloat := 1;
        punpunidentificacao.AsString := '1x' + uniunisimbolo.AsString;
        pundgrcodigo.AsInteger := 1;
        punpuncusto.AsFloat := 0;
        punpunmargem.AsFloat := 0;
        punpunprecoav.AsString := vlValor;
        punpunprecoap.AsString := vlValor;
        pununicodigobase.AsInteger := prounicodigo.AsInteger;
        punpunbarra.AsString := '0000000';
        puntuncodigo.AsInteger := 9;
        punpununitrib.AsInteger := prounicodigo.AsInteger;
        punpunqtdtrib.AsFloat := 1;
        punpunbarrasistema.AsInteger := 0;
        punpunmargemap.AsFloat := 0;
        punpunpercacresavap.AsFloat := 0;

        pun.Post;

        { except
          if pro.State <> dsbrowse then
          pro.Cancel;

          erros.Lines.Add(texto.Lines[i]);
          end; }
      end;
    end;

  end;
end;

procedure Tfimpprolay01.processartexto1;
var
  vlLinha: String;
  vlLinha1: String;

  vlGrpCodigo: Integer;
  vlGrpIdentificacao: string;
  vlTgrCodigo: string;
  vlTgrIdentificacao: string;
  vlMarca: string;
  vlBarra: String;
  vlValor: String;
  i: Integer;

begin

  if not pro.Active then
    pro.Open;

  if not pun.Active then
    pun.Open;

  if not tgr.Active then
    tgr.Open;

  if not Uni.Active then
    Uni.Open;

  if not mar.Active then
    mar.Open;

  mostra.max := texto.Lines.Count;
  mostra.Position := 0;
  application.ProcessMessages;

  vlGrpCodigo := 0;
  for i := 0 to texto.Lines.Count - 1 do
  begin
    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    vlLinha := texto.Lines[i];

    if (copy(vlLinha, 1, 1) <> ' ') and (StrIsInteger(copy(vlLinha, 1, 6))) then
    begin

      if trim(copy(vlLinha, 7, 40)) <> '' then
      begin
        try

          if pro.Locate('procodigo', StrToInt(copy(vlLinha, 1, 6)), []) then
          begin
            pro.Edit;

            vlMarca := trim(copy(vlLinha, 93, 20));
            if mar.Locate('maridentificacao', vlMarca, []) then
            begin
              promarcodigo.AsString := marmarcodigo.AsString;
            end
            else
            begin
              mar.Append;
              marmaridentificacao.AsString := vlMarca;
              mar.Post;
              promarcodigo.AsString := marmarcodigo.AsString;
            end;

            proproncm.AsString := trim(copy(vlLinha, 114, 10));

            pro.Post;
          end;

          if pun.Locate('procodigo', StrToInt(copy(vlLinha, 1, 6)), []) then
          begin
            pun.Edit;

            vlBarra := trim(copy(vlLinha, 127, 20));

            punpunbarra.AsString := vlBarra;

            pun.Post;

          end;
        except
          if pro.State <> dsbrowse then
            pro.Cancel;

          if mar.State <> dsbrowse then
            mar.Cancel;

          if pun.State <> dsbrowse then
            pun.Cancel;

          erros.Lines.Add(texto.Lines[i]);
        end;
      end;
    end;

  end;
end;

procedure Tfimpprolay01.punPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  showmessage(E.Message);
end;

procedure Tfimpprolay01.b2ArquivoClick(Sender: TObject);
begin
  processartexto1;
end;

procedure Tfimpprolay01.btLocalizarClick(Sender: TObject);
begin
  texto.Lines.Text := '';
  OpenTextFileDialog.Execute;
  edArquivo.Text := OpenTextFileDialog.FileName;
  if fileexists(edArquivo.Text) then
  begin
    b1Arquivo.Enabled := true;
    texto.Lines.LoadFromFile(edArquivo.Text);
  end
  else
    b1Arquivo.Enabled := false;

end;

procedure Tfimpprolay01.FormShow(Sender: TObject);
begin
  SetZCone(FZCone);
end;

procedure Tfimpprolay01.proAfterInsert(DataSet: TDataSet);
begin
  proprobalanca.AsInteger := 0;
  propronumserie.AsInteger := 0;
  proprocomposto.AsInteger := 0;
  protrbcodigo.AsInteger := 1;
  proprobalanca.AsInteger := 0;
  proprovalidade.AsInteger := 0;
  prosipcodigo.AsInteger := 1;
  propropededescrserv.AsInteger := 1;
  propropedetecnicoserv.AsInteger := 0;
  proprousagrade.AsInteger := 0;

end;

end.
