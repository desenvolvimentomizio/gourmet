object FBiometria: TFBiometria
  Left = 0
  Top = 0
  Caption = 'FBiometria'
  ClientHeight = 573
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCapturar: TButton
    Left = 516
    Top = 300
    Width = 75
    Height = 25
    Caption = 'Capturar'
    TabOrder = 0
    OnClick = BtnCapturarClick
  end
  object MedCpfFunc: TMaskEdit
    Left = 208
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'MedCpfFunc'
    OnEnter = MedCpfFuncEnter
    OnExit = MedCpfFuncExit
    OnKeyDown = MedCpfFuncKeyDown
    OnKeyPress = MedCpfFuncKeyPress
    OnKeyUp = MedCpfFuncKeyUp
  end
  object TextUserID: TEdit
    Left = 480
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BtnNovo: TButton
    Left = 516
    Top = 340
    Width = 75
    Height = 25
    Caption = 'BtnNovo'
    TabOrder = 3
    OnClick = BtnNovoClick
  end
  object ListBox1: TListBox
    Left = 660
    Top = 28
    Width = 237
    Height = 241
    ItemHeight = 13
    TabOrder = 4
  end
  object EdtNome: TEdit
    Left = 480
    Top = 236
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'EdtNome'
  end
  object SpbCpf: TButton
    Left = 516
    Top = 380
    Width = 75
    Height = 25
    Caption = 'SpbCpf'
    TabOrder = 6
    OnClick = SpbCpfClick
  end
  object BtnIdentificacao: TButton
    Left = 668
    Top = 380
    Width = 75
    Height = 25
    Caption = 'BtnIdentificacao'
    TabOrder = 7
    OnClick = BtnIdentificacaoClick
  end
  object Memo1: TMemo
    Left = 52
    Top = 188
    Width = 241
    Height = 189
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
end
