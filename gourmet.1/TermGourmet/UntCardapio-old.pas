unit UntCardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  DBAccess, Uni, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCardapio = class(TForm)
    Panel11: TPanel;
    LbMesa: TLabel;
    Panel2: TPanel;
    Panel10: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    LbOpcoes: TLabel;
    DBGrid3: TDBGrid;
    PnSabores: TPanel;
    Panel14: TPanel;
    LbIngredientes: TLabel;
    Panel15: TPanel;
    DBGrid4: TDBGrid;
    MemIngredientes: TMemo;
    Panel4: TPanel;
    BtnConfirmar: TButton;
    dproc: TUniDataSource;
    dGrp: TUniDataSource;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure dGrpDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure dprocDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure BuscaOpcoes;
    procedure IncluirItemFracionado;
  public
    { Public declarations }
  end;

var
  FrmCardapio: TFrmCardapio;

implementation

uses
  UntDmDados, UntIngredienteComum, UntIngredienteIndividual,
  UntIngredienteFracionado, UntPrincipal;

{$R *.dfm}

procedure TFrmCardapio.BtnConfirmarClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmCardapio.BuscaOpcoes;
begin
     with dmdados do
     begin
          if not grp.IsEmpty then
          begin
               // verifica se o produto é facionado
               sfn.Close;
               sfn.Params[0].AsInteger := grpgrpcodigo.AsInteger;
               sfn.Open;
               // caso o produto não seja facionado abre aba de opções do grupo
               if sfn.IsEmpty then
               begin
                    proc.Close;
                    proc.Params[0].AsInteger := grpgrpcodigo.AsInteger;
                    proc.Open;
                    if proc.IsEmpty then
                    begin
                         ShowMessage('Opções de Cardapio não Disponível, verifica se existe impressora definida para esse Grupo !');
                         exit;
                    end else
                    begin
                         LbOpcoes.Caption := grpgrpidentificacao.AsString;
                         // MostraTab(TabCardOpcao);
                    end;
               end else
               // caso o produto seja fracionado abre formulario de produtos facionados
               begin
                    // chama produto fracionado
                    IncluirItemFracionado;
               end;
          end;
     end;

end;

procedure TFrmCardapio.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
        Abort;
end;

procedure TFrmCardapio.DBGrid3DblClick(Sender: TObject);
begin
     MemIngredientes.Text := '';
     with dmdados do
     begin
          if not proc.IsEmpty then
          begin
               // preparando dados do item
               tito.Append;
               titoclbcodigo.AsInteger := FrmPrincipal.Usuario.clbcodigo;
               titoobs.AsString        := '';
               titopessoas.AsInteger   := 0;
               titoprocodigo.AsInteger := procprocodigo.AsInteger;
               titopronome.AsString    := procpronomereduzido.AsString;
               titopuncodigo.AsInteger := punpuncodigo.AsInteger;
               titoqtde.AsInteger      := 1;
               titosfncodigo.AsInteger := sfnsfncodigo.AsInteger;
               titosfnid.AsInteger     := ito.RecordCount+1;

               // itens com ingredientes
               if not sbr.IsEmpty then
               begin
                    Application.CreateForm(TFrmIngredienteComum, FrmIngredienteComum);
                    FrmIngredienteComum.vpSbrCodigo := sbrsbrcodigo.AsInteger;
                    FrmIngredienteComum.ShowModal;
                    if FrmIngredienteComum.vpConfirma = True then
                    begin
                         FreeAndNil(FrmIngredienteComum);
                         Close;
                    end else
                        tito.Cancel;
                    FreeAndNil(FrmIngredienteComum);
               end else
               // itens sem ingredientes
               begin
                    Application.CreateForm(TFrmIngredienteIndividual, FrmIngredienteIndividual);
                    FrmIngredienteIndividual.vpSbrCodigo := 0;
                    FrmIngredienteIndividual.ShowModal;
                    if FrmIngredienteIndividual.vpConfirma = True then
                    begin
                         FreeAndNil(FrmIngredienteComum);
                         Close;
                    end else
                        tito.Cancel;
                    freeAndNil(FrmIngredienteIndividual);
               end;
          end;
     end;
end;

procedure TFrmCardapio.dGrpDataChange(Sender: TObject; Field: TField);
begin
     BuscaOpcoes;
end;

procedure TFrmCardapio.dprocDataChange(Sender: TObject; Field: TField);
var vSabores: String;
begin
     MemIngredientes.Text := '';
     with dmdados do
     begin
          if not proc.IsEmpty then
          begin
               // abrindo a tabela de preços
               pun.Close;
               pun.Params[0].AsInteger := procprocodigo.AsInteger;
               pun.Open;

               // ingredientes do produto
               sbr.Close;
               sbr.Params[0].AsInteger := FrmPrincipal.Usuario.tsicodigo;
               sbr.Params[1].AsInteger := procprocodigo.AsInteger;
               sbr.Open;

               if not sbr.IsEmpty then
               begin
                    vSabores := '';
                    Sbr.DisableControls;
                    sbr.First;
                    while not sbr.Eof do
                    begin
                         if sbr.Bof then
                            vSabores := sbrpronome.AsString
                         else vSabores := vSabores +',  '+ sbrpronome.AsString ;
                         Sbr.Next;
                    end;
                    Sbr.EnableControls;
                    MemIngredientes.Text := vSabores;
               end;

          end;
     end;
end;

procedure TFrmCardapio.FormShow(Sender: TObject);
begin
     with Dmdados do
     begin
          tito.Close;
          tito.Open;

          pun.Close;
          proc.Close;

          grp.Close;
          grp.Open;
     end;
end;

procedure TFrmCardapio.IncluirItemFracionado;
begin
     DmDados.brd.Close;
     DmDados.brd.Params[0].AsInteger := DmDados.grpgrpcodigo.AsInteger;
     DmDados.brd.Open;

     application.CreateForm(tFrmIngredienteFracionado, FrmIngredienteFracionado);
     FrmIngredienteFracionado.LbItem.Caption := DmDados.grpgrpidentificacao.AsString;

     // mostrando tela de ingredientes fracionados
     FrmIngredienteFracionado.ShowModal;

     // destruindo tela de ingredientes fracionados
     FreeAndNil(FrmIngredienteFracionado);

end;

end.
