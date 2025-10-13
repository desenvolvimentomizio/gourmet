inherited fcfgmenp: Tfcfgmenp
  ActiveControl = cfgmenpnivel1
  Caption = 'Configura'#231#227'o de N'#237'veis de Endere'#231'amento de Produtos'
  ClientHeight = 176
  ClientWidth = 342
  ExplicitWidth = 358
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 147
    Width = 342
    inherited bconfirma: TBitBtn
      Left = 188
    end
    inherited bcancela: TBitBtn
      Left = 263
    end
    inherited bfechar: TBitBtn
      Left = 123
    end
  end
  inherited paginas: TPageControl
    Width = 342
    Height = 147
    inherited Principal: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Primeiro N'#237'vel'
        FocusControl = cfgmenpnivel1
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundo N'#237'vel'
        FocusControl = cfgmenpnivel2
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Terceiro N'#237'vel'
        FocusControl = cfgmenpnivel3
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 60
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quarto N'#237'vel'
        FocusControl = cfgmenpnivel4
      end
      object cfgmenpnivel1: TDBEdit
        Left = 144
        Top = 3
        Width = 177
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmenpnivel1'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmenpnivel2: TDBEdit
        Left = 144
        Top = 30
        Width = 177
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmenpnivel2'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgmenpnivel3: TDBEdit
        Left = 144
        Top = 57
        Width = 177
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmenpnivel3'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmenpnivel4: TDBEdit
        Left = 144
        Top = 84
        Width = 177
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmenpnivel4'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select '
      '   cfgcodigo,'
      '   cfgmenpnivel1,'
      '   cfgmenpnivel2,'
      '   cfgmenpnivel3,'
      '   cfgmenpnivel4,'
      '   cfgmenpnivel5'
      'from cfgmenp '
      '    where cfgcodigo=:cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgmenpnivel1: TStringField
      FieldName = 'cfgmenpnivel1'
      Required = True
      Size = 30
    end
    object registrocfgmenpnivel2: TStringField
      FieldName = 'cfgmenpnivel2'
      Required = True
      Size = 30
    end
    object registrocfgmenpnivel3: TStringField
      FieldName = 'cfgmenpnivel3'
      Required = True
      Size = 30
    end
    object registrocfgmenpnivel4: TStringField
      FieldName = 'cfgmenpnivel4'
      Required = True
      Size = 30
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
