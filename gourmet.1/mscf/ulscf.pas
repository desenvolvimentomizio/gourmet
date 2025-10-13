unit ulscf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrascf,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uni;

type
  Tlscf = class(Tlfrmbase)
    frascf: Tfrascf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lscf: Tlscf;


  // Início ID do Módulo frascr
const
  vPlIdMd = '00.00.00.000-02';
  vPlTitMdl = 'Seleção de Créditos - Verbas';

  // Fim ID do Módulo frascr

implementation

{$R *.dfm}

function FormuSelecionaCreditos(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; vTncCodigo: string; vRcrCodigo: string; vValor: string; vLote: string): string;
var
  lfram: Tfrascf;
  vch: string;
  vlFiltroEtds: string;

begin
  try
    lscf := Tlscf.Create(AOwner);
    lscf.frascf.IdModulo := vPlIdMd;
    lscf.frascf.titulo := vPlTitMdl;
    lscf.frascf.Acesso.Usuario := StrToInt(vusuario);

    lscf.frascf.vpTncCodigo := vTncCodigo;
    lscf.frascf.vpRcrChave := vRcrCodigo;

    lscf.frascf.zcone := conexao;
    lfram := lscf.FindComponent('frascf') as Tfrascf;

    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := True;
    end;

    lfram.vpSaldo := 0;
    lfram.vpVlrNecess := 0;
    lfram.vpLote := vLote;
    vlFiltroEtds := '';
    if lfram.vpLote <> '' then
    begin
      lfram.let.Connection := lscf.frascf.zcone;
      lfram.let.close;
      lfram.let.Params[0].AsString := lfram.vpLote;
      lfram.let.Open;
      if not lfram.let.IsEmpty then
      begin
        vlFiltroEtds := ' and etdcodigo in (';
        while not lfram.let.eof do
        begin

          vlFiltroEtds := vlFiltroEtds + lfram.letetdcodigo.AsString + ',';
          lfram.let.Next;
        end;
        vlFiltroEtds := copy(vlFiltroEtds, 1, length(vlFiltroEtds) - 1) + ')';
        lfram.uqtabela.SQL.Text := lfram.uqtabela.SQL.Text + vlFiltroEtds;
      end;
    end;

    if (vfiltro <> '0') and ((lfram.vpLote = '') or (lfram.vpLote = '0')) then
    begin
      lfram.uqtabela.Filter := 'etdcodigo<>' + vfiltro;
      lfram.uqtabela.Filtered := True;

    end;
    lfram.carregar;

    if vValor <> '' then
    begin
      lscf.frascf.vpSaldo := strtofloat(vValor);
      lscf.frascf.vpVlrNecess := lscf.frascf.vpSaldo;
    end;

    if lscf.ShowModal = mrOk then
    begin
      if lscf.frascf.vpRcrChave = '0' then
      begin
        { * Utilização de Créditos * }
        lfram.mfe.Open;
        lfram.mfr.Open;
        lfram.lfv.Open;

        lfram.uqtabela.First;
        while not lfram.uqtabela.eof do
        begin
          if lfram.uqtabelarcfselecionar.AsInteger = 1 then
          begin
            lfram.mfe.Append;
            lfram.mfercfchave.AsString := lfram.uqtabelarcfchave.AsString;
            lfram.mfetmccodigo.AsInteger := 6;
            lfram.mfeclbcodigo.AsInteger := lfram.Acesso.Usuario;
            lfram.mfemfemotivo.AsString := 'Utilização';
            lfram.mfemferegistro.AsFloat := now;
            lfram.mfeltechave.AsString := vLote;
            lfram.mfe.Post;

            lfram.mfr.Append;
            lfram.mfrrcfchave.AsString := lfram.uqtabelarcfchave.AsString;
            lfram.mfrmfechave.AsString := lfram.mfemfechave.AsString;

            if lfram.uqtabelarcfvalor.AsCurrency <= lfram.vpSaldo then
            begin
              lfram.mfrmfrvalor.AsFloat := lfram.uqtabelarcfvalor.AsFloat;

              if lfram.uqtabelarcfvalor.AsCurrency <= lfram.vpSaldo then
              begin
                lfram.consulta.close;
                lfram.consulta.SQL.Text := 'update rcf set tsccodigo=3 where rcfchave=' + lfram.uqtabelarcfchave.AsString;
                lfram.consulta.ExecSQL;
              end;
              lfram.vpSaldo := lfram.vpSaldo - lfram.uqtabelarcfvalor.AsCurrency;

            end
            else
            begin
              if lfram.vpSaldo > 0 then
              begin
                lfram.mfrmfrvalor.AsFloat := lfram.vpSaldo;
                lfram.vpSaldo := 0;
                if lfram.uqtabelarcfvalor.AsCurrency <= lfram.vpSaldo then
                begin
                  lfram.consulta.close;
                  lfram.consulta.SQL.Text := 'update rcr set tsccodigo=3 where rcrchave=' + lfram.uqtabelarcfchave.AsString;
                  lfram.consulta.ExecSQL;
                end;
              end;
            end;
            lfram.mfr.Post;

            if (lfram.vpLote <> '') and (lfram.vpLote <> '0') then
            begin
              lfram.lfv.Append;
              lfram.lfvltechave.AsString := lfram.vpLote;
              lfram.lfvmfrchave.AsInteger := lfram.mfrmfrchave.AsInteger;
              lfram.lfv.Post;
            end;

          end;
          lfram.uqtabela.Next;
        end;

        { lfram.rcr.open;
          lfram.rcr.Append;
          lfram.rcretdcodigo.AsString := lfram.vpEtdCodigo;
          lfram.rcrrcrdata.AsFloat := date;
          lfram.rcrrcrhora.AsFloat := time;
          lfram.rcrcedcodigo.AsInteger := 0; // credito
          lfram.rcrtcrcodigo.AsInteger := 9; // avulso, digitado manual
          lfram.rcrtsccodigo.AsInteger := 1; // em aberto
          lfram.rcrtnccodigo.AsInteger := 1; // creditos
          lfram.rcr.Post; }

      end
      else
      begin
        { *  tranferencia de creditos * }
        lfram.mfe.Open;
        lfram.mfe.Append;
        lfram.mfercfchave.AsString := lscf.frascf.vpRcrChave;
        lfram.mfetmccodigo.AsInteger := 4;
        lfram.mfeclbcodigo.AsInteger := lfram.Acesso.Usuario;
        lfram.mfemfemotivo.AsString := 'Transferencia';
        lfram.mfemferegistro.AsFloat := now;
        lfram.mfe.Post;

        lfram.tff.Open;
        lfram.uqtabela.First;
        while not lfram.uqtabela.eof do
        begin
          if lfram.uqtabelarcfselecionar.AsInteger = 1 then
          begin

            lfram.tff.Append;
            lfram.tffrcforigem.AsInteger := lfram.uqtabelarcfchave.AsInteger;
            lfram.tffrcfdestino.AsString := lscf.frascf.vpRcrChave;
            lfram.tff.Post;

            lfram.consulta.close;
            lfram.consulta.SQL.Text := 'update rcr set tsccodigo=9 where rcrchave=' + lfram.uqtabelarcfchave.AsString;
            lfram.consulta.ExecSQL;

          end;
          lfram.uqtabela.Next;
        end;

      end;

      vch := lscf.frascf.vretorno;
    end
    else
      vch := '';

    Result := vch;
  finally
    FreeAndNil(lscf);
  end;
end;

exports FormuSelecionaCreditos;


end.
