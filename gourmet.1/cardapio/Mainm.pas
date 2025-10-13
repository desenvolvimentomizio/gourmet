unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, unimScrollBox, unimCarousel, uniGUIBaseClasses, uniMemo,
  unimMemo;

type
  TMainmForm = class(TUnimForm)
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimScrollBox1: TUnimScrollBox;
    UnimMemo1: TUnimMemo;
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
var
  vlSabor: string;
  vlIngrediente: string;
begin
  UnimMemo1.Lines.Clear;

  UniMainModule.Conexao.Connect;
  UniMainModule.cde.Open;
  UniMainModule.ide.Open;
  UniMainModule.pro.Open;

  vlSabor := UniMainModule.idesbridentificacao.AsString;

  while not UniMainModule.ide.Eof do
  begin

    vlIngrediente := '';

    if UniMainModule.idesbridentificacao.AsString = vlSabor then
    begin
      while not UniMainModule.pro.Eof do
      begin
        vlIngrediente := vlIngrediente + UniMainModule.propronome.AsString + ', ';
        UniMainModule.pro.Next;
      end;
    end;

          UnimMemo1.Lines.Add(vlSabor + ' - ' + copy(vlIngrediente, 1, length(vlIngrediente) - 2)+'</br>');
            vlIngrediente := '';
    UniMainModule.ide.Next;

    if not UniMainModule.ide.Eof then
    begin

      vlSabor := UniMainModule.idesbridentificacao.AsString;

    end;
  end;
end;

initialization

RegisterAppFormClass(TMainmForm);

end.
