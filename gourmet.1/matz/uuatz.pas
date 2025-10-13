unit uuatz;

interface

uses
  Winapi.Windows, SysUtils, WinInet, Forms, System.classes {, Vcl.ExtCtrls, Vcl.Controls, Vcl.Graphics, dialogs};

implementation

function GetFileModDate(fileName: string): TDateTime;
var
  Farq: TSearchRec;
begin
  FindFirst(fileName, faAnyFile, Farq);
  Result := FileDateToDatetime(Farq.Time);
  FindClose(Farq);
end;

Function CompareFiles(FileA, FileB: String): Boolean;
var
  ByteA, ByteB: Byte;
  AFile, BFile: File of Byte;
begin
  AssignFile(AFile, FileA);
  FileMode := 0;
  AssignFile(BFile, FileB);
  FileMode := 0;
  reset(AFile);
  reset(BFile);
  Result := True;
  while not EOF(AFile) do
  begin
    Read(AFile, ByteA);
    Read(BFile, ByteB);
    if ByteA <> ByteB then
    begin
      Result := False;
      Break;
    end;
  end;
  CloseFile(AFile);
  CloseFile(BFile);
end;

function VerificaAtualizacao(onwer: Tapplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: string): String;
var
  vlArqLocal: string;
  vlArqVersao: string;
  vlDtLocal: TDateTime;
  vlDtVersao: TDateTime;

  arquini: TStringList;
  vlVersaoLocal: string;
  i:integer;
begin

  arquini := TStringList.Create;
  if fileexists(extractfilepath(application.ExeName) + 'versoes\versaolocal.txt') then
  begin
    arquini.LoadFromFile(extractfilepath(application.ExeName) + 'versoes\versaolocal.txt');
    vlVersaoLocal := copy(arquini.Text, 1, 5);

    if vlVersaoLocal='' then
    vlVersaoLocal:='00000';

   for I :=  StrtoInt(vVersao) to StrtoInt(vlVersaoLocal)  do
    begin

      vlArqLocal := extractfilepath(onwer.ExeName) + vPasta + '\' + varquivo;
      vlArqVersao := extractfilepath(onwer.ExeName) + 'versoes\' +formatfloat('00000',i) +'\'+vPasta + '\' + varquivo;

      if  fileexists(vlArqVersao) then
      begin


      vlDtLocal := GetFileModDate(vlArqLocal);
      vlDtVersao := GetFileModDate(vlArqVersao);

      if vlDtVersao > vlDtLocal then
      begin

        if fileexists(ChangeFileExt(vlArqLocal, '.old')) then
          deletefile(ChangeFileExt(vlArqLocal, '.old'));

        if renamefile(vlArqLocal, ChangeFileExt(vlArqLocal, '.old')) then
        begin
          if copyfile(pchar(vlArqVersao), pchar(vlArqLocal), True) then
          begin
            if CompareFiles(vlArqVersao, vlArqLocal) then
            begin

              if fileexists(ChangeFileExt(vlArqLocal, '.old')) then
                deletefile(ChangeFileExt(vlArqLocal, '.old'));
            end;
          end;
        end;

      end;
      end;
    end;

  end;
end;

exports VerificaAtualizacao;

end.
