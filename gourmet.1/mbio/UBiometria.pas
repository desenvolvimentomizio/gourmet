unit UBiometria;

interface

uses
  Winapi.Windows, Winapi.Messages,  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
    ComObj;

type
  TFBiometria = class(TForm)
    BtnCapturar: TButton;
    MedCpfFunc: TMaskEdit;
    TextUserID: TEdit;
    BtnNovo: TButton;
    ListBox1: TListBox;
    EdtNome: TEdit;
    SpbCpf: TButton;
    BtnIdentificacao: TButton;
    Memo1: TMemo;


    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MedCpfFuncEnter(Sender: TObject);
    procedure MedCpfFuncExit(Sender: TObject);
    procedure MedCpfFuncKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MedCpfFuncKeyPress(Sender: TObject; var Key: Char);
    procedure MedCpfFuncKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpbCpfClick(Sender: TObject);
    procedure BtnIdentificacaoClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCapturarClick(Sender: TObject);
  private
    procedure busca_Digital;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


    { Private declarations }
  public
    { Public declarations }
  end;


const
    NBioAPIERROR_NONE = 0;
    NBioAPI_FIR_PURPOSE_VERIFY      = 1;
    NBioAPI_DEVICE_ID_NONE          = 0;
    NBioAPI_DEVICE_ID_FDP02_0       = 1;
    NBioAPI_DEVICE_ID_FDU01_0       = 2;
    NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;

var
    FBiometria: TFBiometria;
    objNBioBSP      : variant;
    objDevice       : variant;
    objExtraction   : variant;
    objIndexSearch  : variant;


implementation

{$R *.dfm}




procedure TFBiometria.BtnCapturarClick(Sender: TObject);
var nUserID   : integer;
    szFir     : wideString;

begin
   if Trim(MedCpfFunc.Text)='' then
      Begin
         Showmessage('Informe CPF funcionário');
         MedCpfFunc.SetFocus;
         exit;
      End;
    nUserID := 0;
    if TextUserID.Text <> '' then   // codigo do funcionario (ID)
        begin
           nUserID := StrToInt(TextUserID.Text);
           objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT) ; // abre aparelho biometrico
           if objDevice.ErrorCode <> 0 Then
              Begin
                ShowMessage('Falha na abertura do aparelho biometrico !');
                close;
                exit;
              End;
           objExtraction.Enroll(nUserID, 0);  // ler impressão digital
           if objExtraction.ErrorCode <> NBioAPIERROR_NONE Then
              Begin
                 ShowMessage('Erro de leitura !');
                 close;
                 exit;
              End;
           objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT); // fecha aparelho biometrico
           szFir := objExtraction.TextEncodeFIR;        // captura string gerada pela DLL
           objIndexSearch.AddFIR(szFir, nUserID);
           if (objIndexSearch.ErrorCode = NBioAPIERROR_NONE) Then   // salva string no banco de dados se não tiver erro.
              begin
                { consulta.Close;
                consulta.SQL.Clear;
                consulta.SQL.Add('Update bfuncionario'); }
               memo1.Lines.Text:=
               QuotedStr(szFir);    // mysql FuDigital tipo Text
               {  consulta.SQL.Add(' where (FuCPF='+QuotedStr(trim(MedCpfFunc.Text))+')');
                consulta.ExecSQL;   }
              end
           else
              ShowMessage('Falha na extração da digital !');
        end
    else
        ShowMessage('Informar usuario');

end;

procedure TFBiometria.BtnIdentificacaoClick(Sender: TObject);
var szFir    : wideString;
    str      : wideString;
    User_id  : Integer;
 //   ListItem : TListItem ;
begin
   objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT) ;     // abre aparelho biometrico
   if objDevice.ErrorCode <> NBioAPIERROR_NONE then
      begin
         str := objDevice.ErrorDescription;
         ShowMessage('Falha no aparelho biométrico !');
         Exit;
      end;
   objExtraction.Capture(NBioAPI_FIR_PURPOSE_VERIFY);   // captura digital
   if objExtraction.ErrorCode = NBioAPIERROR_NONE then
      begin
         objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
         szFir := objExtraction.TextEncodeFIR;           // busca string da digital
         objIndexSearch.IdentifyUser(szFir, 5);          // identifica digital com o da memoria com nivel 5  de segurança
         if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
            ShowMessage('Funcionario não identificado !')
         else
            Begin
               User_id := objIndexSearch.UserID;               // pega o ID
               showmessage('Funcionario identificado com sucesso '+inttostr(User_id));
              { consulta.Close;  // busca o funcionario pela ID informada.
               consulta.SQL.Clear;
               consulta.SQL.Add('Select * from bfuncionario');
               consulta.SQL.Add(' where idbfuncionario=:idbfuncionario');
               consulta.Close;
               consulta.ParamByName('idbfuncionario').AsInteger:=User_id;
               consulta.Open;
               if consulta.Eof then
                  showmessage('Funcionario não localizado pelo codigo fornecido')
               else
                  Begin
                     MedCpfFunc.Text:=consulta.FieldByName('FuCpf').AsString;
                     EdtNome.Text:=consulta.FieldByName('FuNome').AsString;
                  End;  }

                                   MedCpfFunc.Text:='1';
                     EdtNome.Text:='daniel';


            End;
      end
   else
      ShowMessage('Falha na extração da biometria !');
   objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);


