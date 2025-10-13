inherited frahmd: Tfrahmd
  Height = 619
  inherited PlGeral: TPanel
    Height = 619
    inherited SplBotoes: TSplitter
      Height = 585
    end
    inherited PlBotoes: TPanel
      Height = 585
      inherited ImageLogoBase: TImage
        Top = 506
      end
      inherited PlInfo: TPanel
        Top = 567
      end
      inherited SBBotoes: TScrollBox
        Height = 506
      end
    end
    inherited PlLista: TPanel
      Height = 585
      inherited SplLista: TSplitter
        Top = 471
      end
      inherited PlRodaPe: TPanel
        Top = 476
        Height = 108
        Visible = True
        object hmddescricao: TDBMemo
          Left = 0
          Top = 0
          Width = 313
          Height = 108
          TabStop = False
          Align = alLeft
          DataField = 'hmddescricao'
          DataSource = DSTabela
          PopupMenu = MenuManutencao
          ReadOnly = True
          TabOrder = 0
        end
        object GroupBox1: TGroupBox
          Left = 313
          Top = 0
          Width = 647
          Height = 108
          Align = alClient
          Caption = ' Hist'#243'rico '
          TabOrder = 1
          object DBGHistorico: TDBGrid
            Left = 2
            Top = 15
            Width = 643
            Height = 91
            Align = alClient
            DataSource = Dhhm
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = gridzebrado
            Columns = <
              item
                Expanded = False
                FieldName = 'hhmchave'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Width = 80
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
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'hhmdescricao'
                Width = 200
                Visible = True
              end>
          end
        end
      end
      inherited PnlGrid: TPanel
        Height = 320
        inherited DBGLista: TDBGrid
          Height = 300
          Columns = <
            item
              Expanded = False
              FieldName = 'hmdchave'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prjcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prjidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdprioridade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmddata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdhora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tehcodigo'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdhoras'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tehidentificacao'
              Title.Caption = 'Est'#225'gio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdtitulo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdpcodigo'
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pegoschave'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 300
          Height = 20
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
    object ActHistorico: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Hist'#243'rico'
      ImageIndex = 7
      OnExecute = ActHistoricoExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 356
    Top = 88
  end
  inherited MenuManutencao: TPopupMenu
    object Histrico1: TMenuItem [4]
      Action = ActHistorico
    end
  end
  inherited mdl: TUniQuery
    Left = 596
    Top = 224
  end
  inherited dau: TUniQuery
    Left = 648
    Top = 212
  end
  inherited act: TUniQuery
    Left = 548
    Top = 232
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  hmdchave,'
      '  hmdtitulo,'
      '  hmddescricao,'
      '  hmd.mdpcodigo,'
      '  hmd.tehcodigo,'
      '  hmdhoras,'
      '  pegoschave,'
      '  tehidentificacao,'
      '  mdpidentificacao,'
      '  hmddata,'
      '  hmdhora,'
      '  hmdprioridade,'
      '  hmd.prjcodigo,'
      '  prjidentificacao'
      'FROM hmd,'
      '     mdp,'
      '     teh,'
      '     prj'
      'WHERE hmd.mdpcodigo = mdp.mdpcodigo'
      'AND hmd.tehcodigo = teh.tehcodigo'
      'AND hmd.prjcodigo = prj.prjcodigo')
    Left = 340
    Top = 300
    object uqtabelahmdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'hmdchave'
    end
    object uqtabelahmdtitulo: TStringField
      DisplayLabel = 'T'#237'tulo da Hist'#243'ria'
      FieldName = 'hmdtitulo'
      Size = 50
    end
    object uqtabelahmddescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hmddescricao'
      Size = 500
    end
    object uqtabelamdpcodigo: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'mdpcodigo'
    end
    object uqtabelamdpidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdpidentificacao'
      Size = 50
    end
    object uqtabelatehcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tehcodigo'
    end
    object uqtabelatehidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Nome do Est'#225'gio'
      FieldName = 'tehidentificacao'
      Size = 35
    end
    object uqtabelahmdhoras: TIntegerField
      DisplayLabel = 'Horas'
      FieldName = 'hmdhoras'
    end
    object uqtabelapegoschave: TStringField
      DisplayLabel = 'Nr. OS'
      FieldName = 'pegoschave'
      Size = 15
    end
    object uqtabelahmddata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'hmddata'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelahmdhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'hmdhora'
      EditMask = '!90:00;1;_'
    end
    object uqtabelahmdprioridade: TIntegerField
      DisplayLabel = 'P'
      DisplayWidth = 2
      FieldName = 'hmdprioridade'
    end
    object uqtabelaprjcodigo: TIntegerField
      DisplayLabel = 'Prj'
      FieldName = 'prjcodigo'
    end
    object uqtabelaprjidentificacao: TStringField
      DisplayLabel = 'Projeto'
      FieldName = 'prjidentificacao'
      Size = 50
    end
  end
  inherited cau: TUniQuery
    Left = 544
    Top = 300
  end
  inherited cca: TUniQuery
    Left = 632
    Top = 268
  end
  inherited vcls: TVirtualTable
    Left = 516
    Top = 100
    Data = {03000000000000000000}
  end
  object tsh: TUniQuery
    SQL.Strings = (
      'select tshchave, sptcodigo, hmdchave from tsh')
    Left = 760
    Top = 264
  end
  object psh: TUniQuery
    SQL.Strings = (
      'select pshchave, sprcodigo, hmdchave from psh')
    Left = 796
    Top = 268
  end
  object Dhhm: TUniDataSource
    DataSet = hhm
    Left = 920
    Top = 428
  end
  object hhm: TUniQuery
    SQL.Strings = (
      
        'select hhmchave, hmdchave, hhm.clbcodigo, hhm.tehcodigo, hhmdesc' +
        'ricao,hhmdata, hhmhora, tehidentificacao, pshchave,hhmdescricao,' +
        'clbidentificacao, hhm.prjcodigo, prjidentificacao'
      
        ' from hhm,teh,clb, prj where hhm.prjcodigo=prj.prjcodigo  and hh' +
        'm.clbcodigo=clb.clbcodigo and hhm.tehcodigo=teh.tehcodigo and hm' +
        'dchave=:hmdchave order by hhmdata, hhmhora')
    Left = 884
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hmdchave'
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
    object hhmclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
