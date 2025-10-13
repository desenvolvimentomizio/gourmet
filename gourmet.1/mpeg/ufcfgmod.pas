unit ufcfgmod;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfcfgmod = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    paginas: TPageControl;
    Principal: TTabSheet;
    registro: tuniquery;
    DSRegistro: tunidatasource;
    consulta: tuniquery;
    bfechar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    listapaginas: tstringlist;
    procedure ajustabotoes;
    function SalvaRegistro: Boolean;


  public
    { Public declarations }
        vchave:string;
        vChaveMestre:string;

  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  fcfgmod: Tfcfgmod;

implementation

{$R *.dfm}


Procedure Tfcfgmod.ajustabotoes;
Var
  i: Integer;
  pga, lpg: String;
Begin

  self.listapaginas.clear;
  For i := 0 To paginas.PageCount - 1 Do
  Begin
    If paginas.Pages[i].TabVisible Then
    Begin
      listapaginas.add(paginas.Pages[i].Name);
    End;
  End;
  Try
    pga := paginas.ActivePage.Name;
    lpg := listapaginas[listapaginas.Count - 1];
    If pga = lpg Then
    Begin
      bconfirma.Caption := 'Confirma';
      bfechar.Visible := True;
      bfechar.Caption := 'Voltar';
    End
    Else
    Begin
      bconfirma.Caption := 'Avançar';
      bfechar.Visible := True;
      bfechar.Caption := 'Voltar';
    End;
  Except
    bconfirma.Caption := 'Confirma';
    bfechar.Visible := True;
    bfechar.Caption := 'Voltar';

  End;
  If paginas.ActivePageIndex = 0 Then
  Begin
    bfechar.Visible := false;
    bfechar.Caption := 'Fechar';
  End;
End;

Function Tfcfgmod.SalvaRegistro: Boolean;
Var
  i: Integer;
  p: String;
  vid: String;
  campo: TField;
  DllHandle: thandle;
  // AjustaChaveMestre: TAjustaChaveMestre;
  // SalvarRegistro: TSalvarRegistro;
  vregdet: Integer;
Begin
  result := True;
  If self.DSRegistro.DataSet.State = dsbrowse Then
  Begin
    self.DSRegistro.DataSet.Edit;
  End;

  If self.DSRegistro.DataSet.State <> dsbrowse Then
  Begin
    For i := 0 To self.ComponentCount - 1 Do
    Begin
      If (self.Components[i] Is tdbedit) Then
      Begin
        If ((self.Components[i] As tdbedit).Field Is TDateField) Then
        Begin
          ((self.Components[i] As tdbedit).Field As TDateField).EditMask := '!99/99/9999;1;_';
        End;
      End;
    End;
  End;

  If self.DSRegistro.DataSet.State = dsedit Then
  Begin
    //registraalteracoes;
  End;

  If self.DSRegistro.DataSet.State <> dsbrowse Then
  Begin
    // Try

    If self.vChaveMestre <> '' Then
    Begin
      self.registro.Fields[1].Asstring := self.vChaveMestre;
    End;

    self.DSRegistro.DataSet.post;
    self.vchave := self.DSRegistro.DataSet.Fields[0].Asstring;

  End;

  consulta.Close;
  consulta.sql.Text := 'select last_insert_id()';
  consulta.open;

  vid := consulta.Fields[0].Asstring;

End;



procedure Tfcfgmod.bconfirmaClick(Sender: TObject);
begin
  If self.bconfirma.Caption = 'Confirma' Then
  Begin
    If self.SalvaRegistro Then
    Begin
      modalresult := mrok;
    End
    Else
    Begin
      showmessage('Cadastro incompleto, favor verficar !');
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

procedure Tfcfgmod.bfecharClick(Sender: TObject);
begin
  If bfechar.Caption = 'Fechar' Then
  Begin
    If DSRegistro.DataSet.State <> dsbrowse Then
    Begin
      DSRegistro.DataSet.cancel;
    End;
    Close;

  End;

  If bfechar.Caption = 'Voltar' Then
  Begin
    paginas.ActivePageIndex := paginas.ActivePageIndex - 1;

    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;

    If paginas.PageCount > 1 Then
    Begin
      bconfirma.Caption := 'Avançar';
    End;
    If paginas.ActivePageIndex = 0 Then
    Begin
      bfechar.Caption := 'Fechar';
      bfechar.Visible := false;
    End;
  End;

end;

procedure Tfcfgmod.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    If (Sender Is tdbgrid) Then
    Begin
      Key := #0;
      (Sender As tdbgrid).SelectedIndex := (Sender As tdbgrid).SelectedIndex + 1;
      If (Sender As tdbgrid).SelectedIndex = ((Sender As tdbgrid).Columns.Count) Then
      Begin
        (Sender As tdbgrid).SelectedIndex := 1;
        (Sender As tdbgrid).DataSource.DataSet.Next;
        If (Sender As tdbgrid).DataSource.DataSet.Eof Then
        Begin
          Perform(WM_NEXTDLGCTL, 0, 0);
        End;
      End;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;

end;

procedure Tfcfgmod.FormShow(Sender: TObject);
var
  i: Integer;
begin

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is tuniquery then
    begin
      (self.Components[i] as tuniquery).Connection := zcone;
    end;

  end;

  If self.registro.Active = false Then
  Begin

    If registro.Params.Count = 2 Then
    Begin
      If (self.vchave <> '') And (self.vChaveMestre <> '') Then
      Begin
        registro.Params[0].Asstring := self.vchave;
        registro.Params[1].Asstring := self.vChaveMestre;
      End;
    End;

    If registro.Params.Count = 1 Then
    Begin
      If self.vchave <> '' Then
      Begin
        registro.Params[0].Asstring := self.vchave;
      End;
    End;

    registro.open;
    If registro.RecordCount = 0 Then
    Begin
      registro.Append;
      psituacao.Caption := 'Incluindo';
    End
    Else
    Begin
      registro.Edit;
      psituacao.Caption := 'Alterando';
    End;
  End;




  paginas.ActivePageIndex := 0;

  If self.BorderStyle = bsnone Then
  Begin
    self.pbotoes.Visible := false;
  End;


end;

end.
