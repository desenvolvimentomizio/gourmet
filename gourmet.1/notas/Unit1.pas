unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrNFe, ACBrBase,
  ACBrDFe, ACBrMDFe,pcnConversaoNFe,pcnConversao;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MemoStatus: TMemo;
    Memo1: TMemo;
    dDFe: TACBrMDFe;
    NFe: TACBrNFe;
    edtUltNSU: TEdit;
    Button2: TButton;
    ACBrNFe: TACBrNFe;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    k:integer;
    sStat:string;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie,
 sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
 i, j, k: integer;
 sMotivo:string;
 sTemMais:string;
 sUltimoNSU:string;
begin
 // ======== Dados do Emitente =============================================
 CNPJ:='70521521000170';

 MemoStatus.Lines.Add('------------------------------------------------------');
 MemoStatus.Lines.Add(' =>  Consultando NFe Destinadas');
 MemoStatus.Lines.Add('------------------------------------------------------');

 Memo1.Text := '';
 k := 0;
// repeat
   inc(k);
   NFe.DistribuicaoDFePorUltNSU( 51,
                                       CNPJ,
                                       edtUltNSU.Text );

   sStat   := IntToStr(NFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat);
   sMotivo := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;

   if NFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137
   then sTemMais := 'N'
   else sTemMais := 'S';

   sUltimoNSU := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;

  // GravaUltimaConsulta;

   if NFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138
    then begin
     MemoStatus.Lines.Add(' Documento Localizado para o Destinatário');
     MemoStatus.Lines.Add(' Utilizar o número que esta no campo: Último NSU');
     MemoStatus.Lines.Add(' Para uma nova pesquisa.');
     MemoStatus.Lines.Add(' ');

     j := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1;

     for i := 0 to j do
      begin
       sSerie   := '';
       sNumero  := '';
       sCNPJ    := '';
       sNome    := '';
       sIEst    := '';
       sNSU     := '';
       sEmissao := '';
       sTipoNFe := '';
       Valor    := 0.0;
       Impresso := ' ';

       if NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe <> ''
        then begin
         // Conjunto de informações resumo da NF-e localizadas.
         // Este conjunto de informação será gerado quando a NF-e for autorizada ou denegada.

         sChave := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe;

         sSerie  := Copy(sChave, 23, 3);
         sNumero := Copy(sChave, 26, 9);
         sCNPJ := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.CNPJCPF;
         sNome := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.xNome;
         sIEst := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.IE;
         case NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.tpNF of
          tnEntrada: sTipoNFe := 'E';
          tnSaida:   sTipoNFe := 'S';
         end;
         sNSU  := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
         sEmissao := DateToStr(NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.dhEmi);
         Valor := NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.vNF;

         case NFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitNFe of
          snAutorizado: Impresso := 'A';
          snDenegado:   Impresso := 'D';
          snCancelada:  Impresso := 'C';
         end;
        end;

       {// Registra no Banco de Dados as Notas Retornadas pela Consulta
       DM_VEN.Manifestacao.Close;
       DM_VEN.Manifestacao.SQL.Clear;
       DM_VEN.Manifestacao.SQL.Add('Select * From Eve_Manifestacao');
       DM_VEN.Manifestacao.SQL.Add('Where Empresa = :xEmpresa');
       DM_VEN.Manifestacao.SQL.Add('and Chave = :xChave');
       DM_VEN.Manifestacao.Params[0].AsString:=DM_CTA.xCodEmpresa;
       DM_VEN.Manifestacao.Params[1].AsString:=sChave;
       DM_VEN.Manifestacao.Active:=True;
       DM_VEN.Manifestacao.Open;

       if not ((DM_VEN.ManifestacaoEmpresa.AsString = DM_CTA.xCodEmpresa) and
               (DM_VEN.ManifestacaoChave.AsString = sChave))
        then begin
         DM_VEN.IncAltDel.SQL.Clear;
         DM_VEN.IncAltDel.SQL.Add('Insert into Eve_Manifestacao');
         DM_VEN.IncAltDel.SQL.Add('(Empresa, Chave, CNPJ, Nome, IE, Emissao, Tipo, Valor,');
         DM_VEN.IncAltDel.SQL.Add('Situacao, Confirmacao, NSU, DataEvento, Protocolo)');
         DM_VEN.IncAltDel.SQL.Add('Values (:xEmpresa, :xChave, :xCNPJ, :xNome, :xIE, :xEmissao, :xTipo,');
         DM_VEN.IncAltDel.SQL.Add(':xValor, :xSituacao, :xConfirmacao, :xNSU, :xDataEve, :xProtocolo)');
         DM_VEN.IncAltDel.Params[0].AsString:=DM_CTA.xCodEmpresa;
         DM_VEN.IncAltDel.Params[1].AsString:=sChave;
         DM_VEN.IncAltDel.Params[2].AsString:=sCNPJ;
         DM_VEN.IncAltDel.Params[3].AsString:=sNome;
         DM_VEN.IncAltDel.Params[4].AsString:=sIEst;
         DM_VEN.IncAltDel.Params[5].AsDateTime:=StrToDate(sEmissao);
         DM_VEN.IncAltDel.Params[6].AsString:=sTipoNFe;
         DM_VEN.IncAltDel.Params[7].AsFloat:=Valor;
         DM_VEN.IncAltDel.Params[8].AsString:=Impresso;
         DM_VEN.IncAltDel.Params[9].AsInteger:=-1;
         DM_VEN.IncAltDel.Params[10].AsString:=sNSU;
         DM_VEN.IncAltDel.Params[11].AsDateTime:=0;
         DM_VEN.IncAltDel.Params[12].AsString:='';
         DM_VEN.IncAltDel.ExecSQL;
        end;}

      end; // Fim do For
    end
    else begin
     // Nenhum Documento Localizado para o Destinatário
     if NFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137
      then begin
       MemoStatus.Lines.Add(' Nenhum Documento Localizado para o Destinatário');
       MemoStatus.Lines.Add(' Utilizar o número que esta no campo: Último NSU');
       MemoStatus.Lines.Add(' Para uma nova pesquisa ('+edtUltNSU.Text+').');
       MemoStatus.Lines.Add(' ');
      end
      else begin
       MemoStatus.Lines.Add(' Falha ao realizar a consulta.');
       MemoStatus.Lines.Add('  ' + sStat + ' - ' + sMotivo);
       MemoStatus.Lines.Add(' ');
      end;
    end;


// until (k = edtConsultas.ValueInt) or (sTemMais = 'S');

 if sTemMais = 'S'
  then Memo1.Text := IntToStr(k) + ' Consultas Realizadas e tem mais Documentos.'
  else Memo1.Text := IntToStr(k) + ' Consultas Realizadas e não tem mais Documentos.';


end;

procedure TForm1.Button2Click(Sender: TObject);
var
ArqXML : TStringStream;
i:integer;
begin
 ACBrNFe.DistribuicaoDFePorChaveNFe(ACBrNFe.Configuracoes.WebServices.UFCodigo, 'CNPJ da Filial', 'chave de Aesso');

          with ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt do
          begin
            if cStat = 138 then
            begin
              for i := 0 to docZip.Count - 1 do
              begin

                if docZip.Items.schema = schprocNFe then //verifica se o arquivo é o XML da NFe (-nfe.xml)
                begin
                    XML := docZip.Items.XML;
                    ArqXML := TStringStream.Create(XML);
                    XMLDocument1.LoadFromStream(ArqXML);
                    XMLDocument1.Active;

                     XMLDocument1.SaveToFile('C:\chave de acesso-nfe.xml);

                end;

              end;
            end
          end;




end;



end.
