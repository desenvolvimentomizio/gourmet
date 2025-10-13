// Teste de atualização de Trunk para Branch
unit ulfrmbase;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, Vcl.Buttons, System.Classes,
  Vcl.Controls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBGrids, System.SysUtils,
  Vcl.ActnList, System.TypInfo, Uni, ufrabase, uPegaBase, jpeg, Vcl.Graphics;

type
  Tlfrmbase = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    FrameBase: TFraBase;


    { Private declarations }

  public
    { Public declarations }

    (* Método Construtor *)
    constructor Create(pCargaFrame: TCargaFrame); overload;
    constructor Create(pAOwner: TComponent); overload;
  end;

var
  lfrmbase: Tlfrmbase;

  (* Utilizado pelo OnCloseQuery *)
  ShuttingDown: Boolean = False;

implementation

{$R *.dfm}

procedure DoUnLoadPackage(Module: HModule);
var
  I: Integer;
  M: TMemoryBasicInformation;
begin
  for I := Application.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(Application.Components[I].ClassName), M, SizeOf(M));
    if (Module = 0) or (HModule(M.AllocationBase) = Module) then
      Application.Components[I].Free;
  end;
  UnRegisterModuleClasses(Module);

  UnRegisterClass(Tdbmemo);
  UnRegisterClass(TCustomdbgrid);

  UnLoadPackage(Module);
end;

procedure Tlfrmbase.bcancelaClick(Sender: TObject);
begin
  ShuttingDown := True;
  ModalResult := mrCancel;

end;

procedure Tlfrmbase.bconfirmaClick(Sender: TObject);
begin
  if not(FrameBase <> nil) then
    Exit;

  FrameBase.ActSair.Execute;
end;

constructor Tlfrmbase.Create(pAOwner: TComponent);
var
  I: Integer;
begin
  inherited Create(pAOwner);

  (* Localiza e instancia *)
  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TFraBase then
      FrameBase := Self.Components[I] as TFraBase;
end;

constructor Tlfrmbase.Create(pCargaFrame: TCargaFrame);
var
  I: Integer;
begin
  inherited Create(pCargaFrame.AOwner);

  (* Localiza e instância *)
  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TFraBase then
      FrameBase := Self.Components[I] as TFraBase;

  FrameBase.HandleHerdado := pCargaFrame.Handle;
  FrameBase.ZCone := pCargaFrame.Conexao;
  FrameBase.Acesso := pCargaFrame.Acesso;
  FrameBase.IdModulo := pCargaFrame.IdModulo;
  FrameBase.Titulo := pCargaFrame.Titulo;

  FrameBase.TxtFiltro := Trim(pCargaFrame.Filtro);
  FrameBase.vChaveMestre := pCargaFrame.ChaveMestre;

  FrameBase.ModoFrame := pCargaFrame.ModoCarga;
  FrameBase.FormaFrame := pCargaFrame.FormaFrame;

  FrameBase.Carregar;

end;

procedure Tlfrmbase.FormActivate(Sender: TObject);
begin
  Self.AlphaBlendValue := 255;
end;

procedure Tlfrmbase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ShuttingDown then
    CanClose := ShuttingDown
  else
  begin
    CanClose := False;

    if (FrameBase <> nil) then
      CanClose := FrameBase.PodeFechar;

    if not CanClose then
      Application.MessageBox(PChar('Utilize as opções Confirma ou Cancela.'), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

procedure Tlfrmbase.FormCreate(Sender: TObject);
begin
  ShuttingDown := False;
end;

procedure Tlfrmbase.FormDeactivate(Sender: TObject);
begin
  Self.AlphaBlendValue := 200;

end;

procedure Tlfrmbase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (((Shift = [ssAlt]) And (Key = VK_F4)))  then
    Abort;


  if (Key = VK_CONTROL) and (ssShift in Shift) then
  begin
    Self.Left := 0;
    Self.Top := 0;
  end;

end;

procedure Tlfrmbase.FormShow(Sender: TObject);
begin
  if not(FrameBase <> nil) then
    Exit;

  FrameBase.PlSair.Align := alLeft;
  FrameBase.PlId.Align := alLeft;
  FrameBase.PlSair.Align := alRight;
  FrameBase.PlId.Align := alRight;

  if FrameBase.edbusca.Tag = 1 then
  begin
    pbotoes.Visible := True;
    Application.ProcessMessages;

    // if FrameBase.edbusca.Visible then
    // FrameBase.edbusca.SetFocus;
  end;

  if Self.Left < 0 then
    Self.Left := 0;

  if Self.Top < 0 then
    Self.Top := 0;

end;


end.
