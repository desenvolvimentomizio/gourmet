unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, inifiles,
  uniGUIBaseClasses, uniGUIClasses, uniTimer, Vcl.Imaging.jpeg, uniPanel,
  uniImage, uniGUIRegClasses, uniGUIForm,
  uniLabel, Vcl.ExtCtrls, Vcl.Imaging.pngimage, uniHTMLFrame, uniButton,
  Data.db, DBAccess, Uni, UniProvider, MySQLUniProvider, MemDS, uniDBImage;

type
  Ttvconfere = class(TUniForm)
    attsenha: TUniTimer;
    pnl_senha: TUniContainerPanel;
    ppl_senha: TUniPanel;
    pplsenha: TUniPanel;
    UniHTMLFrame1: TUniHTMLFrame;
    pnl_top: TUniContainerPanel;
    pnl_img: TUniContainerPanel;
    pnl_rodape: TUniContainerPanel;
    ppl_titulo: TUniPanel;
    img_principal1: TUniImage;
    slideimg: TUniTimer;
    pnl_texto: TUniPanel;
    controla: TUniTimer;
    DataSource1: TDataSource;
    img_logoCliente: TUniDBImage;
    img_principal2: TUniImage;
    img_logo: TUniImage;
    UniPanel1: TUniPanel;
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure attsenhaTimer(Sender: TObject);
    procedure slideimgTimer(Sender: TObject);
    procedure controlaTimer(Sender: TObject);
    procedure pnl_textoClick(Sender: TObject);
  private
    I, II: Integer;
  public
    FSlideNumber: Integer;
    vpAltura: Integer; // Var Altura para responsividade;
    vpLargura: Integer; // Var Altura para responsividade ;
    recebeimg: string; // Var do antigo Timer;
    contimg: string; // Var para controla Slide de Imagens;
    vpData: string;
    procedure ExibeFoto(DataSet: TDataSet; BlobFieldName: String);
    // Controle das Imagens;
    { Public declarations }
  end;

function tvconfere: Ttvconfere;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

const
  OffsetMemoryStream: Int64 = 0; // Fax parte da Exibição das Imagens;

function tvconfere: Ttvconfere;
begin
  Result := Ttvconfere(mm.GetFormInstance(Ttvconfere));
end;

// Se conecta ao Banco de dados;
function ConectBanco(Conectar: Boolean): Boolean;
var
  conectINI: Tinifile;
  Servidor, Base: string;
begin

  conectINI := Tinifile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
  Servidor := conectINI.ReadString('posi', 'servidor', '');
  Base := conectINI.ReadString('posi', 'nomebanco', '');
  conectINI.Free;

  mm.conexao.Server := Servidor;
  mm.conexao.Database := Base;
  mm.conexao.Port := 3306;
  mm.conexao.Username := 'root';
  mm.conexao.Password := 'xda973';

  if Conectar = True then
  begin
    mm.conexao.Connect;
  end;
  if Conectar = False then
  begin
    mm.conexao.Disconnect;
  end;
end;

function SelectBancoSimples(Script, Field: string): string;
var
  getData: string;
begin
  ConectBanco(True);
  mm.consulta.Close;
  mm.consulta.SQL.Clear;
  mm.consulta.SQL.Add(Script);
  mm.consulta.ExecSQL;
  Result := mm.consulta.FieldByName(Field).AsString;
end;

// Faz um Select para o Banco *Function personalizada para a situação;
function SelectBanco(Script, Paramet, Field, vdata: string): string;
var
  getData: string;
begin
  ConectBanco(True);
  getData := vdata;

  mm.consulta.Close;
  mm.consulta.SQL.Clear;
  mm.consulta.SQL.Add(Script);
  mm.consulta.ParamByName(Paramet).AsDateTime := StrToDateTime(getData);
  mm.consulta.ExecSQL;
  Result := mm.consulta.FieldByName(Field).AsString;
end;

// Faz Update para o Banco *Function personalizada para a situação;
function UpdateBanco(Script, Paramet1, p1vi, Paramet2, p2vi, Paramet3, p3vd, vdata: string): Boolean;
var
  getData: string;
