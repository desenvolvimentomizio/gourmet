unit ufimr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase,
  System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, upegabase,
  IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, REST.Types;

type
  Tfimr = class(Tfrmbase)
    registroimrdataprimeiroconsumo: TDateField;
    registroimrdataultimoconsumo: TDateField;
    registroimrprodutospendentes_interno: TIntegerField;
    registroimrprodutospendentes_ean: TIntegerField;
    registroimrprodutospendentes_devolvidos: TIntegerField;
    registroimrprodutospendentes_datainicio: TDateField;
    Label1: TLabel;
    imrdataprimeiroconsumo: TDBEdit;
    Label2: TLabel;
    imrdataultimoconsumo: TDBEdit;
    Label3: TLabel;
    imrprodutospendentes_interno: TDBEdit;
    Label4: TLabel;
    imrprodutospendentes_ean: TDBEdit;
    Label5: TLabel;
    imrprodutospendentes_devolvidos: TDBEdit;
    Label6: TLabel;
    imrprodutospendentes_datainicio: TDBEdit;
    imd: TUniQuery;
    imdimddata: TDateField;
    imdimdmetodo: TStringField;
    imdimdmsg: TStringField;
    imdimdrequisicoes: TIntegerField;
    imdimdenviados: TIntegerField;
    imdimdretornados: TIntegerField;
    Dimd: TDataSource;
    DBGimd: TDBGrid;
    registroimrchave: TIntegerField;
    Label7: TLabel;
    imt: TUniQuery;
    imtimtcodigo: TStringField;
    imtimtid: TStringField;
    imtimtdescricao: TStringField;
    imtimtdtinclusao: TDateField;
    imtimtdtdevolucao: TDateField;
    imtimtmotivodevolucao: TStringField;
    DStabela: TDataSource;
    GroupBox1: TGroupBox;
    DBGLista: TDBGrid;
    Panel1: TPanel;
    spmarcar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    imtimtremover: TIntegerField;
    Label8: TLabel;
    RESTClientBase: TRESTClient;
    RESTResponseBase: TRESTResponse;
    RESTRequestBase: TRESTRequest;
    cfgcfgcodigo: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcfgusagrade: TIntegerField;
    cfgcfgusaenderecamento: TIntegerField;
    cfgcfgprodefineicms: TIntegerField;
    cfgcfgbalanca: TIntegerField;
    cfgcfgextratosegmentado: TIntegerField;
    cfgcfgusaprecobase: TIntegerField;
    cfgcfgtabelasaux: TIntegerField;
    cfgcfgproinativsaldozero: TIntegerField;
    cfgcfgtributacaoimendes: TIntegerField;
    cfgetddoc1: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGimdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spmarcarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimr: Tfimr;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

uses
  ufuncoes;

{$R *.dfm}

procedure Tfimr.DBGimdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfimr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin
    DBGLista.Canvas.Brush.Color := clwhite;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;
   TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'imsremover' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if imtimtremover.AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;



end;

procedure Tfimr.FormShow(Sender: TObject);
begin
  inherited;
  if not registro.IsEmpty then
  begin
    if registroimrchave.AsString <> '' then
    begin
      imd.Close;
      imd.ParamByName('imrchave').AsString := registroimrchave.AsString;
      imd.Open;
    end;

  end;
  imt.Close;
  imt.Open;
end;

