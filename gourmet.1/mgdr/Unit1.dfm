object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 416
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Left = 264
    Top = 88
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    SynchronizedEvents = False
    Left = 272
    Top = 176
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 336
    Top = 176
  end
end