begin
  ConectBanco(True);
  getData := vdata;
  mm.consulta.Close;
  mm.consulta.SQL.Clear;
  mm.consulta.SQL.Add(Script);
  mm.consulta.ParamByName(Paramet1).AsInteger := StrToInt(p1vi);
  mm.consulta.ParamByName(Paramet2).AsInteger := StrToInt(p2vi);
  mm.consulta.ParamByName(Paramet3).AsDateTime := StrToDateTime(p3vd);
  mm.consulta.ExecSQL;
end;

// Controla as Senhas com o som do Beep;
procedure Ttvconfere.attsenhaTimer(Sender: TObject);
var
  getData: string;
  atttv: string;
  captura: string;
  alerta: string;
begin

  getData := SelectBancoSimples('select cznabertura from czn where cznfechamento IS null order by cznchave limit 1', 'cznabertura');

  getData := Copy(getData, 1, 10);

  if getData = '' then
  begin
    getData := FormatDateTime('dd/mm/yyyy', now);
  end;

  captura := ppl_senha.Caption;
  ConectBanco(True);

  atttv := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data', 'esenumero', getData);

  if captura <> atttv then
  begin
    if captura <> '' then
    begin
      if atttv <> '0' then
      begin
        UniSession.SendResponse('audio2.load(); audio2.play();');
      end;
    end;
  end;

  alerta := SelectBanco('SELECT * FROM ese WHERE esedata = :data', 'data', 'esealerta', getData);
  if alerta = '1' then
  begin
    getData := FormatDateTime('dd/mm/yyyy', now);

    UniSession.SendResponse('audio2.load(); audio2.play();');
    UpdateBanco('Update ese SET esealerta = :um WHERE esealerta = :zero AND esedata = :data', 'um', '0', 'zero', '1', 'data', getData, getData);
  end;

  application.ProcessMessages;
  ppl_senha.Caption := atttv;
end;

// Carrega Imagem do Banco para Exibir;
procedure Ttvconfere.controlaTimer(Sender: TObject);
begin
  if (I >= II) then
  begin
    mm.manipula.ExecSQL;
    I := 0;
  end;
end;

procedure Ttvconfere.ExibeFoto(DataSet: TDataSet; BlobFieldName: String);
var
  MemoryStream: TMemoryStream;
  Jpg: TJPEGImage;
begin
  if not(DataSet.IsEmpty) and not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
  begin
    try

      MemoryStream := TMemoryStream.Create;
      Jpg := TJPEGImage.Create;
      (DataSet.FieldByName(BlobFieldName) as TBlobField).SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Jpg.LoadFromStream(MemoryStream);
      img_principal1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
      MemoryStream.Free;
    end
  end
  else
  begin
    img_principal1.Left := pnl_img.Left;
    img_principal1.Top := pnl_img.Top;
    img_principal1.Height := pnl_img.Height;
    img_principal1.Width := pnl_img.Width;

    img_principal1.Picture.LoadFromFile(extractfilepath(application.ExeName) + 'imagens/1.jpg');
  end;

end;

procedure Ttvconfere.pnl_textoClick(Sender: TObject);
begin

end;

// Controle de exibição das imagens;

procedure Ttvconfere.slideimgTimer(Sender: TObject);
var
  texto: string;
var
  Picture: tpicture;
