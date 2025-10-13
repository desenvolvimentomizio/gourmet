inherited fhmd: Tfhmd
  ActiveControl = hmdtitulo
  Caption = 'Hist'#243'rico do M'#243'dulo'
  ClientHeight = 377
  ClientWidth = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 348
    Width = 615
    inherited bconfirma: TBitBtn
      Left = 461
    end
    inherited bcancela: TBitBtn
      Left = 536
    end
    inherited bfechar: TBitBtn
      Left = 396
    end
  end
  inherited paginas: TPageControl
    Width = 615
    Height = 348
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = hmdchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'T'#237'tulo da Hist'#243'ria'
        FocusControl = hmdtitulo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#243'dulo'
        FocusControl = mdpcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Est'#225'gio'
        FocusControl = tehcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 236
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas previstas'
        FocusControl = hmdhoras
      end
      object Label6: TLabel
        Left = 340
        Top = 236
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. OS'
        FocusControl = pegoschave
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label8: TLabel
        Left = 8
        Top = 263
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas Realizadas'
        FocusControl = hmdhorasreal
      end
      object Label9: TLabel
        Left = 8
        Top = 290
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Prioridade'
        FocusControl = hmdprioridade
      end
      object Label10: TLabel
        Left = 8
        Top = 60
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Projeto'
        FocusControl = prjcodigo
      end
      object hmdchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object hmdtitulo: TDBEdit
        Left = 136
        Top = 30
        Width = 462
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdtitulo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object mdpcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdpcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tehcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tehcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object hmdhoras: TDBEdit
        Left = 136
        Top = 233
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdhoras'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object pegoschave: TDBEdit
        Left = 384
        Top = 233
        Width = 115
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pegoschave'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object hmddescricao: TDBMemo
        Left = 136
        Top = 138
        Width = 462
        Height = 89
        CustomHint = BalloonHint
        DataField = 'hmddescricao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object hmdhorasreal: TDBEdit
        Left = 136
        Top = 260
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdhorasreal'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object hmdprioridade: TDBEdit
        Left = 136
        Top = 287
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdprioridade'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object prjcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prjcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 296
    Top = 292
  end
  inherited registro: tuniquery
    BeforePost = registroBeforePost
    SQL.Strings = (
      
        'select hmdchave, hmdtitulo, hmddescricao, mdpcodigo, tehcodigo, ' +
        'hmdhoras, pegoschave, hmdhorasreal, hmddata, hmdhora, hmdpriorid' +
        'ade, prjcodigo from hmd where hmdchave=:hmdchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'hmdchave'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hmdchave'
        ParamType = ptUnknown
      end>
    object registrohmdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'hmdchave'
    end
    object registrohmdtitulo: TStringField
      DisplayLabel = 'T'#237'tulo da Hist'#243'ria'
      FieldName = 'hmdtitulo'
      Required = True
      Size = 50
    end
    object registrohmddescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hmddescricao'
      Required = True
      Size = 500
    end
    object registromdpcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdpcodigo'
      Required = True
    end
    object registromdpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdpidentificacao'
      LookupDataSet = mdp
      LookupKeyFields = 'mdpcodigo'
      LookupResultField = 'mdpidentificacao'
      KeyFields = 'mdpcodigo'
      Size = 50
      Lookup = True
    end
    object registrotehcodigo: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'tehcodigo'
      Required = True
    end
    object registrotehidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tehidentificacao'
      LookupDataSet = teh
      LookupKeyFields = 'tehcodigo'
      LookupResultField = 'tehidentificacao'
      KeyFields = 'tehcodigo'
      Size = 35
      Lookup = True
    end
    object registrohmdhoras: TIntegerField
      DisplayLabel = 'Horas'
      FieldName = 'hmdhoras'
    end
    object registropegoschave: TStringField
      DisplayLabel = 'Nr. OS'
      FieldName = 'pegoschave'
      Size = 15
    end
    object registrohmdhorasreal: TIntegerField
      FieldName = 'hmdhorasreal'
    end
    object registrohmddata: TDateField
      FieldName = 'hmddata'
    end
    object registrohmdhora: TTimeField
      FieldName = 'hmdhora'
    end
    object registrohmdprioridade: TIntegerField
      FieldName = 'hmdprioridade'
    end
    object registroprjcodigo: TIntegerField
      FieldName = 'prjcodigo'
      Required = True
    end
    object registroprjidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'prjidentificacao'
      LookupDataSet = prj
      LookupKeyFields = 'prjcodigo'
      LookupResultField = 'prjidentificacao'
      KeyFields = 'prjcodigo'
      Size = 35
      Lookup = True
    end
  end
  inherited dcp: tuniquery
    Left = 432
    Top = 36
  end
  inherited dtb: tuniquery
    Left = 388
    Top = 36
  end
  inherited coa: tuniquery
    Left = 352
    Top = 36
  end
  object mdp: tuniquery
    SQL.Strings = (
      'select mdpcodigo, mdpidentificacao from mdp')
    Params = <>
    Left = 88
    Top = 144
    object mdpmdpcodigo: TIntegerField
      FieldName = 'mdpcodigo'
    end
    object mdpmdpidentificacao: TStringField
      FieldName = 'mdpidentificacao'
      Size = 50
    end
  end
  object teh: tuniquery
    SQL.Strings = (
      'select tehcodigo, tehidentificacao from teh')
    Params = <>
    Left = 72
    Top = 180
    object tehtehcodigo: TIntegerField
      FieldName = 'tehcodigo'
    end
    object tehtehidentificacao: TStringField
      FieldName = 'tehidentificacao'
      Size = 35
    end
  end
  object prj: tuniquery
    SQL.Strings = (
      'select prjcodigo, prjidentificacao from prj')
    Params = <>
    Left = 272
    Top = 288
    object prjprjcodigo: TIntegerField
      FieldName = 'prjcodigo'
    end
    object prjprjidentificacao: TStringField
      FieldName = 'prjidentificacao'
      Size = 35
    end
  end
end
