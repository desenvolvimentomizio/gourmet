unit UntTranfereMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Data.DB, ACBrBase, ACBrValidador, ufuncoes, uni,
  Vcl.ComCtrls;

type
  TFrmTranfereMesa = class(TForm)
    Panel11: TPanel;
    Lbtitulo: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    Panel3: TPanel;
    Panel16: TPanel;
    Panel5: TPanel;
    BtnIncSabores: TBitBtn;
    BtnExcSabores: TBitBtn;
    Panel13: TPanel;
    DBGridMesas: TDBGrid;
    Panel15: TPanel;
    Panel7: TPanel;
    Panel12: TPanel;
    LbMesa: TLabel;
    Panel10: TPanel;
    LbIndicacao: TLabel;
    Panel19: TPanel;
    Panel6: TPanel;
    LbSelecionados: TLabel;
    DBGrid4: TDBGrid;
    Panel14: TPanel;
    LbInformaMesa: TLabel;
    Panel18: TPanel;
    EdtMesa: TEdit;
    ACBrValidador: TACBrValidador;
    mostra: TProgressBar;
    lmostra: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure BtnIncSaboresClick(Sender: TObject);
    procedure BtnExcSaboresClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridMesasDblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure EdtMesaEnter(Sender: TObject);
    procedure EdtMesaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure IncluirMesa;
    procedure ExcluirMesa;
    procedure AjustaTabela(tabela: string; vorcorigem: string; vorcdestino: string);
    procedure TransfereMesa(vlOrcorigem, vlOrcDestino: string);
  public
    { Public declarations }
    vpOrcChave: Integer;
  end;

var
  FrmTranfereMesa: TFrmTranfereMesa;

implementation

uses
  UntDmDados, UntPrincipal;

{$R *.dfm}

procedure TFrmTranfereMesa.AjustaTabela(tabela: string; vorcorigem: string; vorcdestino: string);
var
  reg: tuniquery;
  f: Integer;
  tem: Boolean;
begin
  try
    tem := False;
    reg := tuniquery.Create(Self);
    reg.Connection := dmdados.Conexao;

    reg.SQL.Text := 'SELECT * FROM ' + tabela;
    reg.OPEN;

    for f := 0 to reg.FieldCount - 1 do
    begin
      if reg.Fields[f].FieldName = 'orcchave' then
      begin
        tem := True;
        Break;
      end;
    end;

    if tem then
    begin

      reg.close;
      reg.SQL.Text := 'update ' + tabela + ' set orcchave=' + vorcdestino + ' where orcchave=' + vorcorigem;
      reg.ExecSQL;

    end;

  finally
    FreeAndNil(reg);
  end;

  { }
end;

procedure TFrmTranfereMesa.TransfereMesa(vlOrcorigem: string; vlOrcDestino: string);
var
  vlListaTabelas: TstringList;
  i: Integer;
  vSQLOrc:string;
