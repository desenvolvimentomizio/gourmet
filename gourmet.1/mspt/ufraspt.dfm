inherited fraspt: Tfraspt
  Width = 1200
  inherited PlGeral: TPanel
    Width = 1200
    inherited PlLista: TPanel
      Width = 1048
      inherited SplLista: TSplitter
        Top = 354
        Width = 1046
      end
      inherited SpFilter: TSplitter
        Width = 1046
      end
      inherited PlRodaPe: TPanel
        Top = 359
        Width = 1046
        Height = 164
        Visible = True
        object GroupBox1: TGroupBox
          Left = 557
          Top = 0
          Width = 489
          Height = 164
          Align = alClient
          Caption = ' Descri'#231#227'o '
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 2
            Top = 49
            Width = 485
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            AutoSnap = False
            Beveled = True
          end
          object hmddescricao: TDBMemo
            Left = 2
            Top = 15
            Width = 485
            Height = 34
            Align = alClient
            Color = clInfoBk
            DataField = 'hmddescricao'
            DataSource = Dtsh
            ReadOnly = True
            TabOrder = 0
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 52
            Width = 485
            Height = 110
            Align = alBottom
            Caption = ' Hist'#243'rico '
            TabOrder = 1
            object DBGHistorico: TDBGrid
              Left = 2
              Top = 15
              Width = 481
              Height = 93
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
        object DBGPsh: TDBGrid
          Left = 0
          Top = 0
          Width = 557
          Height = 164
          Align = alLeft
          DataSource = Dtsh
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
              FieldName = 'tshchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tshdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tshhora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdtitulo'
              Visible = True
            end>
        end
      end
      inherited PlFiltros: TPanel
        Width = 1046
      end
      inherited PlSelecao: TPanel
        Width = 1046
        inherited GBPlSelecao: TGroupBox
          Width = 1040
          inherited DBLista: TDBGrid
            Width = 933
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1046
        Height = 203
        inherited DBGLista: TDBGrid
          Width = 1046
          Height = 178
          Columns = <
            item
              Expanded = False
              FieldName = 'sptcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sptdtinicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sptdtfinal'
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
          Top = 178
          Width = 1046
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1192
      inherited plid: TPanel
        Left = 790
      end
      inherited PlSair: TPanel
        Left = 1010
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
    inherited ActConfig: TAction [8]
    end
    inherited ActFiltrar: TAction [9]
    end
  end
  inherited MenuManutencao: TPopupMenu
    object Histrico1: TMenuItem [4]
      Action = ActHistorico
    end
    object VoltarparaExecuo1: TMenuItem [5]
      Caption = 'Voltar para Execu'#231#227'o'
      ImageIndex = 2
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select sptcodigo, sptdtinicial, sptdtfinal, spt.clbcodigo, clbid' +
        'entificacao from spt, clb where spt.clbcodigo=clb.clbcodigo')
    object uqtabelasptcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sptcodigo'
    end
    object uqtabelasptdtinicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'sptdtinicial'
    end
    object uqtabelasptdtfinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'sptdtfinal'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object tsh: TUniQuery
    SQL.Strings = (
      
        'select tshchave, tsh.sptcodigo, tsh.hmdchave, tsh.tshdata, tsh.t' +
        'shhora, hmdtitulo, hmddescricao'
      
        'from tsh, hmd where hmd.tehcodigo=3 and tsh.hmdchave=hmd.hmdchav' +
        'e and tsh.sptcodigo=:sptcodigo')
    Left = 496
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sptcodigo'
        Value = nil
      end>
    object tshtshchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'tshchave'
    end
    object tshsptcodigo: TIntegerField
      DisplayLabel = 'Teste'
      FieldName = 'sptcodigo'
    end
    object tshhmdchave: TIntegerField
      DisplayLabel = 'Hist'#243'ria'
      FieldName = 'hmdchave'
    end
    object tshtshdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'tshdata'
    end
    object tshtshhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'tshhora'
    end
    object tshhmdtitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'hmdtitulo'
      Size = 50
    end
    object tshhmddescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hmddescricao'
      Size = 250
    end
  end
  object Dtsh: TUniDataSource
    DataSet = tsh
    OnDataChange = DtshDataChange
    Left = 540
    Top = 404
  end
  object hhm: TUniQuery
    SQL.Strings = (
      
        'select hhmchave, hmdchave, clbcodigo, hhm.tehcodigo, hhmdescrica' +
        'o,hhmdata, hhmhora, tehidentificacao, tshchave, hhmdescricao fro' +
        'm hhm,teh where  hhm.tehcodigo=teh.tehcodigo and tshchave=:tshch' +
        'ave')
    Left = 1056
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tshchave'
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
    object hhmtshchave: TIntegerField
      FieldName = 'tshchave'
    end
    object hhmhhmdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hhmdescricao'
      Size = 250
    end
  end
  object Dhhm: TUniDataSource
    DataSet = hhm
    Left = 1100
    Top = 248
  end
end
