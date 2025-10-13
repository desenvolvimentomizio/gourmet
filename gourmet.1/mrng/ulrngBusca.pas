unit ulrngBusca;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabrf, ufrarngBusca,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Uni,
  System.SysUtils, VirtualTable, uPegaBase;

type
  TlrngBusca = class(Tlfrmbase)
    frarngBusca: TfrarngBusca;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
    Acesso: TAcesso;
  public
    { Public declarations }
  end;

var
  lrngBusca: TlrngBusca;

implementation

{$R *.dfm}

function BuscaParcelas(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vtfdcodigo: string; vetdchave: string; vVTable: TVirtualTable; Acesso: TAcesso): String;
var
  lfram: TfrarngBusca;
  vch: string;
  I: Integer;
begin
  lrngBusca := TlrngBusca.Create(AOwner);
  try
    lrngBusca.frarngBusca.IdModulo := vPlIdMd;
    lrngBusca.frarngBusca.titulo := vPlTitMdl;
    lrngBusca.frarngBusca.Acesso := Acesso;

    lrngBusca.frarngBusca.zcone := Conexao;
    lrngBusca.frarngBusca.Acesso.Usuario := StrToInt(vusuario);
    lrngBusca.frarngBusca.vtfdcodigo := vtfdcodigo;
    lfram := lrngBusca.FindComponent('frarngBusca') as TfrarngBusca;
    lfram.edbusca.Tag := 1;

    if vetdchave <> '' then
      lfram.txtfiltro := 'etdcodigo = ' + vetdchave + ' and flacodigo=' + Acesso.Filial.ToString;

    if lfram.txtfiltro <> '' then
    begin
      lfram.uqtabela.FilterSQL := lfram.txtfiltro;

      lfram.consulta.close;
      lfram.consulta.SQL.Text:='select etdidentificacao from etd where etdcodigo='+vetdchave;
      lfram.consulta.Open;

       lfram.edbusca.Text:=lfram.consulta.FieldByName('etdidentificacao').AsString;


      // lfram.uqtabela.Filtered := True;
    end;
    lfram.uqtabela.ParamByName('tfdcodigo').AsString := vtfdcodigo;
    lfram.uqtabela.ParamByName('clbcodigo').AsInteger := Acesso.Usuario;

    lfram.Renegociacao := True;

    lfram.carregar;

    lrngBusca.frarngBusca.lte.Open;
    lrngBusca.frarngBusca.lte.Append;
    lrngBusca.frarngBusca.ltetfdcodigo.AsString := vtfdcodigo;
    lrngBusca.frarngBusca.lte.Post;

    lrngBusca.frarngBusca.lte.Edit;

    lrngBusca.ShowModal;
  finally
    vVTable.Assign(lfram.vbaixa);
    Result := lfram.lteltechave.AsString;
    FreeAndNil(lrngBusca);
  end;
end;

exports BuscaParcelas;

procedure TlrngBusca.bcancelaClick(Sender: TObject);
begin
  if not frarngBusca.vbaixa.IsEmpty then
    if Application.MessageBox(PChar('Você realmente deseja cancelar as baixas?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDNO then
      Exit;

  frarngBusca.BRemoverTodos.Click;
  lrngBusca.frarngBusca.LimpaRegistros;
  inherited;
end;



procedure TlrngBusca.bconfirmaClick(Sender: TObject);
begin
  if lrngBusca.frarngBusca.Finaliza then
    inherited;
end;

end.
