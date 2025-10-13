inherited lclb: Tlclb
  Caption = 'Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    TabOrder = 1
  end
  inline fraclb: Tfraclb
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 598
      end
      inherited PlBotoes: TPanel
        Height = 598
        inherited ImageLogoBase: TImage
          Top = 519
        end
        inherited PlInfo: TPanel
          Top = 580
        end
        inherited SBBotoes: TScrollBox
          Height = 519
        end
      end
      inherited PlLista: TPanel
        Width = 872
        Height = 598
        inherited SplLista: TSplitter
          Top = 560
          Width = 870
          Height = 12
        end
        inherited SpFilter: TSplitter
          Width = 870
        end
        inherited PlRodaPe: TPanel
          Top = 572
          Width = 870
          Height = 25
        end
        inherited PlFiltros: TPanel
          Width = 870
        end
        inherited PlSelecao: TPanel
          Width = 870
          inherited GBPlSelecao: TGroupBox
            Width = 864
            inherited DBLista: TDBGrid
              Width = 757
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 870
          Height = 409
          inherited DBGLista: TDBGrid
            Width = 870
            Height = 383
          end
          inherited PnlRodapeGrid: TPanel
            Top = 383
            Width = 870
            Height = 26
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1016
        inherited plid: TPanel
          Left = 678
        end
        inherited PlSair: TPanel
          Left = 894
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
  object fcl: TUniQuery
    SQL.Strings = (
      
        'select fnc.fnccodigo, fcl.clbcodigo,fncidentificacao from fcl,fn' +
        'c where fcl.fnccodigo=fnc.fnccodigo and fcl.clbcodigo=:clbcodigo')
    Left = 540
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object fclclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object fclfnccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fnccodigo'
    end
    object fclfncidentificacao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fncidentificacao'
      Size = 30
    end
  end
  object Dfcl: TUniDataSource
    DataSet = fcl
    Left = 504
    Top = 312
  end
end
