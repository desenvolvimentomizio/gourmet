object fmizio: Tfmizio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Iniciando aplica'#231#227'o ....'
  ClientHeight = 133
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Inicializar: TTimer
    Enabled = False
    Interval = 10
    OnTimer = InicializarTimer
    Left = 304
    Top = 44
  end
end