begin
  try
    vlListaTabelas := TstringList.Create;

    vlListaTabelas.Add('aat');
    vlListaTabelas.Add('adt');
    vlListaTabelas.Add('alc');
    vlListaTabelas.Add('brc');
    vlListaTabelas.Add('bto');
    vlListaTabelas.Add('dor');
    vlListaTabelas.Add('itf');
    vlListaTabelas.Add('ito');
    vlListaTabelas.Add('mor');
    vlListaTabelas.Add('msa');
    vlListaTabelas.Add('oic');
    vlListaTabelas.Add('olt');
    vlListaTabelas.Add('rlo');
    vlListaTabelas.Add('t01');
    vlListaTabelas.Add('unm');
    vlListaTabelas.Add('uoc');
    vlListaTabelas.Add('vor');
    vlListaTabelas.Add('vfo');

    dmdados.orctfm.Connection := dmdados.Conexao;

    for i := 0 to vlListaTabelas.Count - 1 do
    begin
    try
      dmdados.orctfm.close;
      dmdados.orctfm.SQL.Text := 'update ' + vlListaTabelas[i] + ' set orcchave=' + vlOrcDestino + ' where orcchave=' + vlOrcorigem;
      dmdados.orctfm.ExecSQL;
    except

    end;
    end;

    dmdados.orctfm.close;
    dmdados.orctfm.SQL.Text := 'update tro set orcchaveorigem=' + vlOrcDestino + ' where orcchaveorigem=' + vlOrcorigem;
    dmdados.orctfm.ExecSQL;

    dmdados.orctfm.close;
    dmdados.orctfm.SQL.Text := 'delete from orc where orcchave=' + vlOrcorigem;
    dmdados.orctfm.ExecSQL;

    i := 1;
    dmdados.ito.First;
    while not dmdados.ito.Eof do
    begin

      dmdados.consulta.close;
      dmdados.consulta.SQL.Text := 'update ito set itoitem=' + inttostr(i) + ' where itochave=' + dmdados.itoitochave.AsString;
      dmdados.consulta.ExecSQL;

      dmdados.consulta.close;
      dmdados.consulta.SQL.Text := 'update sbi set sbiitem=' + inttostr(i) + ' where itochave=' + dmdados.itoitochave.AsString;
      dmdados.consulta.ExecSQL;

      dmdados.consulta.close;
      dmdados.consulta.SQL.Text := 'update isi set isiitem=' + inttostr(i) + ' where itochave=' + dmdados.itoitochave.AsString;
      dmdados.consulta.ExecSQL;

      dmdados.ito.Next;
      i := i + 1;
    end;

    dmdados.ito.close;
    dmdados.ito.OPEN;

    vSQLOrc := ' UPDATE orc ' + '  INNER JOIN (SELECT ito.orcchave ' + '                   , SUM(itovalorav * itoquantidade) totav ' +
      '                   , SUM(itodescontoav * itoquantidade) descav ' + '                   , SUM(itovalorav * itoquantidade) totap ' +
      '                   , SUM(itodescontoap * itoquantidade) descap ' + '                FROM ito ' + '               WHERE stocodigo != 88 ' +
      '               GROUP BY ito.orcchave ) tito ' + '         ON tito.orcchave = orc.orcchave ' + '    SET orc.orcgeralav    = tito.totav ' +
      '      , orc.orcdescontoav = tito.descav ' + '      , orc.orcpercdescav = 0 ' + '      , orc.orctotalav    = (tito.totav - tito.descav) ' +
      '      , orc.orcgeralap    = tito.totap ' + '      , orc.orcdescontoap = tito.descap ' + '      , orc.orcpercdescap = 0 ' +
      '      , orc.orctotalap    = (tito.totap - tito.descap) ' + '  WHERE orc.orcchave = ' + vlOrcDestino;
    dmdados.ExecutaSQL(vSQLOrc);


  finally

    FreeAndNil(vlListaTabelas);
  end;
end;

procedure TFrmTranfereMesa.btnConfirmarClick(Sender: TObject);
var
  vlOrcorigem: String;
  vlOrcDestino: string;

  vlRetorno: Integer;
  vlMensagem: string;

  lTabelas: TstringList;
  vNomeTabela: string;
  i, t: Integer;
  reg: tuniquery;

begin

  if not dmdados.tfm.active then
    dmdados.tfm.OPEN;

  if not dmdados.ttfm.IsEmpty then
  begin
    dmdados.ttfm.ApplyUpdates;
  end;

  dmdados.ttfm.First;
  while not dmdados.ttfm.Eof do
  begin
    vlOrcorigem := dmdados.ttfmorcchave.AsString;
    vlOrcDestino := vpOrcChave.ToString;

    TransfereMesa(vlOrcorigem, vlOrcDestino);

    dmdados.tfm.append;
    dmdados.tfmorcchaveorigem.AsString := vlOrcorigem;
    dmdados.tfmorcchavedestino.AsString := vlOrcDestino;
    dmdados.tfmclbcodigo.asinteger := dmdados.Usuario.ClbCodigo;
    dmdados.tfmtfmregistro.asfloat := now();
    dmdados.tfm.post;

    dmdados.ttfm.Next;
  end;

  modalresult := mrok;

  { var
    vlOrcorigem: Integer;
    vlRetorno: Integer;
    vlMensagem: string;

    lTabelas: TStringList;
    vNomeTabela: string;
    i, t: Integer;
    reg: tuniquery;
    vlOrcDestino: string;

    begin


    with dmdados do
    begin
    if not ttro.IsEmpty then
    ttro.ApplyUpdates;

    TransfereMesa.close;
    TransfereMesa.Params[0].AsInteger := vpOrcChave;
    TransfereMesa.ExecProc;

    vlRetorno := TransfereMesa.Params[1].AsInteger;
    vlMensagem := TransfereMesa.Params[2].AsString;

    if TransfereMesa.Fields[0].AsInteger = 0 then
    begin

    ito.close;
    ito.Params[0].AsInteger := vpOrcChave;
    ito.OPEN;
    FPrinciGou.LbItemQtde.Caption := 'Itens: ' + IntToStr(ito.RecordCount);


    end; // else ShowMessage(TransfereMesa.Fields[1].AsString);
    close;
    end; }

