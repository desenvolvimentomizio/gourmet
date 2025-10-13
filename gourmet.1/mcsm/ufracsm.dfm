inherited fracsm: Tfracsm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 385
        Visible = True
        ExplicitTop = 379
      end
      inherited PlRodaPe: TPanel
        Top = 390
        Height = 190
        Visible = True
        ExplicitTop = 390
        ExplicitHeight = 190
        object PlItens: TPanel
          Left = 0
          Top = 0
          Width = 553
          Height = 190
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object listaitm: TDBGrid
            Left = 2
            Top = 22
            Width = 549
            Height = 166
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Ditm
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'itmchave'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmitem'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 60
                Visible = True
              end>
          end
          object plTituloItensDetalhe: TPanel
            Left = 2
            Top = 2
            Width = 549
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Caption = '          Itens'
            Color = 4210816
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      inherited PlFiltros: TPanel
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
          Visible = True
        end
      end
      inherited PnlGrid: TPanel
        Height = 256
        ExplicitHeight = 256
        inherited DBGLista: TDBGrid
          Height = 231
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meshora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clboperador'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 231
          ExplicitTop = 231
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
    object ActProcessar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Processar'
      OnExecute = ActProcessarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , etd.etdidentificacao'
      '     , sde.sdeidentificacao'
      '     , tdf.tdfidentificacao'
      '     , toe.toeidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesnumero'
      '     , mes.etdcodigo'
      '     , mes.messerie'
      '     , mes.tdfcodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , mes.temcodigo'
      '     , mes.clbcodigo'
      '     , c2.clbidentificacao AS clboperador'
      '     , mes.trmcodigo'
      '     , mes.mesprotocolo'
      '     , mes.sdecodigo'
      '     , mes.mesdatanfe'
      '     , tto.ttocodigo'
      '     , mes.mesregistro'
      '     , mes.clbvendedor'
      '     , c1.clbidentificacao'
      '     , mor.orcchave'
      '     , tem.temidentificacao'
      '     , TIME(mesinclusao)   AS meshora'
      '     , fla.flasigla'
      '     , mes.flacodigo'
      '     , mes.mesprodutos'
      '     , mes.messervicos'
      '     , mes.toecodigo'
      '     , toe.toecfopsaida'
      '     , mes.mestipocomissao'
      '     '
      ''
      '  FROM mes '
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN clb         ON mes.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c1  ON mes.clbvendedor = c1.clbcodigo'
      '  LEFT JOIN clb c2  ON mes.clbcodigo = c2.clbcodigo'
      '  JOIN trm        ON mes.trmcodigo = trm.trmcodigo'
      
        '  LEFT JOIN mor   ON mes.meschave = mor.meschave and mor.flacodi' +
        'go=:flacodigo'
      
        ' WHERE (toe.ttecodigo IN (1) and toe.ttocodigo IN (7,10)) AND me' +
        's.flacodigo=:flacodigo'
      ' -- Filtros')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelameschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
    object uqtabelamesnumero: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'mesnumero'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelamesvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o Documento'
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Operador(a)'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Trm'
      FieldName = 'trmcodigo'
      Required = True
    end
    object uqtabelamesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'C'#243'digo da Situa'#231#227'o'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelamesdatanfe: TDateField
      DisplayLabel = 'Data NFE'
      FieldName = 'mesdatanfe'
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Cod. Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelatdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object uqtabelattocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelaclbvendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor(a)'
      FieldName = 'clbvendedor'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Vendedor(a)'
      FieldName = 'clbidentificacao'
      Origin = 'teste'
      Size = 30
    end
    object uqtabelaorcchave: TIntegerField
      DisplayLabel = 'Nr. Atendimento'
      FieldName = 'orcchave'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
      Size = 30
    end
    object uqtabelaclboperador: TStringField
      DisplayLabel = 'Operador(a)'
      FieldName = 'clboperador'
      Size = 35
    end
    object uqtabelameshora: TTimeField
      DisplayLabel = 'Hora Registro'
      FieldName = 'meshora'
    end
    object uqtabelaflasigla: TStringField
      DisplayLabel = 'Fla'
      FieldName = 'flasigla'
      Size = 3
    end
    object uqtabelamesprodutos: TFloatField
      DisplayLabel = 'Produtos R$'
      FieldName = 'mesprodutos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesservicos: TFloatField
      DisplayLabel = 'Servi'#231'os R$'
      FieldName = 'messervicos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object uqtabelatoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object uqtabelatoecfopsaida: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'toecfopsaida'
      Size = 10
    end
    object uqtabelamestipocomissao: TIntegerField
      FieldName = 'mestipocomissao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800280110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '    , IF(imv.vrpcodigo > 0'
      '        , (SELECT vv.pronome'
      '            FROM v_vrp vv'
      '            WHERE vv.vrpcodigo = imv.vrpcodigo) '
      '        , IF(tImc.clbidentificacao IS NOT NULL'
      '           , CONCAT(pro.pronome, '#39' - '#39', tImc.clbidentificacao)'
      '           , pro.pronome))            AS pronome'
      ' --    , pro.pronome'
      '     , uni.unisimbolo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , (itm.itmtotal - itm.itmdesconto) AS itmtotalliq'
      '     , itm.cfocfop'
      '     , itm.itmaliqipi'
      '     , itm.toecodigo'
      '     , pro.proncm'
      '     , itm.cstcodigo'
      '     , itm.cspcodigo'
      '     , itm.itmpis'
      '     , itm.itmcofins'
      '  FROM      itm'
      '  LEFT JOIN imv ON itm.itmchave  = imv.itmchave  '
      '  JOIN      pro ON itm.procodigo = pro.procodigo'
      '  JOIN      pun ON itm.puncodigo = pun.puncodigo'
      '  JOIN      uni ON pun.unicodigo = uni.unicodigo'
      '  '
      '  -- Identifica o T'#233'cnico da OS'
      '  LEFT JOIN (SELECT i.itmchave'
      '                  , c.clbidentificacao'
      '               FROM imc i'
      '               JOIN clb c ON i.clbcodigo = c.clbcodigo '
      
        '                AND c.fnccodigo = 5) tImc ON itm.itmchave = tImc' +
        '.itmchave  '
      ' '
      ' WHERE itm.meschave = :meschave and itm.flacodigo=:flacodigo')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Constraints = <>
    Left = 700
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
      ReadOnly = True
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      ReadOnly = True
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      ReadOnly = True
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      ReadOnly = True
      Required = True
    end
    object itmpronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object itmunisimbolo: TStringField
      DisplayLabel = 'UN'
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Vlr Unit R$'
      FieldName = 'itmvalor'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total Item R$'
      FieldName = 'itmtotal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object itmitmaliqipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'itmaliqipi'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object itmitmtotalliq: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'itmtotalliq'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 8
    end
    object itmcstcodigo: TStringField
      DisplayLabel = 'CST'
      FieldName = 'cstcodigo'
      Size = 4
    end
    object itmcspcodigo: TStringField
      DisplayLabel = 'CSP'
      FieldName = 'cspcodigo'
      Size = 4
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 736
    Top = 420
  end
end
