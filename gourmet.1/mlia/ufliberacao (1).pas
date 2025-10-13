unit ufliberacao;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, ufuncoes, Data.DB, MemDS, DBAccess;

type
  TipoAutorizacao = (taDesconto, taAjusteBaixa, taAction, taActionAten, taLiberaCred, taVoltaColaborador);

  Tfliberacao = class(TForm)
    GBLogin: TGroupBox;
    LUsuario: TLabel;
    LSenha: TLabel;
    usuario: TEdit;
    senha: TEdit;
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    PlTitulo: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    clb: TUniQuery;
    dau: TUniQuery;
    dauclbcodigo: TIntegerField;
    dauactcodigo: TIntegerField;
    daudauativo: TIntegerField;
    consulta: TUniQuery;
    cau: TUniQuery;
    caucaudata: TDateField;
    caucauhora: TTimeField;
    cauusrautorizou: TIntegerField;
    cauusrsolicitou: TIntegerField;
    aac: TUniQuery;
    adt: TUniQuery;
    adf: TUniQuery;
    aacaaccodigo: TIntegerField;
    aaccauchave: TIntegerField;
    aacactcodigo: TIntegerField;
    adtadtcodigo: TIntegerField;
    adtcauchave: TIntegerField;
    adttdecodigo: TIntegerField;
    adtorcchave: TIntegerField;
    adtmeschave: TIntegerField;
    adfadfcodigo: TIntegerField;
    adfcauchave: TIntegerField;
    adfltechave: TIntegerField;
    adfddfcodigo: TIntegerField;
    caucauchave: TIntegerField;
    aat: TUniQuery;
    aataatcodigo: TIntegerField;
    aatcauchave: TIntegerField;
    aatactcodigo: TIntegerField;
    aattrmcodigo: TIntegerField;
    aatorcchave: TIntegerField;
    alc: TUniQuery;
    alcalccodigo: TIntegerField;
    alccauchave: TIntegerField;
    alcorcchave: TIntegerField;
    alcalclimitesolic: TFloatField;
    regdau: TUniQuery;
    regdaudaucodigo: TIntegerField;
    regdauclbcodigo: TIntegerField;
    regdauactcodigo: TIntegerField;
    regdaudauativo: TIntegerField;
    regdauactformulario: TStringField;
    regdauactacao: TStringField;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Fzcone: TUniConnection;
    function VerificaDescontos(CodUsuario: String): Boolean;
    function RegistraVoltaColaborador(CodUsuario: String): Boolean;
    function VerificaAjusteBaixa(CodUsuario: String): Boolean;
    function VerificaActions(CodUsuario: String): Boolean;
    procedure AjustaCampos;
    procedure RegistraAutorizacao(Solicitante, Autorizado: String);
    function VerificaLimiteCredito(CodUsuario: String): Boolean;
    procedure LiberacaoEtiqueta(vUsuario, vSenha: string);
  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vpSolicitante: String;
    vpMotivo: String;
    vpTipoAutorizacao: TipoAutorizacao;

    (* Variáveis para Autorização de Ações (Actions) *)
    vpActCodigo: String;

    vpFormulario: String;
    vpAcao: String;

    (* Variáveis para Autorização de Desconto - Venda e Registro da Saídas *)
    vpTdeCodigo: string;
    vpOrcChave: string; // Utilizado também para AAT Autorizações dos Atendimentos
    vpMesChave: string;

    (* Variáveis para Autorização de Desconto/Dispensa Financeira *)
    vpLteCodigo: String;
    vpDdfCodigo: String;

    (* Variáveis para Autorização de Ações (Actions) dos Atendimentos *)
    vpTrmCodigo: String;

    (* Variáveis para Autorização de Limite de Crédito dos Atendimentos *)
    vpLimiteSolic: Double;

    vtentativa: Integer;
    vretorno: string;

    vpForcaLogin: Boolean;
  end;

var
  fliberacao: Tfliberacao;

implementation

{$R *.dfm}

