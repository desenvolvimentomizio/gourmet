inherited frapce: Tfrapce
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 387
        Visible = True
        ExplicitTop = 387
      end
      inherited PlRodaPe: TPanel
        Top = 392
        Height = 188
        Visible = True
        ExplicitTop = 392
        ExplicitHeight = 188
        object DBGIce: TDBGrid
          Left = 0
          Top = 0
          Width = 1182
          Height = 188
          Align = alClient
          DataSource = DSice
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGIceDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'icechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icequantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icedatahoraregistro'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iceorigem'
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 258
        ExplicitHeight = 258
        inherited DBGLista: TDBGrid
          Height = 233
          Columns = <
            item
              Expanded = False
              FieldName = 'pcechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcedatahorainicio'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcedatahorafinal'
              Width = 120
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 233
          Visible = True
          ExplicitTop = 233
          object mostra: TProgressBar
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1174
            Height = 17
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Caption = 'Iniciar Contagem'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Caption = 'Encerrar Contagem'
      OnExecute = ActAlterarExecute
    end
    object ActIncluirContagem: TAction
      Category = 'Contagem'
      Caption = 'Incluir Item'
      OnExecute = ActIncluirContagemExecute
    end
    object ActExcluirContagem: TAction
      Category = 'Contagem'
      Caption = 'Excluir Item'
      OnExecute = ActExcluirContagemExecute
    end
    object ActInventarioInicial: TAction
      Category = 'Contagem'
      Caption = 'Inv. Disp. 2021-12'
      OnExecute = ActInventarioInicialExecute
    end
    object ActInventarioFiscalInicial: TAction
      Category = 'Contagem'
      Caption = 'Inv. Fiscal 2021-12'
      OnExecute = ActInventarioFiscalInicialExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcechave,'
      '  pcedatahorainicio,'
      '  pcedatahorafinal,'
      '  spdchave'
      'FROM pce')
    object uqtabelapcechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'pcechave'
    end
    object uqtabelapcedatahorainicio: TDateTimeField
      DisplayLabel = 'Data e hora In'#237'cio'
      FieldName = 'pcedatahorainicio'
    end
    object uqtabelapcedatahorafinal: TDateTimeField
      DisplayLabel = 'Data e hora Final'
      FieldName = 'pcedatahorafinal'
    end
    object uqtabelaspdchave: TIntegerField
      DisplayLabel = 'SPED'
      FieldName = 'spdchave'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited DSSugestao: TDataSource
    Left = 204
    Top = 164
  end
  inherited sfi: TUniQuery
    Top = 416
  end
  object ice: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ice.icechave,'
      '  ice.pcechave,'
      '  ice.icedatahoraregistro,'
      '  ice.procodigo,'
      '  ice.puncodigo,'
      '  ice.icequantidade,'
      '  ice.clbcodigo,'
      '  uni.unisimbolo,'
      '  pro.pronome,'
      '  if(iceorigem=1,'#39#193'rea de Venda'#39','#39'Dep'#243'sito'#39') iceorigem,'
      'clb.clbidentificacao'
      'FROM ice'
      '  INNER JOIN pun'
      '    ON ice.puncodigo = pun.puncodigo'
      '  INNER JOIN uni'
      '    ON uni.unicodigo = pun.unicodigo'
      '  INNER JOIN pro'
      '    ON ice.procodigo = pro.procodigo'
      '  INNER JOIN clb'
      '    ON ice.clbcodigo = clb.clbcodigo'
      ''
      ''
      'where ice.pcechave=:pcechave'
      'order by icechave desc')
    Left = 808
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcechave'
        Value = nil
      end>
    object iceicechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'icechave'
    end
    object iceprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object icepronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do produto'
      FieldName = 'pronome'
      Size = 60
    end
    object iceicequantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'icequantidade'
    end
    object iceunisimbolo: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object icepcechave: TIntegerField
      FieldName = 'pcechave'
    end
    object iceicedatahoraregistro: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'icedatahoraregistro'
    end
    object iceclbidentificacao: TStringField
      DisplayLabel = 'Registrado por'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object iceiceorigem: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'iceorigem'
      Size = 30
    end
  end
  object DSice: TDataSource
    DataSet = ice
    Left = 820
    Top = 500
  end
  object qrEncerra: TUniQuery
    SQL.Strings = (
      'set @procodigo=:procodigo;'
      'SET @spdchave=41;'
      ''
      'SELECT'
      '  mesinclusao,'
      '  procodigo,'
      '  puncodigo,'
      
        '  IF(ttocodigo = 2,   SUM(itmquantidade) , IF(ttocodigo = 1, SUM' +
        '(itmquantidade)*-1, 0)) itmquantidade,'
      '  toe.ttocodigo'
      'FROM itm,'
      '     mes,'
      '     toe'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND mes.meschave = itm.meschave'
      'AND itm.procodigo =@procodigo'
      ''
      
        'AND mesinclusao>= (SELECT spdregistro FROM spd  WHERE spdchave=@' +
        'spdchave) AND mesinclusao<(SELECT icedatahoraregistro FROM ice W' +
        'HERE procodigo=@procodigo order by icechave limit 1)'
      'AND procodigo = @procodigo'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '  icedatahoraregistro mesinclusao,'
      '  procodigo,'
      '  puncodigo,'
      '  icequantidade itmquantidade,'
      '  0 ttocodigo'
      'FROM ice'
      'WHERE procodigo =@procodigo'
      ''
      'UNION ALL'
      ''
      ''
      ''
      ''
      'SELECT'
      '  mesinclusao,'
      '  procodigo,'
      '  puncodigo,'
      
        '  IF(ttocodigo = 2,   SUM(itmquantidade) * -1, IF(ttocodigo = 1,' +
        ' SUM(itmquantidade), 0)) itmquantidade,'
      '  toe.ttocodigo'
      'FROM itm,'
      '     mes,'
      '     toe'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND mes.meschave = itm.meschave'
      'AND itm.procodigo =@procodigo'
      ''
      
        'AND mesinclusao >=(SELECT icedatahoraregistro FROM ice WHERE pro' +
        'codigo=@procodigo order by icechave limit 1) AND mesinclusao<='#39'2' +
        '022-02-15 23:59:59'#39
      'AND procodigo = @procodigo'
      'ORDER BY mesinclusao'
      ''
      '/*'
      'SELECT'
      '  icedatahoraregistro mesinclusao,'
      '  procodigo,'
      '  puncodigo,'
      '  icequantidade itmquantidade,'
      '  0 ttocodigo'
      'FROM ice'
      'WHERE procodigo =@procodigo'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '  mesinclusao,'
      '  procodigo,'
      '  puncodigo,'
      
        '  IF(ttocodigo = 2, SUM(itmquantidade) * -1, IF(ttocodigo = 1, S' +
        'UM(itmquantidade), 0)) itmquantidade,'
      '  toe.ttocodigo'
      'FROM itm,'
      '     mes,'
      '     toe'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND mes.meschave = itm.meschave'
      'AND itm.procodigo =@procodigo'
      ''
      
        'AND mesinclusao >=(SELECT icedatahoraregistro FROM ice WHERE pro' +
        'codigo=@procodigo order by icechave limit 1)'
      'AND procodigo = @procodigo'
      'ORDER BY mesinclusao'
      '*/')
    Left = 536
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object qrEncerraprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object qrEncerrapuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object qrEncerramesinclusao: TDateTimeField
      FieldName = 'mesinclusao'
    end
    object qrEncerraitmquantidade: TFloatField
      FieldName = 'itmquantidade'
    end
    object qrEncerrattocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
  end
  object ivd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivdchave,'
      '  spdchave,'
      '  procodigo,'
      '  pcccodigo,'
      '  ivdquantidade,'
      '  ivdvalor,'
      '  ivdtotal,'
      '  ivdproprietario,'
      '  ivddescricao,'
      '  etdcodigo,'
      '  flacodigo,'
      '  ivdregistro'
      'FROM ivd limit 0')
    Left = 640
    Top = 468
    object ivdivdchave: TIntegerField
      FieldName = 'ivdchave'
    end
    object ivdspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object ivdprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object ivdpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 50
    end
    object ivdivdquantidade: TFloatField
      FieldName = 'ivdquantidade'
    end
    object ivdivdvalor: TFloatField
      FieldName = 'ivdvalor'
    end
    object ivdivddescricao: TStringField
      FieldName = 'ivddescricao'
      Size = 50
    end
    object ivdivdtotal: TFloatField
      FieldName = 'ivdtotal'
    end
    object ivdivdproprietario: TStringField
      FieldName = 'ivdproprietario'
      Size = 10
    end
    object ivdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ivdflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object ivdivdregistro: TDateTimeField
      FieldName = 'ivdregistro'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  procodigo'
      '  FROM pro '
      '  where proproducao=0 '
      '')
    Left = 704
    Top = 492
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  object spd: TUniQuery
    SQL.Strings = (
      'select spdchave from spd where spdativo=1')
    Left = 784
    Top = 532
    object spdspdchave: TIntegerField
      FieldName = 'spdchave'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgetdempresa'
      ''
      'FROM cfgmcfg where cfgcodigo=:cfgcodigo')
    Left = 944
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  object compras: TUniQuery
    SQL.Strings = (
      ''
      'SELECT'
      '      itm.procodigo,'
      '      SUM(itmquantidade * itmcontendo) qtdcompra'
      '    FROM itm'
      '      INNER JOIN pro'
      '        ON itm.procodigo = pro.procodigo'
      '      INNER JOIN toe'
      '        ON itm.toecodigo = toe.toecodigo'
      '      INNER JOIN mes'
      '        ON itm.meschave = mes.meschave'
      '    WHERE ttecodigo = 0'
      '    AND ttocodigo in ( 1)'
      '    AND sdecodigo <> '#39'02'#39
      
        '    AND STR_TO_DATE(CONCAT(mesregistro, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') >= '#39'2022-01-01 00:00:01'#39
      
        '    AND STR_TO_DATE(CONCAT(mesregistro, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') <= :datafinalcontagem'
      '    AND itm.procodigo=:procodigo'
      ''
      '    GROUP BY procodigo;')
    Left = 208
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datafinalcontagem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object comprasprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object comprasqtdcompra: TFloatField
      FieldName = 'qtdcompra'
    end
  end
  object vendas: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' itm.procodigo,'
      '      SUM(itmquantidade * itmcontendo) qtdvenda'
      ''
      ''
      'FROM itm,'
      '     mes,'
      '     toe'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND itm.meschave = mes.meschave'
      ''
      
        '     AND STR_TO_DATE(CONCAT(mesemissao, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') >= '#39'2022-01-01 00:00:01'#39
      
        '    AND STR_TO_DATE(CONCAT(mesemissao, '#39'T'#39', SUBSTRING(mesinclusa' +
        'o, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') <= :datafinalcontagem'
      '    AND itm.meschave NOT IN (SELECT'
      '        meschave'
      '      FROM dfa)'
      'AND procodigo = :procodigo'
      'AND mes.sdecodigo <> '#39'02'#39
      'AND ttecodigo = 1'
      'AND ttocodigo in( 2)'
      '  ORDER BY itmchave'
      ''
      '')
    Left = 288
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datafinalcontagem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object vendasprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vendasqtdvenda: TFloatField
      FieldName = 'qtdvenda'
    end
  end
  object icecontagem: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  icechave,'
      '  pcechave,'
      ' MAX(icedatahoraregistro) icedatahoraregistro,'
      '  procodigo,'
      
        '  if(puncodigo=0,(select u.puncodigo from pun u,pro p where p.pr' +
        'ocodigo=u.procodigo and p.unicodigo=u.unicodigo AND p.procodigo=' +
        'ice.procodigo LIMIT 1 ),puncodigo) puncodigo,'
      '  sum(icequantidade) icequantidade,'
      '  iceorigem,'
      '  clbcodigo'
      'FROM ice where pcechave=:pcechave'
      ''
      'group by procodigo '
      'order by icedatahoraregistro ')
    Left = 424
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcechave'
        Value = nil
      end>
    object icecontagemicechave: TIntegerField
      FieldName = 'icechave'
    end
    object icecontagempcechave: TIntegerField
      FieldName = 'pcechave'
    end
    object icecontagemicedatahoraregistro: TDateTimeField
      FieldName = 'icedatahoraregistro'
    end
    object icecontagemprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object icecontagempuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object icecontagemicequantidade: TFloatField
      FieldName = 'icequantidade'
    end
  end
  object ivt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivtchave,'
      '  spdchave,'
      '  procodigo,'
      '  pcccodigo,'
      '  ivtquantidade,'
      '  ivtvalor,'
      '  ivttotal,'
      '  ivtproprietario,'
      '  ivtdescricao,'
      '  etdcodigo,'
      '  flacodigo,'
      '  ivtregistro'
      'FROM ivt limit 0')
    Left = 640
    Top = 516
    object ivtivtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'ivtchave'
    end
    object ivtspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object ivtprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object ivtpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object ivtivtquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ivtquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object ivtivtvalor: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio R$'
      FieldName = 'ivtvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ivtivttotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'ivttotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ivtivtproprietario: TStringField
      FieldName = 'ivtproprietario'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ivtivtdescricao: TStringField
      FieldName = 'ivtdescricao'
      Size = 1000
    end
    object ivtetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ivtflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object ivtivtregistro: TDateTimeField
      FieldName = 'ivtregistro'
    end
  end
  object spdinventarios: TUniQuery
    SQL.Strings = (
      
        'select max(spdchave) spdchave, spddatabalanco from spd where spd' +
        'chave=:spdchave')
    Left = 424
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
    object spdinventariosspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object spdinventariosspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
    end
  end
  object comprasfiscal: TUniQuery
    SQL.Strings = (
      ''
      'SELECT'
      '      itm.procodigo,'
      '      SUM(itmquantidade * itmcontendo) qtdcompra'
      '    FROM itm'
      '      INNER JOIN pro'
      '        ON itm.procodigo = pro.procodigo'
      '      INNER JOIN toe'
      '        ON itm.toecodigo = toe.toecodigo'
      '      INNER JOIN mes'
      '        ON itm.meschave = mes.meschave'
      '    WHERE ttecodigo = 0'
      '    AND ttocodigo in ( 1,7)'
      '    AND sdecodigo <> '#39'02'#39
      '    and mes.tdfcodigo in ('#39'55'#39')'
      
        '    AND STR_TO_DATE(CONCAT(mesregistro, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') >= '#39'2022-01-01 00:00:01'#39
      
        '    AND STR_TO_DATE(CONCAT(mesregistro, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') <= :datafinalcontagem'
      '    AND itm.procodigo=:procodigo'
      ''
      '    GROUP BY itm.procodigo;')
    Left = 208
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datafinalcontagem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
  end
  object vendasfiscal: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' itm.procodigo,'
      '      SUM(itmquantidade * itmcontendo) qtdvenda'
      ''
      ''
      'FROM itm,'
      '     mes,'
      '     toe'
      'WHERE itm.toecodigo = toe.toecodigo'
      'AND itm.meschave = mes.meschave'
      ''
      
        '     AND STR_TO_DATE(CONCAT(mesemissao, '#39'T'#39', SUBSTRING(mesinclus' +
        'ao, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') >= '#39'2022-01-01 00:00:01'#39
      
        '    AND STR_TO_DATE(CONCAT(mesemissao, '#39'T'#39', SUBSTRING(mesinclusa' +
        'o, 11, 10)), '#39'%Y-%m-%dT%H:%i:%s.%f'#39') <= :datafinalcontagem'
      '--    AND itm.meschave NOT IN (SELECT meschave FROM dfa)'
      'AND procodigo = :procodigo'
      'AND mes.sdecodigo <> '#39'02'#39
      'and mes.tdfcodigo in ('#39'55'#39','#39'65'#39')'
      ' AND ttecodigo = 1'
      'AND ttocodigo in( 2,7)'
      '  ORDER BY itmchave'
      ''
      '')
    Left = 288
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datafinalcontagem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
  end
end
