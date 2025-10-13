inherited fraproime: Tfraproime
  Width = 1243
  Height = 647
  ExplicitWidth = 1243
  ExplicitHeight = 647
  inherited PlGeral: TPanel
    Width = 1243
    Height = 647
    ExplicitWidth = 1243
    ExplicitHeight = 647
    inherited SplBotoes: TSplitter
      Height = 627
      ExplicitHeight = 627
    end
    inherited PlBotoes: TPanel
      Height = 627
      ExplicitHeight = 627
      inherited ImageLogoBase: TImage
        Top = 543
        ExplicitTop = 543
      end
      inherited PlInfo: TPanel
        Top = 607
        ExplicitTop = 607
      end
      inherited SBBotoes: TScrollBox
        Height = 543
        ExplicitHeight = 543
      end
    end
    inherited PlLista: TPanel
      Width = 1099
      Height = 627
      ExplicitWidth = 1099
      ExplicitHeight = 627
      inherited SplLista: TSplitter
        Top = 596
        Width = 1099
        ExplicitTop = 596
        ExplicitWidth = 1099
      end
      inherited SpFilter: TSplitter
        Width = 1099
        ExplicitWidth = 1099
      end
      inherited PlRodaPe: TPanel
        Top = 601
        Width = 1099
        ExplicitTop = 601
        ExplicitWidth = 1099
      end
      inherited PlFiltros: TPanel
        Width = 1099
        ExplicitWidth = 1099
      end
      inherited PlSelecao: TPanel
        Width = 1099
        ExplicitWidth = 1099
        inherited GBPlSelecao: TGroupBox
          Width = 1095
          ExplicitWidth = 1095
          inherited DBLista: TDBGrid
            Width = 988
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1099
        Height = 467
        ExplicitWidth = 1099
        ExplicitHeight = 467
        inherited DBGLista: TDBGrid
          Width = 1099
          Height = 442
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'proncm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icmaliquotas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icmaliquotasfora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfopfora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Width = 80
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 442
          Width = 1099
          ExplicitTop = 442
          ExplicitWidth = 1099
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1243
      ExplicitWidth = 1243
      inherited plid: TPanel
        Left = 793
        ExplicitLeft = 793
      end
      inherited PlSair: TPanel
        Left = 1037
        ExplicitLeft = 1037
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  procodigo,'
      '  pronome,'
      '  tpoidentificacao,'
      '  maridentificacao,'
      '  grpidentificacao,'
      '  icmaliquotas,'
      '  proncm,'
      '  prosaldo,'
      '  prosaldodisp,'
      '  sipcodigo,'
      '  proobs,'
      '  proreferencia,'
      '  unisimbolo,'
      '  punprecoav,'
      '  punprecoap,'
      '  tpocodigo,'
      '  proanpcodigo,'
      '  enpcodigo,'
      '  enpendereco,'
      '  propedecomple,'
      '  cpbcodbalanca,'
      '  gracodigo,'
      '  dpridentificacao,'
      '  proconsolidado,'
      '  punpercav,'
      '  punpercap,'
      '  puncusto,'
      '  grpcodigo,'
      '  cstcodigo,'
      '  procest,'
      '  pro.imecodigo,'
      '  probalanca,'
      '  imudtrev,'
      '  imudtultcons,'
      '  pronatrecisenta,'
      '  proabc,'
      '  promargemcontrib,'
      '  proproducao,'
      '  icmaliquotasfora,'
      '  cfocfopfora'
      '  '
      ''
      'FROM  v_pro pro '
      'left join imu on  pro.imuid=imu.imuid'
      '')
    object uqtabelaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelaproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 15
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelaprosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'prosaldo'
    end
    object uqtabelaprosaldodisp: TFloatField
      DisplayLabel = 'Saldo Disp.'
      FieldName = 'prosaldodisp'
    end
    object uqtabelagrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object uqtabelamaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Size = 35
    end
    object uqtabelaicmaliquotas: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object uqtabelaproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object uqtabelaproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uqtabelapunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelapunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object uqtabelatpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object uqtabelatpoidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpoidentificacao'
      Size = 25
    end
    object uqtabelaenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
    end
    object uqtabelaenpendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'enpendereco'
    end
    object uqtabelacpbcodbalanca: TIntegerField
      DisplayLabel = 'Cod.Balan'#231'a'
      FieldName = 'cpbcodbalanca'
    end
    object uqtabelagracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object uqtabeladpridentificacao: TStringField
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'dpridentificacao'
      Size = 30
    end
    object uqtabelaproconsolidado: TIntegerField
      FieldName = 'proconsolidado'
    end
    object uqtabelapunpercav: TFloatField
      DisplayLabel = '% Lucro AV'
      FieldName = 'punpercav'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapunpercap: TFloatField
      DisplayLabel = '% Lucro AP'
      FieldName = 'punpercap'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelapuncusto: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelacstcodigo: TStringField
      DisplayLabel = 'CST/CSOSN'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object uqtabelaprocest: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'procest'
    end
    object uqtabelaimecodigo: TStringField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'imecodigo'
      Size = 50
    end
    object uqtabelaprobalanca: TStringField
      FieldName = 'probalanca'
      Size = 2
    end
    object uqtabelaimudtrev: TDateField
      DisplayLabel = 'Rev.IMENDES'
      FieldName = 'imudtrev'
    end
    object uqtabelaimudtultcons: TDateField
      DisplayLabel = 'Ult. Consulta'
      FieldName = 'imudtultcons'
    end
    object uqtabelapronatrecisenta: TIntegerField
      FieldName = 'pronatrecisenta'
    end
    object uqtabelaproabc: TStringField
      DisplayLabel = 'Classe ABC'
      FieldName = 'proabc'
      Size = 2
    end
    object uqtabelapromargemcontrib: TFloatField
      DisplayLabel = 'Margem Contrib.'
      FieldName = 'promargemcontrib'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object uqtabelaproproducao: TIntegerField
      FieldName = 'proproducao'
    end
    object uqtabelaicmaliquotasfora: TFloatField
      DisplayLabel = 'ICM Fora'
      FieldName = 'icmaliquotasfora'
    end
    object uqtabelacfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object uqtabelacfocfopfora: TStringField
      DisplayLabel = 'CFOP Fora'
      FieldName = 'cfocfopfora'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C0101030005001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end
