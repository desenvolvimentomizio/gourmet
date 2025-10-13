unit UntIngredienteIndividual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, db,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFrmIngredienteIndividual = class(TForm)
    Panel1: TPanel;
    Panel11: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    PnSabores: TPanel;
    Panel9: TPanel;
    BtnCardRetornar: TButton;
    Button2: TButton;
    Panel8: TPanel;
    DBText1: TDBText;
    Panel5: TPanel;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Button6: TButton;
    EdtQtde: TDBEdit;
    Button5: TButton;
    Label2: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    EdtCopos: TDBEdit;
    Label3: TLabel;
    EdtPratos: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    total: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BtnCardRetornarClick(Sender: TObject);
    procedure EdtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQtdeExit(Sender: TObject);
    procedure EdtCoposExit(Sender: TObject);
    procedure EdtPratosExit(Sender: TObject);
    procedure EdtCoposEnter(Sender: TObject);
    procedure EdtPratosEnter(Sender: TObject);
    procedure EdtQtdeEnter(Sender: TObject);
  private
    { Private declarations }
    procedure ConfirmaItem;
    procedure PreparaInclusao;

  public
    { Public declarations }
    vpSbrCodigo: Integer;
    vpConfirma: boolean;
  end;

var
  FrmIngredienteIndividual: TFrmIngredienteIndividual;

implementation

uses
  UntDmDados, UntPrincipal;

{$R *.dfm}

procedure TFrmIngredienteIndividual.BtnCardRetornarClick(Sender: TObject);
begin
{ if EdtQtde.Field.AsFloat>99 then
 begin
   showmessage('Quantidade acima de 99, não permitida!');
   exit;
 end;}
  ConfirmaItem;
end;

procedure TFrmIngredienteIndividual.Button2Click(Sender: TObject);
begin
  vpConfirma := False;
  Close;
end;

procedure TFrmIngredienteIndividual.Button5Click(Sender: TObject);
begin
  if DmDados.titoqtde.AsInteger >= 1 then
  begin
    DmDados.titoqtde.AsInteger := DmDados.titoqtde.AsInteger + 1;
    DmDados.titototal.AsCurrency := DmDados.punpunprecoav.AsCurrency * DmDados.titoqtde.AsInteger;
  end;
end;

procedure TFrmIngredienteIndividual.Button6Click(Sender: TObject);
begin
  if DmDados.titoqtde.AsInteger > 1 then
  begin
    DmDados.titoqtde.AsInteger := DmDados.titoqtde.AsInteger - 1;
    DmDados.titototal.AsCurrency := DmDados.punpunprecoav.AsCurrency * DmDados.titoqtde.AsInteger;
  end;
end;

procedure TFrmIngredienteIndividual.ConfirmaItem;
var
 vlItochave:Integer;
begin
  if (Length(EdtQtde.Text) > 0) and (StrToFloat(EdtQtde.Text) = 0) then
    Exit;

  with DmDados do
  begin
    if tito.State in [DsInsert, DsEdit] then
    begin

      tito.Post;
      tito.ApplyUpdates;

      if not sbr.IsEmpty then
      begin
        if not tisi.active then
          tisi.open;

        // gravando saberes e ingredients
        sbr.DisableControls;

        sbr.First;
        while not sbr.Eof do
        begin
          if (sbrtsicodigo.AsInteger <> Usuario.tsicodigo) then
          begin
            tisi.Append;
            tisisbrcodigo.AsInteger := sbrsbrcodigo.AsInteger;
            tisiprocodigo.AsInteger := sbrprocodigo.AsInteger;
            tisitsicodigo.AsInteger := sbrtsicodigo.AsInteger;
            tisiisitipo.AsInteger := sbrtipo.AsInteger;
            tisisfnid.AsInteger := titosfnid.AsInteger;
            tisisfncodigo.AsInteger := 0;
            if Length(titoobs.AsString) > 0 then
              tisiobs.AsString := titoobs.AsString;
            tisi.Post;
          end;
          sbr.Next;
        end;
        sbr.EnableControls;
        sbr.Close;

        vtsbradc.DisableControls;
        if not vtsbradc.IsEmpty then
        begin
          vtsbradc.First;
          while not vtsbradc.Eof do
          begin
            tisi.Append;
            tisisbrcodigo.AsInteger := vpSbrCodigo; // vtsbradcsbrcodigo.AsInteger;
            tisiprocodigo.AsInteger := vtsbradcprocodigo.AsInteger;
            tisitsicodigo.AsInteger := vtsbradctsicodigo.AsInteger;
            tisiisitipo.AsInteger := 1;
            tisisfnid.AsInteger := titosfnid.AsInteger;
            tisisfncodigo.AsInteger := 0;
            if Length(titoobs.AsString) > 0 then
              tisiobs.AsString := titoobs.AsString;
            tisi.Post;
            vtsbradc.Next;
          end;
        end;
        vtsbradc.EnableControls;
      end;

      if tisi.active then
        tisi.ApplyUpdates;

      // borda produtos fracionados
      if tbrd.active then
        tbrd.ApplyUpdates;

      MobGravaItens.Close;
      MobGravaItens.Params[0].AsInteger := orcorcchave.AsInteger;
      MobGravaItens.Params[1].AsInteger := Usuario.ClbCodigo;
      MobGravaItens.Params[2].AsInteger := DmDados.cfgmcfgflacodigo.AsInteger;
      MobGravaItens.Params[3].AsInteger := 2; // tipo 2 para gravar itens do tipo gourmet
      MobGravaItens.ExecProc;
    vlItochave:=DmDados.MobGravaItens.ParamByName('pconfirma').AsInteger;

      if MobGravaItens.Fields[0].AsInteger = 0 then
      begin

        if DmDados.vtItens.active then
        begin

          vtItens.EmptyDataSet
        end;
      end
      else
        ShowMessage(MobGravaItens.Fields[1].AsString);
    end;
    PreparaInclusao;
    vpConfirma := True;
    Close;
  end;