function ErroImensdes(aValue: Integer): string;
begin

  case aValue of
    100:
      Result := 'Erro ao serializar conteudo. XML mal formado.';
    101:
      Result := 'CNPJ Inválido.';
    102:
      Result := 'CRT Inválido.';
    103:
      Result := 'Campo tpConsulta Inválido. Informe 1 para apenas consultar e 2 para consulta e gravar como pendentes para analise os nao encontrados.';
    104:
      Result := 'CNPJ não encontrado na base de dados.';
    105:
      Result := 'Consulta impedida. Verifique a situacao do CNPJ.';
    106:
      Result := 'Excedido número máximo de consultas diárias.';
    107:
      Result := 'Erro ao serializar tabelas. XML mal formado ou incompleto.';
    108:
      Result := 'XML sem produto(s).                                         ';
    109:
      Result := 'Informações do Cabeçalho Faltando.';
    110:
      Result := 'XML Inválido. Tamanho Zero.';
    111:
      Result := 'XML Inválido. Fora dos Padrões.';
    112:
      Result := 'Cabeçalho não Informado.';
    113:
      Result := 'XML com tamanho maior que máximo permitido.';
    114:
      Result := 'Erro ao serializar tabelas. XML mal formado ou incompleto.';
    115:
      Result := 'UF Inválido.';
    116:
      Result := 'Consulta impedida. Validade expirada.';
    117:
      Result := 'Conexão em horário não permitido. Servidor em Processamento.';
    118:
      Result := 'Número de produtos não permitido.';
    9999:
      Result := 'Erro Desconhecido. Verifique!';
  else
    Result := '';

  end;
end;

procedure Tfimr.SpeedButton2Click(Sender: TObject);
var
  vlJson: string;
  vlJsonResult: tJsonObject;
  vlJsonValue: tJsonObject;
  vlMensageRetorno: string;
  vlcodigomensage: string;
  vlsresultado: STRING;
 vlLog:TStringList;

begin
  inherited;
  vlLog:=TStringList.create;

  RESTClientBase.BaseURL := 'http://consultatributos.com.br:8080/api/v1/public/EnviaRecebeDados';
  RESTRequestBase.Method := rmPOST;

  vlJson := '{"nomeServico":"REMOVEDEVOLVIDOS",' + '"dados":{"cnpj:"' + SoNumeros(cfgetddoc1.AsString) + '",';

 // vlJson := '{"nomeServico":"REMOVEDEVOLVIDOS",' + '"dados":"{\"cnpj\":\"' + SoNumeros('14.477.548/0001-31') + '\",';

  vlJson := vlJson + '\"produtos\": [';

  imt.First;
  while not imt.Eof do
  begin
    if imtimtremover.AsInteger = 1 then
    begin
      vlJson := vlJson + '{\"id\":' + SoNumeros(imtimtid.AsString) + '},';
    end;
    imt.Next;
  end;

  vlJson := copy(vlJson, 1, length(vlJson) - 1);
  vlJson := vlJson + ']}"}';

  with RESTRequestBase.Params.AddItem do
  begin
    ContentType := ctAPPLICATION_JSON;
    name := 'param'; // param name
    Value := vlJson; // seu json
    Kind := pkREQUESTBODY;
  end;

  vlLog.Add('ENVIO: REMOVEDEVOLVIDOS');
  vlLog.Add('json:');
  vlLog.Add(vlJson);
  vlLog.Add('=============================================================================');



  try
    RESTRequestBase.Execute;

    vlJsonResult := tJsonObject(RESTResponseBase.JSONValue);
    vlsresultado := vlJsonResult.ToString;


    vlsresultado:=vlJsonResult.ToString;

     vlLog.Add('RETORNO: REMOVEDEVOLVIDOS');
     vlLog.Add('json:');
     vlLog.Add(vlsresultado);
     vlLog.Add('=============================================================================');



    if vlJsonResult <> nil then
    begin

      vlMensageRetorno := StringReplace(vlJsonResult.GetValue('mensagem').ToString, '"', '', [rfreplaceall, rfIgnoreCase]);

      if uppercase(vlJsonResult.GetValue('sucesso').ToString) <> 'TRUE' then
      begin
        showmessage('Erro: ' + vlMensageRetorno);
        exit;
      end;
      showmessage('Remoções realizadas com sucesso!');

    vlLog.SaveToFile('C:\imendes\logs\REMOVEDEVOLVIDOS_'+formatdatetime('dd mm yyyy-hh nn ss', now())+'.txt');


    end;
  finally

  end;
end;

procedure Tfimr.spmarcarClick(Sender: TObject);
begin
  inherited;
  if not imt.IsEmpty then
  begin
    imt.Edit;
    if imtimtremover.AsInteger = 1 then
      imtimtremover.AsInteger := 0
    else
      imtimtremover.AsInteger := 1;
    imt.Post;
  end;
end;

end.
