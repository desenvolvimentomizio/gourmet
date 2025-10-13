object PasswordDlg: TPasswordDlg
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Libera'#231#227'o'
  ClientHeight = 93
  ClientWidth = 233
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 93
    Height = 13
    Caption = 'Senha de Produ'#231#227'o'
  end
  object Password: TEdit
    Left = 8
    Top = 27
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 70
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Confirma'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 150
    Top = 59
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancela'
    ModalResult = 2
    TabOrder = 2
    OnClick = CancelBtnClick
  end
end
