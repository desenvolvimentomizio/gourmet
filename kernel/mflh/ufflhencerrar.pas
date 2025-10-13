unit ufflhencerrar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, uFuncoes;

type
  Tfflhencerrar = class(Tfrmbase)
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
    Label1: TLabel;
    flhchave: TDBEdit;
    Label9: TLabel;
    tflcodigo: TDBEdit;
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
    efgefgchave: TIntegerField;
    efgflhchave: TIntegerField;
    efgetdcodigo: TIntegerField;
    efgetdidentificacao: TStringField;
    efgeflcodigo: TIntegerField;
    Defg: TDataSource;
    plDetalhes: TPanel;
    plTitColaboradores: TPanel;
    DBGListaEtd: TDBGrid;
    efgevavalor: TFloatField;
    procedure DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fflhencerrar: Tfflhencerrar;

  // Início ID do Módulo fflhencerrar
const
  vplidmd = '02.12.90.001-04';
  // Fim ID do Módulo fflhencerrar

implementation

{$R *.dfm}

uses uflhCalcula;

procedure Tfflhencerrar.bconfirmaClick(Sender: TObject);
begin

  efg.First;
  while not efg.Eof do
  begin
    efg.edit;
    efgeflcodigo.AsInteger := 3;
    efg.Post;

    efg.Next;
  end;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE eva ';
  consulta.SQL.Add('SET eflcodigo = ' + IntToStr(eflFechada) + ' ');
  consulta.SQL.Add('WHERE eflcodigo NOT IN (' + IntToStr(eflLiquidada) + ', ' + IntToStr(eflEstorno) + ') ');
  consulta.SQL.Add('AND flhchave = ' + self.registroflhchave.AsString);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE flh SET eflcodigo = ' + IntToStr(eflFechada) + ' WHERE flhchave = ' + self.registroflhchave.AsString;
  consulta.ExecSQL;
  inherited;
end;

procedure Tfflhencerrar.DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tfflhencerrar.FormShow(Sender: TObject);
begin
  IdModulo := vplidmd;
  inherited;

  CalculaFolha(Application, zcone, registroflhchave.AsInteger, Acesso.Usuario);

  efg.Close;
  efg.Params[0].AsInteger := self.registroflhchave.AsInteger;
  efg.Open;
end;

end.
