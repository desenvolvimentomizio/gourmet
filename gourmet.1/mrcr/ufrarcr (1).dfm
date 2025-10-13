inherited frarcr: Tfrarcr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 420
        Visible = True
        ExplicitTop = 372
      end
      inherited PlRodaPe: TPanel
        Top = 425
        Height = 155
        Visible = True
        ExplicitLeft = 0
        ExplicitTop = 425
        ExplicitHeight = 155
        object DBGListaMce: TDBGrid
          Left = 0
          Top = 0
          Width = 800
          Height = 155
          Align = alLeft
          DataSource = Dmce
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGListaMceDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'mcechave'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mecregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmcidentificacao'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcemotivo'
              Width = 240
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcevalor'
              Width = 70
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 291
        ExplicitHeight = 291
        inherited DBGLista: TDBGrid
          Height = 246
          Columns = <
            item
              Expanded = False
              FieldName = 'rcrchave'
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
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcridentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tscidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrhistorico'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmcidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrsaldo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcrvalorbaixa'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 246
          Height = 45
          Visible = True
          ExplicitTop = 246
          ExplicitHeight = 45
          object PlDetalhe: TPanel
            Left = 1
            Top = 1
            Width = 1032
            Height = 43
            Align = alClient
            BevelOuter = bvLowered
            BorderWidth = 1
            TabOrder = 0
            object GbGeral: TGroupBox
              Left = 595
              Top = 2
              Width = 145
              Height = 39
              Align = alRight
              Caption = 'Total Geral R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object pltotalGeral: TPanel
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
            object GBBaixados: TGroupBox
              Left = 740
              Top = 2
              Width = 145
              Height = 39
              Align = alRight
              Caption = 'Baixados R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object plbaixados: TPanel
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
            object GBDisponivel: TGroupBox
              Left = 885
              Top = 2
              Width = 145
              Height = 39
              Align = alRight
              Caption = 'Dispon'#237'vel R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object pldisponivel: TPanel
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
  end
  inherited acoes: TActionList
    object ActTransferir: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Transferir'
    end
    object ActCancelar: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Cancelar'
    end
  end
  inherited DSTabela: TUniDataSource
    Top = 212
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  tcridentificacao,'
      '  tscidentificacao,'
      '  etdidentificacao,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  mcechave,'
      '  tmcidentificacao,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  clbidentificacao,'
      '  rcrvalor,'
      '  mcrvalorbaixa,'
      '  rcrsaldo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora'
      'FROM v_rcr')
    Left = 364
    Top = 132
  end
  inherited cpg: TUniQuery
    Left = 292
    Top = 272
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 293
    Top = 321
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800B40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object mce: TUniQuery
    SQL.Strings = (
      'SELECT mce.mcechave'
      '     , mce.rcrchave'
      '     , mce.tmccodigo'
      '     , mce.clbcodigo'
      '     , mce.mcemotivo'
      '     , mce.mecregistro'
      '     , clb.clbidentificacao'
      '     , tmc.tmcidentificacao'
      
        '     , IF(rcr.tsccodigo = 1 AND mcr.mcrchave IS NOT NULL, SUM(mc' +
        'r.mcrvalor), rcr.rcrvalor) AS mcevalor'
      '  FROM rcr'
      ' INNER JOIN mce ON rcr.rcrchave = mce.rcrchave'
      ' INNER JOIN clb ON mce.clbcodigo = clb.clbcodigo'
      ' INNER JOIN tmc ON mce.tmccodigo = tmc.tmccodigo'
      '  LEFT JOIN mcr ON mce.mcechave = mcr.mcechave'
      ' WHERE mce.rcrchave = :rcrchave'
      ' GROUP BY mce.mcechave'
      ' ORDER BY mce.mecregistro')
    Constraints = <>
    Left = 952
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
  end
  object Dmce: TDataSource
    DataSet = mce
    Left = 987
    Top = 444
  end
end