begin
  try
    controla.Enabled := False;

    if mm.FSlidePathesSL.Count > 0 then
    begin

      Picture := tpicture.Create;
      img_principal1.Left := 0;
      img_principal1.Top := 0;
      img_principal1.Height := pnl_img.Height;
      img_principal1.Width := pnl_img.Width;


      img_principal2.Left := 0;
      img_principal2.Top := 0;
      img_principal2.Height := pnl_img.Height;
      img_principal2.Width := pnl_img.Width;


      try

        slideimg.Tag := slideimg.Tag + 1;

        Inc(FSlideNumber);

        If Odd(FSlideNumber) then
        begin
          img_principal1.JSInterface.JSCode(#1'.el.fadeIn({duration: 300});');
          img_principal2.JSInterface.JSCode(#1'.el.fadeOut({duration: 300});');
          if FSlideNumber > mm.FSlidePathesSL.Count - 1 then
          begin
            slideimg.Tag := 0;
            FSlideNumber := 0;
            controla.Enabled := True;
            exit;
          end;

          if fileexists(UniServerModule.StartPath + mm.FSlidePathesSL[FSlideNumber]) then
          begin

            Picture.LoadFromFile(UniServerModule.StartPath + mm.FSlidePathesSL[FSlideNumber]);

            img_principal1.Picture.Bitmap := nil;
            img_principal1.Picture.Assign(Picture);
          end;
          img_principal2.JSInterface.JSCode(#1'.el.fadeOut({duration: 300});');

          if slideimg.Tag = mm.FSlidePathesSL.Count - 1 then
          begin
            FSlideNumber := 0;
            slideimg.Tag := 0;
          end;



        end
        else
        begin
          img_principal2.JSInterface.JSCode(#1'.el.fadeIn({duration: 300});');
          img_principal1.JSInterface.JSCode(#1'.el.fadeOut({duration: 300});');
          if FSlideNumber > mm.FSlidePathesSL.Count - 1 then
          begin
            slideimg.Tag := 0;
            FSlideNumber := 0;
            controla.Enabled := True;
            exit;
          end;

          if fileexists(UniServerModule.StartPath + mm.FSlidePathesSL[FSlideNumber]) then
          begin

            Picture.LoadFromFile(UniServerModule.StartPath + mm.FSlidePathesSL[FSlideNumber]);

            img_principal2.Picture.Bitmap := nil;
            img_principal2.Picture.Assign(Picture);
          end;
          img_principal1.JSInterface.JSCode(#1'.el.fadeOut({duration: 300});');

          if slideimg.Tag = mm.FSlidePathesSL.Count - 1 then
          begin
            FSlideNumber := 0;
            slideimg.Tag := 0;
          end;

        end;

      finally
        Picture.Free;
      end;

    end
    else
    begin
      ExibeFoto(mm.manipula, 'imsimagem');

      II := mm.manipula.RecordCount;

      texto := mm.manipula.FieldByName('exifra').AsString;
      if texto = '' then
      begin
        pnl_texto.Caption := 'SEJA BEM VINDO'
      end
      else
      begin
        pnl_texto.Caption := texto;
      end;

      mm.manipula.next; // vai para o proximo
      if mm.manipula.Eof then
      begin
        mm.manipula.First; // se acabar vai para o primeiro
      end;

      I := I + 1;
    end;
  finally
    controla.Enabled := True;
  end;

end;

// Manter responsividade;
procedure Ttvconfere.UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
begin

  vpAltura := AHeight;
  vpLargura := AWidth;

  pnl_rodape.Height := Round(vpAltura * 0.15);
  pnl_top.Height := Round(vpAltura * 0.15);

  pnl_img.Height := Round(vpAltura * 0.70);
  pnl_img.Width := Round(vpLargura * 0.70);

  pnl_senha.Width := Round(vpLargura * 0.30);
  pplsenha.Height := Round(vpAltura * 0.20);

  img_logo.Height := Round(vpAltura * 0.15);
  img_logo.Width := Round(vpLargura * 0.10);

  pnl_texto.Height := Round(vpAltura * 0.15);
  pnl_texto.Width := Round(vpLargura * 0.80);

  attsenha.Enabled := True;

  ConectBanco(True);

  slideimg.Enabled := True;
  controla.Enabled := True;

  mm.nome.ExecSQL;
  mm.manipula.ExecSQL;
  ppl_titulo.Caption := mm.nome.FieldByName('cfgidentificacao').AsString;
  slideimgTimer(slideimg);

  mm.logocliente.Close;
  mm.logocliente.ParamByName('cfgcodigo').AsInteger := 1;
  mm.logocliente.Open;

  if mm.logoclientecfglogo.AsString <> '' then
  begin
    img_logoCliente.Visible := True;
  end
  else
  begin
    img_logoCliente.Visible := False;
  end;


end;

initialization

RegisterAppFormClass(Ttvconfere);

end.
