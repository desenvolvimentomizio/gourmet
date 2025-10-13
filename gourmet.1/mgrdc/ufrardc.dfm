inherited frardc: Tfrardc
  inherited PlGeral: TPanel
    inherited SplBotoes: TSplitter
      ExplicitHeight = 528
    end
    inherited PlBotoes: TPanel
      inherited ImageLogoBase: TImage
        ExplicitTop = 449
      end
    end
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        ExplicitTop = 496
        ExplicitWidth = 964
      end
      inherited SpFilter: TSplitter
        ExplicitWidth = 964
      end
      inherited PlFiltros: TPanel
        inherited PlBotaoFiltro: TPanel
          Visible = False
        end
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 375
          Columns = <
            item
              Expanded = False
              FieldName = 'adcidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcnrauto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcparcelas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcdata'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 375
          Height = 45
          Visible = True
          ExplicitTop = 375
          ExplicitHeight = 45
          object GroupBox2: TGroupBox
            Left = 643
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'A Registrar R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlARegistrar: TPanel
              Left = 2
              Top = 16
              Width = 126
              Height = 25
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 903
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Diferen'#231'a R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlDiferenca: TPanel
              Left = 2
              Top = 16
              Width = 126
              Height = 25
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 773
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Registrado R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlRegistrado: TPanel
              Left = 2
              Top = 16
              Width = 126
              Height = 25
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActPesquisar: TAction
      Enabled = False
    end
    inherited ActRelatorios: TAction
      Enabled = False
    end
    inherited ActVerFiltros: TAction
      Enabled = False
    end
    inherited ActFiltrar: TAction
      Enabled = False
    end
    inherited ActConfiguracoes: TAction
      Enabled = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdc.rdcchave,'
      '  rdc.rdcvalor,'
      '  rdc.rdcnrauto,'
      '  rdc.rdcdata,'
      '  rdc.adccodigo,'
      '  rdc.rdcparcelas,'
      '  adc.adcidentificacao,'
      '  rdc.bdccodigo'
      'FROM trdc rdc,'
      '     adc'
      'WHERE adc.adccodigo = rdc.adccodigo'
      '')
    object uqtabelardcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object uqtabelardcvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rdcvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelardcnrauto: TStringField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Size = 10
    end
    object uqtabelardcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object uqtabelaadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object uqtabelardcparcelas: TIntegerField
      DisplayLabel = 'Parcelas'
      FieldName = 'rdcparcelas'
    end
    object uqtabelaadcidentificacao: TStringField
      DisplayLabel = 'Administradora'
      FieldName = 'adcidentificacao'
      Size = 30
    end
    object uqtabelabdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object ltr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltr.ltrchave,'
      '  ltr.rdcchave,'
      '  ltr.dtlchave'
      'FROM ltr'
      'WHERE ltr.ltrchave = :ltrchave')
    Left = 379
    Top = 315
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltrchave'
        Value = nil
      end>
    object ltrltrchave: TIntegerField
      FieldName = 'ltrchave'
    end
    object ltrrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object ltrdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
end
