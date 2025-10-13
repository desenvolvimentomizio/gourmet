inherited frascf: Tfrascf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 378
          Columns = <
            item
              Expanded = False
              FieldName = 'rcfselecionar'
              Title.Caption = ' '
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfchave'
              Title.Caption = 'Registro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfdata'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfhora'
              Title.Caption = 'Hora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Title.Caption = 'C'#243'digov'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Title.Caption = 'Raz'#227'o Social'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tscidentificacao'
              Title.Caption = 'Situa'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcridentificacao'
              Title.Caption = 'Origem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfsaldo'
              Title.Caption = 'Saldo R$'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 378
          Height = 42
          Visible = True
          ExplicitTop = 378
          ExplicitHeight = 42
          object GBRecebidos: TGroupBox
            Left = 888
            Top = 1
            Width = 145
            Height = 40
            Align = alRight
            Caption = 'Total Dispon'#237'vel R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Pltotaldisponivel: TPanel
              Left = 2
              Top = 15
              Width = 141
              Height = 23
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GBTotal: TGroupBox
            Left = 743
            Top = 1
            Width = 145
            Height = 40
            Align = alRight
            Caption = 'Total Selecionado R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Pltotalselecionado: TPanel
              Left = 2
              Top = 15
              Width = 141
              Height = 23
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
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
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select rcfchave,'
      '    tcridentificacao,'
      '    tscidentificacao,'
      '    etdidentificacao,'
      '    etdcodigo,'
      '    cedcodigo,'
      '    rcfdata,'
      '    rcfhistorico,'
      '    mfechave,'
      '    tmcidentificacao,'
      '    tmccodigo,'
      '    clbcodigo,'
      '    clbidentificacao,'
      '    rcfvalor,'
      '    mfemotivo,'
      '    mferegistro,'
      '    tcrcodigo,'
      '    tsccodigo,'
      '    tnccodigo,'
      '    rcfsaldo,'
      '    rcfhora,'
      '    '#39'0'#39' rcfselecionar '
      '    from v_rcf'
      '    where rcfvalor>0 and tsccodigo=1')
    object uqtabelarcfchave: TIntegerField
      FieldName = 'rcfchave'
    end
    object uqtabelatcridentificacao: TStringField
      FieldName = 'tcridentificacao'
      Required = True
      Size = 35
    end
    object uqtabelatscidentificacao: TStringField
      FieldName = 'tscidentificacao'
      Required = True
      Size = 255
    end
    object uqtabelaetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object uqtabelarcfdata: TDateField
      FieldName = 'rcfdata'
    end
    object uqtabelarcfhistorico: TStringField
      FieldName = 'rcfhistorico'
      Size = 200
    end
    object uqtabelamfechave: TIntegerField
      FieldName = 'mfechave'
    end
    object uqtabelatmcidentificacao: TStringField
      FieldName = 'tmcidentificacao'
      Required = True
      Size = 255
    end
    object uqtabelatmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelarcfvalor: TFloatField
      FieldName = 'rcfvalor'
      Required = True
    end
    object uqtabelamfemotivo: TStringField
      FieldName = 'mfemotivo'
      Required = True
      Size = 255
    end
    object uqtabelamferegistro: TDateTimeField
      FieldName = 'mferegistro'
    end
    object uqtabelatcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
      Required = True
    end
    object uqtabelatsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object uqtabelatnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object uqtabelarcfsaldo: TFloatField
      FieldName = 'rcfsaldo'
    end
    object uqtabelarcfhora: TTimeField
      FieldName = 'rcfhora'
    end
    object uqtabelarcfselecionar: TStringField
      FieldName = 'rcfselecionar'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let where ltechave=:ltechave')
    Left = 224
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object mfr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfrchave,'
      '  rcfchave,'
      '  mfrvalor,'
      '  mfechave'
      'FROM mfr limit 0')
    Left = 256
    Top = 496
    object mfrmfrchave: TIntegerField
      FieldName = 'mfrchave'
    end
    object mfrrcfchave: TIntegerField
      FieldName = 'rcfchave'
      Required = True
    end
    object mfrmfrvalor: TFloatField
      FieldName = 'mfrvalor'
      Required = True
    end
    object mfrmfechave: TIntegerField
      FieldName = 'mfechave'
    end
  end
  object tff: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tffchave,'
      '  rcfdestino,'
      '  rcforigem'
      'FROM tff limit 0')
    Left = 352
    Top = 496
    object tfftffchave: TIntegerField
      FieldName = 'tffchave'
    end
    object tffrcfdestino: TIntegerField
      FieldName = 'rcfdestino'
      Required = True
    end
    object tffrcforigem: TIntegerField
      FieldName = 'rcforigem'
      Required = True
    end
  end
  object mfe: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfechave,'
      '  rcfchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mfemotivo,'
      '  mferegistro,'
      '  ltechave'
      'FROM mfe limit 0')
    Left = 288
    Top = 496
    object mfemfechave: TIntegerField
      FieldName = 'mfechave'
    end
    object mfercfchave: TIntegerField
      FieldName = 'rcfchave'
      Required = True
    end
    object mfetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object mfeclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object mfemfemotivo: TStringField
      FieldName = 'mfemotivo'
      Required = True
      Size = 255
    end
    object mfemferegistro: TDateTimeField
      FieldName = 'mferegistro'
    end
    object mfeltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object lfv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lfvchave,'
      '  ltechave,'
      '  mfrchave'
      'FROM lfv limit 0')
    Left = 320
    Top = 496
    object lfvlfvchave: TIntegerField
      FieldName = 'lfvchave'
    end
    object lfvltechave: TIntegerField
      FieldName = 'ltechave'
      Required = True
    end
    object lfvmfrchave: TIntegerField
      FieldName = 'mfrchave'
      Required = True
    end
  end
end
