inherited frascr: Tfrascr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlRodaPe: TPanel
        ExplicitLeft = 0
        ExplicitTop = 554
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 379
          Columns = <
            item
              Expanded = False
              FieldName = 'rcrselecionar'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrchave'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrhora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tscidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcridentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrsaldo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 379
          Height = 41
          Visible = True
          ExplicitTop = 379
          ExplicitHeight = 41
          object GBTotal: TGroupBox
            Left = 888
            Top = 1
            Width = 145
            Height = 39
            Align = alRight
            Caption = 'Total Selecionado R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Pltotalselecionado: TPanel
              Left = 2
              Top = 15
              Width = 141
              Height = 22
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
          object GBRecebidos: TGroupBox
            Left = 743
            Top = 1
            Width = 145
            Height = 39
            Align = alRight
            Caption = 'Total Dispon'#237'vel R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Pltotaldisponivel: TPanel
              Left = 2
              Top = 15
              Width = 141
              Height = 22
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
  inherited DSTabela: TUniDataSource
    Left = 248
    Top = 260
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select rcrchave,'
      '    tcridentificacao,'
      '    tscidentificacao,'
      '    etdidentificacao,'
      '    etdcodigo,'
      '    cedcodigo,'
      '    rcrdata,'
      '    rcrhistorico,'
      '    mcechave,'
      '    tmcidentificacao,'
      '    tmccodigo,'
      '    clbcodigo,'
      '    clbidentificacao,'
      '    rcrvalor,'
      '    mcemotivo,'
      '    mecregistro,'
      '    tcrcodigo,'
      '    tsccodigo,'
      '    tnccodigo,'
      '    rcrsaldo,'
      '    rcrhora,'
      '    '#39'0'#39' rcrselecionar '
      '    from v_rcr'
      '    where rcrvalor>0 and tsccodigo=1')
    Left = 372
    Top = 84
    object uqtabelarcrselecionar: TStringField
      DisplayLabel = ' '
      FieldName = 'rcrselecionar'
      Size = 1
    end
    object uqtabelarcrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rcrchave'
      Required = True
    end
    object uqtabelatcridentificacao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'tcridentificacao'
      Size = 35
    end
    object uqtabelatscidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'tscidentificacao'
      Size = 35
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object uqtabelarcrdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rcrdata'
    end
    object uqtabelarcrhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'rcrhora'
    end
    object uqtabelarcrvalor: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rcrvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarcrhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcrhistorico'
      Size = 250
    end
    object uqtabelamcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object uqtabelatmcidentificacao: TStringField
      FieldName = 'tmcidentificacao'
      Size = 35
    end
    object uqtabelatmccodigo: TIntegerField
      FieldName = 'tmccodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object uqtabelamcemotivo: TStringField
      FieldName = 'mcemotivo'
      Size = 250
    end
    object uqtabelamecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object uqtabelatcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
    end
    object uqtabelatsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object uqtabelatnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object uqtabelarcrsaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rcrsaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited cpg: TUniQuery
    Left = 428
    Top = 384
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 373
    Top = 385
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800040110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object extrcr: TUniQuery
    Constraints = <>
    Left = 312
    Top = 268
  end
  object trf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tfrchave,'
      '  rcrdestino,'
      '  rcrorigem'
      'FROM tfr limit 0')
    Constraints = <>
    Left = 328
    Top = 376
    object trftfrchave: TIntegerField
      FieldName = 'tfrchave'
    end
    object trfrcrdestino: TIntegerField
      FieldName = 'rcrdestino'
    end
    object trfrcrorigem: TIntegerField
      FieldName = 'rcrorigem'
    end
  end
  object mce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  ltechave'
      'FROM mce limit 0')
    Constraints = <>
    Left = 536
    Top = 448
    object mcemcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcemcemotivo: TStringField
      FieldName = 'mcemotivo'
      Size = 250
    end
    object mcemecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object mceltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object rcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrvalor,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora'
      'FROM rcr limit 0')
    Constraints = <>
    Left = 464
    Top = 384
    object rcrrcrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rcrchave'
    end
    object rcretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object rcrcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rcrrcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rcrrcrdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rcrdata'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object rcrrcrhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcrhistorico'
      Required = True
      Size = 250
    end
    object rcrtcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
    end
    object rcrtsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object rcrtnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object rcrrcrhora: TTimeField
      FieldName = 'rcrhora'
    end
  end
  object mcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcrchave,'
      '  rcrchave,'
      '  mcrvalor,'
      '  mcechave'
      'FROM mcr limit 0')
    Constraints = <>
    Left = 432
    Top = 464
    object mcrmcrchave: TIntegerField
      FieldName = 'mcrchave'
    end
    object mcrrcrchave: TIntegerField
      FieldName = 'rcrchave'
    end
    object mcrmcrvalor: TFloatField
      FieldName = 'mcrvalor'
    end
    object mcrmcechave: TIntegerField
      FieldName = 'mcechave'
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let where ltechave=:ltechave')
    Constraints = <>
    Left = 392
    Top = 456
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
  object lcv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lcvchave,'
      '  ltechave,'
      '  mcrchave'
      'FROM lcv limit 0')
    Constraints = <>
    Left = 480
    Top = 472
    object lcvlcvchave: TIntegerField
      FieldName = 'lcvchave'
    end
    object lcvltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object lcvmcrchave: TIntegerField
      FieldName = 'mcrchave'
    end
  end
end
