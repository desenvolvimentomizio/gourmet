inherited fraaje: Tfraaje
  Width = 925
  ExplicitWidth = 925
  inherited PlGeral: TPanel
    Width = 925
    ExplicitWidth = 925
    inherited PlLista: TPanel
      Width = 781
      ExplicitWidth = 781
      inherited SplLista: TSplitter
        Top = 329
        Width = 781
        Height = 8
        Visible = True
        ExplicitTop = 323
        ExplicitWidth = 781
        ExplicitHeight = 8
      end
      inherited SpFilter: TSplitter
        Width = 781
        ExplicitWidth = 781
      end
      inherited PlRodaPe: TPanel
        Top = 337
        Width = 781
        Height = 243
        Visible = True
        ExplicitTop = 337
        ExplicitWidth = 781
        ExplicitHeight = 243
        object listaitm: TDBGrid
          Left = 0
          Top = 0
          Width = 781
          Height = 215
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
          OnDrawColumnCell = listaitmDrawColumnCell
          OnTitleClick = listaitmTitleClick
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
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmquanticontada'
              Width = 84
              Visible = True
            end>
        end
        object PlResumoItens: TPanel
          Left = 0
          Top = 215
          Width = 781
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          BevelOuter = bvLowered
          PopupMenu = MenuManutencao
          TabOrder = 1
          object pgeral: TPanel
            Left = 641
            Top = 1
            Width = 160
            Height = 26
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
          object pdesconto: TPanel
            Left = 321
            Top = 1
            Width = 160
            Height = 26
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
          object pquanti: TPanel
            Left = 1
            Top = 1
            Width = 160
            Height = 26
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
          object pvalor: TPanel
            Left = 161
            Top = 1
            Width = 160
            Height = 26
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
          object ptotal: TPanel
            Left = 481
            Top = 1
            Width = 160
            Height = 26
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
      end
      inherited PlFiltros: TPanel
        Width = 781
        ExplicitWidth = 781
      end
      inherited PlSelecao: TPanel
        Width = 781
        ExplicitWidth = 781
        inherited GBPlSelecao: TGroupBox
          Width = 777
          ExplicitWidth = 777
          inherited DBLista: TDBGrid
            Width = 670
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 781
        Height = 200
        ExplicitWidth = 781
        ExplicitHeight = 200
        inherited DBGLista: TDBGrid
          Width = 781
          Height = 175
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesinclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Width = 150
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 175
          Width = 781
          Visible = True
          ExplicitTop = 175
          ExplicitWidth = 781
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 925
      ExplicitWidth = 925
      inherited plid: TPanel
        Left = 475
        ExplicitLeft = 475
      end
      inherited PlSair: TPanel
        Left = 719
        ExplicitLeft = 719
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
    object ActConsolidado: TAction
      Category = 'Consolida'#231#227'o'
      Caption = 'Consolidado'
      OnExecute = ActConsolidadoExecute
    end
    object ActNaoConcolidado: TAction
      Category = 'Consolida'#231#227'o'
      Caption = 'N'#227'o Consolidado'
      OnExecute = ActNaoConcolidadoExecute
    end
    object ActCorrigirItens: TAction
      Category = 'Consolida'#231#227'o'
      Caption = 'Corrigir Itens'
      OnExecute = ActCorrigirItensExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 288
    Top = 212
  end
  inherited MenuManutencao: TPopupMenu
    object mnUtilitarios: TMenuItem [7]
      Caption = 'Utilit'#225'rios'
      object mnAjustarSaldo: TMenuItem
        Caption = 'Ajustar saldos disponiveis'
        OnClick = mnAjustarSaldoClick
      end
      object Recalcularitem1: TMenuItem
        Caption = 'Recalcular item '
        OnClick = Recalcularitem1Click
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  etd.etdidentificacao,'
      '  sde.sdeidentificacao,'
      '  tdf.tdfidentificacao,'
      '  toe.toeidentificacao,'
      '  mes.mesemissao,'
      '  mes.mesnumero,'
      '  mes.etdcodigo,'
      '  mes.messerie,'
      '  tem.temidentificacao,'
      '  mes.tdfcodigo,'
      '  mes.mesvalor,'
      '  mes.mesdesconto,'
      '  mes.mestotal,'
      '  mes.temcodigo,'
      '  mes.mesregistro,'
      '  mes.mesprotocolo,'
      '  mes.sdecodigo,'
      '  mesdatanfe,'
      '  toe.ttocodigo,'
      '  mes.mesregistro,'
      '  mes.mesinclusao'
      'FROM mes,'
      '     etd,'
      '     sde,'
      '     tdf,'
      '     toe,'
      '     tem'
      'WHERE etd.etdcodigo = mes.etdcodigo'
      'AND sde.sdecodigo = mes.sdecodigo'
      'AND mes.temcodigo = tem.temcodigo'
      'AND tdf.tdfcodigo = mes.tdfcodigo'
      'AND toe.toecodigo = mes.toecodigo'
      'AND tdf.tdfcodigo = '#39'AE'#39)
    Left = 356
    Top = 236
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
    object uqtabelamesinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'mesinclusao'
    end
  end
  inherited cpg: TUniQuery
    Left = 220
    Top = 232
  end
  inherited vcls: TVirtualTable
    Left = 672
    Top = 256
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 245
    Top = 233
  end
  inherited rel: TUniQuery
    Left = 488
    Top = 280
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C0101030008007C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      'SELECT'
      '  pro.pronome,'
      '  itm.itmchave,'
      '  itm.meschave,'
      '  itm.itmitem,'
      '  itm.procodigo,'
      '  uni.unisimbolo,'
      '  itm.itmquantidade,'
      '  itm.itmvalor,'
      '  (itm.itmdesconto * itm.itmquantidade) AS itmdesconto,'
      '  (itm.itmcusto * itm.itmquantidade) AS itmcusto,'
      '  itm.itmtotal,'
      '  itm.cfocfop,'
      '  itm.itmaliqipi, '
      '  itm.toecodigo,'
      '  itm.cfocfopdestinacao,'
      '  itm.itmquanticontada '
      'FROM itm,'
      '     pro,'
      '     pun,'
      '     uni'
      'WHERE pro.procodigo = itm.procodigo AND'
      'itm.puncodigo = pun.puncodigo AND'
      'uni.unicodigo = pun.unicodigo AND'
      'meschave = :meschave')
    Constraints = <>
    Left = 456
    Top = 420
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
    object itmitmcusto: TFloatField
      DisplayLabel = 'Total Geral'
      FieldName = 'itmcusto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
    object itmitmquanticontada: TFloatField
      DisplayLabel = 'Ajustado Para'
      FieldName = 'itmquanticontada'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 492
    Top = 420
  end
  object ivd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivdchave,'
      '  spdchave,'
      '  procodigo,'
      '  pcccodigo,'
      '  ivdquantidade,'
      '  ivdvalor,'
      '  ivdtotal,'
      '  ivdproprietario,'
      '  ivddescricao,'
      '  etdcodigo,'
      '  flacodigo'
      'FROM ivd where spdchave=5')
    Constraints = <>
    Left = 624
    Top = 445
    object ivdivdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'ivdchave'
    end
    object ivdspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object ivdprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object ivdpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object ivdivdquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ivdquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object ivdivdvalor: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio R$'
      FieldName = 'ivdvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ivdivdtotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'ivdtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ivdivdproprietario: TStringField
      FieldName = 'ivdproprietario'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ivdivddescricao: TStringField
      FieldName = 'ivddescricao'
      Size = 1000
    end
    object ivdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      
        'select pro.procodigo, pronome,puncusto from pro,pun WHERE  pro.p' +
        'rocodigo=pun.procodigo and pun.unicodigo=pro.unicodigo  and tpoc' +
        'odigo=0')
    Constraints = <>
    Left = 592
    Top = 445
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 80
    end
    object propuncusto: TFloatField
      FieldName = 'puncusto'
    end
  end
end
