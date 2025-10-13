object FormObtemCampo: TFormObtemCampo
  Left = 644
  Top = 278
  BorderStyle = bsDialog
  Caption = 'Entre com a Informa'#231#227'o'
  ClientHeight = 160
  ClientWidth = 437
  Color = clBtnFace
  Constraints.MinHeight = 170
  Constraints.MinWidth = 420
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    437
    160)
  PixelsPerInch = 96
  TextHeight = 24
  object edtResposta: TEdit
    Left = 32
    Top = 70
    Width = 371
    Height = 32
    Anchors = [akLeft, akRight, akBottom]
    AutoSelect = False
    TabOrder = 0
    OnChange = edtRespostaChange
    OnKeyDown = edtRespostaKeyDown
    OnKeyPress = edtRespostaKeyPress
  end
  object pTitulo: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 46
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object lTitulo: TLabel
      Left = 1
      Top = 1
      Width = 435
      Height = 44
      Align = alClient
      Alignment = taCenter
      Caption = 'lTitulo'
      Layout = tlCenter
      WordWrap = True
      ExplicitWidth = 50
      ExplicitHeight = 24
    end
  end
  object pbotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 127
    Width = 431
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 22
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object btVoltar: TBitBtn
      Left = 119
      Top = 4
      Width = 97
      Height = 22
      Align = alRight
      Caption = 'Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 4
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object btCancel: TBitBtn
      Left = 324
      Top = 4
      Width = 103
      Height = 22
      Align = alRight
      Cancel = True
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object btOk: TBitBtn
      Left = 216
      Top = 4
      Width = 108
      Height = 22
      Align = alRight
      Caption = 'Confirma'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
  end
end
