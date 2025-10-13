unit ufdrg;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ActnList, System.Actions;

type
  Tfdrg = class(Tfrmbase)
    registrodrgchave: TIntegerField;
    registrormgchave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registrodrgvalor: TFloatField;
    Label1: TLabel;
    pcgcodigo: TDBEdit;
    Label2: TLabel;
    drgvalor: TDBEdit;
    PlValorAContabilizar: TPanel;
    PlValorContabilizado: TPanel;
    Placont: TPanel;
    Plcont: TPanel;
    pcgdebestrutural: TDBText;
    pcgidentificacao: TDBText;
    BvDebito: TBevel;
    spdbpcgdebito: TSpeedButton;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgestrutural: TStringField;
    pcgpcgidentificacao: TStringField;
    registropcgestrutural: TStringField;
    registropcgidentificacao: TStringField;
    registrodrgtipo: TIntegerField;
    drg: tuniquery;
    drgdrgchave: TIntegerField;
    drgrmgchave: TIntegerField;
    drgpcgcodigo: TIntegerField;
    drgdrgtipo: TIntegerField;
    Ddrg: tunidatasource;
    DBGLista: TDBGrid;
    drgdrgvalor: TFloatField;
    drgpcgidentificacao: TStringField;
    Label3: TLabel;
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    SBBotoes: TScrollBox;
    bincluir: TBitBtn;
    PlTituloBotoes: TPanel;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    ImagensManutencao: TImageList;
    acoes: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure spdbpcgdebitoClick(Sender: TObject);
    procedure pcgcodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    vacontabilizar: double;
    vcontabilizado: double;
    vdrgtipo: Integer;

  end;

var
  fdrg: Tfdrg;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

  // Início ID do Módulo frarmg
const
  vPlIdMd = '02.02.16.009-03';

  // Fim ID do Módulo frarmg

implementation

{$R *.dfm}

procedure Tfdrg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  if self.registro.State <> dsbrowse then
  begin
    self.registro.Cancel;
  end;
  self.registro.Close;
  self.registro.Params[0].AsString := self.drgdrgchave.AsString;
  self.registro.Params[1].AsString := self.vChaveMestre;
  self.registro.Params[2].AsString := self.txtFiltro;
  self.registro.Open;

  self.registro.Edit;
  pcgcodigo.SetFocus;

end;

procedure Tfdrg.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  if (Sender is TAction) then
  begin

    // Exclui registro selecionado
    If ActExcluir.Enabled = false Then
    Begin
      showmessage('Excluir não autorizada!');
    End
    Else
    Begin
      If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'),
        MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
      Begin
        self.drg.Delete;
        self.drg.Refresh;
        self.ActAlterar.Execute;
      End;
    End;

  end;
end;

procedure Tfdrg.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  registro.Append;
  pcgcodigo.SetFocus;

end;

procedure Tfdrg.bconfirmaClick(Sender: TObject);
begin
  self.registrodrgtipo.AsInteger := self.vdrgtipo;
  if (pcgcodigo.Field.AsString = '') then
  begin
    showmessage('É necessário uma das contas, ou a de Débito ou a de Crédito!');
    pcgcodigo.SetFocus;
  end
  else
  begin

    { inherited; }
    If self.bconfirma.Caption = 'Confirma' Then
    Begin

      If self.SalvaRegistro Then
      Begin

        if self.psituacao.Caption = 'Incluindo' then
        begin

          consulta.Close;
          consulta.SQL.text := 'select sum(drgvalor) as total from drg where drg.rmgchave=' + self.vChaveMestre + ' and drgtipo=' +
            inttostr(self.vdrgtipo);
          consulta.Open;

          drg.Close;
          drg.SQL.text :=
            'select drgchave,rmgchave, drgvalor, drg.pcgcodigo,drgtipo, pcgidentificacao from drg,pcg where drg.pcgcodigo=pcg.pcgcodigo and drg.rmgchave='
            + self.vChaveMestre + ' and drgtipo=' + inttostr(self.vdrgtipo);
          drg.Open;

          self.vcontabilizado := consulta.Fields[0].AsCurrency;
          self.Plcont.Caption := 'Valor já rateado R$ ' + format('%14.2f', [self.vcontabilizado]);

          if self.vcontabilizado = self.vacontabilizar then
          begin
            self.ModalResult := mrok;
          end
          else
          begin
            self.ActIncluir.Execute;

          end;
        end
        else
        begin

          consulta.Close;
          consulta.SQL.text := 'select sum(drgvalor) as total from drg where drg.rmgchave=' + self.vChaveMestre + ' and drgtipo=' +
            inttostr(self.vdrgtipo);
          consulta.Open;

          self.vcontabilizado := consulta.Fields[0].AsCurrency;
          self.Plcont.Caption := 'Valor já rateado R$ ' + format('%14.2f', [self.vcontabilizado]);

          if self.vcontabilizado = self.vacontabilizar then
          begin
            self.ModalResult := mrok;
          end;
        end;
      End
      Else
      Begin
        showmessage('Registro incompleto, favor verficar !');
      End;
    End
    Else
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;

      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;
      If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
      Begin
        paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
      End;

      ajustabotoes;

      Try
        (self.paginas.Pages[paginas.ActivePageIndex] As TTabSheet).SetFocus;
      Except
      End;
    End;
  end;

end;

procedure Tfdrg.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Ddrg.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfdrg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  vacontabilizar := 0;
  vcontabilizado := 0;
  if self.txtFiltro <> '' then
  begin
    self.vdrgtipo := strtoint(self.txtFiltro);
  end
  else
  begin
    self.vdrgtipo := 1;
  end;

  // self.registro.Filter:='drgtipo='+inttostr(vdrgtipo);
  // self.registro.Filtered:=true;

  consulta.Close;
  consulta.SQL.text := 'select rmgvalor from rmg where rmgchave=' + self.vChaveMestre;
  consulta.Open;

  vacontabilizar := self.consulta.Fields[0].AsCurrency;
  consulta.Close;

  Placont.Caption := 'Valor a ratear R$ ' + format('%14.2f', [vacontabilizar]);
  self.registrodrgvalor.AsCurrency := vacontabilizar;

  drg.Close;
  drg.SQL.text :=
    'select drgchave,rmgchave, drgvalor,drg.pcgcodigo,drgtipo, pcgidentificacao from drg,pcg where drg.pcgcodigo=pcg.pcgcodigo and drg.rmgchave=' +
    self.vChaveMestre + ' and drgtipo=' + inttostr(self.vdrgtipo);
  drg.Open;

end;

procedure Tfdrg.pcgcodigoExit(Sender: TObject);
var
  vestcta: string;
  vestccu: string;
begin
  inherited;
  if self.pcgcodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.text := 'select pcgidentificacao, pcgestrutural from pcg where pcgcodigo=' + self.pcgcodigo.Field.AsString;
    consulta.Open;

    if consulta.RecordCount = 0 then
    begin
      showmessage('Atenção código de conta inválido!');
      pcgcodigo.Field.AsString := '';
      pcgcodigo.SetFocus;
    end
    else
    begin

    end;
  end
  else
  begin

  end;
end;

procedure Tfdrg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrormgchave.AsString := self.vChaveMestre;
  self.registrodrgtipo.AsInteger := self.vdrgtipo;
end;

procedure Tfdrg.spdbpcgdebitoClick(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgcodigo, registropcgidentificacao);
  if vchavepesquisa <> '' then
  begin
    pcgcodigo.Field.AsString := vchavepesquisa;
  end;
  pcgcodigo.SetFocus;

end;

end.
