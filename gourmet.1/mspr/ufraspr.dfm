inherited fraspr: Tfraspr
  Width = 1120
  Height = 562
  inherited PlGeral: TPanel
    Width = 1120
    Height = 562
    inherited SplBotoes: TSplitter
      Height = 528
    end
    inherited PlBotoes: TPanel
      Height = 528
      inherited ImageLogoBase: TImage
        Top = 449
      end
      inherited PlInfo: TPanel
        Top = 510
      end
      inherited SBBotoes: TScrollBox
        Height = 449
      end
    end
    inherited PlLista: TPanel
      Width = 968
      Height = 528
      inherited SplLista: TSplitter
        Top = 373
        Width = 966
      end
      inherited SpFilter: TSplitter
        Width = 966
      end
      inherited PlRodaPe: TPanel
        Top = 378
        Width = 966
        Height = 149
        Visible = True
        object DBGPsh: TDBGrid
          Left = 0
          Top = 0
          Width = 557
          Height = 149
          Align = alLeft
          DataSource = Dpsh
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
              FieldName = 'pshchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pshdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pshhora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdtitulo'
              Visible = True
            end>
        end
        object GroupBox1: TGroupBox
          Left = 557
          Top = 0
          Width = 409
          Height = 149
          Align = alClient
          Caption = ' Descri'#231#227'o '
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 2
            Top = 41
            Width = 405
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            AutoSnap = False
            Beveled = True
          end
          object hmddescricao: TDBMemo
            Left = 2
            Top = 15
            Width = 405
            Height = 26
            Align = alClient
            Color = clInfoBk
            DataField = 'hmddescricao'
            DataSource = Dpsh
            ReadOnly = True
            TabOrder = 0
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 44
            Width = 405
            Height = 103
            Align = alBottom
            Caption = ' Hist'#243'rico '
            TabOrder = 1
            object DBGHistorico: TDBGrid
              Left = 2
              Top = 15
              Width = 401
              Height = 86
              Align = alClient
              DataSource = Dhhm
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'hhmchave'
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hhmdata'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hhmhora'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tehidentificacao'
                  Width = 152
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hhmdescricao'
                  Visible = True
                end>
            end
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 966
      end
      inherited PlSelecao: TPanel
        Width = 966
        inherited GBPlSelecao: TGroupBox
          Width = 960
          inherited DBLista: TDBGrid
            Width = 853
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 966
        Height = 222
        inherited DBGLista: TDBGrid
          Width = 966
          Height = 197
          Columns = <
            item
              Expanded = False
              FieldName = 'sprcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sprdtinicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sprdtfinal'
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
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 197
          Width = 966
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1112
      inherited plid: TPanel
        Left = 710
      end
      inherited PlSair: TPanel
        Left = 930
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
    object ActHistorico: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Hist'#243'rico'
      ImageIndex = 7
      OnExecute = ActHistoricoExecute
    end
  end
  inherited MenuManutencao: TPopupMenu
    object Histrico1: TMenuItem [4]
      Action = ActHistorico
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select sprcodigo, sprdtinicial, sprdtfinal, spr.clbcodigo, clbid' +
        'entificacao from spr, clb where spr.clbcodigo=clb.clbcodigo')
    object uqtabelasprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sprcodigo'
    end
    object uqtabelasprdtinicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'sprdtinicial'
    end
    object uqtabelasprdtfinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'sprdtfinal'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object psh: TUniQuery
    SQL.Strings = (
      
        'select pshchave, psh.sprcodigo, psh.hmdchave, psh.pshdata, psh.p' +
        'shhora, hmdtitulo, hmddescricao '
      
        'from psh, hmd where hmd.tehcodigo=2 and psh.hmdchave=hmd.hmdchav' +
        'e and psh.sprcodigo=:sprcodigo')
    Left = 408
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sprcodigo'
        Value = nil
      end>
    object pshpshchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'pshchave'
    end
    object pshsprcodigo: TIntegerField
      FieldName = 'sprcodigo'
    end
    object pshhmdchave: TIntegerField
      FieldName = 'hmdchave'
    end
    object pshpshdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'pshdata'
    end
    object pshpshhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'pshhora'
    end
    object pshhmdtitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'hmdtitulo'
      Size = 50
    end
    object pshhmddescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hmddescricao'
      Size = 250
    end
  end
  object Dpsh: TUniDataSource
    DataSet = psh
    OnDataChange = DpshDataChange
    Left = 444
    Top = 432
  end
  object hhm: TUniQuery
    SQL.Strings = (
      
        'select hhmchave, hmdchave, clbcodigo, hhm.tehcodigo, hhmdescrica' +
        'o,hhmdata, hhmhora, tehidentificacao, pshchave,hhmdescricao from' +
        ' hhm,teh where hhm.tehcodigo=teh.tehcodigo and pshchave=:pshchav' +
        'e')
    Left = 928
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pshchave'
        Value = nil
      end>
    object hhmhhmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'hhmchave'
    end
    object hhmhhmdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'hhmdata'
    end
    object hhmhhmhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'hhmhora'
    end
    object hhmtehidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'tehidentificacao'
      Size = 35
    end
    object hhmpshchave: TIntegerField
      FieldName = 'pshchave'
    end
    object hhmhhmdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hhmdescricao'
      Size = 250
    end
  end
  object Dhhm: TUniDataSource
    DataSet = hhm
    Left = 972
    Top = 260
  end
end
