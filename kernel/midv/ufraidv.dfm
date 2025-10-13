inherited fraidv: Tfraidv
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 403
        Visible = True
        ExplicitTop = 403
      end
      inherited PlRodaPe: TPanel
        Top = 408
        Height = 172
        Visible = True
        ExplicitTop = 408
        ExplicitHeight = 172
        object listaitm: TDBGrid
          Left = 0
          Top = 0
          Width = 1182
          Height = 172
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = Ditm
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = MenuManutencao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = listaitmCellClick
          OnDrawColumnCell = listaitmDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'marcadevolver'
              Title.Caption = ' '
              Width = 18
              Visible = True
            end
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
              Width = 345
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
            end
            item
              Expanded = False
              FieldName = 'itmvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmtotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmcusto'
              Title.Caption = 'Custo Total R$'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmaliqipi'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfopdestinacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cspcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmcontendo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvaloritem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmquantidadeitens'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmicms'
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 274
        ExplicitHeight = 274
        inherited DBGLista: TDBGrid
          Height = 249
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
              FieldName = 'mesregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meschavenfe'
              Title.Caption = 'Chave DANFE'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 249
          Visible = True
          ExplicitTop = 249
        end
      end
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
      '     , tem.temidentificacao'
      '     , mes.tdfcodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , mes.temcodigo'
      '     , mes.mesregistro'
      '     , mes.mesprotocolo'
      '     , mes.sdecodigo'
      '     , mesdatanfe'
      '     , toe.ttocodigo'
      '     , mes.mesregistro'
      '     , fla.flasigla'
      '     , mes.mesreclassicacao'
      '     , mes.toecodigo'
      '     , toe.toecfopsaida'
      '     , mes.mesipi'
      '     , mes.mesfrete'
      '     , mes.meschavenfe'
      '     , mes.mesicms'
      '  FROM mes'
      ' INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo'
      ' INNER JOIN sde ON mes.sdecodigo = sde.sdecodigo'
      ' INNER JOIN fla ON mes.flacodigo = fla.flacodigo'
      ' INNER JOIN tdf ON mes.tdfcodigo = tdf.tdfcodigo'
      ' INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      ' INNER JOIN tem ON mes.temcodigo = tem.temcodigo'
      
        ' WHERE toe.ttecodigo = 0 and mes.flacodigo=:flacodigo and toe.tt' +
        'ocodigo=1'
      
        'and  year(mes.mesregistro)=(select spdexercicio from spd where s' +
        'pdativo=1 limit 1)'
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
      Size = 30
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 4
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
      DisplayLabel = 'Fornecedor'
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
      DisplayLabel = 'Sit. Documento'
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Tipo do Movimenta'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelamesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'S.D.'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelamesdatanfe: TDateField
      FieldName = 'mesdatanfe'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
      Size = 35
    end
    object uqtabelatdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object uqtabelattocodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'ttocodigo'
    end
    object uqtabelaflasigla: TStringField
      DisplayLabel = 'Fla'
      FieldName = 'flasigla'
      Size = 3
    end
    object uqtabelamesreclassicacao: TIntegerField
      FieldName = 'mesreclassicacao'
    end
    object uqtabelatoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object uqtabelatoecfopsaida: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'toecfopsaida'
      Size = 10
    end
    object uqtabelamesfrete: TFloatField
      DisplayLabel = 'R$ Frete'
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesipi: TFloatField
      DisplayLabel = 'R$ IPI'
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelameschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 200
    end
    object uqtabelamesicms: TCurrencyField
      DisplayLabel = 'ICMS Subst R$'
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ColorDialog: TColorDialog
    Left = 1040
    Top = 285
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C0101030005002C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      'SELECT pro.pronome'
      '     , itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , uni.unisimbolo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmcontendo * itm.itmquantidade itmquantidadeitens'
      '     , itm.itmcontendo'
      '     , (itm.itmvalor) /itm.itmcontendo itmvaloritem'
      '     , (itm.itmdesconto ) AS itmdesconto'
      
        '     , (itm.itmvalor * itm.itmquantidade)+itmipi+itmicms-itmdesc' +
        'onto      AS itmcusto'
      '     , itm.itmtotal'
      '     , itm.cfocfop'
      '     , itm.itmaliqipi'
      '     , itm.toecodigo'
      '     , itm.cfocfopdestinacao'
      '     , itm.cstcodigo '
      '     , itm.cspcodigo '
      '     , itm.itmipi'
      '     , itm.puncodigo'
      '     , itm.itmicms'
      '     , 0 marcadevolver'
      '     , itm.itmquantidade quantidadedevolver'
      '     , pun.unicodigo'
      ''
      '  FROM itm'
      ' INNER JOIN pro ON itm.procodigo = pro.procodigo'
      ' INNER JOIN pun ON itm.puncodigo = pun.puncodigo'
      ' INNER JOIN uni ON pun.unicodigo = uni.unicodigo'
      ' WHERE itm.meschave = :meschave'
      ' GROUP BY itm.itmchave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 288
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
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
      Size = 3
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Vlr Item R$'
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
    object itmitmcusto: TFloatField
      DisplayLabel = 'Total Geral'
      FieldName = 'itmcusto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
      FieldName = 'cfocfopdestinacao'
      Size = 5
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
    object itmitmipi: TFloatField
      DisplayLabel = 'R$ IPI'
      FieldName = 'itmipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmitmvaloritem: TFloatField
      DisplayLabel = 'Vlr Unit R$'
      FieldName = 'itmvaloritem'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object itmitmquantidadeitens: TFloatField
      DisplayLabel = 'Qtda Units'
      FieldName = 'itmquantidadeitens'
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
    object itmitmicms: TCurrencyField
      DisplayLabel = 'ICMS Subst'
      FieldName = 'itmicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmmarcadevolver: TIntegerField
      FieldName = 'marcadevolver'
    end
    object itmunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 316
    Top = 500
  end
  object idt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  idtchave,'
      '  mdtchave,'
      '  itmchave,'
      '  meschave,'
      '  flacodigo,'
      '  idtquantidade,'
      '  idtmotivo,'
      '  unicodigo,'
      '  idtvalor,'
      '  idtdesconto,'
      '  idttotal,'
      '  toecodigo'
      '  FROM'
      '  idt where mdtchave=:mdtchave')
    Left = 808
    Top = 516
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdtchave'
        Value = nil
      end>
    object idtidtchave: TIntegerField
      FieldName = 'idtchave'
    end
    object idtmdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object idtitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object idtmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object idtflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object idtidtmotivo: TStringField
      FieldName = 'idtmotivo'
      Size = 100
    end
    object idtunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object idtidtvalor: TFloatField
      FieldName = 'idtvalor'
    end
    object idtidtdesconto: TFloatField
      FieldName = 'idtdesconto'
    end
    object idtidttotal: TFloatField
      FieldName = 'idttotal'
    end
    object idtidtquantidade: TFloatField
      FieldName = 'idtquantidade'
    end
    object idttoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
  end
  object mdt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mdtchave,'
      '  mdtregistro,'
      '  clbcodigo,'
      '  meschaveorigem,'
      '  meschavedestino'
      '  FROM'
      
        '  mdt where meschaveorigem=:meschaveorigem and meschavedestino=:' +
        'meschavedestino')
    Left = 768
    Top = 516
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschavedestino'
        Value = nil
      end>
    object mdtmdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object mdtmdtregistro: TDateField
      FieldName = 'mdtregistro'
    end
    object mdtclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mdtmeschaveorigem: TIntegerField
      FieldName = 'meschaveorigem'
    end
    object mdtmeschavedestino: TIntegerField
      FieldName = 'meschavedestino'
    end
  end
end
