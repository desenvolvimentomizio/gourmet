object fcfgbase: Tfcfgbase
  Left = 0
  Top = 0
  Caption = 'fcfgbase'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 271
    Width = 635
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Color = 4227327
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
      Left = 481
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 556
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 416
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
      OnClick = bfecharClick
    end
  end
  object paginas: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 271
    ActivePage = Principal
    Align = alClient
    TabOrder = 1
    object Principal: TTabSheet
      Caption = 'Principal'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object DSRegistro: TUniDataSource
    DataSet = registro
    Left = 204
    Top = 164
  end
  object cfg: TUniQuery
    Left = 340
    Top = 124
  end
  object consulta: TUniQuery
    Left = 268
    Top = 120
  end
  object registro: TUniQuery
    Left = 204
    Top = 104
  end
  object dcp: TUniQuery
    SQL.Strings = (
      'select * from dcp')
    Left = 108
    Top = 224
    object dcpdcpcodigo: TIntegerField
      FieldName = 'dcpcodigo'
    end
    object dcpdcpcampo: TStringField
      FieldName = 'dcpcampo'
      Required = True
      Size = 50
    end
    object dcpdcpdescricao: TStringField
      FieldName = 'dcpdescricao'
      Size = 250
    end
    object dcpdcpspedfiscal: TIntegerField
      FieldName = 'dcpspedfiscal'
      Required = True
    end
  end
  object dtb: TUniQuery
    SQL.Strings = (
      'select * from dtb')
    Left = 76
    Top = 224
    object dtbdtbcodigo: TIntegerField
      FieldName = 'dtbcodigo'
    end
    object dtbdtbtabela: TStringField
      FieldName = 'dtbtabela'
      Required = True
      Size = 50
    end
    object dtbdtbdescricao: TStringField
      FieldName = 'dtbdescricao'
      Size = 250
    end
  end
  object coa: TUniQuery
    SQL.Strings = (
      'select * from coa limit 1')
    Left = 40
    Top = 224
    object coacoacodigo: TIntegerField
      FieldName = 'coacodigo'
    end
    object coadtbcodigo: TIntegerField
      FieldName = 'dtbcodigo'
      Required = True
    end
    object coadcpcodigo: TIntegerField
      FieldName = 'dcpcodigo'
      Required = True
    end
    object coacoadata: TDateField
      FieldName = 'coadata'
      Required = True
    end
    object coausrcodigo: TIntegerField
      FieldName = 'usrcodigo'
      Required = True
    end
    object coacoaanterior: TStringField
      FieldName = 'coaanterior'
      Size = 250
    end
    object coacoaatual: TStringField
      FieldName = 'coaatual'
      Size = 250
    end
  end
  object pfr: TUniQuery
    SQL.Strings = (
      
        'select * from pfr where usrcodigo=:usrcodigo and pfrnomeform=:pf' +
        'rnomeform')
    Left = 384
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfrnomeform'
        Value = nil
      end>
    object pfrpfrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pfrcodigo'
    end
    object pfrpfrnomeform: TStringField
      FieldName = 'pfrnomeform'
      Size = 50
    end
    object pfrpfrlargura: TIntegerField
      FieldName = 'pfrlargura'
    end
    object pfrpfraltura: TIntegerField
      FieldName = 'pfraltura'
    end
    object pfrusrcodigo: TIntegerField
      FieldName = 'usrcodigo'
    end
  end
  object psf: TUniQuery
    SQL.Strings = (
      'select * from psf where pfrcodigo=:pfrcodigo')
    Left = 428
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pfrcodigo'
        Value = nil
      end>
    object psfpsfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'psfcodigo'
    end
    object psfpfrcodigo: TIntegerField
      FieldName = 'pfrcodigo'
    end
    object psfpsfalinhamento: TIntegerField
      FieldName = 'psfalinhamento'
    end
    object psfpsfposicao: TIntegerField
      FieldName = 'psfposicao'
    end
    object psfpsfnome: TStringField
      FieldName = 'psfnome'
      Size = 50
    end
  end
end
