unit ufbiome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBCtrls, MemDS, DBAccess, Uni, Vcl.Grids,
  Vcl.DBGrids;

const
  DEFAULT_TIME_OUT = 10000; // 10000ms

type
  Tfbiome = class(TForm)
    bregistra: TButton;
    EdtUserID: TEdit;
    LVUsers: TListView;
    lblCallback: TLabel;
    Dclb: TDataSource;
    clbidentificacao: TDBText;
    Button1: TButton;
    LVCandidate: TListView;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    DBGridClb: TDBGrid;
    Label2: TLabel;
    clbclbcodigobio: TStringField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgarquivobio: TBlobField;
    Button2: TButton;
    EditPesquisa: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bregistraClick(Sender: TObject);
    procedure DclbDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure SalvarArquivoBiometrico;
    procedure Button2Click(Sender: TObject);
    procedure EditPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure carregadados;
    procedure salvarregistro;
    { Private declarations }
  public
    { Public declarations }
    m_hFIR: DWORD;
    vpFlacodigo: integer;
    phandler: THandle;
    nAddr: THandle;
    pPassword: THandle;
    vlTipoLeitor: integer;

  end;

var
  fbiome: Tfbiome;

const
  NBioAPI_INDEXSEARCH_CALLBACK_OK = 0;
  NBioAPI_INDEXSEARCH_CALLBACK_SKIP = 1;
  NBioAPI_INDEXSEARCH_CALLBACK_STOP = 2;

type
  // IndexSearch Timeout
  TINDEX_INFO_PTR = ^TINDEX_INFO;

  TINDEX_INFO = record
    dwTimeout: DWORD;
    dwStartEx: DWORD;
  end;

implementation

uses NBioAPI_Type, IndexSearchType, BSPInter, IndexSearchInter, SynoAPIEx;

{$R *.dfm}

procedure Tfbiome.bregistraClick(Sender: TObject);
var
  i: integer;
  ret: DWORD;
  nCnt, nSampleCnt: integer;
  nUserID: DWORD;
  input_fir: NBioAPI_INPUT_FIR;
  infoSample: NBioAPI_INDEXSEARCH_SAMPLE_INFO;
  retorno: integer;
  Tentativas: integer;

