unit ufvch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes;

type
  Tfvch = class(Tfrmbase)
    registrovchchave: TIntegerField;
    registrovchdataemissao: TDateField;
    registrovchvoucher: TStringField;
    registrovchdatavalidade: TDateField;
    registrovchvalor: TFloatField;
    registrovchpercentual: TFloatField;
    registroetdcodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    Label1: TLabel;
    vchchave: TDBEdit;
    Label2: TLabel;
    vchdataemissao: TDBEdit;
    vchtipo: TDBRadioGroup;
    registrovchtipo: TIntegerField;
    vhcmodouso: TDBRadioGroup;
    Label3: TLabel;
    vchvalor: TDBEdit;
    Label4: TLabel;
    vchpercentual: TDBEdit;
    Label5: TLabel;
    vchdatavalidade: TDBEdit;
    Labeletdcodigo: TLabel;
    etdcodigo: TDBEdit;
    procodigo: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    puncodigo: TDBEdit;
    registrovchmodouso: TIntegerField;
    Label9: TLabel;
    vchvoucher: TDBEdit;
    spBuscaEntidade: TSpeedButton;
    spBuscaProduto: TSpeedButton;
    spBuscaUnidade: TSpeedButton;
    registrovchetdemissor: TIntegerField;
    Label6: TLabel;
    vchetdemissor: TDBEdit;
    sbEmissor: TSpeedButton;
    registrovchautomatico: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenvchautomatico: TStringField;
    Label10: TLabel;
    vchautomatico: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btGerarClick(Sender: TObject);
    procedure vhcmodousoClick(Sender: TObject);
    procedure spBuscaEntidadeClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure sbEmissorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure vchtipoClick(Sender: TObject);
    procedure spBuscaProdutoClick(Sender: TObject);
    procedure spBuscaUnidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvch: Tfvch;

implementation

{$R *.dfm}

procedure Tfvch.bconfirmaClick(Sender: TObject);
begin

  if (vchetdemissor.Field.AsInteger = 0) then
  begin
    Showmessage('É Necesário definir o Emissor!');
  end
  else if (vchvalor.Field.AsFloat <> 0) and (vchpercentual.Field.AsFloat <> 0) or (vchvalor.Field.AsFloat = 0) and (vchpercentual.Field.AsFloat = 0) then
  begin
    Showmessage('É Necesário definir ou "Valor em R$" ou "Percentual de Desconto"!');

  end
  else
  begin
    inherited;
  end;
end;

procedure Tfvch.btGerarClick(Sender: TObject);
begin
  inherited;
  if registrovchtipo.AsInteger = 1 then
  begin

  end;
end;

procedure Tfvch.FormShow(Sender: TObject);
begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  inherited;

end;

procedure Tfvch.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrovchdataemissao.AsString := hoje(application, ZCone);
end;

procedure Tfvch.sbEmissorClick(Sender: TObject);
begin
  inherited;
  vchetdemissor.Field.AsString := MostraLista('mcli', '');
end;

procedure Tfvch.spBuscaEntidadeClick(Sender: TObject);
begin
  inherited;
  etdcodigo.Field.AsString := MostraLista('mcli', '');
end;

procedure Tfvch.spBuscaProdutoClick(Sender: TObject);
begin
  inherited;
  procodigo.Field.AsString := MostraLista('mpro', '');
end;

procedure Tfvch.spBuscaUnidadeClick(Sender: TObject);
begin
  inherited;
  puncodigo.Field.AsString := MostraLista('mpun', 'procodigo=' + procodigo.Field.AsString);
end;

procedure Tfvch.vchtipoClick(Sender: TObject);
begin
  inherited;
  if vchtipo.ItemIndex = 0 then
  begin
    vchetdemissor.Field.AsString := cfg.FieldByName('cfgetdempresa').AsString;
    vchetdemissor.ReadOnly := True;
    vchetdemissor.TabStop := False;
    vchetdemissor.Enabled := False;
    sbEmissor.Enabled := False;
  end
  else
  begin
    vchetdemissor.ReadOnly := False;
    vchetdemissor.TabStop := True;
    vchetdemissor.Enabled := True;
    sbEmissor.Enabled := True;
  end;

end;

procedure Tfvch.vhcmodousoClick(Sender: TObject);
begin
  inherited;
  if vhcmodouso.ItemIndex = 0 then
  begin
    vchdatavalidade.Field.AsString := '';
    vchdatavalidade.ReadOnly := False;
    vchdatavalidade.TabStop := True;
    vchdatavalidade.Enabled := True;
    registroetdcodigo.Required:=false;
    etdcodigo.Color:=clWhite;

  end
  else
  begin
    vchdatavalidade.Field.AsString := '31/12/2100';
    vchdatavalidade.ReadOnly := True;
    vchdatavalidade.TabStop := False;
    vchdatavalidade.Enabled := False;
    registroetdcodigo.Required:=true;
    etdcodigo.Color:=PEG_COR_VALORREQUERIDO;

  end;
end;

end.
