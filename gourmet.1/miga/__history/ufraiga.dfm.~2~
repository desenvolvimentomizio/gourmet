inherited fraiga: Tfraiga
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoav'
              Visible = True
            end>
        end
      end
    end
  end
  inherited acoes: TActionList
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      ''
      'SELECT DISTINCT pro.procodigo'
      '     , pro.pronome'
      '     , pun.punprecoav'
      '     , pro.grpcodigo'
      '     , pro.tpocodigo'
      '     , sip.sipcodigo from sbr,pro,pun,sip  '
      '  '
      '  WHERE  pro.procodigo = pun.procodigo'
      
        '    AND pro.unicodigo = pun.unicodigo  and  pro.sipcodigo=sip.si' +
        'pcodigo AND  pro.tpocodigo=1 '
      '')
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Ingrediente'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelapunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o R$'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelagrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object uqtabelatpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object sip: TUniQuery
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 820
    Top = 220
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
