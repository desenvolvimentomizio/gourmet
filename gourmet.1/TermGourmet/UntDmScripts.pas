unit UntDmScripts;

interface

uses
  System.SysUtils, System.Classes, DAScript, UniScript;

type
  TDmScripts = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmScripts: TDmScripts;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntDmDados;

{$R *.dfm}

end.
