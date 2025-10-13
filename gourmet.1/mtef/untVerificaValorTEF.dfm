object FrmVerificaValorTEF: TFrmVerificaValorTEF
  Left = 365
  Top = 160
  ActiveControl = BtnConfirmar
  BorderStyle = bsNone
  Caption = 'OnObtemCampo'
  ClientHeight = 139
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 139
    Align = alClient
    BevelInner = bvSpace
    TabOrder = 0
    DesignSize = (
      409
      139)
    object Label1: TLabel
      Left = 17
      Top = 61
      Width = 259
      Height = 14
      AutoSize = False
      Caption = 'Quantidade de parcelas'
    end
    object Panel5: TPanel
      Left = 2
      Top = 108
      Width = 405
      Height = 29
      ParentCustomHint = False
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 75
        Top = 1
        Width = 329
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        DesignSize = (
          329
          27)
        object BtnRetornar: TBitBtn
          Left = 18
          Top = 2
          Width = 100
          Height = 23
          Anchors = [akTop]
          Caption = 'Retornar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ModalResult = 4
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object BtnCancelar: TBitBtn
          Left = 226
          Top = 2
          Width = 100
          Height = 23
          Anchors = [akTop]
          Cancel = True
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ModalResult = 7
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object BtnConfirmar: TBitBtn
          Left = 122
          Top = 2
          Width = 100
          Height = 23
          Anchors = [akTop]
          Caption = 'Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ModalResult = 1
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object Edit1: TEdit
      Left = 282
      Top = 51
      Width = 105
      Height = 32
      ParentCustomHint = False
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object Panel9: TPanel
      Left = 2
      Top = 2
      Width = 405
      Height = 26
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 14317667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 15
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 15
        Top = 0
        Width = 390
        Height = 26
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Caption = 'Mensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 21
        ExplicitTop = -1
      end
    end
  end
end
