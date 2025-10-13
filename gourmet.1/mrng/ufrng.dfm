inherited frng: Tfrng
  ActiveControl = etdcodigo
  Caption = 'Renegocia'#231#227'o de Parcelas'
  ClientHeight = 573
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 544
    Width = 1008
    ExplicitTop = 544
    ExplicitWidth = 1008
    inherited bconfirma: TBitBtn
      Left = 854
      ExplicitLeft = 854
    end
    inherited bcancela: TBitBtn
      Left = 929
      ExplicitLeft = 929
    end
    inherited bfechar: TBitBtn
      Left = 789
      ExplicitLeft = 789
    end
  end
  inherited paginas: TPageControl
    Width = 1008
    Height = 544
    ExplicitWidth = 1008
    ExplicitHeight = 544
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 516
      object Label1: TLabel
        Left = 16
        Top = 27
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = rngchave
      end
      object LbEntidade: TLabel
        Left = 16
        Top = 54
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 16
        Top = 81
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Negociador'
        FocusControl = clbcodigo
      end
      object PlParcelas: TPanel
        Left = 80
        Top = 135
        Width = 905
        Height = 340
        CustomHint = BalloonHint
        TabOrder = 0
        object DBGLista: TDBGrid
          Left = 1
          Top = 1
          Width = 903
          Height = 298
          CustomHint = BalloonHint
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = Dvbaixa
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGListaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfipgtocapital'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidescontos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixado'
              Width = 80
              Visible = True
            end>
        end
        object PlDetalhe: TPanel
          Left = 1
          Top = 299
          Width = 903
          Height = 40
          CustomHint = BalloonHint
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 1
          object GroupBox1: TGroupBox
            Left = 792
            Top = 1
            Width = 110
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' TOTAL R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlTot: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = 572
            Top = 1
            Width = 110
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' Juros R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlJuros: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 462
            Top = 1
            Width = 110
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' Multas R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlMultas: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 682
            Top = 1
            Width = 110
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' Descontos R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object PlDescont: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox4: TGroupBox
            Left = 352
            Top = 1
            Width = 110
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' Principal R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object PlPrincipal: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            Left = 307
            Top = 1
            Width = 45
            Height = 38
            CustomHint = BalloonHint
            Align = alRight
            Caption = ' Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object PlQtdeRest: TPanel
              Left = 2
              Top = 16
              Width = 41
              Height = 20
              CustomHint = BalloonHint
              Align = alClient
              BevelOuter = bvLowered
              Caption = '0'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object rngchave: TDBEdit
        Left = 80
        Top = 24
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rngchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 80
        Top = 51
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object clbcodigo: TDBEdit
        Left = 80
        Top = 78
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bBuscaParcelas: TBitBtn
        Left = 80
        Top = 104
        Width = 124
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Selecionar Parcelas'
        TabOrder = 4
        OnClick = bBuscaParcelasClick
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 96
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT rng.rngchave'
      '     , rng.etdcodigo'
      '     , rng.clbcodigo'
      '     , rng.ltechave'
      '     , rng.titcodigo'
      'FROM rng'
      'WHERE rng.rngchave = :rngchave')
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object registrorngchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rngchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 60
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Negociador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 30
      Lookup = True
    end
    object registroltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object registrotitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  inherited dcl: TUniQuery
    Left = 604
    Top = 112
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object vbaixa: TVirtualTable
    IndexFieldNames = 'rfivencimento, rfiemissao, rfichave'
    FieldDefs = <
      item
        Name = 'rfichave'
        DataType = ftInteger
      end
      item
        Name = 'rfinumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'rfiemissao'
        DataType = ftDate
      end
      item
        Name = 'rfivencimento'
        DataType = ftDate
      end
      item
        Name = 'rfisaldocapital'
        DataType = ftFloat
      end
      item
        Name = 'rfipgtocapital'
        DataType = ftFloat
      end
      item
        Name = 'rfijuros'
        DataType = ftFloat
      end
      item
        Name = 'rfimulta'
        DataType = ftFloat
      end
      item
        Name = 'rfidescontos'
        DataType = ftFloat
      end
      item
        Name = 'rfisaldogeral'
        DataType = ftFloat
      end
      item
        Name = 'rfibaixado'
        DataType = ftFloat
      end>
    Left = 324
    Top = 260
    Data = {
      04000B0008007266696368617665030000000000000009007266696E756D6572
      6F01001400000000000A00726669656D697373616F09000000000000000D0072
      666976656E63696D656E746F09000000000000000F0072666973616C646F6361
      706974616C06000000000000000E007266697067746F6361706974616C060000
      000000000008007266696A75726F73060000000000000008007266696D756C74
      6106000000000000000C00726669646573636F6E746F7306000000000000000D
      0072666973616C646F676572616C06000000000000000A007266696261697861
      646F0600000000000000000000000000}
    object vbaixarfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object vbaixarfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object vbaixarfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object vbaixarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object vbaixarfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfipgtocapital: TFloatField
      DisplayLabel = 'Baixa Capital R$'
      FieldName = 'rfipgtocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfidescontos: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidescontos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vbaixarfibaixado: TFloatField
      DisplayLabel = 'Total Baixa R$'
      FieldName = 'rfibaixado'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dvbaixa: TUniDataSource
    DataSet = vbaixa
    Left = 332
    Top = 324
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT e.etdcodigo'
      '     , e.etdidentificacao'
      '     , e.etdapelido'
      'FROM etd e')
    Left = 409
    Top = 295
    object etdetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdetdapelido: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'etdapelido'
      Size = 30
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT c.clbcodigo'
      '     , c.clbidentificacao'
      'FROM clb c')
    Left = 448
    Top = 295
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'select  mltchave, mfichave, ltechave from mlt limit 1')
    Left = 684
    Top = 220
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object vrn: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT vr.rfichave'
      '     , vr.rfinumero'
      '     , vr.rfiemissao'
      '     , vr.rfivencimento'
      '     , vr.rfibaixadocapital'
      '     , vr.rfidesconto'
      '     , vr.rfimulta'
      '     , vr.rfijuros'
      
        '     , (vr.rfibaixadocapital - vr.rfidesconto + vr.rfimulta + vr' +
        '.rfijuros) AS rfisaldogeral'
      'FROM v_rfi vr'
      '  JOIN (SELECT'
      '      m.rfichave'
      '    , r.titcodigo'
      '    FROM mfi m'
      '      JOIN mlt m1'
      '        ON m.mfichave = m1.mfichave'
      '      JOIN rng r'
      '        ON m1.ltechave = r.ltechave'
      '    WHERE r.rngchave = :rngchave'
      '    GROUP BY m.rfichave) tRng'
      '    ON vr.rfichave = tRng.rfichave'
      
        '    AND vr.titcodigo <> tRng.titcodigo -- Identifica as parcelas' +
        ' Renegociadas')
    Left = 752
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object vrnrfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object vrnrfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object vrnrfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object vrnrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object vrnrfibaixadocapital: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrnrfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrnrfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrnrfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrnrfisaldogeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 492
    Top = 367
  end
end
