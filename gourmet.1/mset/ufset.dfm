object fset: Tfset
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Atualizando Produtos ...'
  ClientHeight = 62
  ClientWidth = 351
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
  object mostra: TProgressBar
    Left = 8
    Top = 20
    Width = 333
    Height = 17
    TabOrder = 0
  end
  object fechador: TTimer
    Enabled = False
    Interval = 100
    OnTimer = fechadorTimer
    Left = 208
    Top = 8
  end
  object consulta: TUniQuery
    Left = 144
    Top = 12
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select prosaldo from pro where pro.procodigo=:procodigo')
    Left = 108
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object proprosaldo: TFloatField
      FieldName = 'prosaldo'
    end
  end
  object mov: TUniQuery
    SQL.Strings = (
      
        'select itm.procodigo,sum(itmquantidade) as quant,sum(itmcontendo' +
        '*if(toe.toetipo='#39'1'#39',itmquantidade*-1,itmquantidade)) as quantida' +
        'de,toetipo'
      'from toe,mes,itm,pro'
      'where'
      'toe.toecodigo=mes.toecodigo and'
      'mes.meschave=itm.meschave and '
      'itm.procodigo=pro.procodigo and'
      'itm.procodigo=:procodigo and'
      'proestoque='#39'1'#39' group by itm.procodigo')
    Left = 72
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object movprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object movquant: TFloatField
      FieldName = 'quant'
      ReadOnly = True
    end
    object movquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object movttecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
  end
end
