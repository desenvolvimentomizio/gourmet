inherited fravch: Tfravch
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'vchchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchdataemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchtipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchvoucher'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchdatavalidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchpercentual'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchmodouso'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vchsituacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senidentificacao'
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
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vch.vchchave,'
      '  vch.vchdataemissao,'
      
        ' IF(vch.vchsituacao=1,'#39'EM ABERTO'#39',IF(vch.vchsituacao=2,'#39'UTILIZAD' +
        'O'#39','#39'CANCELADO'#39'))  vchsituacao,'
      '  vch.vchvoucher,'
      ' IF( vch.vchtipo=1 ,'#39'EMISS'#195'O PR'#211'PRIA'#39','#39'TERCEIROS'#39') vchtipo,'
      
        ' IF( vch.vchmodouso=1,'#39'POR VALIDADE'#39','#39'UMA '#218'NICA VEZ'#39') vchmodouso' +
        ','
      '  vch.vchdatavalidade,'
      '  vch.vchvalor,'
      '  vch.vchpercentual,'
      '  vch.etdcodigo,'
      '  etd.etdidentificacao,'
      '  vch.vchdatauso,'
      '  vch.procodigo,'
      '  vch.puncodigo,'
      '  pro.pronome,'
      '  pun.punidentificacao,'
      '  sen.senidentificacao'
      'FROM vch'
      'inner join sen on sen.sencodigo=vch.vchautomatico'
      'left join etd on etd.etdcodigo=vch.etdcodigo'
      'LEFT JOIN pro ON vch.procodigo=pro.procodigo '
      'LEFT JOIN pun on vch.puncodigo=pun.puncodigo')
    object uqtabelavchchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'vchchave'
    end
    object uqtabelavchdataemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'vchdataemissao'
    end
    object uqtabelavchvoucher: TStringField
      DisplayLabel = 'C'#243'digo de Desconto ou Voucher'
      FieldName = 'vchvoucher'
      Size = 200
    end
    object uqtabelavchdatavalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'vchdatavalidade'
    end
    object uqtabelavchvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'vchvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelavchpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'vchpercentual'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelavchdatauso: TDateField
      DisplayLabel = 'Uso'
      FieldName = 'vchdatauso'
    end
    object uqtabelaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object uqtabelapuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object uqtabelavchsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'vchsituacao'
      Size = 30
    end
    object uqtabelavchtipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'vchtipo'
    end
    object uqtabelavchmodouso: TStringField
      DisplayLabel = 'Modo de Uso'
      FieldName = 'vchmodouso'
      Size = 30
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelapunidentificacao: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'punidentificacao'
      Size = 30
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Autom'#225'tico'
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
