inherited fenp: Tfenp
  ActiveControl = arecodigo
  Caption = 'Endere'#231'amento de Produtos'
  ClientHeight = 242
  ClientWidth = 484
  ExplicitWidth = 500
  ExplicitHeight = 281
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 213
    Width = 484
    ExplicitTop = 213
    ExplicitWidth = 484
    inherited bconfirma: TBitBtn
      Left = 330
      ExplicitLeft = 330
    end
    inherited bcancela: TBitBtn
      Left = 405
      ExplicitLeft = 405
    end
    inherited bfechar: TBitBtn
      Left = 265
      ExplicitLeft = 265
    end
  end
  inherited paginas: TPageControl
    Width = 484
    Height = 213
    ExplicitWidth = 484
    ExplicitHeight = 213
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 476
      ExplicitHeight = 185
      object Label1: TLabel
        Left = 15
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = enpcodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 30
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = #193'rea'
        FocusControl = arecodigo
      end
      object Label3: TLabel
        Left = 15
        Top = 60
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = 'Prateleira'
        FocusControl = ruecodigo
      end
      object Label4: TLabel
        Left = 15
        Top = 87
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = 'Andar'
        FocusControl = pdecodigo
      end
      object Label5: TLabel
        Left = 15
        Top = 114
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = 'Caixa'
        FocusControl = anecodigo
      end
      object enpcodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'enpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object arecodigo: TDBEdit
        Left = 120
        Top = 30
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'arecodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = arecodigoExit
      end
      object ruecodigo: TDBEdit
        Left = 120
        Top = 57
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ruecodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = arecodigoExit
      end
      object pdecodigo: TDBEdit
        Left = 120
        Top = 84
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdecodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = arecodigoExit
      end
      object anecodigo: TDBEdit
        Left = 120
        Top = 111
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anecodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = arecodigoExit
      end
      object PnlEndereco: TPanel
        Left = 120
        Top = 149
        Width = 185
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o: 0.0.0.0'
        TabOrder = 5
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfg.cfgcodigo,'
      '  cfgmenpnivel1,'
      '  cfgmenpnivel2,'
      '  cfgmenpnivel3,'
      '  cfgmenpnivel4,'
      '  cfgmenpnivel5'
      'FROM cfg,cfgmenp'
      'WHERE cfg.cfgcodigo = cfgmenp.cfgcodigo'
      'and cfg.flacodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmenpnivel1: TStringField
      FieldName = 'cfgmenpnivel1'
      Size = 50
    end
    object cfgcfgmenpnivel2: TStringField
      FieldName = 'cfgmenpnivel2'
      Size = 50
    end
    object cfgcfgmenpnivel3: TStringField
      FieldName = 'cfgmenpnivel3'
      Size = 50
    end
    object cfgcfgmenpnivel4: TStringField
      FieldName = 'cfgmenpnivel4'
      Size = 50
    end
    object cfgcfgmenpnivel5: TStringField
      FieldName = 'cfgmenpnivel5'
      Size = 50
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  enp.enpcodigo,'
      '  enp.arecodigo,'
      '  enp.ruecodigo,'
      '  enp.pdecodigo,'
      '  enp.anecodigo,'
      '  enp.flacodigo'
      'FROM enp'
      'WHERE enp.enpcodigo = :enpcodigo')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'enpcodigo'
        Value = nil
      end>
    object registroenpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'enpcodigo'
    end
    object registroarecodigo: TIntegerField
      DisplayLabel = #193'rea'
      FieldName = 'arecodigo'
      Required = True
    end
    object registroareidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'areidentificacao'
      LookupDataSet = are
      LookupKeyFields = 'arecodigo'
      LookupResultField = 'areidentificacao'
      KeyFields = 'arecodigo'
      Size = 4
      Lookup = True
    end
    object registroruecodigo: TIntegerField
      DisplayLabel = 'Rua'
      FieldName = 'ruecodigo'
      Required = True
    end
    object registrorueidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'rueidentificacao'
      LookupDataSet = rue
      LookupKeyFields = 'ruecodigo'
      LookupResultField = 'rueidentificacao'
      KeyFields = 'ruecodigo'
      Size = 4
      Lookup = True
    end
    object registropdecodigo: TIntegerField
      DisplayLabel = 'Pr'#233'dio'
      FieldName = 'pdecodigo'
      Required = True
    end
    object registropdeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pdeidentificacao'
      LookupDataSet = pde
      LookupKeyFields = 'pdecodigo'
      LookupResultField = 'pdeidentificacao'
      KeyFields = 'pdecodigo'
      Size = 4
      Lookup = True
    end
    object registroanecodigo: TIntegerField
      DisplayLabel = 'Andar'
      FieldName = 'anecodigo'
      Required = True
    end
    object registroaneidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'aneidentificacao'
      LookupDataSet = ane
      LookupKeyFields = 'anecodigo'
      LookupResultField = 'aneidentificacao'
      KeyFields = 'anecodigo'
      Size = 4
      Lookup = True
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 432
    Top = 165
  end
  inherited dtb: TUniQuery
    Left = 399
    Top = 165
  end
  inherited coa: TUniQuery
    Left = 366
    Top = 164
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object are: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  are.arecodigo,'
      '  are.areidentificacao'
      'FROM are')
    Left = 208
    Top = 40
    object arearecodigo: TIntegerField
      FieldName = 'arecodigo'
    end
    object areareidentificacao: TStringField
      DisplayWidth = 4
      FieldName = 'areidentificacao'
      Size = 4
    end
  end
  object rue: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rue.ruecodigo,'
      '  rue.rueidentificacao'
      'FROM rue')
    Left = 240
    Top = 40
    object rueruecodigo: TIntegerField
      FieldName = 'ruecodigo'
    end
    object ruerueidentificacao: TStringField
      DisplayWidth = 4
      FieldName = 'rueidentificacao'
      Size = 4
    end
  end
  object pde: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pde.pdecodigo,'
      '  pde.pdeidentificacao'
      'FROM pde')
    Left = 272
    Top = 40
    object pdepdecodigo: TIntegerField
      FieldName = 'pdecodigo'
    end
    object pdepdeidentificacao: TStringField
      DisplayWidth = 4
      FieldName = 'pdeidentificacao'
      Size = 4
    end
  end
  object ane: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ane.anecodigo,'
      '  ane.aneidentificacao'
      'FROM ane')
    Left = 304
    Top = 40
    object aneanecodigo: TIntegerField
      FieldName = 'anecodigo'
    end
    object aneaneidentificacao: TStringField
      DisplayWidth = 4
      FieldName = 'aneidentificacao'
      Visible = False
      Size = 4
    end
  end
  object ConsultaEnp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  enp.enpcodigo'
      'FROM enp'
      'WHERE enp.arecodigo = :arecodigo'
      'AND enp.ruecodigo = :ruecodigo'
      'AND enp.pdecodigo = :pdecodigo'
      'AND enp.anecodigo = :anecodigo'
      'AND enp.apecodigo = :apecodigo')
    Left = 400
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'arecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ruecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pdecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'apecodigo'
        Value = nil
      end>
  end
end
