unit ulrdc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrardc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils, Uni,
  uPegaBase, Data.DB, ufuncoes, MemDS, DBAccess;

type
  Tlrdc = class(Tlfrmbase)
    frardc: Tfrardc;
    dtl: TUniQuery;
    procedure FormActivate(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vch: string;
  end;

var
  lrdc: Tlrdc;

implementation

{$R *.dfm}

function RegistraCartoesTEF(AOwner: TComponent; Conexao: TUniConnection; vTotal: string; vDtlChave: string; vOperacaoTEF: TOperacaoTEF): string;
type
  TProcessaPagamentoTEF = function(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
var
  ProcessaPagamentoTEF: TProcessaPagamentoTEF;
  vlRetorno: TOperacaoTEF;
  vlPackLia: Cardinal;
  vlRdc: TuniQuery;
  vlbdc: TuniQuery;
  vladc: TuniQuery;
  vlltr: TuniQuery;
  vldtl: TuniQuery;

begin
  try
    Result := '';
    vlPackLia := LoadPackage('modulos\mtef.bpl');
    if vlPackLia <> 0 then
      try
        @ProcessaPagamentoTEF := GetProcAddress(vlPackLia, Pchar('ProcessaPagamentoTEF'));

        if Assigned(ProcessaPagamentoTEF) then
        begin
          vlRetorno := ProcessaPagamentoTEF(vOperacaoTEF);

          if (vlRetorno.AutorizacaoRetorno <> '') and (vlRetorno.DocumentoRetorno <> '') then // retornou AUTORIZADO
          begin
            vlRdc := TuniQuery.Create(AOwner);
            vlRdc.Connection := Conexao;
            vlRdc.SQL.Text := 'SELECT  rdc.rdcchave, rdc.rdcvalor, rdc.rdcnrauto, rdc.rdcdata, rdc.adccodigo, rdc.rdcparcelas, ';
            vlRdc.SQL.Add('  rdc.bdccodigo, rdc.rdccomprovante1via, rdc.rdccomprovante2via  FROM rdc limit 0');
            vlRdc.Open;

            vlRdc.Append;
            vlRdc.FieldByName('rdcvalor').AsString := vlRetorno.Valor.ToString;
            vlRdc.FieldByName('rdcnrauto').AsString := vlRetorno.AutorizacaoRetorno;
            vlRdc.FieldByName('rdccomprovante1via').AsString := vlRetorno.ImagemComprovante1aVia;
            vlRdc.FieldByName('rdccomprovante2via').AsString := vlRetorno.ImagemComprovante2aVia;
            vlRdc.FieldByName('rdcdata').AsString := hoje(application, Conexao);
            vlRdc.FieldByName('rdcparcelas').AsString := vlRetorno.QuantidadeParcela;

            vlbdc := TuniQuery.Create(AOwner);
            vlbdc.Connection := Conexao;
            vlbdc.SQL.Text := 'SELECT bdccodigo, bdcidentificacao from bdc';
            vlbdc.Open;

            if not vlbdc.Locate('bdcidentificacao', vlRetorno.Bandeira, [locaseinsensitive]) then
            begin
              vlbdc.Append;
              vlbdc.FieldByName('bdcidentificacao').AsString := vlRetorno.Bandeira;
              vlbdc.Post;
            end;
            vlRdc.FieldByName('bdccodigo').AsString := vlbdc.FieldByName('bdccodigo').AsString;

            vladc := TuniQuery.Create(AOwner);
            vladc.Connection := Conexao;
            vladc.SQL.Text := 'SELECT adccodigo, adcidentificacao from adc';
            vladc.Open;

            if not vladc.Locate('adcidentificacao', vlRetorno.Rede, [locaseinsensitive]) then
            begin
              vladc.Append;
              vladc.FieldByName('adcidentificacao').AsString := vlRetorno.Rede;
              vladc.Post;
            end;

            vlRdc.FieldByName('adccodigo').AsString := vladc.FieldByName('adccodigo').AsString;
            vlRdc.Post;

            vlltr := TuniQuery.Create(AOwner);
            vlltr.Connection := Conexao;
            vlltr.SQL.Text := 'select rdcchave, dtlchave from ltr limit 0';
            vlltr.Open;
            vlltr.Append;
            vlltr.FieldByName('rdcchave').AsString := vlRdc.FieldByName('rdcchave').AsString;
            vlltr.FieldByName('dtlchave').AsString := vDtlChave;
            vlltr.Post;


            vldtl := TuniQuery.Create(AOwner);
            vldtl.Connection := Conexao;
            vldtl.SQL.Text := 'update dtl set rdcnrauto='+vlRetorno.AutorizacaoRetorno+' where dtlchave='+vDtlChave;
            vldtl.ExecSQL;

            vlltr.Close;

            Result := vlRetorno.Valor.ToString;
          end
          else
          Result :='0';


        end;
      finally
        DoUnLoadPackage(AOwner, vlPackLia);
      end;

  finally

  end;
end;

function RegistraCartoes(AOwner: TComponent; Conexao: TUniConnection; vTotal: string; vDtlChave: string): string;
var
  lfram: Tfrardc;

begin
  try
    lrdc := Tlrdc.Create(AOwner);
    lrdc.frardc.IdModulo := vplidmd;
    lrdc.frardc.titulo := vPlTitMdl;

    lrdc.frardc.ZCone := Conexao;

    lrdc.frardc.DtlChave := vDtlChave;
    lrdc.frardc.VlrTotal := vTotal;

    lrdc.frardc.Acesso.Usuario := 1;
    lfram := lrdc.FindComponent('frardc') as Tfrardc;

    lfram.ModoFrame := modoPesqEdicao;
    lfram.FormaFrame := ffFormu;

    lfram.Carregar;

    (* titulo foi tratado no frardc *)
    lrdc.Caption := lrdc.frardc.titulo;

    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := True;

    lrdc.ShowModal;
    lrdc.vch := FloatToStr(lrdc.frardc.VlrRegistrado);
    Result := lrdc.vch;
  finally
    FreeAndNil(lrdc);
  end;
end;

exports RegistraCartoes, RegistraCartoesTEF;

procedure Tlrdc.bcancelaClick(Sender: TObject);
begin
  vch := '';
  inherited;

end;

procedure Tlrdc.FormActivate(Sender: TObject);
begin
  inherited;
  if frardc.uqtabela.IsEmpty then
    frardc.ActIncluir.Execute;
end;

end.
