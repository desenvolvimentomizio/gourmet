unit ufracfh;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, System.SysUtils, ufuncoes;

type
  Tfracfh = class(Tfrabase)
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetddoc1: TStringField;
    uqtabelaedrinscest: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdapelido: TStringField;
    uqtabelatpecodigo: TIntegerField;
    uqtabelatpeidentificacao: TStringField;
    uqtabelaetddatacad: TDateField;
    uqtabelaetddataalt: TDateField;
    uqtabelatsecodigo: TIntegerField;
    uqtabelatseidentificacao: TStringField;
    uqtabelaetddescsituacao: TStringField;
    uqtabelaetdativo: TIntegerField;
    uqtabelaetdobs: TStringField;
    uqtabelatvicodigo: TIntegerField;
    tvi: TUniQuery;
    tvitvicodigo: TIntegerField;
    tvitviidentificacao: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    ets: TUniQuery;
    etsetscodigo: TIntegerField;
    etstsecodigo: TIntegerField;
    etsetdcodigo: TIntegerField;
    etsetsdata: TDateField;
    etsetshistorico: TStringField;
    etstseidentificacao: TStringField;
    tse: TUniQuery;
    tsetsecodigo: TIntegerField;
    tsetseidentificacao: TStringField;
    ActMostrarTodos: TAction;
    ActFichaFinanceira: TAction;
    uqtabeladtrpis: TStringField;
    uqtabeladtrdataadmissao: TDateField;
    uqtabeladtrnumeregistro: TStringField;
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActMostrarTodosExecute(Sender: TObject);
    procedure ActFichaFinanceiraExecute(Sender: TObject);
  private
    procedure Carregar; override;
    procedure registrasituacao(vetdcodigo, vtsecodigo: Integer; vetshistorico: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracfh: Tfracfh;

  // Início ID do Módulo fracli
const
  vPlIdMd = '01.12.02.001-01';
  vPlTitMdl = 'Colaboradores';

  // Fim ID do Módulo fracli

implementation

uses
  ufcfh;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracfh := Tfracfh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracfh := Tfracfh.Create(pCargaFrame);
  try
    fracfh.CriaAcoesDeAcesso;
  finally
    fracfh.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracfh.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcfh, uqtabelaetdcodigo.asstring, '');
end;

procedure Tfracfh.ActAtualizarExecute(Sender: TObject);
begin

  inherited;

  uqtabela.Filter := txtfiltro;
  uqtabela.Filtered := True;
end;

procedure Tfracfh.ActDesativarExecute(Sender: TObject);
Var
  rg: Integer;
  motivo: String;
  pode: boolean;
Begin
  Inherited;
  pode := True;
  if Self.uqtabelaetdcodigo.asstring <> '0' then
  begin

    if Self.autorizado(Sender, '') then
    begin

      if Self.uqtabelaetdcodigo.asstring <> '' then
      begin

        if pode then
        begin
          If application.MessageBox(PChar('Confirma a DESATIVAÇÃO do colaborador selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION)
            = idyes Then
          Begin

            Repeat
              motivo := InputBox('Desativação !', 'Descreva o motivo para desativar o Colaborador: ', '');
            Until motivo <> '';

            rg := Self.uqtabelaetdcodigo.AsInteger;

            consulta.close;
            consulta.sql.Text := 'update etd set etddescsituacao=' + chr(39) + motivo + chr(39) + ',tsecodigo=9  where etdcodigo = ' +
              Self.uqtabelaetdcodigo.asstring;
            consulta.Execsql;
            registrasituacao(Self.uqtabelaetdcodigo.AsInteger, 9, motivo);

            Self.actatualizar.Execute;

            Self.uqtabela.Locate('etdcodigo', rg, []);

          End;
        end;

      end;
    end;
  end;
end;

procedure Tfracfh.ActFichaFinanceiraExecute(Sender: TObject);
begin
  inherited;
  mostralista('minf', '', Self.UQTabelaetdcodigo.asstring);
end;

procedure Tfracfh.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcfh, '', '');
end;

procedure Tfracfh.ActMostrarTodosExecute(Sender: TObject);
begin
  inherited;
  uqtabela.Filter := '';
  uqtabela.Filtered := False;

end;

procedure Tfracfh.ActReativarExecute(Sender: TObject);
Var
  rg: Integer;
  motivo: String;
  pode: boolean;
Begin
  Inherited;
  pode := True;
  if Self.uqtabelaetdcodigo.asstring <> '0' then
  begin

    if Self.autorizado(Sender, '') then
    begin

      if Self.uqtabelaetdcodigo.asstring <> '' then
      begin

        if pode then
        begin
          If application.MessageBox(PChar('Confirma a REATIVAÇÃO do colaborador selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION)
            = idyes Then
          Begin

            Repeat
              motivo := InputBox('Reativação !', 'Descreva o motivo para reativar o Colaborador: ', '');
            Until motivo <> '';

            rg := Self.uqtabelaetdcodigo.AsInteger;

            consulta.close;
            consulta.sql.Text := 'update etd set etddescsituacao=' + chr(39) + motivo + chr(39) + ',tsecodigo=0  where etdcodigo = ' +
              Self.uqtabelaetdcodigo.asstring;
            consulta.Execsql;
            registrasituacao(Self.uqtabelaetdcodigo.AsInteger, 0, motivo);

            Self.actatualizar.Execute;

            Self.uqtabela.Locate('etdcodigo', rg, []);

          End;
        end;

      end;
    end;
  end;

end;

procedure Tfracfh.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin

  Inherited;

 { fixRect := Rect;
  If Column.Field = uqtabelatseidentificacao Then
  Begin

    If uqtabelatsecodigo.asstring = '0' Then // desbloqueado
    Begin
      imgIndex := 9; // verde
    End
    Else If uqtabelatsecodigo.asstring = '1' Then // bloqueio total
    Begin
      imgIndex := 7; // vermelho
    End
    Else If uqtabelatsecodigo.asstring = '2' Then // bloqueio parcial
    Begin
      imgIndex := 11; // laranja
    End
    Else If uqtabelatsecodigo.asstring = '8' Then
    // cliente pedido de credito para crediarista
    Begin
      imgIndex := 9; // verde
    End
    Else
    Begin
      imgIndex := 9; // verde
    End;

    If uqtabelaetdativo.asstring = '0' Then
    // cliente pedido de credito para crediarista
    Begin
      imgIndex := 8; // azul para reativar
    End;

    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  End;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);   }

end;

procedure Tfracfh.registrasituacao(vetdcodigo: Integer; vtsecodigo: Integer; vetshistorico: string);
begin
  ets.close;

  if ets.Active = False then
  begin
    ets.Params[0].AsInteger := Self.uqtabelaetdcodigo.AsInteger;
    ets.open;
  end;
  ets.Append;
  etstsecodigo.AsInteger := vtsecodigo;
  etsetdcodigo.AsInteger := vetdcodigo;
  etsetsdata.AsFloat := Self.vdataatual;
  etsetshistorico.asstring := vetshistorico;
  ets.Post;

end;


procedure Tfracfh.Carregar;
var
  i: Integer;
begin
  tse.Connection:=ZCone;

  MontaFiltroEsp(tse, IntToStr(0));

  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
      TxtFiltroSQL := TxtFiltro;


  inherited Carregar;

end;

end.
