object ffada: Tffada
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'pe'
  ClientHeight = 223
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lmensagem: TLabel
    Left = 28
    Top = 40
    Width = 269
    Height = 13
    AutoSize = False
  end
  object lprocesseo: TLabel
    Left = 28
    Top = 144
    Width = 269
    Height = 13
    AutoSize = False
  end
  object animacao: TAnimate
    Left = 28
    Top = 68
    Width = 272
    Height = 60
    CommonAVI = aviCopyFiles
    StopFrame = 34
  end
  object mostra: TProgressBar
    Left = 28
    Top = 172
    Width = 272
    Height = 17
    TabOrder = 1
  end
  object mensagens: TStatusBar
    Left = 0
    Top = 204
    Width = 318
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
  end
  object plnome: TPanel
    Left = 28
    Top = 8
    Width = 272
    Height = 21
    Caption = 'Aguarde ....'
    TabOrder = 3
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = inicializarTimer
    Left = 232
    Top = 20
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'select cfgidentificacao from cfg')
    Left = 128
    Top = 152
  end
  object consulta: TUniQuery
    Left = 164
    Top = 152
  end
  object USDeletaACTDupli: TUniScript
    SQL.Strings = (
      'DELETE'
      '  FROM act'
      'USING act, (SELECT'
      '    MAX(a1.actcodigo) AS actdeletar'
      '  FROM act a1'
      '  GROUP BY a1.actformulario'
      '         , a1.actacao'
      '  HAVING COUNT(a1.actcodigo) > 1) act1'
      'WHERE act1.actdeletar = act.actcodigo;')
    Left = 216
    Top = 152
  end
end
