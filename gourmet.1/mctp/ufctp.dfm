inherited fctp: Tfctp
  ActiveControl = ctpfuncao
  Caption = 'Tecla'
  ClientHeight = 267
  ClientWidth = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 238
    Width = 475
    inherited bconfirma: TBitBtn
      Left = 321
    end
    inherited bcancela: TBitBtn
      Left = 396
    end
    inherited bfechar: TBitBtn
      Left = 256
    end
  end
  inherited paginas: TPageControl
    Width = 475
    Height = 238
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ctpcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o'
      end
      object Label3: TLabel
        Left = 16
        Top = 60
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tecla'
      end
      object Label4: TLabel
        Left = 16
        Top = 87
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modalidade'
        FocusControl = mdacodigo
      end
      object ctptecla: TDBComboBox
        Left = 96
        Top = 57
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctptecla'
        DataSource = DSRegistro
        Items.Strings = (
          'N'#227'o se Aplica'
          'F2'
          'F3'
          'F4'
          'F5'
          'F6'
          'F7'
          'F8'
          'F9'
          'F10'
          'F11'
          'F12'
          'A'
          'B'
          'C'
          'D'
          'E'
          'F'
          'G'
          'H'
          'I'
          'J'
          'K'
          'L'
          'M'
          'N'
          'O'
          'P'
          'R'
          'S'
          'T'
          'U'
          'V'
          'W'
          'X'
          'Y'
          'Z'
          '<-'
          'ESC'
          'DEL'
          'S BAI'
          'S CIM'
          'S ESQ'
          'S DIR'
          'PgUp'
          'PgDw'
          'Home'
          'End'
          'TAB'
          '*')
        TabOrder = 2
      end
      object ctpcodigo: TDBEdit
        Left = 96
        Top = 3
        Width = 42
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctpativo: TDBCheckBox
        Left = 13
        Top = 183
        Width = 97
        Height = 17
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Ativa'
        DataField = 'ctpativo'
        DataSource = DSRegistro
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object ctpfuncao: TDBComboBox
        Left = 96
        Top = 30
        Width = 309
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctpfuncao'
        DataSource = DSRegistro
        Items.Strings = (
          'Dinheiro'
          'Cheque'
          'Cheque Pr'#233
          'Ticket'
          'Vale'
          'Requisi'#231#227'o'
          'Conv'#234'nio'
          'Cart'#227'o Cr'#233'dito'
          'Cart'#227'o D'#233'bito'
          'Or'#231'amento'
          'Consulta Pre'#231'o'
          'Desconto'
          'Abre Gaveta'
          'Cancela Item'
          'Cancela Cupom'
          'Leitura X'
          'Redu'#231#227'o Z'
          'Fecha Caixa'
          'Sangria'
          'Suprimento de Caixa'
          'Leitura de Mem'#243'ria'
          'Multiplica'
          'Sub-Total'
          'Pr'#243'ximo Registro'
          'Registro Anterior'
          'Lista Produtos'
          'Lista Clientes'
          'Abre Venda'
          'Volta Venda'
          'Carrega Or'#231'amento'
          'Fechar Programa'
          'Abre Or'#231'amento'
          'Resumo do Caixa'
          'Tela Or'#231'amento'
          'Minimiza Terminal'
          'Fechamento'
          'Abertura')
        TabOrder = 1
      end
      object ctptroco: TDBRadioGroup
        Left = 96
        Top = 115
        Width = 309
        Height = 62
        CustomHint = BalloonHint
        Caption = ' Tipo de Troco '
        Columns = 2
        DataField = 'ctptroco'
        DataSource = DSRegistro
        Items.Strings = (
          'N'#227'o se Aplica'
          'Dinnheiro'
          'Cheque'
          'Vale')
        ParentBackground = True
        TabOrder = 4
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object mdacodigo: TDBEdit
        Left = 96
        Top = 84
        Width = 42
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdacodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 224
    Top = 28
  end
  inherited cfg: tuniquery
    Left = 428
    Top = 68
  end
  inherited consulta: tuniquery
    Left = 360
    Top = 76
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select ctpcodigo,ctpfuncao, ctptecla,ctpativo,mdacodigo, ctptroc' +
        'o from ctp'
      'where ctpcodigo=:ctpcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ctpcodigo'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctpcodigo'
        ParamType = ptUnknown
      end>
    object registroctpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctpcodigo'
      Required = True
    end
    object registroctpfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'ctpfuncao'
      Required = True
      Size = 50
    end
    object registroctptecla: TStringField
      DisplayLabel = 'Tecla'
      FieldName = 'ctptecla'
      Required = True
      Size = 5
    end
    object registroctpativo: TStringField
      DisplayLabel = 'Ativa'
      FieldName = 'ctpativo'
      Required = True
      Size = 1
    end
    object registromdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object registromdaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdaidentificacao'
      LookupDataSet = mda
      LookupKeyFields = 'mdacodigo'
      LookupResultField = 'mdaidentificacao'
      KeyFields = 'mdacodigo'
      Lookup = True
    end
    object registroctptroco: TIntegerField
      FieldName = 'ctptroco'
    end
  end
  inherited dcp: tuniquery
    Left = 396
    Top = 16
  end
  inherited dtb: tuniquery
    Left = 352
    Top = 16
  end
  inherited coa: tuniquery
    Left = 316
    Top = 16
  end
  object mda: tuniquery
    SQL.Strings = (
      'select mdacodigo, mdaidentificacao from mda')
    Params = <>
    Left = 292
    Top = 156
    object mdamdacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mdacodigo'
    end
    object mdamdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
    end
  end
end
