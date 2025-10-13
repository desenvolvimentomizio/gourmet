inherited frabpa: Tfrabpa
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlRodaPe: TPanel
        ExplicitLeft = 0
        ExplicitTop = 554
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 388
          Columns = <
            item
              Expanded = False
              FieldName = 'bpacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gbpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpaidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpadataaquis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpavaloraquis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpamesesvida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpavalorvenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bpalocal'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meses'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'depreciacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valorliquido'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 388
          Height = 32
          Visible = True
          ExplicitTop = 388
          ExplicitHeight = 32
          object pllinha1: TPanel
            Left = 1
            Top = 1
            Width = 1032
            Height = 30
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object plTotalOriginal: TPanel
              AlignWithMargins = True
              Left = 623
              Top = 3
              Width = 200
              Height = 24
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'L'#237'quido R$'
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              ExplicitTop = 1
            end
            object plTotalAtual: TPanel
              AlignWithMargins = True
              Left = 829
              Top = 3
              Width = 200
              Height = 24
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'Total NF-e: '
              Color = 12615680
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Bens Patrimoniais'
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  bpa.bpacodigo,'
      '  bpa.clbcodigo,'
      '  bpa.flacodigo,'
      '  bpa.gbpcodigo,'
      '  bpa.bpaidentificacao,'
      '  bpa.bpadataaquis,'
      '  bpa.bpavaloraquis,'
      ' bpa.bpamesesvida,'
      '  bpa.bpavalorvenda,'
      '  bpa.bpalocal,'
      '  clb.clbidentificacao,'
      '  TIMESTAMPDIFF(MONTH, bpadataaquis, CURDATE()) meses,'
      
        '  ((bpavaloraquis-bpavalorvenda)/bpamesesvida)*(TIMESTAMPDIFF(MO' +
        'NTH, bpadataaquis, CURDATE())) AS depreciacao,'
      
        '  if (TIMESTAMPDIFF(MONTH, bpadataaquis, CURDATE())<bpamesesvida' +
        ', '
      
        '  bpavaloraquis- ((bpavaloraquis-bpavalorvenda)/bpamesesvida)*(T' +
        'IMESTAMPDIFF(MONTH, bpadataaquis, CURDATE()))'
      '  ,bpavalorvenda) valorliquido'
      ''
      'FROM bpa,clb'
      '  where bpa.clbcodigo=clb.clbcodigo')
    Left = 176
    Top = 216
    object uqtabelabpacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Bemn'
      FieldName = 'bpacodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object uqtabelagbpcodigo: TIntegerField
      DisplayLabel = 'Grupo Bens'
      FieldName = 'gbpcodigo'
    end
    object uqtabelabpaiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bpaidentificacao'
      Size = 100
    end
    object uqtabelabpadataaquis: TDateField
      DisplayLabel = 'Data Aquisi'#231#227'o'
      FieldName = 'bpadataaquis'
    end
    object uqtabelabpavaloraquis: TFloatField
      DisplayLabel = 'Valor Aquisi'#231#227'o'
      FieldName = 'bpavaloraquis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelabpamesesvida: TIntegerField
      DisplayLabel = 'Vida '#218'til'
      FieldName = 'bpamesesvida'
    end
    object uqtabelabpavalorvenda: TFloatField
      DisplayLabel = 'Valorde Venda'
      FieldName = 'bpavalorvenda'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelabpalocal: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'bpalocal'
      Size = 50
    end
    object uqtabeladepreciacao: TFloatField
      DisplayLabel = 'Depreciado'
      FieldName = 'depreciacao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelameses: TIntegerField
      DisplayLabel = 'Meses'
      FieldName = 'meses'
    end
    object uqtabelavalorliquido: TFloatField
      DisplayLabel = 'Valor Atual R$'
      FieldName = 'valorliquido'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
