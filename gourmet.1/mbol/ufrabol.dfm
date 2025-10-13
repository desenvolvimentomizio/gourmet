inherited frabol: Tfrabol
  Width = 1093
  Height = 561
  ExplicitWidth = 1093
  ExplicitHeight = 561
  inherited PlGeral: TPanel
    Width = 1093
    Height = 561
    ExplicitWidth = 1093
    ExplicitHeight = 561
    inherited SplBotoes: TSplitter
      Height = 541
      ExplicitHeight = 535
    end
    inherited PlBotoes: TPanel
      Height = 541
      ExplicitHeight = 541
      inherited ImageLogoBase: TImage
        Top = 462
        ExplicitTop = 456
      end
      inherited PlInfo: TPanel
        Top = 523
        ExplicitTop = 523
      end
      inherited SBBotoes: TScrollBox
        Height = 462
        ExplicitHeight = 462
      end
    end
    inherited PlLista: TPanel
      Width = 949
      Height = 541
      ExplicitWidth = 949
      ExplicitHeight = 541
      inherited SplLista: TSplitter
        Top = 510
        Width = 949
        ExplicitTop = 504
        ExplicitWidth = 647
      end
      inherited SpFilter: TSplitter
        Width = 949
        ExplicitWidth = 647
      end
      inherited PlRodaPe: TPanel
        Top = 515
        Width = 949
        ExplicitTop = 515
        ExplicitWidth = 949
      end
      inherited PlFiltros: TPanel
        Width = 949
        ExplicitWidth = 949
      end
      inherited PlSelecao: TPanel
        Width = 949
        ExplicitWidth = 949
        inherited GBPlSelecao: TGroupBox
          Width = 945
          ExplicitWidth = 945
          inherited DBLista: TDBGrid
            Width = 838
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 949
        Height = 381
        ExplicitWidth = 949
        ExplicitHeight = 381
        inherited DBGLista: TDBGrid
          Width = 949
          Height = 356
          Columns = <
            item
              Expanded = False
              FieldName = 'bolchave'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gebcodigo'
              Title.Caption = 'Gera'#231#227'o'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolnossonumero'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sblcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sblidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'carcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'caridentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmbregistro'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 356
          Width = 949
          ExplicitTop = 356
          ExplicitWidth = 949
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1093
      ExplicitWidth = 1093
      inherited plid: TPanel
        Left = 643
        ExplicitLeft = 643
      end
      inherited PlSair: TPanel
        Left = 887
        ExplicitLeft = 887
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Category = 'Boletos'
      OnExecute = ActIncluirExecute
    end
    object ActImprimir: TAction [1]
      Category = 'Boletos'
      Caption = 'Imprimir'
      OnExecute = ActImprimirExecute
    end
    object ActCancelar: TAction [2]
      Category = 'Boletos'
      Caption = 'Cancelar'
      OnExecute = ActCancelarExecute
    end
    object ActImprimirGrupo: TAction [3]
      Category = 'Boletos'
      Caption = 'Imprimir Grupo'
      OnExecute = ActImprimirGrupoExecute
    end
    object ActGeraRemessa: TAction [4]
      Category = 'Boletos'
      Caption = 'Gerar Remessa'
      OnExecute = ActGeraRemessaExecute
    end
    object ActReGeraRemessa: TAction [5]
      Category = 'Boletos'
      Caption = 'Re Gera Remessa'
      OnExecute = ActReGeraRemessaExecute
    end
    object ActCancelaRemessa: TAction [6]
      Category = 'Boletos'
      Caption = 'Cancela Remessa'
      OnExecute = ActCancelaRemessaExecute
    end
    object ActProcessarRetorno: TAction [7]
      Category = 'Boletos'
      Caption = 'Processar Retorno'
      OnExecute = ActProcessarRetornoExecute
    end
    object ActVerificarNossoNumero: TAction [8]
      Category = 'Boletos'
      Caption = 'Verificar Nosso Numero'
      OnExecute = ActVerificarNossoNumeroExecute
    end
    object ActEmailSelecionado: TAction [9]
      Category = 'E-mail'
      Caption = 'Enviar E-mail'
      OnExecute = ActEmailSelecionadoExecute
    end
    object ActEmailGrupo: TAction [10]
      Category = 'E-mail'
      Caption = 'Enviar E-mail Grupo'
      OnExecute = ActEmailGrupoExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 224
    Top = 236
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  bol.bolchave,'
      '  bol.gebcodigo,'
      '  bol.rfichave,'
      '  v_rfi.etdcodigo,'
      '  v_rfi.etdidentificacao,'
      '  bol.bolnossonumero,'
      '  v_rfi.rfinumero,'
      '  v_rfi.rfivencimento,'
      '  v_rfi.rfivalor,'
      '  bol.sblcodigo,'
      '  sbl.sblidentificacao,'
      '  v_rfi.carcodigo,'
      '  car.caridentificacao,'
      '  v_rfi.rfisaldocapital,'
      '  v_rfi.rfisaldogeral,'
      '  v_rfi.bcocodigo,'
      '  bol.bolemissao,'
      
        '  (SELECT rmbregistro from brm, rmb WHERE brm.rmbcodigo=rmb.rmbc' +
        'odigo AND brm.bolchave=bol.bolchave) rmbregistro,'
      
        '  (SELECT rmb.rmbcodigo from brm, rmb WHERE brm.rmbcodigo=rmb.rm' +
        'bcodigo AND brm.bolchave=bol.bolchave) rmbcodigo'
      ''
      'FROM bol,'
      '     v_rfi,'
      '     sbl,'
      '     car'
      'WHERE bol.rfichave = v_rfi.rfichave'
      'AND bol.sblcodigo = sbl.sblcodigo'
      'AND v_rfi.carcodigo = car.carcodigo'
      'AND v_rfi.srfcodigo = 0'
      'AND bol.sblcodigo <> 9'
      'AND v_rfi.flacodigo = :flacodigo'
      ''
      '-- 0 row(s) affected.')
    Left = 164
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelabolchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'bolchave'
    end
    object uqtabelagebcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'gebcodigo'
    end
    object uqtabelarfichave: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'rfichave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelabolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
    object uqtabelarfinumero: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'rfinumero'
    end
    object uqtabelarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object uqtabelarfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasblcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'sblcodigo'
    end
    object uqtabelasblidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sblidentificacao'
      Size = 30
    end
    object uqtabelacarcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Carteira'
      FieldName = 'carcodigo'
    end
    object uqtabelacaridentificacao: TStringField
      DisplayLabel = 'Carteira'
      FieldName = 'caridentificacao'
      Size = 35
    end
    object uqtabelarfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Gerel R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelabcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelabolemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'bolemissao'
    end
    object uqtabelarmbregistro: TDateTimeField
      DisplayLabel = 'Remessa'
      FieldName = 'rmbregistro'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelarmbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited FechaFiltro: TTimer
    Left = 270
    Top = 243
  end
  object tteb: TUniQuery
    SQL.Strings = (
      'CREATE TEMPORARY TABLE IF NOT EXISTS tt_titulos_email_boleto ('
      '    titcodigo int(11) COMMENT '#39'C'#243'digo do T'#237'tulo'#39
      '  , etdcodigo int(11) COMMENT '#39'C'#243'digo do Cliente'#39
      
        '  ) COMMENT '#39'Tabela tempor'#225'ria de T'#237'tulos para envio de e-mail.'#39 +
        ';'
      ''
      'SELECT tteb.titcodigo'
      '     , tteb.etdcodigo'
      '  FROM tt_titulos_email_boleto tteb;')
    CachedUpdates = True
    Left = 748
    Top = 360
    object ttebtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object ttebetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object dsTit: TUniDataSource
    DataSet = tit
    Left = 700
    Top = 360
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT tit.titcodigo'
      '     , tit.titnumero'
      '     , tit.etdcodigo'
      '     , etd.etdidentificacao'
      '     , gbr.gebcodigo'
      '     , leb.lebcodigo'
      '     , leb.lebstatus'
      '     , leb.lebmensagem'
      '  FROM tit'
      ' INNER JOIN rfi ON tit.titcodigo = rfi.titcodigo'
      ' INNER JOIN gbr ON rfi.rfichave = gbr.rfichave'
      ' INNER JOIN etd ON tit.etdcodigo = etd.etdcodigo'
      '  LEFT JOIN (SELECT leb.lebcodigo'
      '                  , leb.gebcodigo'
      '                  , leb.titcodigo'
      '                  , leb.clbcodigo'
      '                  , leb.lebstatus'
      
        '                  , CONCAT(IF(leb.lebstatus = '#39'F'#39', '#39'Falha: '#39', '#39#39 +
        '), leb.lebmensagem, '#39' '#39', DATE_FORMAT(leb.lebregistro, '#39'%d/%c/%Y ' +
        '%H:%i:%s'#39')) lebmensagem'
      '               FROM leb'
      '              INNER JOIN (SELECT MAX(leb.lebcodigo) AS lebcodigo'
      '                            FROM leb'
      '                           GROUP BY leb.gebcodigo'
      '                                  , leb.titcodigo) '
      
        '                         ultLeb ON leb.lebcodigo = ultLeb.lebcod' +
        'igo)'
      '            leb ON tit.titcodigo = leb.titcodigo'
      '               AND gbr.gebcodigo = leb.gebcodigo'
      ' WHERE gbr.gebcodigo = :gebcodigo'
      'and tit.flacodigo=:flacodigo'
      ' GROUP BY tit.titcodigo;')
    Left = 660
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titcodigo'
    end
    object titgebcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'gebcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
    end
    object titetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'titnumero'
    end
    object titlebcodigo: TIntegerField
      FieldName = 'lebcodigo'
    end
    object titlebstatus: TStringField
      FieldName = 'lebstatus'
      Size = 1
    end
    object titlebmensagem: TStringField
      DisplayLabel = #218'ltimo envio'
      FieldName = 'lebmensagem'
      Size = 300
    end
  end
end
