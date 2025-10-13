object FormExibeMensagemPorTempo: TFormExibeMensagemPorTempo
  Left = 708
  Top = 289
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 184
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClick = FormClick
  OnShow = FormShow
  DesignSize = (
    605
    184)
  PixelsPerInch = 96
  TextHeight = 13
  object btOk: TButton
    Left = 200
    Top = 137
    Width = 193
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Aguarde ...'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object pMensagem: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 113
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lMensagem: TLabel
      Left = 1
      Top = 1
      Width = 603
      Height = 111
      Align = alClient
      Alignment = taCenter
      Caption = 'Mensagem ao Operador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      OnClick = lMensagemClick
      ExplicitWidth = 284
      ExplicitHeight = 29
    end
  end
  object tEspera: TTimer
    Enabled = False
    OnTimer = tEsperaTimer
    Left = 488
    Top = 48
  end
end
