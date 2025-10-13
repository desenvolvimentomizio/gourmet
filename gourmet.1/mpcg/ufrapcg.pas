unit ufrapcg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, System.StrUtils,
  Vcl.ComCtrls, Vcl.Graphics, Vcl.Dialogs, uPegaBase, Vcl.Mask, Vcl.DBCtrls, ufuncoes,
  System.ImageList, Vcl.ImgList;

type
  Tfrapcg = class(Tfrabase)
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgestrutural: TStringField;
    uqtabelaseacodigo: TIntegerField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelacedcodigo: TIntegerField;
    ActGrupos: TAction;
    cfp: TUniQuery;
    cfpcfpcodigo: TIntegerField;
    cfpcfpidentificacao: TStringField;
    uqtabelapcgativa: TIntegerField;
    uqtabelacggcodigo: TIntegerField;
    prc: TUniQuery;
    prcprcchave: TIntegerField;
    prcprcpercentual: TFloatField;
    prcpcgidentificacao: TStringField;
    prcccgidentificacao: TStringField;
    Dprc: TDataSource;
    DBGPrc: TDBGrid;
    plTituloRateiso: TPanel;
    ActRateios: TAction;
    ActAlterarGrupos: TAction;
    uqtabelacfpcodigo: TIntegerField;
    lbEstrutural: TLabel;
    uqtabelaseaidentificacao: TStringField;
    uqtabelacedidentificacao: TStringField;
    uqtabelaregcaixa: TStringField;
    uqtabelapcgrecdes: TIntegerField;
    cfg: TUniQuery;
    cfgcfgctbmodo: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    uqtabelacfpidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActGruposExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActRateiosExecute(Sender: TObject);
    procedure DBGPrcDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaStateChange(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
    vpPodeFechar: boolean;

    procedure Carregar; override;
  end;

var
  frapcg: Tfrapcg;

type
  // This is a very simple record we use to store data in the nodes.
  // Since the application is responsible to manage all data including the node's caption
  // this record can be considered as minimal requirement in all VT applications.
  // Extend it to whatever your application needs.
  PMyRec = ^TMyRec;

  TMyRec = record
    Caption: WideString;
  end;

  // Início ID do Módulo frapcg
const
  vPlIdMd = '02.02.16.007-01';
  vPlTitMdl = 'Plano de Contas Gerenciais';

  // Fim ID do Módulo frapcg

implementation

{$R *.dfm}

uses ufpcg, ufcfp;

function PosEnd(const substr, str: string): Integer; // busca a partir do final da string
begin
  result := length(str) - pos(substr, ReverseString(str));
end;

function GetNodeByText(ATree: TTreeView; AValue: String; AVisible: boolean): TTreeNode;
var
  Node: TTreeNode;
  TextNode: string;
begin
  result := nil;
  if ATree.Items.Count = 0 then
    Exit;
  Node := ATree.Items[0];
  while Node <> nil do
  begin
    TextNode := copy(Node.Text, 1, pos(' ', Node.Text));
    if UpperCase(TextNode) = UpperCase(AValue) then
    begin
      result := Node;
      if AVisible then
        result.MakeVisible;
      break;
    end;
    Node := Node.GetNext;
  end;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapcg := Tfrapcg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapcg := Tfrapcg.Create(pCargaFrame);
  try
    frapcg.CriaAcoesDeAcesso;
  finally
    frapcg.Free;
  end;
end;

exports formuFrame, defineacesso;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfrapcg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 { if self.uqtabelapcgcodigo.asstring <> '' then
  begin
    consulta.Close;
    consulta.sql.Text := 'select rmgchave from rmg where  (pcgcodigo=' + self.uqtabelapcgcodigo.asstring + ')';
    consulta.Open;
  end;
  if consulta.Active then
  begin
    if not consulta.IsEmpty then
    begin
      Application.MessageBox(PChar('Esta conta já esta em uso no sistema, não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
  end;}

  CriaFormulario(Tfpcg, self.uqtabelapcgcodigo.asstring, '');
end;

procedure Tfrapcg.ActIncluirExecute(Sender: TObject);

  function PosEnd(const substr, str: string): Integer; // busca a partir do final da string
  begin
    result := pos(substr, ReverseString(str));
  end;

var
  texto: string;
  vlUltNume: string;
  mascara: string;
  vlMasc: string;
  vlPai: string;
  vlOrigem: string;

begin

  inherited;
  mascara := '000000000000';

  if uqtabelaseacodigo.AsInteger = 1 then
  begin
    ShowMessage('É necessário selecionar uma conta Sintética como base para inclusão de uma nova conta!');
    Exit;

  end;
  if lbEstrutural.Caption <> '' then
  begin
    consulta.Close;
    consulta.sql.Text := 'select cfpmascara from cfp where cfpcodigo=' + copy(lbEstrutural.Caption, 1, 1);
    consulta.Open;

    vlMasc := consulta.fields[0].asstring;
    vlPai := lbEstrutural.Caption;
  end;

  if length(vlMasc) = length(uqtabelapcgestrutural.asstring) then
  begin
    ShowMessage('Não é possivel incluir Sub-Conta. máscara do Grupo não permite!');
    Exit;
  end;

  texto := copy(vlMasc, length(uqtabelapcgestrutural.asstring) + 1, 50);
  if pos('.', texto) > 0 then
  begin
    if pos('.', texto) = 1 then
    begin
      texto := copy(texto, 2, length(texto));
      if pos('.', texto) > 0 then
      begin
        texto := copy(texto, 1, pos('.', texto) - 1);
      end;
    end
    else
    begin
      texto := copy(texto, 1, pos('.', texto) - 1);
    end;
  end;

  consulta.Close;
  if (uqtabelaseacodigo.AsInteger = 1) or (length(vlMasc) = length((vlPai + '.' + texto))) then
    consulta.sql.Text := 'select pcgestrutural from pcg where pcgestrutural like ' + chr(39) + vlPai + '%' + chr(39) + ' order by pcgestrutural desc limit 1'
  else
    consulta.sql.Text := 'select pcgestrutural from pcg where length(pcgestrutural)=' + inttostr(length(lbEstrutural.Caption + '.' + texto)) +
      ' and  pcgestrutural like ' + chr(39) + vlPai + '%' + chr(39) + ' order by pcgestrutural desc limit 1';

  consulta.Open;
  vlUltNume := copy(consulta.fields[0].asstring, length(vlPai) + 2, 10);
  if vlUltNume = '' then
    vlUltNume := copy(mascara, 1, length(texto));

  vlUltNume := vlPai + '.' + formatfloat(copy(mascara, 1, length(vlUltNume)), strtoint(vlUltNume) + 1);

  CriaFormulario(Tfpcg, '', vlUltNume);
end;

procedure Tfrapcg.ActRateiosExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mprc', '', self.uqtabelapcgcodigo.asstring);
  self.ActAtualizar.Execute;
end;

procedure Tfrapcg.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfrapcg.ActExcluirExecute(Sender: TObject);
begin
  { inherited; }

  if self.Autorizado(Sender) then
    if (Sender is TAction) then
      if (Sender as TAction).Tag > 0 then
      begin
        // Exclui registro selecionado
        if ActExcluir.Enabled = False then
        begin
          ShowMessage('Excluir não autorizada!');
        end
        else
        begin
          if Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'),
            MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
          begin
            self.uqtabela.Delete;
            try
              self.ActAtualizar.Execute;
            except

            end;
          end;
        end;
      end;

end;

procedure Tfrapcg.ActGruposExecute(Sender: TObject);
begin
  CriaFormulario(Tfcfp, '', '');
end;

procedure Tfrapcg.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
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

    DBGLista.Canvas.Brush.Color := CLWHITE;
  end;

  if self.uqtabelaseacodigo.asstring = '1' then
  begin
    DBGLista.Canvas.Font.Style := [];
  end
  else
  begin
    DBGLista.Canvas.Font.Style := [fsBold];

  end;

  if self.uqtabelacedcodigo.asstring = '1' then
  begin
    DBGLista.Canvas.Font.Color := clNavy;
  end
  else
  begin
    DBGLista.Canvas.Font.Color := clRed;

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
      Font.Color := CLWHITE;
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

end;

procedure Tfrapcg.DBGPrcDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrapcg.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not uqtabela.Active then
    Exit;

  if uqtabelapcgcodigo.asstring = '' then
    Exit;

  prc.Close;
  prc.Params[0].AsInteger := uqtabelapcgcodigo.AsInteger;
  prc.Open;
  lbEstrutural.Caption := uqtabelapcgestrutural.asstring;

  { if frapcg.edbusca.Tag = 1 then
    begin
    if frapcg.uqtabelaseacodigo.AsInteger = 0 then
    begin

    vpPodeFechar := False;
    end
    else
    begin
    vpPodeFechar := True;
    end;
    end; }

end;

procedure Tfrapcg.DSTabelaStateChange(Sender: TObject);
begin
  inherited;
  prc.Close;
  prc.Params[0].AsInteger := uqtabelapcgcodigo.AsInteger;
  prc.Open;
  lbEstrutural.Caption := uqtabelapcgestrutural.asstring;

end;

end.
