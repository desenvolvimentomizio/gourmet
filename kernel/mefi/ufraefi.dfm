inherited fraefi: Tfraefi
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'efichave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'efidtinicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'efidtfinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
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
              FieldName = 'efivalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phgidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tflidentificacao'
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
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  efi.efichave,'
      '  efi.evfcodigo,'
      '  efi.etdcodigo,'
      '  efi.efidtinicial,'
      '  efi.efidtfinal,'
      '  efi.efivalor,'
      '  efi.clbcodigo,'
      '  efi.phgcodigo,'
      '  efi.eficriacao,'
      '  efi.tflcodigo,'
      '  evf.evfidentificacao,'
      '  etd.etdidentificacao,'
      '  phg.phgidentificacao,'
      '  tfl.tflidentificacao'
      'FROM efi'
      '  INNER JOIN etd'
      '    ON efi.etdcodigo = etd.etdcodigo'
      '  INNER JOIN evf'
      '    ON efi.evfcodigo = evf.evfcodigo'
      '    INNER JOIN phg'
      '    ON efi.phgcodigo = phg.phgcodigo'
      '    INNER JOIN tfl'
      '    ON efi.tflcodigo = tfl.tflcodigo')
    Left = 348
    Top = 172
    object uqtabelaefichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'efichave'
    end
    object uqtabelaevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'evfcodigo'
    end
    object uqtabelaevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Evento'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Colaborador'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelaefidtinicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'efidtinicial'
    end
    object uqtabelaefidtfinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'efidtfinal'
    end
    object uqtabelaefivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'efivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object uqtabelaeficriacao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'eficriacao'
    end
    object uqtabelaphgidentificacao: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgidentificacao'
      Size = 50
    end
    object uqtabelatflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
    object uqtabelatflidentificacao: TStringField
      DisplayLabel = 'Tipo de Folha'
      FieldName = 'tflidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object eva: TUniQuery
    Left = 616
    Top = 365
  end
end
