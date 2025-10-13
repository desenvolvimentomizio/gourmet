inherited fcre: Tfcre
  ActiveControl = etdcodigo
  Caption = 'Contas a Receber'
  ClientHeight = 412
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 383
    ExplicitTop = 383
  end
  inherited paginas: TPageControl
    Height = 383
    ExplicitHeight = 383
    inherited Principal: TTabSheet
      ExplicitHeight = 355
      inherited Label2: TLabel
        Width = 33
        Caption = 'Cliente'
        ExplicitWidth = 33
      end
      inherited lmoecodigo: TLabel
        Visible = False
      end
      inherited lrfivalomulta: TLabel
        Left = 487
        ExplicitLeft = 487
      end
      inherited rfiemissao: TDBEdit
        OnEnter = rfiemissaoEnter
      end
      inherited rfivalor: TDBEdit
        OnExit = rfivalorExit
      end
      inherited moecodigo: TDBEdit
        Visible = False
      end
      inherited rfipercmesmora: TDBEdit
        Width = 57
        ExplicitWidth = 57
      end
      inherited rfivalomulta: TDBEdit
        Left = 568
        Width = 77
        ExplicitLeft = 568
        ExplicitWidth = 77
      end
      inherited flacodigo: TDBEdit
        Left = 425
        ExplicitLeft = 425
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.02.15.005-02'
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb, cfgdtfinctb, cfgdatapadrao from cfg where fl' +
        'acodigo=:flacodigo')
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfichave,'
      '  etdcodigo,'
      '  tfdcodigo,'
      '  flacodigo,'
      '  tficodigo,'
      '  bcocodigo,'
      '  carcodigo,'
      '  rfiemissao,'
      '  rfivencimento,'
      '  rfinumero,'
      '  rfihistorico,'
      '  srfcodigo,'
      '  rfipercmesmora,'
      '  rfivalomulta,'
      '  rfirepetir,'
      '  rfidatadesc,'
      '  rfivalodesc,'
      '  rfidatamulta,'
      '  rfiprevisao,'
      '  rfivalor,'
      '  frrcodigo,'
      '  rfivalorparcela,'
      '  rfipercmulta,'
      '  rfimoradia,'
      '  moecodigo,'
      '  titcodigo,'
      '  rfiinclusao'
      'FROM rfi'
      'WHERE rfichave = :rfichave')
    inherited registrorfivalomulta: TFloatField
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited cpc: TUniQuery
    Left = 61
    Top = 289
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 480
    Top = 232
  end
  object mfi: TUniQuery [23]
    SQL.Strings = (
      
        'select  mfichave, rfichave, tmfcodigo,  moecodigo, mfivalor, mfi' +
        'data, mfihistorico, mfivalorori, mfiparcela '
      'from mfi where rfichave=:rfichave and tmfcodigo=:tmfcodigo')
    Left = 364
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
        Value = nil
      end>
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
  end
  object vrfi: TVirtualTable [32]
    Left = 292
    Top = 144
    Data = {04000000000000000000}
    object vrfietdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object vrfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object vrfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object vrfitficodigo: TIntegerField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'tficodigo'
      Required = True
    end
    object vrfibcocodigo: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object vrfibconome: TStringField
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 50
      Lookup = True
    end
    object vrficarcodigo: TIntegerField
      DisplayLabel = 'Forma de Cobran'#231'a'
      FieldName = 'carcodigo'
      Required = True
    end
    object vrfirfiemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'rfiemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfivencimento: TDateField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'rfivencimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero do documento'
      FieldName = 'rfinumero'
      Required = True
    end
    object vrfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Required = True
      Size = 50
    end
    object vrfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object vrfirfipercmesmora: TFloatField
      DisplayLabel = '% mora ao m'#234's'
      FieldName = 'rfipercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vrfirfirepetir: TIntegerField
      DisplayLabel = 'Repitir'
      FieldName = 'rfirepetir'
      Required = True
    end
    object vrfirfidatadesc: TDateField
      DisplayLabel = 'Data para desconto'
      FieldName = 'rfidatadesc'
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfivalodesc: TFloatField
      DisplayLabel = 'Valor do desconto'
      FieldName = 'rfivalodesc'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrfirfidatamulta: TDateField
      DisplayLabel = 'Pagar sem multa at'#233
      FieldName = 'rfidatamulta'
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfiprevisao: TIntegerField
      DisplayLabel = 'Este registro '#233' uma previs'#227'o'
      FieldName = 'rfiprevisao'
      Required = True
    end
    object vrfirfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrfifrrcodigo: TIntegerField
      DisplayLabel = 'Com frequ'#234'ncia'
      FieldName = 'frrcodigo'
      Required = True
    end
    object vrfirfivalorparcela: TFloatField
      FieldName = 'rfivalorparcela'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrfimoecodigo: TIntegerField
      DisplayLabel = 'Moeda / '#205'ndice'
      FieldName = 'moecodigo'
      Required = True
    end
    object vrfirfipercmesmulta: TFloatField
      FieldName = 'rfipercmesmulta'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object vrfirfivalomulta: TFloatField
      FieldName = 'rfivalomulta'
    end
    object vrfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  object v_rfi: TUniQuery
    SQL.Strings = (
      
        'select rfichave, rfinumero, rfihistorico from v_rfi where rficha' +
        've=:rfichave')
    Left = 596
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object v_rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object v_rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object v_rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
end