begin
  if vlTipoLeitor = 1 then
  begin

    if m_hFIR <> 0 then
      FreeFIRHandle(m_hFIR);

    FillChar(infoSample, SizeOf(infoSample), 0);

    if (OpenDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
      showmessage('Device Open Failed !!!');

    ret := Enroll(@m_hFIR, nil, DEFAULT_TIME_OUT, nil);

    if (ret = NBioAPIERROR_NONE) then
    begin
      input_fir.Form := NBioAPI_FIR_FORM_HANDLE;
      input_fir.InputFir.FIRinBSP := @m_hFIR;

      if (EdtUserID.Text <> '') then
      begin
        FillChar(infoSample, SizeOf(infoSample), 0);

        nUserID := StrToInt(EdtUserID.Text);

        ret := AddFIRToIndexSearchDB(@input_fir, nUserID, @infoSample);

        if (ret = NBioAPIERROR_NONE) then
        begin

          clb.Edit;
          clbclbcodigobio.AsInteger := nUserID;
          clb.Post;

          { for nCnt := 0 to 10 do
            begin
            if (infoSample.SampleCount[nCnt] <> 0) then
            begin
            for nSampleCnt := 0 to (infoSample.SampleCount[nCnt] - 1) do
            begin
            if LVUsers.FindCaption(0,IntToStr(infoSample.ID),false,false,false)<>nil then
            begin
            i:=LVUsers.FindCaption(0,IntToStr(infoSample.ID),false,false,false).Index;
            LVUsers.Items.Delete(i);
            end;
            end;
            end;
            end; }

          for nCnt := 0 to 10 do
          begin
            if (infoSample.SampleCount[nCnt] <> 0) then
            begin
              for nSampleCnt := 0 to (infoSample.SampleCount[nCnt] - 1) do
              begin
                with LVUsers.Items.Add do
                begin
                  Caption := IntToStr(infoSample.ID);
                  SubItems.Add(IntToStr(nCnt));
                  SubItems.Add(IntToStr(nSampleCnt));
                end;

              end; // end..for
            end; // end..if
          end; // end..for

          // EdtUserID.Text := IntToStr(StrToInt(EdtUserID.Text) + 1);
          salvarregistro;
          showmessage('Registro biometrico realizado com sucesso!');
          close;
        end
        else
        begin

          if ret = 1287 then
          begin
            showmessage('Este colaborar ja esta registado!');
          end
          else
          begin
            showmessage('Falha ao registrar informação biométrica!');
          end;
        end;

      end
      else
        showmessage('Selecione o Colaborador..');
    end
    else
      showmessage('Falha Geral !!!');

    if (CloseDevice(NBioAPI_DEVICE_ID_AUTO_DETECT) <> NBioAPIERROR_NONE) then
      showmessage('Leitor não conectado !!!');
  end
  else if vlTipoLeitor = 2 then
  begin

    i := 0;

    retorno := PSGetImage(phandler, nAddr);
    if retorno = 0 then
    begin

      if (retorno = 0) then
      begin
        retorno := PSGenChar(phandler, nAddr, 1);
        if (retorno = 0) then
        begin
          retorno := PSGetImage(phandler, nAddr);
          if (retorno = 0) then
          begin
            retorno := PSGenChar(phandler, nAddr, 2);
            if (retorno = 0) then
            begin

              retorno := PSRegModule(phandler, nAddr);
              if (retorno = 0) then
              begin

                nUserID := clbclbcodigo.AsInteger;

                retorno := PSStoreChar(phandler, nAddr, 1, nUserID);
                if (retorno = 0) then
                begin
                  clb.Edit;
                  clbclbcodigobio.AsInteger := nUserID;
                  clb.Post;
                  SalvarArquivoBiometrico;
                  showmessage('Registro biometrico realizado com sucesso!');
                  close;

                end;
              end;
            end;
          end;

        end;
      end;

    end;

  end;

end;

procedure Tfbiome.SalvarArquivoBiometrico;
var
  ret, len, saveFgnum: integer;
  pbuf: TBytes;
  nomearquivo: string;
  fs: TFileStream;
begin
  nomearquivo := extractfilepath(application.ExeName) + 'arquivobio.mb';

  if vpFlacodigo = 0 then
    vpFlacodigo := 1;

  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := vpFlacodigo;
  cfg.Open;

  if cfgcfgarquivobio.AsString <> '' then
  begin
    if fileexists(nomearquivo) then
      DeleteFile(nomearquivo);

    cfgcfgarquivobio.SaveToFile(nomearquivo);
  end;
  cfg.close;

  ret := -1;
  SetLength(pbuf, 1024 + 1);

  len := 0;
  saveFgnum := 1;

  if not fileexists(nomearquivo) then
  begin
    fs := TFileStream.Create(nomearquivo, fmCreate);
  end
  else
  begin
    fs := TFileStream.Create(nomearquivo, fmOpenReadWrite);

  end;

  ret := PSLoadChar(phandler, nAddr, $01, saveFgnum);
  // saveFgnum this upload one fingerprint,you can upload more
  if (ret = 0) then
  begin
    ret := PSUpChar(phandler, nAddr, $01, pbuf, len);
    if (ret = 0) then
    begin
      fs.Write(pbuf, 0, length(pbuf));
      fs.free;

      // voicePlayer.VoicePlay("010");
    end;
  end;

  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := vpFlacodigo;
  cfg.Open;

  cfg.Edit;
  cfgcfgarquivobio.LoadFromFile(nomearquivo);
  cfg.Post;

  cfg.close;

end;

procedure Tfbiome.Button1Click(Sender: TObject);
var
  retorno: integer;
begin
  if vlTipoLeitor = 2 then
  begin
    retorno := PSCloseDeviceEx(phandler);
  end;
  close;
end;

procedure Tfbiome.Button2Click(Sender: TObject);
var
  ret: integer;
  retorno: integer;
  delstartid: integer;
  fgnum: integer;
  nUserID: integer;
begin

  ret := -1;
  delstartid := 0;
  fgnum := 0;

  retorno := PSGetImage(phandler, nAddr);
  if retorno = 0 then
  begin

    if (retorno = 0) then
    begin
      retorno := PSGenChar(phandler, nAddr, 1);
      if (retorno = 0) then
      begin
        retorno := PSGetImage(phandler, nAddr);
        if (retorno = 0) then
        begin
          retorno := PSGenChar(phandler, nAddr, 2);
          if (retorno = 0) then
          begin

            retorno := PSRegModule(phandler, nAddr);
            if (retorno = 0) then
            begin

              nUserID := clbclbcodigo.AsInteger;

              PSTemplateNum(phandler, nAddr, nUserID);

              ret := PSDelChar(phandler, nAddr, nUserID, 1);

              if (ret = 0) then
              begin

                showmessage('Colraborador: ' + clbclbidentificacao.AsString + #13 + #13 + 'Registro removido com sucesso!');
              end;
            end;
          end;
        end;
      end;
    end;
  end;

end;

procedure Tfbiome.FormCreate(Sender: TObject);
var
  ret: DWORD;
  strSkinFileName: string;
  retorno: integer;

begin

  bregistra.Enabled := False;

  if vlTipoLeitor = 1 then
  begin

    strSkinFileName := extractfilepath(application.ExeName) + 'NBSP2Por.dll';

    if SetSkinResource(PChar(strSkinFileName)) then
    begin
      // showmessage('Teste Ok');
    end;

    g_hBSP := NBioAPI_INVALID_HANDLE;
    g_hwnd := 0;
    m_hFIR := 0;

    lblCallback.Caption := '';

    // Load Dll
    try
      g_hwnd := LoadLibrary('NBioBSP.dll');
    except
      on e: exception do
    end;

    if (g_hwnd <> 0) then
    begin
      LoadNBioBSPFunctions;
      LoadIndexSearchFunctions;

      InitNBioAPI;

      ret := InitIndexSearchEngine;

      if (ret <> NBioAPIERROR_NONE) then
      begin
        showmessage('Failed to initailize NBioBSP !');
        Exit;
      end;
    end
    else
    begin
      showmessage('LoadLibrary failed !!!');
      Exit;
    end;

    // Get NBioBSP version
    if GetBSPVersion = NBioAPIERROR_NONE then
    begin
      Self.Caption := Self.Caption + Format(' - BSP Version : v%.4f', [g_bsp_ver.Major + g_bsp_ver.Minor / 10000]);
      bregistra.Enabled := true;

    end;
    carregadados;
  end
  else if vlTipoLeitor = 2 then
  begin

    retorno := -1;
    nAddr := 4294967295;

    pPassword := 0;

    retorno := PSOpenDeviceEx(phandler, 2, 1, 1, 2, 0);
    if retorno = 0 then
    begin
      if retorno = 0 then
      begin
        retorno := PSVfyPwd(phandler, nAddr, pPassword);
        bregistra.Enabled := true;

      end;

    end;

  end;

end;

procedure Tfbiome.FormShow(Sender: TObject);
var
  ret: DWORD;
  strSkinFileName: string;
  retorno: integer;

begin

  bregistra.Enabled := False;

  if vlTipoLeitor = 1 then
  begin

    strSkinFileName := extractfilepath(application.ExeName) + 'NBSP2Por.dll';

    if SetSkinResource(PChar(strSkinFileName)) then
    begin
      // showmessage('Teste Ok');
    end;

    g_hBSP := NBioAPI_INVALID_HANDLE;
    g_hwnd := 0;
    m_hFIR := 0;

    lblCallback.Caption := '';

    // Load Dll
    try
      g_hwnd := LoadLibrary('NBioBSP.dll');
    except
      on e: exception do
    end;

    if (g_hwnd <> 0) then
    begin
      LoadNBioBSPFunctions;
      LoadIndexSearchFunctions;

      InitNBioAPI;

      ret := InitIndexSearchEngine;

      if (ret <> NBioAPIERROR_NONE) then
      begin
        showmessage('Failed to initailize NBioBSP !');
        Exit;
      end;
    end
    else
    begin
      showmessage('LoadLibrary failed !!!');
      Exit;
    end;

    // Get NBioBSP version
    if GetBSPVersion = NBioAPIERROR_NONE then
    begin
      Self.Caption := Self.Caption + Format(' - BSP Version : v%.4f', [g_bsp_ver.Major + g_bsp_ver.Minor / 10000]);
      bregistra.Enabled := true;

    end;
    carregadados;
  end
  else if vlTipoLeitor = 2 then
  begin

    retorno := -1;
    nAddr := 4294967295;

    pPassword := 0;

    retorno := PSOpenDeviceEx(phandler, 2, 1, 1, 2, 0);
    if retorno = 0 then
    begin
      if retorno = 0 then
      begin
        retorno := PSVfyPwd(phandler, nAddr, pPassword);
        bregistra.Enabled := true;

      end;

    end;

  end;

end;

procedure Tfbiome.carregadados;
Var
  ret: DWORD;
  i: integer;
  szFileName: String;
  szTemp: String;
  fh1: TextFile;
  readData: String;
  itemData: String;
  ListItem: TListItem;
  flag: boolean;
Begin

  ListItem := Nil;

  szTemp := extractfilepath(application.ExeName) + 'dados.ISDB';

  If szTemp <> '' Then
  Begin
    // clear memory database..
    ClearIndexSearchDB;
    LVUsers.Items.Clear;

    ret := LoadIndexSearchDBFromFile(PChar(szTemp));

    { If (ret = NBioAPIERROR_NONE) Then
      Begin }
    LVUsers.Items.Clear;
    LVCandidate.Items.Clear;

    szFileName := Copy(szTemp, 1, Pos('.', szTemp) - 1);
    if fileexists(szFileName + '.FID') then
    begin
    AssignFile(fh1, szFileName + '.FID');
    reset(fh1);

    While Not Eof(fh1) Do
    Begin
      Readln(fh1, readData);

      If readData <> '' Then
      Begin
        flag := true;
        itemData := '';

        For i := 1 To length(readData) Do
        Begin
          If readData[i] <> char(9) Then
            itemData := itemData + readData[i];

          If i = length(readData) Then
            ListItem.SubItems.Add(readData[i]);

          If readData[i] = char(9) Then
          Begin
            If Not flag Then
            Begin
              ListItem.SubItems.Add(itemData);
              itemData := '';
            End
            Else
            Begin
              ListItem := LVUsers.Items.Add;
              ListItem.Caption := itemData;
              itemData := '';
              flag := False;
            End;

          End;
        End; // end of for
      End;
    End; // End of While

    Closefile(fh1);
    end;
  End
  Else
    showmessage('Erro ao carregar dados !');
  { End; }

end;

procedure Tfbiome.DclbDataChange(Sender: TObject; Field: TField);
begin
  EdtUserID.Text := clbclbcodigo.AsString;
end;

procedure Tfbiome.EditPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
  Dclb.DataSet.Locate('clbidentificacao', EditPesquisa.Text, [lopartialkey, locaseinsensitive]);
  except

  end;

end;

procedure Tfbiome.salvarregistro;
var
  ret: DWORD;
  i: integer;
  szFileName, szFileName1: string;
  fh1: TextFile;
  nSampleNumber: longint;
  nUserID: longint;
  nFingerID: longint;
  szInputData: string;
  arq: string;
begin

  arq := extractfilepath(application.ExeName) + 'dados.ISDB';
  szFileName := arq;

  if szFileName <> '' then
  begin
    ret := SaveIndexSearchDBToFile(PChar(szFileName));

    if (ret = NBioAPIERROR_NONE) then
    begin
      // Save list to file
      szFileName1 := Copy(szFileName, 1, length(szFileName) - 5);

      AssignFile(fh1, szFileName1 + '.FID');
      ReWrite(fh1);

      for i := 0 to LVUsers.Items.Count - 1 do
      begin
        nUserID := StrToInt(LVUsers.Items[i].Caption);
        nFingerID := StrToInt(LVUsers.Items[i].SubItems[0]);
        nSampleNumber := StrToInt(LVUsers.Items[i].SubItems[1]);
        szInputData := IntToStr(nUserID) + char(9) + IntToStr(nFingerID) + char(9) + IntToStr(nSampleNumber);
        Writeln(fh1, szInputData);
      end;

      Closefile(fh1);
      // ShowMessage('Registro salvo com sucesso !!');
    end
    else
      showmessage('Falha ao salvar registro !');

  end
  else
    showmessage('Please, input file name..');
end;

{ *
  Delete one fingerprint
  private void button5_Click(object sender, EventArgs e)
  begin
  int ret = -1;
  int delstartid = 0;
  int fgnum = 0;
  fgapi.PSTemplateNum(phandler, nAddr,ref fgnum);

  ret = fgapi.PSDelChar(phandler, nAddr, delstartid, 1);
  if (ret == 0)
  begin
  //voicePlayer.VoicePlay("009");
  this.textBox1.Text = "Totol" + Convert.ToString(fgnum) + "fingerprint,delete index " + Convert.ToString(delstartid) + " success";
  end/
  end;
}

end.
