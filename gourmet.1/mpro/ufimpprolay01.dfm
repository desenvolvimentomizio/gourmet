object fimpprolay01: Tfimpprolay01
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Importa'#231#227'o de Produtos Layout 01'
  ClientHeight = 589
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 560
    Width = 764
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
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
    object b1Arquivo: TBitBtn
      Left = 535
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = '1'#186' Arquivo'
      TabOrder = 1
      OnClick = b1ArquivoClick
    end
    object bcancela: TBitBtn
      Left = 685
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object mostra: TProgressBar
      Left = 99
      Top = 4
      Width = 294
      Height = 21
      Align = alLeft
      TabOrder = 3
      ExplicitLeft = 105
      ExplicitTop = 6
    end
    object b2Arquivo: TButton
      Left = 610
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = '2'#186' Arquivo'
      TabOrder = 4
      OnClick = b2ArquivoClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 14
      Width = 93
      Height = 13
      Caption = 'Selecione o arquivo'
    end
    object edArquivo: TEdit
      Left = 128
      Top = 11
      Width = 529
      Height = 21
      TabOrder = 0
    end
    object btLocalizar: TButton
      Left = 663
      Top = 14
      Width = 75
      Height = 21
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = btLocalizarClick
    end
  end
  object texto: TMemo
    Left = 0
    Top = 41
    Width = 764
    Height = 176
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object erros: TMemo
    Left = 0
    Top = 471
    Width = 764
    Height = 89
    Align = alBottom
    Lines.Strings = (
      'erros')
    TabOrder = 3
  end
  object OpenTextFileDialog: TOpenTextFileDialog
    Left = 232
    Top = 96
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
    AfterInsert = proAfterInsert
    Left = 268
    Top = 72
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
  object grp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grpcodigo,'
      '  grpidentificacao,'
      '  tgrcodigo'
      'FROM grp')
    Left = 408
    Top = 160
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
    Left = 448
    Top = 160
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
    AfterInsert = uniAfterInsert
    Left = 488
    Top = 160
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
    OnPostError = punPostError
    Left = 312
    Top = 72
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
  end
  object mar: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  marcodigo,'
      '  maridentificacao'
      'FROM mar')
    Left = 528
    Top = 160
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
    Left = 568
    Top = 160
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
end
