unit ufpesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, VirtualTable;

type
  Tfpesquisa = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    blocalizar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    EdBusca: TEdit;
    EdCampos: TEdit;
    campos: TVirtualTable;
    DsCampos: TDataSource;
    camposnomecampo: TStringField;
    campostitulocampo: TStringField;
    DBListaCampos: TDBGrid;
    bcancela: TBitBtn;
    procedure bcancelaClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBListaCamposKeyPress(Sender: TObject; var Key: Char);
    procedure EdCamposEnter(Sender: TObject);
    procedure EdCamposKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBListaCamposKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdBuscaEnter(Sender: TObject);
  private
    procedure MostraLista;
    procedure OcultaLista;
    { Private declarations }
  public
    { Public declarations }
    vpCampoPesquisa: String;
    vpTextoPesquisa: String;

  end;

var
  fpesquisa: Tfpesquisa;

implementation

{$R *.dfm}

procedure Tfpesquisa.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfpesquisa.blocalizarClick(Sender: TObject);
begin
  vpCampoPesquisa := camposnomecampo.AsString;
  vpTextoPesquisa := EdBusca.Text;

  ModalResult := mrOK;
end;

procedure Tfpesquisa.DBListaCamposKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    OcultaLista;
    EdBusca.Text := '';
    EdBusca.setfocus;

  end
  else if Key = #27 then
  begin
    self.bcancela.Click;
  end;

end;

procedure Tfpesquisa.DBListaCamposKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 41) and campos.Bof then
    EdCampos.setfocus;

end;

procedure Tfpesquisa.EdBuscaEnter(Sender: TObject);
begin
  self.Height := 184;
end;

procedure Tfpesquisa.EdBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    blocalizar.Click;
  end
  else if (Key = 38) then
  begin
    EdBusca.Text := '';
    EdCampos.setfocus;
  end
  else if (Key = 27) then
  begin
    bcancela.Click;
  end;

end;

procedure Tfpesquisa.EdCamposEnter(Sender: TObject);
begin
  EdBusca.Text := '';
  MostraLista;
end;

procedure Tfpesquisa.EdCamposKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key <> 13) and (Key <> 27) then
  begin
    campos.Locate('titulocampo', EdCampos.Text, [loPartialKey, loCaseInsensitive])
  end
  else if (Key = 13) then
  begin
    EdCampos.Text := campostitulocampo.AsString;
    OcultaLista;
    EdBusca.Text := '';
    EdBusca.setfocus;
  end
  else if (Key = 40) then
  begin
    DBListaCampos.setfocus;
  end
  else if (Key = 27) then
  begin
    bcancela.Click;
  end;
end;

procedure Tfpesquisa.FormShow(Sender: TObject);
begin
  EdCampos.setfocus;
end;

procedure Tfpesquisa.OcultaLista;
begin
  DBListaCampos.Visible := false;

end;

procedure Tfpesquisa.MostraLista;
begin

  DBListaCampos.Top := 43;
  DBListaCampos.Left := 256;
  DBListaCampos.Width := 281;
  DBListaCampos.Height := 430;
  DBListaCampos.Visible := true;
  self.Height := 550;

end;

end.
