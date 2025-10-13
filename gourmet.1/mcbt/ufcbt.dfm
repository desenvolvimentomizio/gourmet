object fcbt: Tfcbt
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Carga de Balan'#231'as'
  ClientHeight = 208
  ClientWidth = 402
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
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 179
    Height = 13
    Caption = 'Carregando dados para processar ...'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 283
    Height = 13
    Caption = 'Gerando arquivo de PRODUTOS da carga para balan'#231'as ...'
  end
  object Label3: TLabel
    Left = 24
    Top = 142
    Width = 314
    Height = 13
    Caption = 'Gerando arquivo de TECLAS/SETORES da carga para balan'#231'as ...'
  end
  object mcarregadados: TProgressBar
    Left = 24
    Top = 40
    Width = 353
    Height = 17
    Smooth = True
    TabOrder = 0
  end
  object mgeraarquivopro: TProgressBar
    Left = 24
    Top = 104
    Width = 353
    Height = 17
    Smooth = True
    TabOrder = 1
  end
  object mgeraarquivotcl: TProgressBar
    Left = 24
    Top = 166
    Width = 353
    Height = 17
    Smooth = True
    TabOrder = 2
  end
  object proToledo: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    FieldDefs = <
      item
        Name = 'departamento'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'etiqueta'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'codigo'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'preco'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'validade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 25
      end>
    Left = 360
    Top = 72
    Data = {
      030007000C00646570617274616D656E746F0100020000000000080065746971
      75657461010002000000000004007469706F01000100000000000600636F6469
      676F01000600000000000500707265636F0100060000000000080076616C6964
      6164650100030000000000090064657363726963616F01001900000000000000
      00000000}
    object proToledodepartamento: TStringField
      DisplayLabel = 'Dp'
      FieldName = 'departamento'
      Size = 2
    end
    object proToledoetiqueta: TStringField
      DisplayLabel = 'ET'
      FieldName = 'etiqueta'
      Size = 2
    end
    object proToledotipo: TStringField
      DisplayLabel = 'T'
      DisplayWidth = 2
      FieldName = 'tipo'
      Size = 2
    end
    object proToledocodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Size = 6
    end
    object proToledopreco: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Size = 6
    end
    object proToledovalidade: TStringField
      DisplayLabel = 'Val'
      FieldName = 'validade'
      Size = 3
    end
    object proToledodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 25
    end
  end
  object tclToledo: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    FieldDefs = <
      item
        Name = 'teccodigo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tecnumero'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tectecla'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tecproduto'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tecnome'
        DataType = ftString
        Size = 8
      end>
    Left = 352
    Data = {
      030005000900746563636F6469676F010002000000000009007465636E756D65
      726F010001000000000008007465637465636C6101000200000000000A007465
      6370726F6475746F010006000000000007007465636E6F6D6501000800000000
      00000000000000}
    object tclToledoteccodigo: TStringField
      FieldName = 'teccodigo'
      Size = 2
    end
    object tclToledotecnumero: TStringField
      FieldName = 'tecnumero'
      Size = 1
    end
    object tclToledotectecla: TStringField
      FieldName = 'tectecla'
      Size = 2
    end
    object tclToledotecproduto: TStringField
      FieldName = 'tecproduto'
      Size = 6
    end
    object tclToledotecnome: TStringField
      FieldName = 'tecnome'
      Size = 8
    end
  end
  object consulta: TUniQuery
    Left = 240
    Top = 65528
  end
  object proFilizola: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Left = 232
    Top = 64
    Data = {03000000000000000000}
    object proFilizolacodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Size = 6
    end
    object proFilizolatipo: TStringField
      DisplayLabel = 'T'
      FieldName = 'tipo'
      Size = 1
    end
    object proFilizoladescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 22
    end
    object proFilizolapreco: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Size = 7
    end
    object proFilizolavalidade: TStringField
      DisplayLabel = 'Val'
      FieldName = 'validade'
      Size = 3
    end
    object proFilizolabarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'barra'
      Size = 15
    end
  end
  object proSetorFilizola: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Left = 312
    Top = 64
    Data = {03000000000000000000}
    object proSetorFilizolasetor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'setor'
      Size = 12
    end
    object proSetorFilizolacodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Size = 6
    end
    object proSetorFilizolaindice: TStringField
      DisplayLabel = 'Ind.'
      FieldName = 'indice'
      Size = 4
    end
    object proSetorFilizolatecla: TStringField
      DisplayLabel = 'Tec.'
      FieldName = 'tecla'
      Size = 3
    end
  end
  object executa: TTimer
    Enabled = False
    Interval = 500
    OnTimer = executaTimer
    Left = 176
    Top = 8
  end
end
