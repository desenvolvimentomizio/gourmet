object fcfv: Tfcfv
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Carga para For'#231'a de Venda'
  ClientHeight = 519
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btConectar: TButton
    Left = 24
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = btConectarClick
  end
  object Memo1: TMemo
    Left = 276
    Top = 408
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 386
    Top = 200
    Width = 75
    Height = 25
    Caption = 'fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object mostrar: TProgressBar
    Left = 200
    Top = 171
    Width = 150
    Height = 17
    TabOrder = 3
  end
  object bClientes: TButton
    Left = 288
    Top = 132
    Width = 97
    Height = 25
    Caption = 'Clientes'
    TabOrder = 4
    OnClick = bClientesClick
  end
  object btCidades: TButton
    Left = 288
    Top = 70
    Width = 97
    Height = 25
    Caption = 'Cidades'
    TabOrder = 5
    OnClick = btCidadesClick
  end
  object btEstados: TButton
    Left = 288
    Top = 39
    Width = 97
    Height = 25
    Caption = 'Estados'
    TabOrder = 6
    OnClick = btEstadosClick
  end
  object btConfiguracoes: TButton
    Left = 288
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Configura'#231#245'es'
    TabOrder = 7
    OnClick = btConfiguracoesClick
  end
  object btColaboradores: TButton
    Left = 288
    Top = 101
    Width = 97
    Height = 25
    Caption = 'Colaboradores'
    TabOrder = 8
    OnClick = btColaboradoresClick
  end
  object btipopessoas: TButton
    Left = 24
    Top = 39
    Width = 89
    Height = 25
    Caption = 'Tipo Pessoas'
    TabOrder = 9
    OnClick = btipopessoasClick
  end
  object Button1: TButton
    Left = 160
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 10
    OnClick = Button1Click
  end
  object mostra: TProgressBar
    Left = 112
    Top = 488
    Width = 150
    Height = 17
    TabOrder = 11
  end
  object btncm: TButton
    Left = 24
    Top = 112
    Width = 89
    Height = 25
    Caption = 'NCMs'
    TabOrder = 12
    OnClick = btncmClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 232
    Width = 320
    Height = 120
    DataSource = Dncmpub
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'estrela0404'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=30')
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '192.168.5.150'
    LoginPrompt = False
    Left = 177
    Top = 12
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 225
    Top = 4
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT distinct'
      '  etd.etdapelido,'
      '  cfg.cfgcodigo,'
      '  etd.etddoc1,'
      '  edr.edrcep,'
      '  ufs.ufssigla,'
      '  cdd.cddnome,'
      '  ufs.ufscodigo,'
      '  cdd.cddcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN cfg'
      '    ON cfgmcfg.cfgcodigo = cfg.cfgcodigo'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo'
      '  INNER JOIN edr'
      '    ON edr.etdcodigo = etd.etdcodigo'
      '  INNER JOIN ufs'
      '    ON edr.ufscodigo = ufs.ufscodigo'
      '  INNER JOIN cdd'
      '    ON edr.cddcodigo = cdd.cddcodigo'
      '    AND cdd.ufscodigo = ufs.ufscodigo'
      '  where cfgmcfg.cfgcodigo=:cfgcodigo'
      'limit 1'
      '  ')
    Left = 232
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
      ReadOnly = True
    end
    object cfgetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgedrcep: TStringField
      FieldName = 'edrcep'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cfgcddnome: TStringField
      FieldName = 'cddnome'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
  end
  object clb: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select clbcodigo, clbidentificacao, clbsenha from clb')
    Left = 232
    Top = 208
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object clbclbsenha: TStringField
      FieldName = 'clbsenha'
      Size = 15
    end
  end
  object ufs: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ufscodigo,'
      '  ufssigla,'
      '  ufsnome'
      'FROM ufs where ufscodigo in (select ufscodigo from rvc)'
      '')
    Left = 64
    Top = 408
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Required = True
      Size = 50
    end
  end
  object cdd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  cddcodigo,'
      '  ufscodigo,'
      '  cddnome'
      'FROM cdd where cddcodigo in (select cddcodigo from rvc)')
    Left = 64
    Top = 360
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object cddufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object cddcddnome: TStringField
      FieldName = 'cddnome'
      Required = True
      Size = 50
    end
  end
  object tpe: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select tpecodigo, tpeidentificacao from tpe')
    Left = 25
    Top = 360
    object tpetpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
    object tpetpeidentificacao: TStringField
      FieldName = 'tpeidentificacao'
    end
  end
  object etl: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etlchave,'
      '  etdcodigo,'
      '  etlnfemodelos,'
      '  etllimitetotal,'
      '  etltipo,'
      '  etldias,'
      '  etldescontopadrao'
      'FROM etl'
      ' where etl.etdcodigo in (select etd.etdcodigo FROM etd '
      
        '    INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo AND edr.tedc' +
        'odigo=1'
      
        '    INNER JOIN etf ON etd.etdcodigo = etf.etdcodigo and etf.ttfc' +
        'odigo=1'
      
        '  WHERE etd.etdcodigo IN (SELECT etdcodigo FROM vce WHERE vcefin' +
        'al IS null) '
      
        '  AND (edr.cddcodigo IN (SELECT cddcodigo FROM rvc WHERE rvcfina' +
        'l IS null)'
      
        '  AND edr.ufscodigo IN (SELECT ufscodigo FROM rvc WHERE rvcfinal' +
        ' IS null)))')
    Left = 376
    Top = 376
    object etletlchave: TIntegerField
      FieldName = 'etlchave'
    end
    object etletdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etletlnfemodelos: TStringField
      FieldName = 'etlnfemodelos'
    end
    object etletllimitetotal: TFloatField
      FieldName = 'etllimitetotal'
    end
    object etletltipo: TIntegerField
      FieldName = 'etltipo'
    end
    object etletldias: TIntegerField
      FieldName = 'etldias'
    end
    object etletldescontopadrao: TFloatField
      FieldName = 'etldescontopadrao'
    end
  end
  object ets: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  etscodigo,'
      '  tsecodigo,'
      '  etdcodigo,'
      '  etsdata,'
      '  etshistorico'
      'FROM ets '
      '  where ets.etdcodigo in (select etd.etdcodigo FROM etd '
      
        '    INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo AND edr.tedc' +
        'odigo=1'
      
        '    INNER JOIN etf ON etd.etdcodigo = etf.etdcodigo and etf.ttfc' +
        'odigo=1'
      
        '  WHERE etd.etdcodigo IN (SELECT etdcodigo FROM vce WHERE vcefin' +
        'al IS null) '
      
        '  AND (edr.cddcodigo IN (SELECT cddcodigo FROM rvc WHERE rvcfina' +
        'l IS null)'
      
        '  AND edr.ufscodigo IN (SELECT ufscodigo FROM rvc WHERE rvcfinal' +
        ' IS null)))')
    Left = 376
    Top = 312
    object etsetscodigo: TIntegerField
      FieldName = 'etscodigo'
    end
    object etstsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object etsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etsetsdata: TDateField
      FieldName = 'etsdata'
    end
    object etsetshistorico: TStringField
      FieldName = 'etshistorico'
    end
  end
  object etd: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.etdapelido,'
      '  etd.tpecodigo,'
      '  etd.etddatacad,'
      '  etd.etddoc1,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrcomple,'
      '  edr.edrbairro,'
      '  edr.cddcodigo,'
      '  edr.edrinscest,'
      '  edr.edrcep,'
      '  edr.ufscodigo,'
      
        '  (select eteemail FROM ete WHERE edr.etdcodigo=etd.etdcodigo LI' +
        'MIT 1) eteemail, '
      '  etf.etftelefone,'
      
        '  (SELECT clbcodigo FROM vce WHERE etd.etdcodigo=vce.etdcodigo) ' +
        'clbcodigo'
      '  FROM etd '
      
        '    INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo AND edr.tedc' +
        'odigo=1'
      
        '    INNER JOIN etf ON etd.etdcodigo = etf.etdcodigo and etf.ttfc' +
        'odigo=1'
      
        '  WHERE etd.etdcodigo IN (SELECT etdcodigo FROM vce WHERE vcefin' +
        'al IS null) '
      
        '  AND (edr.cddcodigo IN (SELECT cddcodigo FROM rvc WHERE rvcfina' +
        'l IS null)'
      
        '  AND edr.ufscodigo IN (SELECT ufscodigo FROM rvc WHERE rvcfinal' +
        ' IS null))'
      '  AND etd.etdcodigo<=100000')
    Left = 328
    Top = 312
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etdetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdetddatacad: TDateField
      FieldName = 'etddatacad'
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdedrcomple: TStringField
      FieldName = 'edrcomple'
      ReadOnly = True
      Size = 60
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object etdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object etdedrcep: TStringField
      FieldName = 'edrcep'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdufscodigo: TStringField
      FieldName = 'ufscodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object etdeteemail: TStringField
      FieldName = 'eteemail'
      ReadOnly = True
      Size = 100
    end
    object etdetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object etdclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      ReadOnly = True
    end
  end
  object ncm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  pun.punbarra,'
      '  pro.proncm,'
      '  pro.pronome'
      'FROM mes,'
      '     itm,'
      '     pro,'
      '     pun,'
      '     tcg'
      'WHERE itm.procodigo = pro.procodigo'
      
        'AND (pun.procodigo = pro.procodigo AND  pun.unicodigo=pro.unicod' +
        'igo AND pun.punbarrasistema=0)'
      'AND itm.meschave = mes.meschave'
      'AND mes.tdfcodigo IN ('#39'55'#39', '#39'65'#39')'
      'AND mesregistro >= CURDATE() - 60'
      'AND mes.temcodigo = 5'
      'AND pro.proncm= tcg.tcgncm'
      '  GROUP BY pun.punbarra')
    Left = 152
    Top = 176
    object ncmpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object ncmproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object ncmpronome: TStringField
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
  end
  object ncmpub: TVirtualTable
    Left = 48
    Top = 176
    Data = {03000000000000000000}
    object ncmpubpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object ncmpubproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object ncmpubpronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object ncmloc: TVirtualTable
    Left = 104
    Top = 176
    Data = {03000000000000000000}
    object ncmlocpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object ncmlocproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object ncmlocpronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object Dncmpub: TDataSource
    DataSet = ncmpub
    Left = 40
    Top = 224
  end
end