end;

procedure TFrmIngredienteIndividual.EdtCoposEnter(Sender: TObject);
begin
  EdtCopos.SelectAll;
end;

procedure TFrmIngredienteIndividual.EdtCoposExit(Sender: TObject);
begin
  if Length(EdtCopos.Text) = 0 then
    DmDados.titocopos.AsInteger := 0;
end;

procedure TFrmIngredienteIndividual.EdtPratosEnter(Sender: TObject);
begin
  EdtPratos.SelectAll;
end;

procedure TFrmIngredienteIndividual.EdtPratosExit(Sender: TObject);
begin
  if Length(EdtPratos.Text) = 0 then
    DmDados.titopratos.AsInteger := 0;
end;

procedure TFrmIngredienteIndividual.EdtQtdeEnter(Sender: TObject);
begin
  EdtQtde.Color := $0080FFFF;
end;

procedure TFrmIngredienteIndividual.EdtQtdeExit(Sender: TObject);
begin
  EdtQtde.Color := clWhite;

  if Length(EdtQtde.Text) = 0 then
    DmDados.titoqtde.AsInteger := 1;
end;

procedure TFrmIngredienteIndividual.EdtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if Length(EdtQtde.Text) = 0 then
      DmDados.titoqtde.AsInteger := 1
    else
      DmDados.titoqtde.AsString := EdtQtde.Text;

    ConfirmaItem;
  end;

  if (TRIM(UPPERCASE(DBLookupComboBox1.Text)) = 'KG') or (TRIM(UPPERCASE(DBLookupComboBox1.Text)) = 'R$') then
  begin
    if not(Key in ['0' .. '9', Chr(8), ',']) then
      Key := #0;
  end
  else
  begin
    if not(Key in ['0' .. '9', Chr(8)]) then
      Key := #0;

  end;
end;

procedure TFrmIngredienteIndividual.FormShow(Sender: TObject);
begin
  // variavel de controle
  vpConfirma := False;

  // busca dados do quantidade de ingredientes
  if not DmDados.tsi.active then
    DmDados.tsi.open;

  // abre tabela virtual de ingredientes adicionais
  if not DmDados.vtsbradc.active then
    DmDados.vtsbradc.open
  else
  begin
    if DmDados.vtsbradc.active then
    begin
      DmDados.vtsbradc.EmptyDataSet;
    end;
  end;

if EdtQtde.Field.AsString='' then
begin
  EdtQtde.Field.AsInteger := 1;
end;

  EdtQtde.SelectAll;
  EdtQtde.SetFocus;
end;

procedure TFrmIngredienteIndividual.PreparaInclusao;
begin
  with DmDados do
  begin
    tito.Close;
    tito.open;
    if not vtsbradc.IsEmpty then
    begin
      if DmDados.vtsbradc.active then
      begin
        vtsbradc.EmptyDataSet;
      end;
    end;
  end;
end;

end.
