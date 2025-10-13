object fajustacre: Tfajustacre
  Left = 0
  Top = 0
  ActiveControl = mfivalorjuros
  BorderIcons = []
  Caption = 'Ajustando Valores'
  ClientHeight = 248
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 19
    Top = 19
    Width = 101
    Height = 13
    Caption = 'Valor Original  R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 19
    Top = 57
    Width = 42
    Height = 13
    Caption = 'Juros R$'
  end
  object Label6: TLabel
    Left = 19
    Top = 111
    Width = 144
    Height = 13
    Caption = 'Valor Recebido do Principal R$'
  end
  object Label3: TLabel
    Left = 19
    Top = 143
    Width = 112
    Height = 13
    Caption = 'Total Recebido  R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 84
    Width = 66
    Height = 13
    Caption = 'Descontos R$'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 217
    Width = 279
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 5
    object bconfirma: TBitBtn
      Left = 125
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
      OnEnter = bconfirmaEnter
    end
    object bcancela: TBitBtn
      Left = 200
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
  object mfivalorprincipal: TDBEdit
    Left = 177
    Top = 108
    Width = 88
    Height = 21
    TabStop = False
    DataField = 'mfivalor'
    DataSource = Dqbaixa
    Enabled = False
    ReadOnly = True
    TabOrder = 3
    OnExit = mfivalorprincipalExit
    OnKeyPress = FormKeyPress
  end
  object mfivalorjuros: TDBEdit
    Left = 177
    Top = 54
    Width = 88
    Height = 21
    DataField = 'mfivalor'
    DataSource = Dqjuros
    TabOrder = 1
    OnExit = mfivalorjurosExit
    OnKeyPress = FormKeyPress
  end
  object mfivalordescontos: TDBEdit
    Left = 177
    Top = 81
    Width = 88
    Height = 21
    DataField = 'mfivalor'
    DataSource = Dqdescontos
    TabOrder = 2
    OnExit = mfivalordescontosExit
    OnKeyPress = FormKeyPress
  end
  object rfivalor: TDBEdit
    Left = 177
    Top = 16
    Width = 88
    Height = 21
    DataField = 'rfioriginal'
    DataSource = Dvbaixa
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object rfibaixado: TDBEdit
    Left = 177
    Top = 140
    Width = 88
    Height = 21
    DataField = 'rfibaixado'
    DataSource = Dvbaixa
    TabOrder = 4
    OnEnter = rfibaixadoEnter
    OnExit = mfivalorprincipalExit
    OnKeyPress = FormKeyPress
    OnKeyUp = rfibaixadoKeyUp
  end
  object PnlTipoBaixa: TPanel
    Left = 19
    Top = 174
    Width = 246
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object rfijuroscalc: TDBEdit
    Left = 83
    Top = 38
    Width = 88
    Height = 21
    TabStop = False
    DataField = 'rfijuroscalc'
    DataSource = Dvbaixa
    ReadOnly = True
    TabOrder = 7
    Visible = False
    OnExit = mfivalorjurosExit
    OnKeyPress = FormKeyPress
  end
  object rfioriginal: TDBEdit
    Left = 65
    Top = 108
    Width = 88
    Height = 21
    TabStop = False
    DataField = 'rfioriginal'
    DataSource = Dvbaixa
    Enabled = False
    ReadOnly = True
    TabOrder = 8
    Visible = False
    OnExit = mfivalorprincipalExit
    OnKeyPress = FormKeyPress
  end
  object mfivalorori: TDBEdit
    Left = 83
    Top = 65
    Width = 88
    Height = 21
    TabStop = False
    DataField = 'mfivalorori'
    DataSource = Dqjuros
    ReadOnly = True
    TabOrder = 9
    Visible = False
    OnExit = mfivalorjurosExit
    OnKeyPress = FormKeyPress
  end
  object Dqbaixa: tunidatasource
    Left = 64
    Top = 216
  end
  object Dqjuros: tunidatasource
    Left = 108
    Top = 212
  end
  object Dqdescontos: tunidatasource
    Left = 8
    Top = 212
  end
  object DUQTabela: tunidatasource
    Left = 164
    Top = 220
  end
  object Dvbaixa: tunidatasource
    Left = 224
    Top = 228
  end
end
