object fpesqesp: Tfpesqesp
  Left = 0
  Top = 0
  ActiveControl = txtPesquisa
  BorderIcons = []
  Caption = 'Pesquisa Especial'
  ClientHeight = 120
  ClientWidth = 339
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RGCampos: TRadioGroup
    Left = 0
    Top = 0
    Width = 177
    Height = 120
    Align = alLeft
    Caption = ' Campo da Digita'#231#227'o '
    TabOrder = 0
    OnClick = RGCamposClick
  end
  object Panel1: TPanel
    Left = 177
    Top = 0
    Width = 162
    Height = 120
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 72
      Width = 162
      Height = 27
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderWidth = 6
      Caption = 'Localizar ...'
      TabOrder = 0
    end
    object txtPesquisa: TEdit
      Left = 0
      Top = 99
      Width = 162
      Height = 21
      Align = alBottom
      TabOrder = 1
      OnKeyPress = txtPesquisaKeyPress
    end
  end
  object dcl: tuniquery
    SQL.Strings = (
      
        'select dclcodigo, clscodigo, clbcodigo, dclvisivel, dclpesquisav' +
        'el, dclpesquisa, dclnomecampo,dcltitulo from dcl where dclpesqui' +
        'savel=1 and clscodigo=:clscodigo and clbcodigo=:clbcodigo')
    Left = 116
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clscodigo'
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
      end>
  end
  object consulta: tuniquery
    Left = 72
    Top = 16
  end
end
