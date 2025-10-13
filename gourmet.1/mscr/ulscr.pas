unit ulscr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, Data.DB, MemDS, DBAccess, Uni, ufrabase,
  ufrascr, Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  Vcl.Dialogs, System.SysUtils;

type
  Tlscr = class(Tlfrmbase)
    frascr: Tfrascr;
    consulta: TUniQuery;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  lscr: Tlscr;

  // Início ID do Módulo frascr
const
  vPlIdMd = '02.02.87.005-02';
  vPlTitMdl = 'Seleção de Créditos - Verbas';

  // Fim ID do Módulo frascr

implementation

{$R *.dfm}

function FormuSelecionaCreditos(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; vTncCodigo: string; vRcrCodigo: string; vValor: string; vLote: string): string;
var
  lfram: Tfrascr;
  vch: string;
  vlFiltroEtds: string;

begin
  try
    lscr := Tlscr.Create(AOwner);
    lscr.frascr.IdModulo := vPlIdMd;
    lscr.frascr.titulo := vPlTitMdl;
    lscr.frascr.Acesso.Usuario := StrToInt(vusuario);

    lscr.frascr.vpTncCodigo := vTncCodigo;
    lscr.frascr.vpRcrChave := vRcrCodigo;

    lscr.frascr.zcone := conexao;
    lfram := lscr.FindComponent('frascr') as Tfrascr;

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
      lfram.let.Connection := lscr.frascr.zcone;
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
      lscr.frascr.vpSaldo := strtofloat(vValor);
      lscr.frascr.vpVlrNecess := lscr.frascr.vpSaldo;
    end;

    if lscr.ShowModal = mrOk then
    begin
      if lscr.frascr.vpRcrChave = '0' then
      begin
        { * Utilização de Créditos * }
        lfram.mce.Open;
        lfram.mcr.Open;
        lfram.lcv.Open;

        lfram.uqtabela.First;
        while not lfram.uqtabela.eof do
        begin
          if lfram.uqtabelarcrselecionar.AsInteger = 1 then
          begin
            lfram.mce.Append;
            lfram.mcercrchave.AsString := lfram.uqtabelarcrchave.AsString;
            lfram.mcetmccodigo.AsInteger := 6;
            lfram.mceclbcodigo.AsInteger := lfram.Acesso.Usuario;
            lfram.mcemcemotivo.AsString := 'Utilização';
            lfram.mcemecregistro.AsFloat := now;
            lfram.mceltechave.AsString := vLote;
            lfram.mce.Post;

            lfram.mcr.Append;
            lfram.mcrrcrchave.AsString := lfram.uqtabelarcrchave.AsString;
            lfram.mcrmcechave.AsString := lfram.mcemcechave.AsString;

            if lfram.uqtabelarcrvalor.AsCurrency <= lfram.vpSaldo then
            begin
              lfram.mcrmcrvalor.AsFloat := lfram.uqtabelarcrvalor.AsFloat;

              if lfram.uqtabelarcrvalor.AsCurrency <= lfram.vpSaldo then
              begin
                lfram.consulta.close;
                lfram.consulta.SQL.Text := 'update rcr set tsccodigo=3 where rcrchave=' + lfram.uqtabelarcrchave.AsString;
                lfram.consulta.ExecSQL;
              end;
              lfram.vpSaldo := lfram.vpSaldo - lfram.uqtabelarcrvalor.AsCurrency;

            end
            else
            begin
              if lfram.vpSaldo > 0 then
              begin
                lfram.mcrmcrvalor.AsFloat := lfram.vpSaldo;
                lfram.vpSaldo := 0;
                if lfram.uqtabelarcrvalor.AsCurrency <= lfram.vpSaldo then
                begin
                  lfram.consulta.close;
                  lfram.consulta.SQL.Text := 'update rcr set tsccodigo=3 where rcrchave=' + lfram.uqtabelarcrchave.AsString;
                  lfram.consulta.ExecSQL;
                end;
              end;
            end;
            lfram.mcr.Post;

            if (lfram.vpLote <> '') and (lfram.vpLote <> '0') then
            begin
              lfram.lcv.Append;
              lfram.lcvltechave.AsString := lfram.vpLote;
              lfram.lcvmcrchave.AsInteger := lfram.mcrmcrchave.AsInteger;
              lfram.lcv.Post;
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
        lfram.mce.Open;
        lfram.mce.Append;
        lfram.mcercrchave.AsString := lscr.frascr.vpRcrChave;
        lfram.mcetmccodigo.AsInteger := 4;
        lfram.mceclbcodigo.AsInteger := lfram.Acesso.Usuario;
        lfram.mcemcemotivo.AsString := 'Transferencia';
        lfram.mcemecregistro.AsFloat := now;
        lfram.mce.Post;

        lfram.trf.Open;
        lfram.uqtabela.First;
        while not lfram.uqtabela.eof do
        begin
          if lfram.uqtabelarcrselecionar.AsInteger = 1 then
          begin

            lfram.trf.Append;
            lfram.trfrcrorigem.AsInteger := lfram.uqtabelarcrchave.AsInteger;
            lfram.trfrcrdestino.AsString := lscr.frascr.vpRcrChave;
            lfram.trf.Post;

            lfram.consulta.close;
            lfram.consulta.SQL.Text := 'update rcr set tsccodigo=9 where rcrchave=' + lfram.uqtabelarcrchave.AsString;
            lfram.consulta.ExecSQL;

          end;
          lfram.uqtabela.Next;
        end;

      end;

      vch := lscr.frascr.vretorno;
    end
    else
      vch := '';

    Result := vch;
  finally
    FreeAndNil(lscr);
  end;
end;

exports FormuSelecionaCreditos;

procedure Tlscr.bconfirmaClick(Sender: TObject);
var
  pode: boolean;
begin
  pode := false;
  lscr.frascr.uqtabela.First;
  while not lscr.frascr.uqtabela.eof do
  begin
    if lscr.frascr.uqtabelarcrselecionar.AsInteger = 1 then
    begin
      pode := True;
      break;
    end;
    lscr.frascr.uqtabela.Next;
  end;

  if pode then
  begin
    inherited;
  end
  else
  begin
    ShowMessage('Não existe registro selecionado!');
  end;

end;

end.
