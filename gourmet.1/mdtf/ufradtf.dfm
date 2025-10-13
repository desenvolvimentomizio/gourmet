inherited fradtf: Tfradtf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 347
        Visible = True
      end
      inherited PlRodaPe: TPanel
        Top = 352
        Height = 222
        Visible = True
        object PlRodapeItens: TPanel
          Left = 0
          Top = 195
          Width = 956
          Height = 27
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object pquanti: TPanel
            Left = 0
            Top = 0
            Width = 130
            Height = 27
            Align = alLeft
            Alignment = taRightJustify
            BevelInner = bvLowered
            BorderWidth = 2
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object pvalor: TPanel
            Left = 130
            Top = 0
            Width = 130
            Height = 27
            Align = alLeft
            Alignment = taRightJustify
            BevelInner = bvLowered
            BorderWidth = 2
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object pdesconto: TPanel
            Left = 260
            Top = 0
            Width = 130
            Height = 27
            Align = alLeft
            Alignment = taRightJustify
            BevelInner = bvLowered
            BorderWidth = 2
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object ptotal: TPanel
            Left = 390
            Top = 0
            Width = 130
            Height = 27
            Align = alLeft
            Alignment = taRightJustify
            BevelInner = bvLowered
            BorderWidth = 2
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object pgeral: TPanel
            Left = 520
            Top = 0
            Width = 188
            Height = 27
            Align = alLeft
            Alignment = taRightJustify
            BevelInner = bvLowered
            BorderWidth = 2
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
        object listaitm: TDBGrid
          Left = 0
          Top = 0
          Width = 956
          Height = 195
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = Ditm
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = MenuManutencao
          TabOrder = 1
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
              FieldName = 'itmvalor'
              Title.Caption = 'Vlr Unit.'
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
              FieldName = 'itmtotal'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Title.Caption = 'Desc.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmtotalliq'
              Title.Caption = 'Total Liquido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmaliqipi'
              Width = 30
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 218
        inherited DBGLista: TDBGrid
          Height = 193
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
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfcodigo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 193
          Visible = True
          object Pnl1: TPanel
            Left = 1
            Top = -4
            Width = 954
            Height = 28
            Align = alBottom
            BevelInner = bvLowered
            ParentBackground = False
            TabOrder = 0
            object Pltotalvendas: TPanel
              Left = 2
              Top = 2
              Width = 235
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'Total de Produtos R$'
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Pltotaldescontos: TPanel
              Left = 237
              Top = 2
              Width = 235
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelInner = bvLowered
              BorderWidth = 2
              Caption = 'Total de descontos R$'
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object Pltotalliquido: TPanel
              Left = 472
              Top = 2
              Width = 335
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelInner = bvLowered
              BorderWidth = 2
              Caption = 'Total L'#205'QUIDO de produtos R$'
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select meschave,etdidentificacao,sdeidentificacao,tdfidentificac' +
        'ao,toeidentificacao,mesemissao,mesnumero,etdcodigo,messerie,tdfc' +
        'odigo,'
      
        'mesvalor,mesdesconto,mestotal,temcodigo,clbcodigo,trmcodigo, mes' +
        'protocolo,sdecodigo,mesdatanfe, ttocodigo,mesregistro,mestransfe' +
        'rir '
      'from view_dtf')
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
      DisplayLabel = 'Situa'#231#227'o do Documento'
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
      DisplayLabel = 'Clb'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Trm'
      FieldName = 'trmcodigo'
      Required = True
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'C'#243'digo de Situa'#231#227'o'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelatdfcodigo: TStringField
      DisplayLabel = 'C'#243'digo do Tipo'
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
    object uqtabelamestransferir: TIntegerField
      FieldName = 'mestransferir'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object extdtf: TUniQuery
    Left = 208
    Top = 228
  end
  object itm: TUniQuery
    SQL.Strings = (
      
        'Select pro.pronome, itm.itmchave, itm.meschave, itm.itmitem, itm' +
        '.procodigo,'
      
        '  uni.unisimbolo, itm.itmquantidade, itm.itmvalor, itm.itmdescon' +
        'to,'
      
        '  itm.itmtotal, (itm.itmtotal- itm.itmdesconto) as itmtotalliq, ' +
        'itm.cfocfop, itm.itmaliqipi'
      'From itm,pro,pun,uni where'
      '  pro.procodigo = itm.procodigo and'
      '  itm.puncodigo=pun.puncodigo and'
      '  uni.unicodigo = pun.unicodigo and'
      ' meschave=:meschave')
    Left = 912
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 944
    Top = 268
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fla.etdcodigo,'
      '  cfgmsai.cfgtoetransflainte,'
      '  cfgmsai.cfgtoetransflafora'
      'FROM cfg,'
      '     cfgmsai,'
      '     fla'
      'WHERE fla.flacodigo = cfg.flacodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND fla.flacodigo = :flacodigo')
    Left = 768
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object cfgcfgtoetransflainte: TIntegerField
      FieldName = 'cfgtoetransflainte'
    end
    object cfgcfgtoetransflafora: TIntegerField
      FieldName = 'cfgtoetransflafora'
    end
  end
  object dtf: TUniQuery
    SQL.Strings = (
      'select dtfchave, meschave, dtfmeschave from dtf limit 0')
    Left = 728
    Top = 450
    object dtfdtfchave: TIntegerField
      FieldName = 'dtfchave'
    end
    object dtfmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object dtfdtfmeschave: TIntegerField
      FieldName = 'dtfmeschave'
    end
  end
end
