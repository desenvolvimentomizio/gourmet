unit ulidm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uPegaBase, ufrabase, ufraidm;

type
  Tlidm = class(Tlfrmbase)
    fraidm: Tfraidm;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lidm: Tlidm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;

  lidm := Tlidm.Create(pCargaFrame);
  try
    lidm.fraidm.vChaveMestre := pCargaFrame.Filtro;

    lidm.fraidm.idm.Close;
    lidm.fraidm.idm.ParamByName('mdrchave').AsString :=
      lidm.fraidm.vChaveMestre;
    lidm.fraidm.idm.open;

    lidm.fraidm.idm.First;
    while not lidm.fraidm.idm.Eof do
    begin
      if lidm.fraidm.uqtabela.Locate('etdcodigo;etecodigo',
        VarArrayOf([lidm.fraidm.idmetdcodigo.AsInteger,
        lidm.fraidm.idmetecodigo.AsInteger]), []) then
      begin
        lidm.fraidm.uqtabela.Edit;
        lidm.fraidm.uqtabelaidmmarca.AsInteger := 1;
        lidm.fraidm.uqtabela.Post;

      end;

      lidm.fraidm.idm.Next;
    end;

    lidm.ShowModal;
    Result := lidm.fraidm.vretorno;
  finally
    lidm.Free;
  end;
end;

exports formu;

procedure Tlidm.bconfirmaClick(Sender: TObject);
begin
  self.fraidm.idm.Close;
  self.fraidm.idm.ParamByName('mdrchave').AsString := self.fraidm.vChaveMestre;
  self.fraidm.idm.open;

  self.fraidm.uqtabela.First;
  while not self.fraidm.uqtabela.Eof do
  begin

    if self.fraidm.uqtabelaidmmarca.AsInteger = 1 then
    begin
      if not self.fraidm.idm.Locate('etdcodigo;etecodigo',
        VarArrayOf([self.fraidm.uqtabelaetdcodigo.AsInteger,
        self.fraidm.uqtabelaetecodigo.AsInteger]), []) then
      begin
        self.fraidm.idm.Append;
        self.fraidm.idmmdrchave.AsString := self.fraidm.vChaveMestre;
        self.fraidm.idmetdcodigo.AsInteger :=
          self.fraidm.uqtabelaetdcodigo.AsInteger;
        self.fraidm.idmetecodigo.AsInteger :=
          self.fraidm.uqtabelaetecodigo.AsInteger;
        self.fraidm.idm.Post;
      end;

    end
    else
    begin
      if self.fraidm.idm.Locate('etdcodigo;etecodigo',
        VarArrayOf([self.fraidm.uqtabelaetdcodigo.AsInteger,
        self.fraidm.uqtabelaetecodigo.AsInteger]), []) then
      begin
        self.fraidm.idm.delete;
      end;
    end;

    self.fraidm.uqtabela.Next;
  end;

  inherited;

end;

end.
