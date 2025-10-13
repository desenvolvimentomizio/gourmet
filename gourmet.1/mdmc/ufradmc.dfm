inherited fradmc: Tfradmc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 355
        Visible = True
        ExplicitTop = 307
      end
      inherited PlRodaPe: TPanel
        Top = 360
        Height = 220
        Visible = True
        ExplicitTop = 360
        ExplicitHeight = 220
        object plGrupodeContas: TPanel
          Left = 0
          Top = 0
          Width = 361
          Height = 220
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 0
          object plTitGruposContas: TPanel
            Left = 1
            Top = 1
            Width = 359
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Grupos de Contas Gerenciais'
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
          object DBGListaGre: TDBGrid
            Left = 1
            Top = 27
            Width = 359
            Height = 192
            Align = alClient
            BorderStyle = bsNone
            DataSource = Dgre
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'grecodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'greidentificacao'
                Width = 250
                Visible = True
              end>
          end
        end
        object plEventos: TPanel
          Left = 361
          Top = 0
          Width = 673
          Height = 220
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = 'plEventos'
          TabOrder = 1
          object plTitEventos: TPanel
            Left = 1
            Top = 1
            Width = 671
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Contas do Grupo: '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object lbgreidentificacao: TDBText
              Left = 151
              Top = 4
              Width = 362
              Height = 17
              DataField = 'greidentificacao'
              DataSource = Dgre
            end
          end
          object DBGListaEva: TDBGrid
            Left = 1
            Top = 27
            Width = 671
            Height = 192
            Align = alClient
            BorderStyle = bsNone
            DataSource = Ddre
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'drechave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ccgidentificacao'
                Visible = True
              end>
          end
        end
      end
      inherited PnlGrid: TPanel
        Height = 226
        ExplicitHeight = 226
        inherited DBGLista: TDBGrid
          Height = 201
          Columns = <
            item
              Expanded = False
              FieldName = 'dmccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dmcidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 201
          ExplicitTop = 201
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
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select dmccodigo, dmcidentificacao from dmc')
    object uqtabeladmccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dmccodigo'
    end
    object uqtabeladmcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'dmcidentificacao'
      Size = 50
    end
  end
  inherited cau: TUniQuery
    Left = 776
    Top = 288
  end
  inherited cca: TUniQuery
    Left = 812
    Top = 288
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object gre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grecodigo,'
      '  greidentificacao,'
      '  dmccodigo'
      'FROM gre'
      '  where dmccodigo=:dmccodigo')
    Left = 368
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dmccodigo'
        Value = nil
      end>
    object gregrecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grecodigo'
    end
    object gregreidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'greidentificacao'
      Size = 50
    end
    object gredmccodigo: TIntegerField
      FieldName = 'dmccodigo'
    end
  end
  object Dgre: TDataSource
    DataSet = gre
    OnDataChange = DgreDataChange
    Left = 336
    Top = 434
  end
  object dre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dre.drechave,'
      '  dre.grecodigo,'
      '  dre.ccgcodigo,'
      
        '  concat(ccgestrutural, '#39' '#39', ccgidentificacao ) as ccgidentifica' +
        'cao'
      'FROM dre, ccg'
      '  where grecodigo=:grecodigo and dre.ccgcodigo=ccg.ccgcodigo')
    Left = 752
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grecodigo'
        Value = nil
      end>
    object dredrechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'drechave'
    end
    object dregrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object dreccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object dreccgidentificacao: TStringField
      DisplayLabel = 'Conta Gerencial'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
  object Ddre: TDataSource
    DataSet = dre
    Left = 817
    Top = 498
  end
end