end;


procedure TFBiometria.BtnNovoClick(Sender: TObject);
var i:integer;
begin
   ActiveControl:=nil;  // forca saida com on exit dos edit's
   for i := 0 to ComponentCount -1 do
      if Components[i] is TEdit then
         begin
            TEdit(Components[i]).Text := '';
         end;
   MedCpffunc.Enabled:=true;
   MedCpffunc.Text:=''; MedCpffunc.EditMask:='';
   Busca_Digital;
   MedCpfFunc.SetFocus;
end;

procedure TFBiometria.busca_Digital;
var nUserID   : integer;
    szFir     : wideString;
begin
   if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
      begin
         ShowMessage('Falha ao iniciar sistema de biometria!');
      end
   else
      Begin
        Caption := Caption + ' - Versão : v' + objNBioBSP.MajorVersion + '.' + objNBioBSP.MinorVersion;
        objIndexSearch.ClearDB;

       { consulta.Close;  // inicia banco de dados
        consulta.SQL.Clear;
        consulta.SQL.Add('Select * from bfuncionario');
        consulta.Close;
        consulta.Open;
        consulta.First;
        while not(consulta.Eof) do
          begin
             if consulta.FieldByName('FuDigital').AsString<>'' then
                Begin }
                   nUserID:=1;
                   szFir:=memo1.Lines.Text;
                   objIndexSearch.AddFIR(szFir,nUserID);                // coloca na memoria as strings armazenadas no BD.
                   if objIndexSearch.ErrorCode <> NBioAPIError_None  then
                      Showmessage('Erro ao ler dados');
            {   End;
             consulta.Next;
          end;
        consulta.Close;
        consulta.SQL.Clear; }
      End;
end;

procedure TFBiometria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    objNBioBSP      := 0;
    objDevice       := 0;
    objExtraction   := 0;
    objIndexSearch  := 0;
end;

procedure TFBiometria.FormCreate(Sender: TObject);
begin
  //Create NBioBSP object
   objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');  // uses  Comobj
   objDevice      := objNBioBSP.Device;
   objExtraction  := objNBioBSP.Extraction;
   objIndexSearch := objNBioBSP.IndexSearch;
   TextUserID.Text := '1';
end;


procedure TFBiometria.FormShow(Sender: TObject);
begin
   BtnNovo.Click;
end;


procedure TFBiometria.MedCpfFuncEnter(Sender: TObject);
begin
  MedCPFFunc.EditMask:='';
end;


procedure TFBiometria.MedCpfFuncExit(Sender: TObject);
begin
   If trim(MedCPFFunc.Text)<>'' then
      Begin
         MedCpfFunc.Enabled:=false;
         If length(trim(MedCPFFunc.Text))=11 then
            MedCpfFunc.EditMask:='000.000.000-00;0;'
         else
            Begin
               If length(trim(MedCPFFunc.Text))=14 then
                  MedCpfFunc.EditMask:='00.000.000/0000-00;0;';
            end;
         {consulta.Close;
         consulta.SQL.Clear;
         consulta.SQL.Add('Select * from bfuncionario');
         consulta.SQL.Add(' where FuCpf=:FuCpf');
         consulta.Close;
         consulta.ParamByName('FuCpf').AsString:=MedCpfFunc.Text;
         consulta.Open; }

        { if consulta.Eof then
            Begin
               showmessage('Funcionario não localizado');
               MedCpfFunc.SetFocus;
               exit;
            End;}

         EdtNome.Text:='daniel';
         TextUserID.Text:='1';
      End
   else
      EdtNome.Text:='';

end;


procedure TFBiometria.MedCpfFuncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then Perform(Wm_NextDlgCtl,0,0);
end;


procedure TFBiometria.MedCpfFuncKeyPress(Sender: TObject; var Key: Char);
begin
// aceitar somente numeros de 0 a 9.
   If Key<>#8 then
      If not ((Key in ['0'..'9'])) then Key:=#0;
end;


procedure TFBiometria.MedCpfFuncKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If key=113 then  // f2 pesquisa
      SpbCpf.Click;
end;




procedure TFBiometria.SpbCpfClick(Sender: TObject);
begin
 MedCpfFunc.EditMask:='';
   MedCpfFunc.SetFocus;
  // F2Pesquisa(FBiometria,nil,3);
   If trim(MedCpfFunc.Text)<>'' then
      Begin
         EdtNome.SetFocus;
      end;
end;

end.
