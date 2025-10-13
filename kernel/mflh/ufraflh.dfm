inherited fraflh: Tfraflh
  Width = 1209
  ExplicitWidth = 1209
  inherited PlGeral: TPanel
    Width = 1209
    ExplicitWidth = 1209
    inherited PlLista: TPanel
      Width = 1065
      BevelOuter = bvLowered
      ExplicitWidth = 1065
      inherited SplLista: TSplitter
        Left = 1
        Top = 403
        Width = 1063
        Visible = True
        ExplicitTop = 397
        ExplicitWidth = 954
      end
      inherited SpFilter: TSplitter
        Left = 1
        Top = 75
        Width = 1063
        ExplicitLeft = 1
        ExplicitTop = 75
        ExplicitWidth = 954
      end
      inherited PlRodaPe: TPanel
        Left = 1
        Top = 408
        Width = 1063
        Height = 171
        Visible = True
        ExplicitLeft = 1
        ExplicitTop = 408
        ExplicitWidth = 1063
        ExplicitHeight = 171
        object plColaboradores: TPanel
          Left = 0
          Top = 0
          Width = 537
          Height = 171
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 0
          object plTitColaboradores: TPanel
            Left = 1
            Top = 1
            Width = 535
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Colaboradores'
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
          object DBGListaEtd: TDBGrid
            Left = 1
            Top = 27
            Width = 535
            Height = 102
            Align = alClient
            BorderStyle = bsNone
            DataSource = Defg
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaEtdDrawColumnCell
            OnTitleClick = DBGListaEtdTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'etdcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evavalor'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'eflidentificacao'
                Width = 80
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 1
            Top = 129
            Width = 535
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 2
            object GroupBox3: TGroupBox
              Left = 413
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'Saldo R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object plTotalFlh: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
            object GroupBox1: TGroupBox
              Left = 127
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'Cr'#233'dito R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object plCreditoTotal: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
            object GroupBox2: TGroupBox
              Left = 270
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'D'#233'bito R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object plDebitoTotal: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
            object Panel2: TPanel
              Left = 390
              Top = 2
              Width = 23
              Height = 37
              Align = alRight
              BevelOuter = bvNone
              Caption = '='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object Panel3: TPanel
              Left = 247
              Top = 2
              Width = 23
              Height = 37
              Align = alRight
              BevelOuter = bvNone
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object plEventos: TPanel
          Left = 537
          Top = 0
          Width = 526
          Height = 171
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'plEventos'
          TabOrder = 1
          object plTitEventos: TPanel
            Left = 1
            Top = 1
            Width = 524
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Lan'#231'amentos:'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object etdidentificacao: TDBText
              Left = 120
              Top = 4
              Width = 377
              Height = 17
              DataField = 'etdidentificacao'
              DataSource = Defg
            end
          end
          object plTotalLanca: TPanel
            Left = 1
            Top = 129
            Width = 524
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 1
            object GBTotal: TGroupBox
              Left = 162
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'D'#233'bitos R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object plDebitos: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
              Left = 282
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'Cr'#233'ditos R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object plCreditos: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
            object GBEmAberto: TGroupBox
              Left = 402
              Top = 2
              Width = 120
              Height = 37
              Align = alRight
              Caption = 'Saldo R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object plSaldo: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 20
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
          object DBGListaEva: TDBGrid
            Left = 1
            Top = 27
            Width = 524
            Height = 102
            Align = alClient
            BorderStyle = bsNone
            DataSource = Devaetd
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaEvaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'evfcodigo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evfidentificacao'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evahistorico'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evavalor'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cedidentificacao'
                Width = 60
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Left = 1
        Top = 79
        Width = 1063
        ExplicitLeft = 1
        ExplicitTop = 79
        ExplicitWidth = 1063
        inherited PlBotaoFiltroEsp: TScrollBox
          Width = 208
          ExplicitWidth = 208
        end
      end
      inherited PlSelecao: TPanel
        Left = 1
        Top = 1
        Width = 1063
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1063
        inherited GBPlSelecao: TGroupBox
          Width = 1059
          ExplicitWidth = 1059
          inherited DBLista: TDBGrid
            Width = 952
          end
        end
      end
      inherited PnlGrid: TPanel
        Left = 1
        Top = 130
        Width = 1063
        Height = 273
        ExplicitLeft = 1
        ExplicitTop = 130
        ExplicitWidth = 1063
        ExplicitHeight = 273
        inherited DBGLista: TDBGrid
          Width = 1063
          Height = 248
          Columns = <
            item
              Expanded = False
              FieldName = 'flhchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eflcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tflidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eflidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhmes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhano'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhdtinicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhdtfinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhdtpgto'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 248
          Width = 1063
          ExplicitTop = 248
          ExplicitWidth = 1063
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1209
      ExplicitWidth = 1209
      inherited plid: TPanel
        Left = 759
        ExplicitLeft = 759
      end
      inherited PlSair: TPanel
        Left = 1003
        ExplicitLeft = 1003
      end
    end
  end
  inherited acoes: TActionList
    Left = 316
    Top = 156
    object ActCalcular: TAction [0]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Calcular'
      OnExecute = ActCalcularExecute
    end
    object ActFechar: TAction [1]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Fechar'
      OnExecute = ActFecharExecute
    end
    object ActReabrir: TAction [2]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Reabrir'
      OnExecute = ActReabrirExecute
    end
    object ActEstornar: TAction [3]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Estornar'
      Enabled = False
      OnExecute = ActEstornarExecute
    end
    object ActResumo: TAction [4]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Resumo'
      Enabled = False
      OnExecute = ActResumoExecute
    end
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActObservacoes: TAction [7]
      Category = 'Manuten'#231#227'o'
      Caption = 'Observa'#231#245'es'
      Enabled = False
      OnExecute = ActObservacoesExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 288
    Top = 236
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  flh.flhchave,'
      '  flh.tflcodigo,'
      '  tfl.tflidentificacao,'
      '  flh.eflcodigo,'
      '  efl.eflidentificacao,'
      '  flh.flhidentificacao,'
      '  flh.flhmes,'
      '  flh.flhano,'
      '  flh.flhdtinicial,'
      '  flh.flhdtfinal,'
      '  flh.flhdtpgto,'
      '  flh.flhcriacao'
      'FROM flh'
      '  INNER JOIN efl'
      '    ON flh.eflcodigo = efl.eflcodigo'
      '  INNER JOIN tfl'
      '    ON flh.tflcodigo = tfl.tflcodigo')
    Left = 532
    Top = 212
    object uqtabelaflhchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'flhchave'
    end
    object uqtabelaeflcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'eflcodigo'
    end
    object uqtabelaeflidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'eflidentificacao'
      Size = 50
    end
    object uqtabelaflhidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'flhidentificacao'
      Size = 30
    end
    object uqtabelaflhmes: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'flhmes'
      EditMask = '00;1;_'
      Size = 2
    end
    object uqtabelaflhano: TStringField
      DisplayLabel = 'Ano'
      FieldName = 'flhano'
      EditMask = '0000;1;_'
      Size = 4
    end
    object uqtabelaflhdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'flhdtinicial'
    end
    object uqtabelaflhdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'flhdtfinal'
    end
    object uqtabelaflhdtpgto: TDateField
      DisplayLabel = 'Data Pgto'
      FieldName = 'flhdtpgto'
    end
    object uqtabelatflidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tflidentificacao'
      Size = 35
    end
    object uqtabelatflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Left = 816
    Top = 84
    Data = {04000000000000000000}
  end
  inherited qrySugestao: TUniQuery
    Left = 228
    Top = 308
  end
  object efg: TUniQuery
    SQL.Strings = (
      'SELECT e.efgchave'
      '     , e.flhchave'
      '     , e.etdcodigo'
      '     , e.eflcodigo'
      '     , (SELECT'
      '           efl.eflidentificacao'
      '         FROM efl'
      '         WHERE efl.eflcodigo = e.eflcodigo) AS eflidentificacao'
      '     , (SELECT'
      '           etd.etdidentificacao'
      '         FROM etd'
      '         WHERE etd.etdcodigo = e.etdcodigo) AS etdidentificacao'
      '     , (SELECT'
      
        '           SUM(IF(evf.cedcodigo = 1, eva.evavalor, eva.evavalor ' +
        '* -1)) AS evavalor'
      '         FROM eva'
      '            , evf'
      '            , ced'
      '         WHERE eva.evfcodigo = evf.evfcodigo'
      '         AND evf.cedcodigo = ced.cedcodigo'
      '         AND eva.flhchave = e.flhchave'
      '         AND eva.etdcodigo = e.etdcodigo'
      '         AND eva.eflcodigo <> 9'
      '         GROUP BY eva.etdcodigo) AS evavalor'
      'FROM efg e'
      'WHERE flhchave = :flhchave')
    Left = 392
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object efgefgchave: TIntegerField
      FieldName = 'efgchave'
    end
    object efgflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object efgetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object efgetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object efgeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efgevavalor: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object efgeflidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'eflidentificacao'
      Size = 15
    end
  end
  object Defg: TDataSource
    DataSet = efg
    OnDataChange = DefgDataChange
    Left = 492
    Top = 432
  end
  object Devaetd: TDataSource
    DataSet = evaetd
    Left = 933
    Top = 361
  end
  object evaetd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  eva.flhchave,'
      '  eva.evachave,'
      '  eva.tevcodigo,'
      '  eva.etdcodigo,'
      '  eva.evfcodigo,'
      '  eva.evavalor,'
      '  eva.evahistorico,'
      '  eva.clbcodigo,'
      '  evf.evfidentificacao,'
      '  eva.evacriacao,'
      '  evf.cedcodigo,'
      '  ced.cedidentificacao'
      'FROM eva, evf, ced'
      ' where eva.evfcodigo=evf.evfcodigo and '
      'evf.cedcodigo=ced.cedcodigo and'
      'eva.eflcodigo<>9 and'
      'flhchave=:flhchave and'
      'etdcodigo=:etdcodigo and'
      'eva.evavalor>0'
      ''
      'order by evf.cedcodigo desc'
      ''
      ''
      '')
    Left = 800
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object evaetdevachave: TIntegerField
      FieldName = 'evachave'
    end
    object evaetdflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object evaetdevfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'evfcodigo'
    end
    object evaetdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object evaetdtevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evaetdevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object evaetdevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object evaetdclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object evaetdevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object evaetdevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object evaetdcedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object evaetdcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
end
