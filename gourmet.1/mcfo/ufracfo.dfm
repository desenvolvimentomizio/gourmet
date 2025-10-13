inherited fracfo: Tfracfo
  Height = 395
  inherited PlGeral: TPanel
    Height = 395
    inherited SplBotoes: TSplitter
      Height = 361
    end
    inherited PlBotoes: TPanel
      Height = 361
      inherited ImageLogoBase: TImage
        Top = 282
      end
      inherited PlInfo: TPanel
        Top = 343
      end
      inherited SBBotoes: TScrollBox
        Height = 282
      end
    end
    inherited PlLista: TPanel
      Height = 361
      inherited SplLista: TSplitter
        Top = 329
      end
      inherited PlRodaPe: TPanel
        Top = 334
      end
      inherited PnlGrid: TPanel
        Height = 178
        inherited DBGLista: TDBGrid
          Height = 153
          Columns = <
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfoidentificacao'
              Width = 600
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 153
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'C'#243'digos da Opera'#231#227'o Fiscal'
      inherited plid: TPanel
        Caption = '02.04.11.002'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select  cfocfop, cfoidentificacao from cfo')
    object uqtabelacfocfop: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object uqtabelacfoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cfoidentificacao'
      Size = 200
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
