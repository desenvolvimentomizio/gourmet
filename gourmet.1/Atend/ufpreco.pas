unit ufpreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, uBuscaProduto, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  Tfpreco = class(TForm)
    plDireitaDetalhe: TPanel;
    IImagem: TImage;
    plEsquerdaPdv: TPanel;
    plGrupoValorUnitario: TPanel;
    plTituloValorUnitario: TPanel;
    plValorUnitario: TPanel;
    plGrupoQuantidade: TPanel;
    plTituloQuantidade: TPanel;
    plQtdUni: TPanel;
    plSimbolo: TPanel;
    plGrupoTotalItem: TPanel;
    plGrupoPronome: TPanel;
    plPronome: TPanel;
    plNomeProduto: TPanel;
    plRodapeEsquerda: TPanel;
    plRecebeDados: TPanel;
    plCodigo: TPanel;
    plTituloCodigo: TPanel;
    cdbarra: TEdit;
    procedure cdbarraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpreco: Tfpreco;

implementation

{$R *.dfm}

uses uFprinciPdv;

procedure Tfpreco.cdbarraKeyPress(Sender: TObject; var Key: Char);
var
  VProduto: Integer;
  vlProduto: string;
  VCBarra: string;
  vEmbalagem: Integer;
  vVariacao: Integer;
begin
  If (Key = #13) Then
  Begin
    Key := #0;

    plValorUnitario.Caption := formatfloat('##,###,##0.00', 0.00);
    plNomeProduto.Caption := '';
    plSimbolo.Caption := '';

    vEmbalagem := 0;
    VCBarra := cdbarra.Text;
    VProduto := BuscaProdutoBarra(Application, FprinciPdv.conexao, VCBarra, vEmbalagem, vVariacao);
    try
      vlProduto := inttostr(VProduto);

      FprinciPdv.consulta.Close;
      FprinciPdv.consulta.sql.Text := 'SELECT  pun.punprecoav,  pro.procodigo,  pro.pronome,  uni.unisimbolo ';
      FprinciPdv.consulta.sql.Add('FROM pun ');
      FprinciPdv.consulta.sql.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo ');
      FprinciPdv.consulta.sql.Add('INNER JOIN uni ON pun.unicodigo = uni.unicodigo ');
      FprinciPdv.consulta.sql.Add(' where pro.procodigo=' + vlProduto);

      FprinciPdv.consulta.Open;

      if FprinciPdv.consulta.RecordCount >= 1 then
      begin
        plValorUnitario.Caption := formatfloat('##,###,##0.00', FprinciPdv.consulta.fields[0].AsFloat);
        plNomeProduto.Caption := FprinciPdv.consulta.fields[2].AsString;
        plSimbolo.Caption := FprinciPdv.consulta.fields[3].AsString;
        cdbarra.SelectAll;
      end;
    except
      plValorUnitario.Caption := formatfloat('##,###,##0.00', 0.00);
      plNomeProduto.Caption := 'Produto não Localizado.';
      plSimbolo.Caption := '';
      cdbarra.Text := '';

    end;
  End
  else If (Key = #27) Then
  Begin
    Key := #0;
    plNomeProduto.Caption := '';
    Close;
  End;

end;

end.
