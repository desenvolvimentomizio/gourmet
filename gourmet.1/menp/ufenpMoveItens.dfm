inherited fenpMoveItens: TfenpMoveItens
  ActiveControl = enpcodigo
  Caption = 'Mover Itens de Endere'#231'o'
  ClientHeight = 383
  ClientWidth = 743
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 354
    Width = 743
    ExplicitTop = 354
    ExplicitWidth = 743
    inherited bconfirma: TBitBtn
      Left = 589
      ExplicitLeft = 589
    end
    inherited bcancela: TBitBtn
      Left = 664
      ExplicitLeft = 664
    end
    inherited bfechar: TBitBtn
      Left = 524
      ExplicitLeft = 524
    end
  end
  inherited paginas: TPageControl
    Width = 743
    Height = 354
    ExplicitWidth = 743
    ExplicitHeight = 354
    inherited Principal: TTabSheet
      object GBProdutos: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 729
        Height = 185
        Margins.Top = 20
        CustomHint = BalloonHint
        Align = alTop
        Caption = 'Produtos do Setor'
        TabOrder = 0
        object DBGProdutos: TDBGrid
          Left = 2
          Top = 15
          Width = 725
          Height = 168
          CustomHint = BalloonHint
          Align = alClient
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGProdutosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end>
        end
      end
      object GBEnderecos: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 211
        Width = 729
        Height = 82
        CustomHint = BalloonHint
        Align = alTop
        Caption = 'Defini'#231#227'o do Endere'#231'o'
        TabOrder = 1
        object Label1: TLabel
          Left = 66
          Top = 20
          Width = 86
          Height = 16
          CustomHint = BalloonHint
          Caption = 'Endere'#231'o Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 67
          Top = 50
          Width = 85
          Height = 16
          CustomHint = BalloonHint
          Caption = 'Novo Endere'#231'o'
          FocusControl = enpcodigo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EdEnpCodigoOrig: TEdit
          Left = 158
          Top = 17
          Width = 61
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Alignment = taRightJustify
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = EdEnpCodigoOrigEnter
          OnKeyPress = FormKeyPress
        end
        object PnlEnpEnderecoOrig: TPanel
          Left = 225
          Top = 17
          Width = 78
          Height = 22
          CustomHint = BalloonHint
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          BorderWidth = 3
          Caption = '00.00.00.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object enpcodigo: TDBEdit
          Left = 158
          Top = 47
          Width = 61
          Height = 21
          CustomHint = BalloonHint
          DataField = 'enpcodigo'
          DataSource = DSRegistro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pro.procodigo,'
      '  pro.pronome,'
      '  pro.enpcodigo'
      'FROM pro'
      'WHERE pro.enpcodigo = :enpcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'enpcodigo'
        Value = nil
      end>
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object registropronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object registroenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
      Required = True
    end
    object registroenpendereco: TStringField
      FieldKind = fkLookup
      FieldName = 'enpendereco'
      LookupDataSet = enp
      LookupKeyFields = 'enpcodigo'
      LookupResultField = 'enpendereco'
      KeyFields = 'enpcodigo'
      Size = 12
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 112
    Top = 164
  end
  inherited dtb: TUniQuery
    Left = 68
    Top = 164
  end
  inherited coa: TUniQuery
    Left = 32
    Top = 164
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object enp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  enp.enpcodigo,'
      '  enp.enpendereco'
      'FROM enp'
      '  JOIN (SELECT'
      '      enpcodigo AS encodigoSub,'
      
        '      CONVERT(CONCAT(are.areidentificacao, '#39'.'#39', rue.rueidentific' +
        'acao, '#39'.'#39', pde.pdeidentificacao, '#39'.'#39', ane.aneidentificacao), cha' +
        'r) AS enpendereco'
      '    FROM enp,'
      '         are,'
      '         rue,'
      '         pde,'
      '         ane'
      '    WHERE are.arecodigo = enp.arecodigo'
      '    AND rue.ruecodigo = enp.ruecodigo'
      '    AND pde.pdecodigo = enp.pdecodigo'
      '    AND ane.anecodigo = enp.anecodigo) enp'
      '    ON enp.encodigoSub = enp.enpcodigo')
    Left = 368
    Top = 152
    object enpenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
    end
    object enpenpendereco: TStringField
      FieldName = 'enpendereco'
      Size = 12
    end
  end
end