end;

procedure TFrmTranfereMesa.BtnExcSaboresClick(Sender: TObject);
begin
  if not dmdados.ttfm.IsEmpty then
    ExcluirMesa;

  { if not dmdados.ttro.IsEmpty then
    ExcluirMesa; }
end;

procedure TFrmTranfereMesa.BtnIncSaboresClick(Sender: TObject);
begin

  if not dmdados.trfmesa.IsEmpty then
    IncluirMesa;
end;

procedure TFrmTranfereMesa.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure TFrmTranfereMesa.DBGrid4DblClick(Sender: TObject);
begin
  if not dmdados.ttfm.IsEmpty then
    ExcluirMesa;

  { if not dmdados.ttro.IsEmpty then
    ExcluirMesa; }
end;

procedure TFrmTranfereMesa.DBGridMesasDblClick(Sender: TObject);
begin
  if not dmdados.trfmesa.IsEmpty then
    IncluirMesa;
end;

procedure TFrmTranfereMesa.EdtMesaEnter(Sender: TObject);
begin
  EdtMesa.Clear;
end;

procedure TFrmTranfereMesa.EdtMesaKeyPress(Sender: TObject; var Key: Char);
var
  vlBarra: String;
begin
  if Key = #13 then
  begin
    Key := #0;
    if Length(EdtMesa.Text) > 0 then
    begin
      vlBarra := EdtMesa.Text;
      if (Copy(vlBarra, 1, 5) = '99999') and (Length(vlBarra) > 10) then
      begin
        ACBrValidador.Documento := vlBarra;

        if ACBrValidador.Validar = False then
        begin
          showmessage('Falha de Leitura!');
          EdtMesa.Text := '';
          Exit;
        end
        else
        begin
          EdtMesa.Text := Copy(EdtMesa.Text, 6, 10);
        end;

        EdtMesa.Text := sonumeros(vlBarra);

      end
      else
      begin
        EdtMesa.Text := sonumeros(vlBarra);
      end;

      if dmdados.trfmesa.Locate('orcmesa', EdtMesa.Text, []) then
      begin
        IncluirMesa;
        EdtMesa.Clear;
        EdtMesa.SetFocus;

      end
      else
      begin
        showmessage(dmdados.Usuario.TituloOperador + ' ' + EdtMesa.Text + ' não localizada');
        EdtMesa.SetFocus;
        EdtMesa.Clear;
      end;
    end
    else
      btnConfirmar.SetFocus;
  end;

  if not(Key in ['0' .. '9', #8]) then
    Key := #0;

end;

procedure TFrmTranfereMesa.ExcluirMesa;
var
  vRecNo: Integer;
begin
  if not dmdados.ttfm.IsEmpty then
  begin
    if MessageDlg('* * * * *  A t e n ç ã o  * * * * *' + #13 + #13 + dmdados.ttfmmesa.AsString + #13 + 'Deseja realmente tirar da lista ' + dmdados.Usuario.TituloOperador +
      ' selecionadas ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
    begin
      vRecNo := dmdados.trfmesa.RecNo;

      dmdados.trfmesa.DisableControls;
      dmdados.trfmesa.Filtered := False;
      if dmdados.trfmesa.Locate('orcchave', dmdados.ttfmorcchave.asinteger, []) then
      begin
        dmdados.trfmesa.Edit;
        dmdados.trfmesasel.asinteger := 0;
        dmdados.trfmesa.post;
      end;
      dmdados.trfmesa.Filtered := True;
      dmdados.trfmesa.EnableControls;

      dmdados.ttfm.Delete;
    end;
  end
  else
    showmessage('Não existem itens na comanda, não é possível excluir!');
end;

{ procedure TFrmTranfereMesa.ExcluirMesa;
  var
  vRecNo: Integer;
  begin
  if not dmdados.ttro.IsEmpty then
  begin
  if MessageDlg('* * * * *  A t e n ç ã o  * * * * *' + #13 + #13 + dmdados.ttromesa.AsString + #13 + 'Deseja realmente tirar da lista ' + dmdados.Usuario.TituloOperador +
  ' selecionadas ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
  begin
  vRecNo := dmdados.trfmesa.RecNo;

  dmdados.trfmesa.DisableControls;
  dmdados.trfmesa.Filtered := False;
  if dmdados.trfmesa.Locate('orcchave', dmdados.ttroorcchave.AsInteger, []) then
  begin
  dmdados.trfmesa.Edit;
  dmdados.trfmesasel.AsInteger := 0;
  dmdados.trfmesa.Post;
  end;
  dmdados.trfmesa.Filtered := True;
  dmdados.trfmesa.EnableControls;

  dmdados.ttro.Delete;
  end;
  end
  else
  showmessage('Não existem itens na comanda, não é possível excluir!');
  end; }

procedure TFrmTranfereMesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmdados.ttfm.close;
  { dmdados.ttro.close; }
  dmdados.trfmesa.close;
  dmdados.vtmsajuncao.close;

  LbMesa.Caption := dmdados.Usuario.TituloOperador;
end;

procedure TFrmTranfereMesa.FormShow(Sender: TObject);
begin
  Lbtitulo.Caption := 'Transferência de ' + dmdados.Usuario.TituloOperador;
  LbInformaMesa.Caption := 'Informe ' + dmdados.Usuario.TituloOperador + ' a ser transferida : ';

  LbIndicacao.Caption := 'Selecione ' + dmdados.Usuario.TituloOperador + ' a serem transferidas';
  LbSelecionados.Caption := '';

  dmdados.ttfm.close;
  dmdados.ttfm.OPEN;

  { dmdados.ttro.close;
    dmdados.ttro.OPEN; }
  EdtMesa.SetFocus;
end;

procedure TFrmTranfereMesa.IncluirMesa;
var
  vlOrcchave: string;
begin
  dmdados.ttfm.append;
  dmdados.ttfmmesa.AsString := dmdados.trfmesamesa.AsString;
  vlOrcchave := dmdados.trfmesaorcchave.AsString;
  dmdados.ttfmorcchave.asinteger := dmdados.trfmesaorcchave.asinteger;
  dmdados.ttfmorcmesa.asinteger := dmdados.trfmesaorcmesa.asinteger;
  dmdados.ttfmclbcodigo.asinteger := dmdados.Usuario.ClbCodigo;
  dmdados.ttfmregistro.asfloat := now();
  dmdados.ttfm.post;

  dmdados.trfmesa.Edit;
  dmdados.trfmesasel.asinteger := 1;
  dmdados.trfmesa.post;

end;

{ procedure TFrmTranfereMesa.IncluirMesa;
  var
  vlOrcchave: string;
  begin
  with dmdados do
  begin
  ttro.Append;
  ttromesa.AsString := trfmesamesa.AsString;
  vlOrcchave := trfmesaorcchave.AsString;
  ttroorcchave.AsInteger := trfmesaorcchave.AsInteger;
  ttroorcmesa.AsInteger := trfmesaorcmesa.AsInteger;
  ttroclbcodigo.AsInteger := dmdados.Usuario.ClbCodigo;
  ttroregistro.asfloat := now();
  ttro.Post;

  trfmesa.Edit;
  trfmesasel.AsInteger := 1;
  trfmesa.Post;
  end;
  end; }

end.
