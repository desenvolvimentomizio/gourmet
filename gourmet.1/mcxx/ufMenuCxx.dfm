inherited fmenucxx: Tfmenucxx
  Caption = 'Menu CAIXA'
  ClientHeight = 349
  ClientWidth = 896
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 320
    Width = 896
    inherited bconfirma: TBitBtn
      Left = 742
    end
    inherited bcancela: TBitBtn
      Left = 817
    end
    inherited bfechar: TBitBtn
      Left = 677
    end
  end
  inherited paginas: TPageControl
    Width = 896
    Height = 320
    inherited Principal: TTabSheet
      object plidentificacao: TPanel
        Left = 0
        Top = 0
        Width = 888
        Height = 56
        CustomHint = BalloonHint
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 7
          Width = 59
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Usu'#225'rio'
          FocusControl = clbcodigo
        end
        object Label2: TLabel
          Left = 15
          Top = 34
          Width = 87
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Conta do Terminal'
          FocusControl = ctacodigo
        end
        object clbcodigo: TDBEdit
          Left = 132
          Top = 4
          Width = 53
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'clbcodigo'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 0
        end
        object ctacodigo: TDBEdit
          Left = 132
          Top = 31
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'ctacodigo'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 1
        end
      end
      object plDinheiro: TPanel
        Tag = 1
        Left = 0
        Top = 56
        Width = 888
        Height = 59
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelEdges = [beLeft, beBottom]
        BevelOuter = bvNone
        BorderWidth = 15
        Caption = 'DINHEIRO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object btabertura: TBitBtn
          Left = 15
          Top = 15
          Width = 708
          Height = 29
          CustomHint = BalloonHint
          Align = alClient
          Caption = '[F2] Abertura'
          Margin = 10
          TabOrder = 0
        end
        object cxxsaldoaber: TDBEdit
          Left = 723
          Top = 15
          Width = 150
          Height = 29
          CustomHint = BalloonHint
          TabStop = False
          Align = alRight
          DataField = 'cxxsaldoaber'
          DataSource = DSRegistro
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Tag = 1
        Left = 0
        Top = 115
        Width = 888
        Height = 59
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelEdges = [beLeft, beBottom]
        BevelOuter = bvNone
        BorderWidth = 15
        Caption = 'DINHEIRO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object btsangria: TBitBtn
          Left = 15
          Top = 15
          Width = 708
          Height = 29
          CustomHint = BalloonHint
          Align = alClient
          Caption = '[F4] Sangria'
          Margin = 10
          TabOrder = 0
        end
        object cxxsangrias: TDBEdit
          Left = 723
          Top = 15
          Width = 150
          Height = 29
          CustomHint = BalloonHint
          TabStop = False
          Align = alRight
          DataField = 'cxxsangrias'
          DataSource = DSRegistro
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        Tag = 1
        Left = 0
        Top = 174
        Width = 888
        Height = 59
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelEdges = [beLeft, beBottom]
        BevelOuter = bvNone
        BorderWidth = 15
        Caption = 'DINHEIRO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object btsuprimento: TBitBtn
          Left = 15
          Top = 15
          Width = 708
          Height = 29
          CustomHint = BalloonHint
          Align = alClient
          Caption = '[F6] Suprimento'
          Margin = 10
          TabOrder = 0
        end
        object cxxsuprimentos: TDBEdit
          Left = 723
          Top = 15
          Width = 150
          Height = 29
          CustomHint = BalloonHint
          TabStop = False
          Align = alRight
          DataField = 'cxxsuprimentos'
          DataSource = DSRegistro
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Tag = 1
        Left = 0
        Top = 233
        Width = 888
        Height = 59
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelEdges = [beLeft, beBottom]
        BevelOuter = bvNone
        BorderWidth = 15
        Caption = 'DINHEIRO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object btfechamento: TBitBtn
          Left = 15
          Top = 15
          Width = 708
          Height = 29
          CustomHint = BalloonHint
          Align = alClient
          Caption = '[F9] Fechamento'
          Margin = 10
          TabOrder = 0
        end
        object cxxsaldofecha: TDBEdit
          Left = 723
          Top = 15
          Width = 150
          Height = 29
          CustomHint = BalloonHint
          TabStop = False
          Align = alRight
          DataField = 'cxxsaldofecha'
          DataSource = DSRegistro
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 364
    Top = 28
  end
  inherited cfg: tuniquery
    Left = 284
    Top = 12
  end
  inherited consulta: tuniquery
    Left = 344
    Top = 65528
  end
  inherited registro: tuniquery
    SQL.Strings = (
      'SELECT'
      '  ccx.ccxchave,'
      '  ccx.clbcodigo,'
      '  ccx.ctacodigo,'
      '  ccx.cxxturno,'
      '  ccx.cxxdataber,'
      '  ccx.cxxhoraaber,'
      '  ccx.cxxsaldoaber,'
      '  ccx.cxxdatafecha,'
      '  ccx.cxxhorafecha,'
      '  ccx.cxxsaldofecha'
      'FROM ccx'
      'where ccx.clbcodigo=:clbcodigo '
      'AND  ccx.ctacodigo=:ctacodigo'
      'AND  ccx.cxxdatafecha is null')
    Params = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        ParamType = ptUnknown
      end>
    object registroccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
    object registroctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object registrocxxturno: TIntegerField
      FieldName = 'cxxturno'
    end
    object registrocxxdataber: TDateField
      FieldName = 'cxxdataber'
    end
    object registrocxxhoraaber: TTimeField
      FieldName = 'cxxhoraaber'
    end
    object registrocxxsaldoaber: TFloatField
      FieldName = 'cxxsaldoaber'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocxxdatafecha: TDateField
      FieldName = 'cxxdatafecha'
    end
    object registrocxxhorafecha: TTimeField
      FieldName = 'cxxhorafecha'
    end
    object registrocxxsaldofecha: TFloatField
      FieldName = 'cxxsaldofecha'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocxxsangrias: TFloatField
      FieldName = 'cxxsangrias'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocxxsuprimentos: TFloatField
      FieldName = 'cxxsuprimentos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited cau: tuniquery
    Left = 756
    Top = 148
  end
  object cta: tuniquery
    SQL.Strings = (
      
        'select ctacodigo, ctaidentificacao from cta where ctacodigo=:cta' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        ParamType = ptUnknown
      end>
    Left = 732
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        ParamType = ptUnknown
      end>
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  object clb: tuniquery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Params = <>
    Left = 772
    Top = 216
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
