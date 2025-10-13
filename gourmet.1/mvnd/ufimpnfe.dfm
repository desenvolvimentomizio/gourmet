object fimpnfe: Tfimpnfe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Importa Clientes Emissor NFE SP'
  ClientHeight = 456
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 14
      Width = 93
      Height = 13
      Caption = 'Selecione o arquivo'
    end
    object edArquivo: TEdit
      Left = 128
      Top = 13
      Width = 529
      Height = 21
      TabOrder = 0
    end
    object btLocalizar: TButton
      Left = 663
      Top = 13
      Width = 75
      Height = 22
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = btLocalizarClick
    end
  end
  object texto: TMemo
    Left = 0
    Top = 41
    Width = 771
    Height = 386
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object pbotoes: TPanel
    Left = 0
    Top = 427
    Width = 771
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 617
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      Enabled = False
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 692
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object mostra: TProgressBar
      Left = 99
      Top = 4
      Width = 294
      Height = 21
      Align = alLeft
      TabOrder = 3
    end
  end
  object OpenTextFileDialog: TOpenTextFileDialog
    Filter = 'Documentos|*.txt'
    Left = 544
    Top = 72
  end
  object ete: TUniQuery
    SQL.Strings = (
      
        'select etecodigo,etdcodigo,etecontato,etedepartamento,eteemail,e' +
        'teenvianfe from ete '
      'where ete.etdcodigo=:etdcodigo')
    Left = 348
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object eteetecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etecodigo'
    end
    object eteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object eteetecontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etecontato'
    end
    object eteetedepartamento: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'etedepartamento'
    end
    object eteeteemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'eteemail'
      Size = 100
    end
    object eteeteenvianfe: TIntegerField
      DisplayLabel = 'Envia NFE'
      FieldName = 'eteenvianfe'
    end
  end
  object etf: TUniQuery
    SQL.Strings = (
      
        'select etfcodigo,etdcodigo,etf.ttfcodigo,etfcontato,etfdepartame' +
        'nto,etftelefone from etf'
      'where  etf.etdcodigo=:etdcodigo')
    Left = 316
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etfetfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etfcodigo'
    end
    object etfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etfetfcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etfcontato'
    end
    object etfetfdepartamento: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'etfdepartamento'
    end
    object etfttfcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ttfcodigo'
      Required = True
    end
    object etfetftelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'etftelefone'
    end
  end
  object edr: TUniQuery
    SQL.Strings = (
      'select * from edr where etdcodigo=:etdcodigo')
    Left = 288
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object edredrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'edrcodigo'
    end
    object edretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object edrtedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object edredrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object edredrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object edredrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object edredrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 50
    end
    object edredrbairro: TStringField
      DisplayWidth = 60
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object edrcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object edrufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object edredrobs: TStringField
      FieldName = 'edrobs'
      Size = 250
    end
    object edredrinscest: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'edrinscest'
    end
    object edredrcep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'edrcep'
      Required = True
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object edredrinscmun: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'edrinscmun'
      Size = 50
    end
    object edredritem: TIntegerField
      FieldName = 'edritem'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select * from etd ')
    Left = 253
    Top = 52
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object etdetdapelido: TStringField
      DisplayLabel = 'Nome Fantasia / Apelido'
      FieldName = 'etdapelido'
      Required = True
      Size = 100
    end
    object etdetddeletar: TIntegerField
      DefaultExpression = '0'
      FieldName = 'etddeletar'
      Required = True
    end
    object etdtpecodigo: TIntegerField
      DisplayLabel = 'Tipo de Pessoa'
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdetddatacad: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'etddatacad'
    end
    object etdetddataalt: TDateField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'etddataalt'
    end
    object etdetddoc1: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'etddoc1'
      Required = True
    end
    object etdetdativo: TIntegerField
      FieldName = 'etdativo'
      Required = True
    end
    object etdtsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object etdetdobs: TStringField
      FieldName = 'etdobs'
      Size = 2000
    end
    object etdetdsuframa: TStringField
      DisplayLabel = 'SUFRAMA'
      FieldName = 'etdsuframa'
      Size = 50
    end
    object etdtcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
      Required = True
    end
    object etdetdcarga: TIntegerField
      FieldName = 'etdcarga'
    end
    object etdetdsped: TIntegerField
      FieldName = 'etdsped'
    end
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cddcodigo,'
      '  ufscodigo,'
      '  cddnome'
      'FROM cdd')
    Left = 192
    Top = 56
  end
  object dpf: TUniQuery
    SQL.Strings = (
      'select * from dpf where dpf.etdcodigo=:etdcodigo')
    Left = 220
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object dpfdpfcodigo: TIntegerField
      FieldName = 'dpfcodigo'
    end
    object dpfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object dpfdpfdtnasc: TDateField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'dpfdtnasc'
      EditMask = '!99/99/9999;1;_'
    end
    object Naturalidade: TStringField
      FieldName = 'dpfnatural'
      Size = 30
    end
    object dpfdpfrg: TStringField
      DisplayLabel = 'Nr. Identidade'
      FieldName = 'dpfrg'
      Size = 15
    end
    object dpfdpfssp: TStringField
      DisplayLabel = 'SSP/UF'
      FieldName = 'dpfssp'
      Size = 10
    end
    object dpfdpfnomemae: TStringField
      DisplayLabel = 'Nome da M'#227'e'
      DisplayWidth = 50
      FieldName = 'dpfnomemae'
      Size = 50
    end
    object dpfdpfdtnascmae: TDateField
      DisplayLabel = 'Data Nasc. M'#227'e'
      FieldName = 'dpfdtnascmae'
    end
    object dpfdpfnomepai: TStringField
      DisplayLabel = 'Nome do Pai'
      DisplayWidth = 50
      FieldName = 'dpfnomepai'
      Size = 50
    end
    object dpfdpfdtnascpai: TDateField
      DisplayLabel = 'Data Nasc. Pai'
      FieldName = 'dpfdtnascpai'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfetccodigo: TIntegerField
      FieldName = 'etccodigo'
    end
    object dpfdpfconjuge: TStringField
      DisplayLabel = 'Nome do C'#244'njuge'
      FieldName = 'dpfconjuge'
      Size = 50
    end
    object dpfdpfdtnasccon: TDateField
      DisplayLabel = 'Data Nasc. C'#244'njuge'
      FieldName = 'dpfdtnasccon'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfdpfdtcas: TDateField
      DisplayLabel = 'Data de Casamento'
      FieldName = 'dpfdtcas'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfdpftrabconj: TStringField
      DisplayLabel = 'Trabalho do C'#244'njuge'
      FieldName = 'dpftrabconj'
      Size = 30
    end
    object dpfdpffoneconj: TStringField
      DisplayLabel = 'Telefone do C'#244'njuge'
      FieldName = 'dpffoneconj'
    end
    object dpfdpfnudepend: TIntegerField
      DisplayLabel = 'Nr. de Dependentes'
      FieldName = 'dpfnudepend'
    end
    object dpfdpfpessoaautori1: TStringField
      FieldName = 'dpfpessoaautori1'
      Size = 250
    end
    object dpfdpfpessoaautori2: TStringField
      FieldName = 'dpfpessoaautori2'
      Size = 250
    end
    object dpfdpfpessoaautori3: TStringField
      FieldName = 'dpfpessoaautori3'
      Size = 250
    end
    object dpfdpflocaltrabalho: TStringField
      DisplayLabel = 'Empresa de Trabalho'
      FieldName = 'dpflocaltrabalho'
      Size = 250
    end
    object dpfdpfcargotrabalho: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'dpfcargotrabalho'
      Size = 50
    end
    object dpfdpfcontatotrabalho: TStringField
      DisplayLabel = 'Pessoa de Contato'
      FieldName = 'dpfcontatotrabalho'
      Size = 50
    end
    object dpfdpfrendamensal: TFloatField
      DisplayLabel = 'Renda Mensal R$'
      FieldName = 'dpfrendamensal'
    end
    object dpfdpfedrcodigo: TIntegerField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'dpfedrcodigo'
    end
    object dpfdpfetfcodigo: TIntegerField
      DisplayLabel = 'Telefone'
      FieldName = 'dpfetfcodigo'
    end
    object dpfdpfdataadmissaotrabalho: TDateField
      FieldName = 'dpfdataadmissaotrabalho'
    end
  end
  object etv: TUniQuery
    SQL.Strings = (
      'select * from etv')
    Left = 376
    Top = 56
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
  end
  object consulta: TUniQuery
    Left = 416
    Top = 216
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 632
    Top = 216
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      '     , pro.pronomereduzido'
      '     , pro.marcodigo'
      '     , pro.grpcodigo'
      '     , pro.trbcodigo'
      '     , pro.icmcodigo'
      '     , pro.sipcodigo'
      '     , pro.tpocodigo'
      '     , pro.prominimo'
      '     , pro.proproprio'
      '     , pro.pronumserie'
      '     , pro.proncm'
      '     , pro.unicodigo'
      '     , pro.procomposto'
      '     , pro.probalanca'
      '     , pro.provalidade'
      '     , pro.protecla'
      '     , pro.proestoque'
      '     , pro.proobs'
      '     , pro.proreferencia'
      '     , pro.prounitrib'
      '     , pro.proqtdtrib'
      '     , pro.proanpcodigo'
      '     , pro.enpcodigo'
      '     , pro.propedecomple'
      '     , pro.propededescrserv'
      '     , pro.propedetecnicoserv'
      '     , pro.prousagrade'
      '     , pro.gracodigo'
      '     , pro.dprcodigo'
      '     , pro.cstcodigo'
      'FROM pro'
      '')
    Left = 436
    Top = 312
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object propronomereduzido: TStringField
      DisplayLabel = 'Nome Reduzido'
      FieldName = 'pronomereduzido'
      Required = True
      Size = 40
    end
    object promarcodigo: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'marcodigo'
      Required = True
    end
    object progrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
      Required = True
    end
    object protrbcodigo: TIntegerField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'trbcodigo'
      Required = True
    end
    object proicmcodigo: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmcodigo'
      Required = True
      Size = 3
    end
    object prounicodigo: TIntegerField
      DisplayLabel = 'Unidade Base'
      FieldName = 'unicodigo'
      Required = True
    end
    object protpocodigo: TIntegerField
      DisplayLabel = 'Tipo de Produto'
      FieldName = 'tpocodigo'
      Required = True
    end
    object proprominimo: TFloatField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'prominimo'
    end
    object proproproprio: TStringField
      FieldName = 'proproprio'
      Size = 30
    end
    object propronumserie: TStringField
      DisplayLabel = 'N'#186' S'#233'rie'
      FieldName = 'pronumserie'
      Required = True
      Size = 1
    end
    object proproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Required = True
      Size = 15
    end
    object proprocomposto: TStringField
      DisplayLabel = 'Produto Composto'
      FieldName = 'procomposto'
      Required = True
      Size = 1
    end
    object proprobalanca: TStringField
      DisplayLabel = 'Vai para Balan'#231'a'
      FieldName = 'probalanca'
      Required = True
      Size = 1
    end
    object proprotecla: TStringField
      FieldName = 'protecla'
      Size = 5
    end
    object proprovalidade: TIntegerField
      FieldName = 'provalidade'
    end
    object proproestoque: TStringField
      DisplayLabel = 'Controla Estoque'
      FieldName = 'proestoque'
      Required = True
      Size = 1
    end
    object proproobs: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'proobs'
      Size = 200
    end
    object proproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object proprounitrib: TIntegerField
      DisplayLabel = 'Unidade Tribut'#225'ria'
      FieldName = 'prounitrib'
      Required = True
    end
    object proproqtdtrib: TFloatField
      DisplayLabel = 'Qtd. Tribut'#225'ria'
      FieldName = 'proqtdtrib'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object prosipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object proproanpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo ANP'
      FieldName = 'proanpcodigo'
    end
    object proenpcodigo: TIntegerField
      DisplayLabel = 'Endere'#231'amento'
      FieldName = 'enpcodigo'
      Required = True
    end
    object propropedecomple: TIntegerField
      DisplayLabel = 'Pede Complemento'
      FieldName = 'propedecomple'
      Required = True
    end
    object propropededescrserv: TIntegerField
      FieldName = 'propededescrserv'
      Required = True
    end
    object propropedetecnicoserv: TIntegerField
      FieldName = 'propedetecnicoserv'
      Required = True
    end
    object progracodigo: TIntegerField
      DisplayLabel = 'Grade'
      FieldName = 'gracodigo'
    end
    object prodprcodigo: TIntegerField
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'dprcodigo'
      Required = True
    end
    object proprousagrade: TIntegerField
      FieldName = 'prousagrade'
    end
    object procstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  puncodigo,'
      '  procodigo,'
      '  unicodigo,'
      '  dgrcodigo,'
      '  punidentificacao,'
      '  unicodigobase,'
      '  punmultiplicador,'
      '  punquantidade,'
      '  punprecoav,'
      '  punprecoap,'
      '  puncusto,'
      '  punmargem,'
      '  punpesobruto,'
      '  punpesoliq,'
      '  punbarra,'
      '  tuncodigo,'
      '  pununitrib,'
      '  punqtdtrib,'
      '  punbarrasistema,'
      '  punmargemap,'
      '  punpercacresavap,'
      '  punbarraposi'
      'FROM pun')
    Left = 472
    Top = 312
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object punpunquantidade: TFloatField
      DisplayLabel = 'Quantidade na Embalagem'
      FieldName = 'punquantidade'
      Required = True
    end
    object pununicodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'unicodigo'
      Required = True
    end
    object punpunmultiplicador: TFloatField
      DisplayLabel = 'Multiplicador'
      FieldName = 'punmultiplicador'
      Required = True
    end
    object punpunidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'punidentificacao'
      Size = 30
    end
    object pundgrcodigo: TIntegerField
      FieldName = 'dgrcodigo'
    end
    object punpuncusto: TFloatField
      DisplayLabel = 'Base do Pre'#231'o de Custo'
      FieldName = 'puncusto'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object punpunmargem: TFloatField
      DisplayLabel = '% Margem de Lucro'
      FieldName = 'punmargem'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object punpunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda '#192' Vista'
      FieldName = 'punprecoav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object punpunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda '#192' Prazo'
      FieldName = 'punprecoap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object pununicodigobase: TIntegerField
      DisplayLabel = 'Unidade Base'
      FieldName = 'unicodigobase'
      Required = True
    end
    object punpunbarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'punbarra'
      Required = True
      Size = 50
    end
    object puntuncodigo: TIntegerField
      DisplayLabel = 'Utiliza'#231#227'o do Multiplicador'
      FieldName = 'tuncodigo'
    end
    object punpununitrib: TIntegerField
      DisplayLabel = 'Unidade Tribut'#225'ria'
      FieldName = 'pununitrib'
      Required = True
    end
    object punpunqtdtrib: TFloatField
      DisplayLabel = 'Quantidade Tribut'#225'ria'
      FieldName = 'punqtdtrib'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object punpunbarrasistema: TIntegerField
      DisplayLabel = 'C'#243'd de Barra Interno'
      FieldName = 'punbarrasistema'
    end
    object punpunmargemap: TFloatField
      FieldName = 'punmargemap'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object punpunpercacresavap: TFloatField
      FieldName = 'punpercacresavap'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
  end
  object grp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grpcodigo,'
      '  grpidentificacao,'
      '  tgrcodigo'
      'FROM grp')
    Left = 240
    Top = 312
    object grpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object grptgrcodigo: TIntegerField
      FieldName = 'tgrcodigo'
    end
  end
  object tgr: TUniQuery
    SQL.Strings = (
      'select tgrcodigo, tgridentificacao from tgr')
    Left = 280
    Top = 312
    object tgrtgrcodigo: TIntegerField
      FieldName = 'tgrcodigo'
    end
    object tgrtgridentificacao: TStringField
      FieldName = 'tgridentificacao'
      Size = 50
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  unicodigo,'
      '  unisimbolo,'
      '  uninome,'
      '  tuncodigo'
      'FROM uni')
    Left = 320
    Top = 312
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Size = 50
    end
    object unituncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
  end
  object mar: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  marcodigo,'
      '  maridentificacao'
      'FROM mar')
    Left = 360
    Top = 312
    object marmarcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'marcodigo'
    end
    object marmaridentificacao: TStringField
      FieldName = 'maridentificacao'
      Size = 35
    end
  end
  object cpb: TUniQuery
    SQL.Strings = (
      'select cpbcodigo, procodigo, cpbcodbalanca from cpb ')
    Left = 400
    Top = 312
    object cpbcpbcodigo: TIntegerField
      FieldName = 'cpbcodigo'
    end
    object cpbprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object cpbcpbcodbalanca: TIntegerField
      FieldName = 'cpbcodbalanca'
    end
  end
  object registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  meschave,'
      '  etdcodigo,'
      '  mesemissao,'
      '  mesregistro,'
      '  tdfcodigo,'
      '  sdecodigo,'
      '  messerie,'
      '  mesnumero,'
      '  meschavenfe,'
      '  toecodigo,'
      '  mesvalor,'
      '  tfpcodigo,'
      '  mesdesconto,'
      '  mestotal,'
      '  refcodigo,'
      '  mesfrete,'
      '  messeguro,'
      '  mesoutras,'
      '  mesbicm,'
      '  mesicm,'
      '  mesbicms,'
      '  mesicms,'
      '  trfcodigo,'
      '  meschavenfe,'
      '  mesipi,'
      '  mespis,'
      '  mescofins,'
      '  mespiss,'
      '  mescofinss,'
      '  clbcodigo,'
      '  trmcodigo,'
      '  temcodigo,'
      '  mesobs,'
      '  mesreclassicacao,'
      '  flacodigo,'
      '  mesoutroscustos'
      'FROM mes '
      ''
      '')
    Left = 144
    Top = 153
    object registromeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
    end
    object registromesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object registromesregistro: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'mesregistro'
      EditMask = '!99/99/9999;1;_'
    end
    object registrotdfcodigo: TStringField
      DisplayWidth = 2
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registromesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object registromesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object registromesvalor: TFloatField
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesdesconto: TFloatField
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromestotal: TFloatField
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorefcodigo: TIntegerField
      DisplayLabel = 'Respons'#225'vel pelo Frete'
      FieldName = 'refcodigo'
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesipi: TFloatField
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromespis: TFloatField
      FieldName = 'mespis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromescofins: TFloatField
      FieldName = 'mescofins'
    end
    object registromespiss: TFloatField
      FieldName = 'mespiss'
    end
    object registromescofinss: TFloatField
      FieldName = 'mescofinss'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registrotrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registrotemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registromesreclassicacao: TIntegerField
      FieldName = 'mesreclassicacao'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registromesoutroscustos: TFloatField
      DisplayLabel = 'Outros Custos'
      FieldName = 'mesoutroscustos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'select * from itm where itm.meschave= :meschave')
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 176
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Item'
      FieldName = 'itmchave'
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Nr. Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
      Required = True
    end
    object itmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmprocodigoori: TStringField
      DisplayLabel = 'Cod.Forn.'
      FieldName = 'procodigoori'
      Size = 30
    end
    object itmpronomeori: TStringField
      DisplayLabel = 'Nome do Produto para o Fornecedor'
      FieldName = 'pronomeori'
      Size = 80
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmcfocfop: TStringField
      DisplayLabel = 'CFOP Origem'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object itmunicodigo: TIntegerField
      DisplayLabel = 'Unid.'
      FieldName = 'unicodigo'
      Required = True
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmprogtin: TStringField
      FieldName = 'progtin'
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'CFOP Destino'
      FieldName = 'cfocfopdestinacao'
      Required = True
      Size = 5
    end
    object itmunicodigobase: TIntegerField
      DisplayLabel = 'Un.Base'
      FieldName = 'unicodigobase'
      Required = True
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmitmoutroscustos: TFloatField
      FieldName = 'itmoutroscustos'
    end
  end
  object tof: TUniQuery
    SQL.Strings = (
      'select tofcodigo, tofidentificacao from tof')
    Left = 592
    Top = 280
    object toftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Size = 50
    end
  end
  object tom: TUniQuery
    SQL.Strings = (
      'select tomchave, tofcodigo, meschave from tom limit 0')
    Left = 536
    Top = 320
    object tomtomchave: TIntegerField
      FieldName = 'tomchave'
    end
    object tomtofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object tommeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object dfr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dfrchave,'
      '  etdcodigo,'
      '  tdfcodigo,'
      '  dfrchavenfe,'
      '  dfrserie,'
      '  dfrnumero,'
      '  dfremissao,'
      '  edritem,'
      '  meschave'
      'FROM dfr where meschave=:meschave')
    Left = 152
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dfrdfrchave: TIntegerField
      FieldName = 'dfrchave'
    end
    object dfretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object dfrtdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object dfrdfrchavenfe: TStringField
      FieldName = 'dfrchavenfe'
      Size = 100
    end
    object dfrdfrserie: TStringField
      FieldName = 'dfrserie'
      Size = 3
    end
    object dfrdfrnumero: TIntegerField
      FieldName = 'dfrnumero'
    end
    object dfrdfremissao: TDateField
      FieldName = 'dfremissao'
    end
    object dfredritem: TIntegerField
      FieldName = 'edritem'
    end
    object dfrmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
end