function liberacaoerp(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; vformulario: string; vacao: string; vmotivo: string; vtdecodigo, vorcchave, vmeschave: String;
  vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;
var
  i: Integer;
begin
  try
    fliberacao := Tfliberacao.Create(AOwner);
    fliberacao.vpSolicitante := vUsuario;
    fliberacao.vpForcaLogin := vForcaLogin;

    fliberacao.vpMotivo := vmotivo;
    fliberacao.vpActCodigo := '';
    fliberacao.vpFormulario := vformulario;
    fliberacao.vpAcao := vacao;

    fliberacao.vpTdeCodigo := vtdecodigo;
    fliberacao.vpOrcChave := vorcchave;

    fliberacao.vpMesChave := vmeschave;
    fliberacao.vpLteCodigo := vltecodigo;
    fliberacao.vpDdfCodigo := vddfcodigo;

    fliberacao.zcone := conexao;

    fliberacao.consulta.Close;
    fliberacao.consulta.Connection := fliberacao.zcone;
    fliberacao.consulta.SQL.text := 'delete from dau where actformulario=' + quotedstr('');
    fliberacao.consulta.ExecSQL;

    fliberacao.vretorno := fliberacao.vpSolicitante;

    for i := 0 to fliberacao.ComponentCount - 1 do
      if fliberacao.Components[i] is TUniQuery then
        (fliberacao.Components[i] as TUniQuery).Connection := fliberacao.zcone;

    if not(fliberacao.vpSolicitante = '1') or (vForcaLogin) then
      if Pos('desconto', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taDesconto;
        if not fliberacao.VerificaDescontos(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else if Pos('AjusteBaixa', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taAjusteBaixa;
        if not fliberacao.VerificaAjusteBaixa(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else if Pos('VoltaColaborador', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taVoltaColaborador;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end

      else if Pos('Registro', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taAction;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else
      begin
        fliberacao.vpTipoAutorizacao := taAction;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end;

  finally
    Result := fliberacao.vretorno;
    FreeAndNil(fliberacao);
  end;
end;

function liberacao(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; vactcodigo: string; vmotivo: string; vtdecodigo, vorcchave, vmeschave: String;
  vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false): string;
var
  i: Integer;
begin
  try
    fliberacao := Tfliberacao.Create(AOwner);
    fliberacao.vpSolicitante := vUsuario;
    fliberacao.vpForcaLogin := vForcaLogin;

    fliberacao.vpMotivo := vmotivo;
    fliberacao.vpActCodigo := vactcodigo;

    fliberacao.vpTdeCodigo := vtdecodigo;
    fliberacao.vpOrcChave := vorcchave;

    fliberacao.vpMesChave := vmeschave;
    fliberacao.vpLteCodigo := vltecodigo;
    fliberacao.vpDdfCodigo := vddfcodigo;

    fliberacao.zcone := conexao;

    fliberacao.consulta.Close;
    fliberacao.consulta.Connection := fliberacao.zcone;
    fliberacao.consulta.SQL.text := 'delete from dau where actformulario=' + quotedstr('');
    fliberacao.consulta.ExecSQL;

    fliberacao.vretorno := fliberacao.vpSolicitante;

    for i := 0 to fliberacao.ComponentCount - 1 do
      if fliberacao.Components[i] is TUniQuery then
        (fliberacao.Components[i] as TUniQuery).Connection := fliberacao.zcone;

    if not(fliberacao.vpSolicitante = '1') or (vForcaLogin) then
      if Pos('desconto', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taDesconto;
        if not fliberacao.VerificaDescontos(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else if Pos('AjusteBaixa', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taAjusteBaixa;
        if not fliberacao.VerificaAjusteBaixa(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else if Pos('VoltaColaborador', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taVoltaColaborador;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end

      else if Pos('Registro', vmotivo) > 0 then
      begin
        fliberacao.vpTipoAutorizacao := taAction;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end
      else
      begin
        fliberacao.vpTipoAutorizacao := taAction;
        if not fliberacao.VerificaActions(fliberacao.vpSolicitante) then
          fliberacao.ShowModal;
      end;

  finally
    Result := fliberacao.vretorno;
    FreeAndNil(fliberacao);
  end;
end;

function liberacaoAten(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; vactcodigo: string; vmotivo: string; vorcchave: String; vtrmcodigo: String): string;
var
  i: Integer;
begin
  try

    fliberacao := Tfliberacao.Create(AOwner);
    fliberacao.vpSolicitante := vUsuario;

    fliberacao.vpMotivo := vmotivo;
    fliberacao.vpActCodigo := vactcodigo;
    fliberacao.vpOrcChave := vorcchave;
    fliberacao.vpFormulario := ((AOwner as tapplication).MainForm as TForm).Name;

    fliberacao.vpTrmCodigo := vtrmcodigo;

    fliberacao.zcone := conexao;

    fliberacao.vretorno := vUsuario;

    for i := 0 to fliberacao.ComponentCount - 1 do
      if fliberacao.Components[i] is TUniQuery then
        (fliberacao.Components[i] as TUniQuery).Connection := fliberacao.zcone;

    if not(vUsuario = '1') then
    begin
      fliberacao.vpTipoAutorizacao := taActionAten;
      if not fliberacao.VerificaActions(vUsuario) then
        fliberacao.ShowModal;
    end;

  finally
    Result := fliberacao.vretorno;
    FreeAndNil(fliberacao);
  end;
end;

function liberacaoAtenLimiteCred(AOwner: TComponent; conexao: TUniConnection; vUsuario: string; vLimiteSolic: Double; vorcchave: String): string;
var
  i: Integer;
begin
  try
    fliberacao := Tfliberacao.Create(AOwner);
    fliberacao.vpSolicitante := vUsuario;

    fliberacao.vpOrcChave := vorcchave;
    fliberacao.vpLimiteSolic := vLimiteSolic;

    fliberacao.zcone := conexao;

    fliberacao.vretorno := vUsuario;

    for i := 0 to fliberacao.ComponentCount - 1 do
      if fliberacao.Components[i] is TUniQuery then
        (fliberacao.Components[i] as TUniQuery).Connection := fliberacao.zcone;

    if not(vUsuario = '1') then
    begin
      fliberacao.vpTipoAutorizacao := taLiberaCred;
      fliberacao.ShowModal;
    end;

  finally
    Result := fliberacao.vretorno;
    FreeAndNil(fliberacao);
  end;
end;

exports liberacao, liberacaoerp, liberacaoAten, liberacaoAtenLimiteCred;

function Tfliberacao.RegistraVoltaColaborador(CodUsuario: String): Boolean;
var
  vSolicitado: Double;
  vPermitido: Double;
begin

  vSolicitado := StrToFloat(Trim(Copy(vpMotivo, Pos('#', vpMotivo) + 1, 50)));
  Result := true;

end;

procedure Tfliberacao.usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vlSenha: string;
  vlUsuario: string;
begin

  if (Pos('.', usuario.text) > 0) and (Pos(',', usuario.text) > 0) then
  begin
    vlUsuario := Copy(usuario.text, 1, Pos('.', usuario.text) - 1);
    vlSenha := Copy(usuario.text, Pos('.', usuario.text) + 1, Pos(',', usuario.text) - 1);
    vlSenha := Copy(vlSenha, 1, Pos(',', vlSenha) - 1);
    usuario.text := '';

    LiberacaoEtiqueta(vlUsuario, vlSenha);
  end;

end;

procedure Tfliberacao.LiberacaoEtiqueta(vUsuario, vSenha: string);
var
  vAutorizado: Boolean;
begin
  clb.Close;
  clb.SQL.text := 'SELECT clbcodigo FROM clb WHERE ';
  clb.SQL.Add('LOWER(clbidentificacao) = ''' + LowerCase(vUsuario) + ''' AND ');
  clb.SQL.Add('clbsenha = ''' + vSenha + ''' AND ');
  clb.SQL.Add('clbativo = ''1''');
  clb.Open;

  If Not clb.IsEmpty Then
  Begin
    vAutorizado := false;

    case vpTipoAutorizacao of
      taDesconto:
        vAutorizado := VerificaDescontos(clb.FieldByName('clbcodigo').AsString);
      taAjusteBaixa:
        vAutorizado := VerificaAjusteBaixa(clb.FieldByName('clbcodigo').AsString);
      taAction, taActionAten:
        vAutorizado := VerificaActions(clb.FieldByName('clbcodigo').AsString);
      taVoltaColaborador:
        vAutorizado := RegistraVoltaColaborador(clb.FieldByName('clbcodigo').AsString);
      taLiberaCred:
        vAutorizado := VerificaLimiteCredito(clb.FieldByName('clbcodigo').AsString);
    end;

    if not vAutorizado then
    begin
      AjustaCampos;
      exit;
    end;

    Self.vretorno := clb.FieldByName('clbcodigo').AsString;

    RegistraAutorizacao(vpSolicitante, clb.FieldByName('clbcodigo').AsString);

    Self.ModalResult := mrok;
  End;

end;

function Tfliberacao.VerificaDescontos(CodUsuario: String): Boolean;
var
  vSolicitado: Double;
  vPermitido: Double;
begin
  vSolicitado := StrToFloat(Trim(Copy(vpMotivo, Pos('#', vpMotivo) + 1, 50)));

  consulta.Close;
  consulta.SQL.text := 'SELECT clbdescmaximo FROM clb WHERE clbcodigo = ' + CodUsuario;
  consulta.Open;

  vPermitido := consulta.Fields[0].AsFloat;

  if vPermitido >= vSolicitado then
    Result := true
  else
  begin
    Application.MessageBox(PChar('Limite de desconto abaixo do solicitado!!' + #13 + #13 + 'Solicitado: ' + FormatFloat('#,##0.000', vSolicitado) + ' %' + #13 + 'Permitido: ' +
      FormatFloat('#,##0.000', vPermitido) + ' %'), 'Desconto não Autorizado', MB_ICONWARNING + MB_OK);
    Result := false;
  end;
end;

function Tfliberacao.VerificaAjusteBaixa(CodUsuario: String): Boolean;
var
  vSolicitado: Double;
  vPermitido: Double;
begin
  vSolicitado := StrToFloat(Trim(Copy(vpMotivo, Pos('#', vpMotivo) + 1, 50)));

  consulta.Close;

  case StrToInt(vpDdfCodigo) of
    ddfDescGeral:
      consulta.SQL.text := 'SELECT clbpercdescrfi FROM clb WHERE clbcodigo = ' + CodUsuario;
    ddfDispMulta:
      consulta.SQL.text := 'SELECT clbpercdispmulta FROM clb WHERE clbcodigo = ' + CodUsuario;
    ddfDispMora:
      consulta.SQL.text := 'SELECT clbpercdispmora FROM clb WHERE clbcodigo = ' + CodUsuario;
  end;
  consulta.Open;

  vPermitido := consulta.Fields[0].AsFloat;

  if vPermitido >= vSolicitado then
    Result := true
  else
  begin
    Application.MessageBox(PChar('Limite permitido abaixo do solicitado!!' + #13 + #13 + 'Solicitado: ' + FormatFloat('#,##0.000', vSolicitado) + ' %' + #13 + 'Permitido: ' +
      FormatFloat('#,##0.000', vPermitido) + ' %'), 'Valor não Autorizado', MB_ICONWARNING + MB_OK);
    Result := false;
  end;
end;

function Tfliberacao.VerificaActions(CodUsuario: String): Boolean;
var
  vlInteiro: Integer;
begin

  try
    vlInteiro := StrToInt(vpActCodigo);
  except
    vpActCodigo := '';
    Result := false;
    exit;
  end;

  if vpActCodigo <> '' then
  begin

    // ferifica se existe o registro do direito, se não houver, ja registra antes de validar o direito
    if vpFormulario <> '' then
    begin
      regdau.Close;
      regdau.FilterSQL := 'clbcodigo=1' + ' and actcodigo=' + vpActCodigo + ' and  actformulario=' + quotedstr(vpFormulario);
      regdau.Open;
    end
    else
    begin
      regdau.Close;
      regdau.FilterSQL := 'clbcodigo=1' + ' and actcodigo=' + vpActCodigo;
      regdau.Open;
    end;

    if regdau.IsEmpty then
    begin
      regdau.Append;
      regdauclbcodigo.AsString := '1';
      regdauactcodigo.AsString := vpActCodigo;
      regdaudauativo.AsInteger := 1;
      regdauactformulario.AsString := vpFormulario;
      regdauactacao.AsString := quotedstr(vpAcao);
      regdau.Post;

    end;

    // ferifica se existe o registro do direito, se não houver, ja registra antes de validar o direito
    if vpFormulario <> '' then
    begin

      regdau.Close;
      regdau.FilterSQL := 'clbcodigo=' + CodUsuario + ' and actcodigo=' + vpActCodigo + ' and  actformulario=' + quotedstr(vpFormulario);
      regdau.Open;
    end
    else
    begin
      regdau.Close;
      regdau.FilterSQL := 'clbcodigo=' + CodUsuario + ' and actcodigo=' + vpActCodigo;
      regdau.Open;

    end;

    if regdau.IsEmpty then
    begin
      regdau.Append;
      regdauclbcodigo.AsString := CodUsuario;
      regdauactcodigo.AsString := vpActCodigo;
      if CodUsuario = '1' then
        regdaudauativo.AsInteger := 1
      else
        regdaudauativo.AsInteger := 0;
      regdauactformulario.AsString := vpFormulario;
      regdauactacao.AsString := quotedstr(vpAcao);
      regdau.Post;

    end;

    dau.Close;
    dau.SQL.text := 'SELECT * FROM dau WHERE ';
    dau.SQL.Add('clbcodigo = ' + CodUsuario + ' AND ');
    dau.SQL.Add('actcodigo = ' + vpActCodigo + ' AND ');
    dau.SQL.Add('dauativo = 1 order by dauativo limit 1');
    dau.Open;

    if dau.IsEmpty then
    begin
      if vpFormulario <> '' then
      begin
        dau.Close;
        dau.SQL.text := 'SELECT * FROM dau WHERE ';
        dau.SQL.Add('clbcodigo = ' + CodUsuario + ' AND ');
        dau.SQL.Add('actcodigo = ' + vpActCodigo + ' AND ');
        dau.SQL.Add('actformulario = ' + quotedstr(vpFormulario) + ' AND ');
        dau.SQL.Add('dauativo = 1 order by dauativo limit 1');
        dau.Open;

      end
      else
        dau.Close;
      dau.SQL.text := 'SELECT * FROM dau WHERE ';
      dau.SQL.Add('clbcodigo = ' + CodUsuario + ' AND ');
      dau.SQL.Add('actcodigo = ' + vpActCodigo + ' AND ');
      dau.SQL.Add('dauativo = 1 order by dauativo limit 1');
      dau.Open;
    end;

  end
  else
  begin

    consulta.Close;
    consulta.SQL.text := 'select actcodigo from act where actformulario=' + quotedstr(vpFormulario) + ' and actacao=' + quotedstr(vpAcao);
    consulta.Open;
    vpActCodigo := consulta.FieldByName('actcodigo').AsString;
    dau.Close;
    dau.SQL.text := 'SELECT * FROM dau WHERE ';
    dau.SQL.Add('clbcodigo = ' + CodUsuario + ' AND ');
    dau.SQL.Add('actcodigo = ' + vpActCodigo + ' AND ');
    dau.SQL.Add('dauativo = 1 order by dauativo limit 1');
    dau.Open;
  end;

  if vpForcaLogin then
  begin
    Result := false;
    exit;
  end;

  if (dau.RecordCount = 1) or (CodUsuario = '1') then
  begin
    RegistraAutorizacao(vpSolicitante, CodUsuario);
    Result := true;
  end
  else if (fliberacao.Visible) then
  begin
    Application.MessageBox(PChar('Usuário sem permissão para ação solicitada!'), 'Acesso não permitido', MB_ICONWARNING + MB_OK);
    Result := false;
  end
  else
  begin

    if fliberacao.Visible then
      Application.MessageBox(PChar('Usuário sem permissão para ação solicitada!'), 'Acesso não permitido', MB_ICONWARNING + MB_OK);

    dau.Close;
    dau.SQL.text := 'SELECT * FROM dau WHERE ';
    dau.SQL.Add('actcodigo = ' + vpActCodigo + ' AND ');
    dau.SQL.Add('dauativo = 1 order by dauativo limit 1');
    dau.Open;

    if not dau.IsEmpty then
      Result := false
    else
      Result := true;

  end;
end;

function Tfliberacao.VerificaLimiteCredito(CodUsuario: String): Boolean;
begin
  consulta.Close;
  consulta.SQL.text := 'SELECT clbliberacredito FROM clb WHERE clbcodigo = ' + CodUsuario;
  consulta.Open;

  Result := consulta.Fields[0].AsInteger = 1;

  if Result = false then
    Application.MessageBox(PChar('Usuário sem permissão para ação solicitada!'), 'Acesso não permitido', MB_ICONWARNING + MB_OK);
end;

procedure Tfliberacao.bcancelaClick(Sender: TObject);
begin
  Self.vretorno := '';
  Self.ModalResult := mrCancel;
end;

procedure Tfliberacao.bconfirmaClick(Sender: TObject);
Var
  vSenha: String;
  vUsuario: String;
  vUsrCodigo: String;
  vAutorizado: Boolean;
Begin
  vpForcaLogin := false;

  vSenha := senha.text;
  consulta.Close;
  consulta.SQL.text := 'select md5(' + chr(39) + UpperCase(vSenha + 'pega') + chr(39) + ')';
  consulta.Open;

  vSenha := consulta.Fields[0].AsString;

  vSenha := Copy(vSenha, 1, 15);

  vUsuario := Self.usuario.text;

  clb.Close;
  clb.SQL.text := 'SELECT clbcodigo FROM clb WHERE ';
  clb.SQL.Add('LOWER(clbidentificacao) = ''' + LowerCase(vUsuario) + ''' AND ');
  clb.SQL.Add('clbsenha = ''' + vSenha + ''' AND ');
  clb.SQL.Add('clbativo = ''1''');
  clb.Open;

  If Not clb.IsEmpty Then
  Begin
    vUsrCodigo := clb.Fields[0].AsString;
    vAutorizado := false;

    case vpTipoAutorizacao of
      taDesconto:
        vAutorizado := VerificaDescontos(vUsrCodigo);
      taAjusteBaixa:
        vAutorizado := VerificaAjusteBaixa(vUsrCodigo);
      taAction, taActionAten:
        vAutorizado := VerificaActions(vUsrCodigo);
      taVoltaColaborador:
        vAutorizado := RegistraVoltaColaborador(vUsrCodigo);
      taLiberaCred:
        vAutorizado := VerificaLimiteCredito(vUsrCodigo);
    end;

    if not vAutorizado then
    begin
      AjustaCampos;
      exit;
    end;

    Self.vretorno := vUsrCodigo;

    RegistraAutorizacao(vpSolicitante, vUsrCodigo);

    Self.ModalResult := mrok;
  End
  Else
  Begin
    Application.MessageBox(PChar('Usuário e/ou Senha inválidos!'), 'Erro de Acesso', MB_ICONERROR + MB_OK);
    vtentativa := vtentativa + 1;
    If vtentativa > 3 Then
    Begin
      Application.MessageBox(PChar('Acesso negado!'), 'Erro de Acesso', MB_ICONERROR + MB_OK);
      Self.vretorno := '';
      Self.ModalResult := mrCancel;
    End;
  End;

end;

procedure Tfliberacao.FormCreate(Sender: TObject);
begin
  vtentativa := 1;
end;

procedure Tfliberacao.FormKeyPress(Sender: TObject; var Key: Char);
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
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tfliberacao.FormShow(Sender: TObject);
begin
  Self.Height := 290;
  Self.Width := 305;
end;

procedure Tfliberacao.AjustaCampos;
begin
  usuario.text := '';
  senha.text := '';
  usuario.SetFocus;
end;

procedure Tfliberacao.RegistraAutorizacao(Solicitante, Autorizado: String);
begin
  cau.Open;

  cau.Append;
  caucaudata.AsFloat := Date;
  caucauhora.AsFloat := Time;
  cauusrautorizou.AsString := Autorizado;
  cauusrsolicitou.AsString := Solicitante;
  cau.Post;

  case vpTipoAutorizacao of
    taDesconto:
      begin
        adt.Open;
        adt.Append;
        adtcauchave.AsInteger := caucauchave.AsInteger;
        adttdecodigo.AsString := vpTdeCodigo;
        adtorcchave.AsString := vpOrcChave;
        adtmeschave.AsString := vpMesChave;
        adt.Post;
      end;
    taAjusteBaixa:
      begin
        adf.Open;
        adf.Append;
        adfcauchave.AsInteger := caucauchave.AsInteger;
        adfltechave.AsString := vpLteCodigo;
        adfddfcodigo.AsString := vpDdfCodigo;
        adf.Post;
      end;
    taAction:
      begin
        aac.Open;
        aac.Append;
        aaccauchave.AsInteger := caucauchave.AsInteger;
        aacactcodigo.AsString := vpActCodigo;
        aac.Post;
      end;
    taActionAten:
      begin
        aat.Open;
        aat.Append;
        aatcauchave.AsInteger := caucauchave.AsInteger;
        aatactcodigo.AsString := vpActCodigo;
        aattrmcodigo.AsString := vpTrmCodigo;
        aatorcchave.AsString := vpOrcChave;
        aat.Post;
      end;
    taLiberaCred:
      begin
        alc.Open;
        alc.Append;
        alccauchave.AsInteger := caucauchave.AsInteger;
        alcorcchave.AsString := vpOrcChave;
        alcalclimitesolic.AsFloat := vpLimiteSolic;
        alc.Post;
      end;
  end;
end;

end.
