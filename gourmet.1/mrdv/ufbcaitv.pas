unit ufbcaitv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufbca, Data.DB, MemDS, DBAccess,     
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  Tfbcaitv = class(Tfbca)
    uqtabelaitmchave: TIntegerField;
    uqtabelameschave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaitmvalor: TFloatField;
    uqtabelaitmquantidade: TFloatField;
    uqtabelaprogtin: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelaitens: TFloatField;
    idv: tuniquery;
    idvidvchave: TIntegerField;
    idvitmchave: TIntegerField;
    idvrdvchave: TIntegerField;
    idvidvquantidade: TFloatField;
    Dídv: tunidatasource;
    procedure bcancelaClick(Sender: TObject);
    procedure uqtabelaCalcFields(DataSet: TDataSet);
    procedure DBGListaDblClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vitmchave: string;
    vrdvchave: string;
    vqtddev: string;
  end;

var
  fbcaitv: Tfbcaitv;

implementation

{$R *.dfm}

uses ufrdv, ufqtddev;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfbcaitv.bcancelaClick(Sender: TObject);
begin
  inherited;
  frdv.vitmchave := '0';
  close;

end;

procedure Tfbcaitv.bconfirmaClick(Sender: TObject);
begin
 { inherited;}
 if idv.RecordCount=0 then
 begin
   showmessage('Não foi registrado itens para devolução!');
 end
 else
 begin
  modalresult:=mrok;
 end;

end;

procedure Tfbcaitv.DBGListaDblClick(Sender: TObject);
var
  vqtd: double;
  vrecno:integer;
begin
 { inherited;}

  uqtabela.Refresh;

  if self.uqtabelaitens.AsFloat > 0 then
  begin

    If application.MessageBox(PChar('Confirma a devolução:' + #13 + 'Produto: ' + self.uqtabelaprocodigo.AsString + ' Barra: ' +
      self.uqtabelaprogtin.AsString + ' ' + self.uqtabelapronome.AsString + ' ' + #13 + 'Origem: ' + self.uqtabelaetdcodigo.AsString + ' ' +
      self.uqtabelaetdidentificacao.AsString), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
    Begin

      vqtd := 0;
      vqtddev := '0';

      idv.close;
      idv.Params[0].AsString := vrdvchave;
      idv.Open;

      if self.uqtabelaitens.AsFloat > 1 then
      begin
        try
          application.CreateForm(tfqtddev, fqtddev);
          if fqtddev.ShowModal = mrok then
          begin
            try
              vqtd := strtofloat(vqtddev);
            except
              vqtd := 0;
            end;
          end;
        finally
          freeandnil(fqtddev);
        end;
      end
      else
      begin
        vqtd :=  self.uqtabelaitens.AsFloat;
      end;
      vrecno:=self.uqtabela.RecNo;
      vitmchave := self.uqtabelaitmchave.AsString;

      if vitmchave <> '0' then
      begin

        if idv.Locate('itmchave', vitmchave, []) then
        begin

          idv.Edit;
          idvidvquantidade.AsFloat := idvidvquantidade.AsFloat + vqtd;
          idv.Post;
        end
        else
        begin
          idv.Append;
          idvidvquantidade.AsFloat := vqtd;
          idvitmchave.AsString := vitmchave;
          idvrdvchave.AsString := vrdvchave;
          idv.Post;
        end;

        self.uqtabela.Refresh;
        self.uqtabela.RecNo:=vrecno;

      end;
    End;
  end
  else
  begin
    showmessage('Este item já foi todo devolvido!');
  end;

end;

procedure Tfbcaitv.uqtabelaCalcFields(DataSet: TDataSet);
var
  saldo: double;
begin
  inherited;

  saldo := 0;
  consulta.close;
  consulta.SQL.Text := 'select sum(idvquantidade) as qtd from idv where idv.itmchave=' + self.uqtabelaitmchave.AsString;
  consulta.Open;

  saldo := self.consulta.Fields[0].AsFloat;
  consulta.close;

  self.uqtabelaitens.AsFloat := self.uqtabelaitmquantidade.AsFloat - saldo;

end;

end.
