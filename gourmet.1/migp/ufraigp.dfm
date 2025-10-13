inherited fraigp: Tfraigp
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
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoav'
              Width = 110
              Visible = True
            end>
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
      Enabled = False
      Visible = False
    end
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      '     , tpo.tpoidentificacao'
      '     , mar.maridentificacao'
      '     , grpidentificacao'
      '     , icm.icmaliquotas'
      '     , pro.proncm'
      '     , pro.prosaldo'
      '     , pro.prosaldodisp'
      '     , sip.sipcodigo'
      '     , pro.proobs'
      '     , pro.proreferencia'
      '     , uni.unisimbolo'
      '     , pun.punprecoav'
      '     , pun.punprecoap'
      '     , pro.tpocodigo'
      '     , pro.proanpcodigo'
      '     , pro.propedecomple'
      '     , pro.gracodigo'
      '     , dpr.dpridentificacao'
      '     , pro.proconsolidado'
      '     , ((punprecoav-puncusto)/puncusto)*100  as punpercav'
      '     , ((punprecoap-puncusto)/puncusto)*100  as punpercap'
      '     , pun.puncusto'
      '     , sip.sipcodigo'
      'FROM pro'
      '  JOIN mar'
      '    ON pro.marcodigo = mar.marcodigo'
      '  JOIN grp'
      '    ON pro.grpcodigo = grp.grpcodigo'
      '  JOIN icm'
      '    ON pro.icmcodigo = icm.icmcodigo'
      '  JOIN uni'
      '    ON pro.unicodigo = uni.unicodigo'
      '  JOIN sip'
      '    ON sip.sipcodigo = pro.sipcodigo'
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN tpo'
      '    ON pro.tpocodigo = tpo.tpocodigo'
      '  JOIN dpr'
      '    ON pro.dprcodigo = dpr.dprcodigo'
      '    where pro.tpocodigo=1'
      '    ')
    object uqtabelaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelaproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 15
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelaprosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'prosaldo'
    end
    object uqtabelaprosaldodisp: TFloatField
      DisplayLabel = 'Saldo Disp.'
      FieldName = 'prosaldodisp'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object uqtabelamaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Size = 35
    end
    object uqtabelaicmaliquotas: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object uqtabelaproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object uqtabelaproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uqtabelapunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda R$'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
    end
    object uqtabelapunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object uqtabelatpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object uqtabelatpoidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpoidentificacao'
      Size = 25
    end
    object uqtabelagracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object uqtabeladpridentificacao: TStringField
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'dpridentificacao'
      Size = 30
    end
    object uqtabelaproconsolidado: TIntegerField
      FieldName = 'proconsolidado'
    end
    object uqtabelapunpercav: TFloatField
      DisplayLabel = '% Lucro AV'
      FieldName = 'punpercav'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapunpercap: TFloatField
      DisplayLabel = '% Lucro AP'
      FieldName = 'punpercap'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapuncusto: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object sip: TUniQuery
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 724
    Top = 196
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
