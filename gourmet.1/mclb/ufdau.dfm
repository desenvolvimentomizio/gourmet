inherited fdau: Tfdau
  Caption = 'Direitos de Acesso'
  ClientHeight = 658
  ClientWidth = 999
  ExplicitWidth = 1015
  ExplicitHeight = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 629
    Width = 999
    Alignment = taLeftJustify
    ExplicitTop = 629
    ExplicitWidth = 999
    inherited bconfirma: TBitBtn
      Left = 845
      Caption = 'Fechar'
      ExplicitLeft = 845
    end
    inherited bcancela: TBitBtn
      Left = 920
      Visible = False
      ExplicitLeft = 920
    end
    inherited bfechar: TBitBtn
      Left = 780
      ExplicitLeft = 780
    end
  end
  inherited paginas: TPageControl
    Width = 999
    Height = 629
    ExplicitWidth = 999
    ExplicitHeight = 629
    inherited Principal: TTabSheet
      object SlDireitos: TSplitter
        Left = 298
        Top = 53
        Height = 548
        CustomHint = BalloonHint
        Align = alRight
      end
      object PlModulos: TPanel
        Left = 0
        Top = 53
        Width = 298
        Height = 548
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object PlTituloModulo: TPanel
          Left = 4
          Top = 4
          Width = 290
          Height = 68
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object PlTitulodosModulos: TPanel
            Left = 0
            Top = 41
            Width = 290
            Height = 27
            CustomHint = BalloonHint
            Align = alBottom
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 4
            Caption = ' M'#243'dulos do Sistema'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object SBModulos: TScrollBox
          Left = 4
          Top = 72
          Width = 290
          Height = 440
          CustomHint = BalloonHint
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
        end
        object plBotoesPermissoes: TPanel
          Left = 4
          Top = 512
          Width = 290
          Height = 32
          CustomHint = BalloonHint
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 3
          TabOrder = 2
          object btAutorizarTodos: TBitBtn
            Left = 184
            Top = 3
            Width = 103
            Height = 26
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Autorizar TODOS'
            TabOrder = 0
            OnClick = btAutorizarTodosClick
          end
          object btNegarTodos: TBitBtn
            Left = 81
            Top = 3
            Width = 103
            Height = 26
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Negar TODOS'
            TabOrder = 1
            OnClick = btNegarTodosClick
          end
        end
      end
      object PlPermicoes: TPanel
        Left = 301
        Top = 53
        Width = 690
        Height = 548
        CustomHint = BalloonHint
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object PlDisponiveis: TPanel
          Left = 0
          Top = 30
          Width = 320
          Height = 518
          CustomHint = BalloonHint
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 0
          object PlTituloDisponiveis: TPanel
            Left = 10
            Top = 10
            Width = 300
            Height = 20
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 4
            Caption = ' Permiss'#245'es Dispon'#237'veis'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object lvGroups: TListView
            AlignWithMargins = True
            Left = 11
            Top = 31
            Width = 298
            Height = 304
            Hint = 'Double click to expand / collapse sections'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            CustomHint = BalloonHint
            Align = alClient
            BevelKind = bkTile
            BorderStyle = bsNone
            Columns = <
              item
                Caption = 'Permiss'#227'o'
                Width = 180
              end
              item
                Caption = 'C'#243'digo'
                Width = 80
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MultiSelect = True
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            SmallImages = listViewImages
            TabOrder = 1
            ViewStyle = vsReport
            OnAdvancedCustomDrawItem = lvGroupsAdvancedCustomDrawItem
            OnClick = lvGroupsClick
            OnDblClick = lvGroupsDblClick
            OnDragOver = lvGroupsDragOver
          end
          object plRelDis: TPanel
            Left = 10
            Top = 336
            Width = 300
            Height = 172
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            object plTitRelDis: TPanel
              Left = 0
              Top = 0
              Width = 300
              Height = 24
              CustomHint = BalloonHint
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              BorderWidth = 4
              Caption = 'Relat'#243'rios Dispon'#237'veis'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBGListaDis: TDBGrid
              Left = 0
              Top = 24
              Width = 300
              Height = 148
              CustomHint = BalloonHint
              Align = alClient
              DataSource = DRelDis
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'relidentificacao'
                  Width = 250
                  Visible = True
                end>
            end
          end
        end
        object PlConcedidos: TPanel
          Left = 370
          Top = 30
          Width = 320
          Height = 518
          CustomHint = BalloonHint
          Align = alRight
          BevelOuter = bvNone
          BorderWidth = 10
          TabOrder = 1
          object PlTituloConcedidos: TPanel
            Left = 10
            Top = 10
            Width = 300
            Height = 20
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 4
            Caption = ' Permiss'#245'es Concedidas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object lvGroupsPerm: TListView
            AlignWithMargins = True
            Left = 11
            Top = 31
            Width = 298
            Height = 305
            Hint = 'Double click to expand / collapse sections'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            CustomHint = BalloonHint
            Align = alClient
            BevelKind = bkTile
            BorderStyle = bsNone
            Columns = <
              item
                Caption = 'Permiss'#227'o'
                Width = 180
              end
              item
                Caption = 'C'#243'digo'
                Width = 80
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MultiSelect = True
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            SmallImages = listViewImages
            TabOrder = 1
            ViewStyle = vsReport
            OnAdvancedCustomDrawItem = lvGroupsPermAdvancedCustomDrawItem
            OnClick = lvGroupsPermClick
            OnDblClick = lvGroupsPermDblClick
            OnDragDrop = lvGroupsPermDragDrop
          end
          object plRelAut: TPanel
            Left = 10
            Top = 337
            Width = 300
            Height = 171
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 300
              Height = 24
              CustomHint = BalloonHint
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              BorderWidth = 4
              Caption = 'Relat'#243'rios Autorizados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBGListaAut: TDBGrid
              Left = 0
              Top = 24
              Width = 300
              Height = 147
              CustomHint = BalloonHint
              Align = alClient
              DataSource = DRelAut
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'relidentificacao'
                  Width = 250
                  Visible = True
                end>
            end
          end
        end
        object PlDescricao: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 30
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 2
          object pldescricaodireito: TPanel
            Left = 4
            Top = 4
            Width = 682
            Height = 22
            CustomHint = BalloonHint
            Align = alClient
            BevelOuter = bvNone
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object PlBotoesLiberacao: TPanel
          Left = 320
          Top = 30
          Width = 50
          Height = 518
          CustomHint = BalloonHint
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object SBIncluirUm: TSpeedButton
            Left = 15
            Top = 120
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '>'
            OnClick = SBIncluirUmClick
          end
          object SBIncluirTodos: TSpeedButton
            Left = 15
            Top = 148
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '>>'
            OnClick = SBIncluirTodosClick
          end
          object SBExcluirUn: TSpeedButton
            Left = 15
            Top = 188
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '<'
            OnClick = SBExcluirUnClick
          end
          object SBExcluirTodos: TSpeedButton
            Left = 15
            Top = 216
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '<<'
            OnClick = SBExcluirTodosClick
          end
          object SBIncluirUmRel: TSpeedButton
            Left = 15
            Top = 390
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '>'
            OnClick = SBIncluirUmRelClick
          end
          object SBExcluirUnRel: TSpeedButton
            Left = 15
            Top = 456
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '<'
            OnClick = SBExcluirUnRelClick
          end
          object SBIncluirTodosRel: TSpeedButton
            Left = 15
            Top = 418
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '>>'
            OnClick = SBIncluirTodosRelClick
          end
          object SBExcluirTodosRel: TSpeedButton
            Left = 15
            Top = 484
            Width = 23
            Height = 22
            CustomHint = BalloonHint
            Caption = '<<'
            OnClick = SBExcluirTodosRelClick
          end
        end
      end
      object PlTopo: TPanel
        Left = 0
        Top = 0
        Width = 991
        Height = 53
        CustomHint = BalloonHint
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 15
        TabOrder = 2
        object PlColaborador: TPanel
          Left = 15
          Top = 15
          Width = 961
          Height = 23
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object clbcodigo: TDBText
            Left = 133
            Top = 1
            Width = 65
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            Alignment = taCenter
            DataField = 'clbcodigo'
            DataSource = DSRegistro
          end
          object clbidentificacao: TDBText
            Left = 198
            Top = 1
            Width = 607
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            DataField = 'clbidentificacao'
            DataSource = DSRegistro
          end
          object pleticolaborador: TPanel
            Left = 1
            Top = 1
            Width = 132
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Colaborador: '
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01-08-002'
  end
  inherited DSRegistro: TUniDataSource
    Left = 232
    Top = 416
  end
  inherited cfg: TUniQuery
    Left = 220
    Top = 204
  end
  inherited consulta: TUniQuery
    Left = 316
    Top = 216
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clb.clbcodigo,'
      '  clb.clbidentificacao'
      'FROM clb'
      'WHERE clb.clbcodigo = :clbcodigo')
    Left = 96
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  inherited dcp: TUniQuery
    Left = 284
    Top = 65520
  end
  inherited dtb: TUniQuery
    Left = 204
    Top = 65520
  end
  inherited coa: TUniQuery
    Left = 260
    Top = 65520
  end
  inherited pfr: TUniQuery
    Left = 208
    Top = 280
  end
  inherited psf: TUniQuery
    Left = 156
    Top = 152
  end
  inherited dcl: TUniQuery
    Left = 560
    Top = 228
  end
  inherited cau: TUniQuery
    Left = 564
    Top = 280
  end
  inherited err: TUniQuery
    Left = 504
    Top = 280
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ImageList1: TImageList
    Left = 476
    Top = 212
    Bitmap = {
      494C0101010009002C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000F9FB
      FB00ADCDD700DAE8EB00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEE3
      E8006EACBD0068BAC4007DCCD0009ED3D700C2D9DE00EBF0F100FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000093C2
      CC0060A9B8009DD1D800A9DEE20086C5CF0063A5B8004295AA0092BFCB00B8DD
      E000DBEBEC00F8F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000062A7
      B6006DB4C000A1D7DD00AFDDE30092C0CD005EA3B70063A6BA00A5C9D50096D7
      DB0086CCD4008CBBCA00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAF2F3004C9E
      AF0088C3CD00B3E0E500AED8DF007CB1C0004794A90065A5B6009CCED700B6E2
      E7009FCDD700A6C6D20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5D4DB0062AA
      B800A1D1D900BEE4E800A7CED8006BA5B7004C97AB007FB5C300AAD9DF00A8DB
      E10077B9C600BED8DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000088BBC60082BA
      C700B9DEE400C4E4E900A0C4D1005A9EB20060A0B30099C5D000B5E0E5009ED3
      DB0068ADBD00F0F5F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC0065A8B70099C9
      D300C4E5EA00C3DFE60097BBCB0053A0B4007FAFC000ADD3DC00B6E2E6008EC7
      D20085B9C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBF3F4006EABB80096CF
      D700B8E3E800AFD2DB007BAFC10058A3B7009CBFCD00B9DDE400AFDDE3007BBA
      C700B8D4DC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000626262008A92
      9300DBEFF200AFD1DA005EA3B50061A3B60099C6D100B0DFE40099D1D90067AC
      BD00EBF1F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033333300B2B2
      B2000000000000000000F7FAFB00D1E4E800BBDEE300A0D9DD0072BFCA0073B2
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20021212100B9B9
      B90000000000000000000000000000000000000000008F8F8F006A787A00D6E8
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED002E2E2E009797
      9700FDFDFD00000000000000000000000000FDFDFD004C4C4C00AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C004E4E
      4E00DCDCDC00FDFDFD0000000000FDFDFD00ACACAC0027272700ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E4005F5F
      5F00505050008B8B8B00A4A4A4007B7B7B00292929008D8D8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F500B6B6B60083838300747474007F7F7F00B6B6B600FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E1FF000000000000E01F000000000000
      E003000000000000E001000000000000C003000000000000C003000000000000
      C00300000000000080070000000000008007000000000000C007000000000000
      CC0F0000000000008F8F000000000000871F000000000000C21F000000000000
      C03F000000000000E03F00000000000000000000000000000000000000000000
      000000000000}
  end
  object mdl: TUniQuery
    SQL.Strings = (
      
        'select * from mdl order by mdlcodigo, mdlsubgrupo, mdlidentifica' +
        'cao')
    Left = 200
    Top = 340
    object mdlmdlcodigo: TIntegerField
      FieldName = 'mdlcodigo'
    end
    object mdlmdlidentificacao: TStringField
      FieldName = 'mdlidentificacao'
      Size = 50
    end
    object mdlmdlconfig: TIntegerField
      FieldName = 'mdlconfig'
    end
    object mdlmdlsubgrupo: TStringField
      FieldName = 'mdlsubgrupo'
      Size = 50
    end
  end
  object dauclb: TUniQuery
    SQL.Strings = (
      
        'select daucodigo, clbcodigo, actcodigo from dau where clbcodigo=' +
        ':clbcodigo')
    Left = 168
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object dauclbdaucodigo: TIntegerField
      FieldName = 'daucodigo'
    end
    object dauclbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object dauclbactcodigo: TIntegerField
      FieldName = 'actcodigo'
      Required = True
    end
  end
  object act: TUniQuery
    SQL.Strings = (
      
        'select * from act where mdlcodigo=:mdlcodigo order by actidentif' +
        'icacao')
    Left = 124
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlcodigo'
        Value = nil
      end>
    object actactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object actmdlcodigo: TIntegerField
      FieldName = 'mdlcodigo'
    end
    object actactidentificacao: TStringField
      FieldName = 'actidentificacao'
      Size = 50
    end
    object actactformulario: TStringField
      FieldName = 'actformulario'
      Size = 50
    end
    object actactacao: TStringField
      FieldName = 'actacao'
      Size = 50
    end
  end
  object Dact: TUniDataSource
    DataSet = act
    Left = 192
    Top = 416
  end
  object tremdl: TUniQuery
    SQL.Strings = (
      
        'select mdlidentificacao, mdlcodigo from mdl group by mdlidentifi' +
        'cacao')
    Left = 44
    Top = 372
    object tremdlmdlidentificacao: TStringField
      FieldName = 'mdlidentificacao'
      Size = 50
    end
    object tremdlmdlcodigo: TIntegerField
      FieldName = 'mdlcodigo'
    end
  end
  object submdl: TUniQuery
    SQL.Strings = (
      
        'select mdlcodigo, mdlidentificacao, mdlnome, mdlsubgrupo from md' +
        'l where mdlidentificacao=:mdlidentificacao group by  mdlidentifi' +
        'cacao,mdlnome, mdlcodigo order by mdlcodigo')
    Left = 44
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlidentificacao'
        Value = nil
      end>
    object submdlmdlidentificacao: TStringField
      FieldName = 'mdlidentificacao'
      Size = 30
    end
    object submdlmdlcodigo: TIntegerField
      FieldName = 'mdlcodigo'
    end
    object submdlmdlnome: TStringField
      FieldName = 'mdlnome'
      Size = 50
    end
    object submdlmdlsubgrupo: TStringField
      FieldName = 'mdlsubgrupo'
      Size = 50
    end
  end
  object actmdl: TUniQuery
    SQL.Strings = (
      
        'select * from act where actformulario=:mdlnome and act.mdlcodigo' +
        '=:mdlcodigo group by actidentificacao')
    Left = 44
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlnome'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mdlcodigo'
        Value = nil
      end>
    object actmdlactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object actmdlactidentificacao: TStringField
      FieldName = 'actidentificacao'
      Size = 50
    end
  end
  object acoes: TActionList
    Images = ImageList1
    Left = 296
    Top = 352
    object ActDireitos: TAction
      Category = 'Direitos'
      Caption = 'Direitos'
      ImageIndex = 0
    end
  end
  object mdldau: TUniQuery
    SQL.Strings = (
      
        'select * from dau where clbcodigo=:clbcodigo and actcodigo=:actc' +
        'odigo')
    Left = 44
    Top = 524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'actcodigo'
        Value = nil
      end>
    object mdldaudaucodigo: TIntegerField
      FieldName = 'daucodigo'
    end
    object mdldauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object mdldauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mdldaudauativo: TIntegerField
      FieldName = 'dauativo'
    end
  end
  object novdau: TUniQuery
    SQL.Strings = (
      'select * from dau limit 1')
    Left = 180
    Top = 472
    object novdauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object novdauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object novdaudauativo: TIntegerField
      FieldName = 'dauativo'
    end
  end
  object listViewImages: TImageList
    Left = 488
    Top = 60
    Bitmap = {
      494C010103000400500010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFCF300FFFFFB00FFFFFF00F0F8
      FF00E2F4FF00A0BFD6009CC7E20087B9D7008FC3E10087BDDB0090C1E10095C1
      DE00A3C7DF00D4EDFD00EFFDFF00F4FCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF300FBFAF000FAFAFA00F4FA
      FF00CBDFFE00466994004276AB003C7CB300377DB3003C80B500397BAC003970
      9B0046709300BCD9EE00F1FEFF00F0F6F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCF000FDFEF500FEFEFE00F0F7
      FF00CFE5FF00527AAF006DABEB006BB9FC0069BDFF0073C6FF0078C5FE007DBF
      F0005687AF00B9D8F100EBF5FF00FBFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCF000FDFEF500FEFEFE00F0F7
      FF00CFE5FF00527AAF006DABEB006BB9FC0069BDFF0073C6FF0078C5FE007DBF
      F0005687AF00B9D8F100EBF5FF00FBFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000000000000000000000000000F9FDF700F9FDF800FCFBFD00EEF5
      FF00CFE8FF005180B30063ACEA005CB6F70054B6F2005BBCF40064BEF40070BC
      EC005A91B800C2E3FD00F1FAFF00FAF9FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000F9FFFE00F9FEFD00FDFCFE00EEF4
      FF00D5EBFF006691BC0073B9EE006AC2F8006FCDFB0072D0FB007DD3FD0074BB
      E1006397BB00BFDEF700F4FDFF00FDF9FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000F2F8FD00F6F9FD00FFFFFF00F3F6
      FB00DEEEFF006B8CA60088BEDF0092D7F8008DD7F1009DE5FD009EDEF70093C9
      E200739BB400C8E1F500F6FDFF00FDFCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FBFDFF00FCFDFF00FFFBFC00FDFD
      FD00EAF3FC008FA6B5006C91A700709FB4009AC8D900AFDCE9006D94A20085A6
      B500839DAE00E2F3FF00F4FAFF00FDFCFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FBFDFF00FCFDFF00FFFBFC00FDFD
      FD00EAF3FC008FA6B5006C91A700709FB4009AC8D900AFDCE9006D94A20085A6
      B500839DAE00E2F3FF00F4FAFF00FDFCFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FFFBFF00FBF7FC00FFFCF900FFFD
      F900F9FEFF00AFBBC500AFC2D1008498A900EDFDFF00EEFDFF0097A3AD00BAC5
      CD00B4BEC800F4FCFF00FBFFFF00F8FBF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FFFBFF00FFFDFF00FFFBF800FEFB
      F600FCFFFD00BEC5C800C7CED700686C7700E5E4ED00F6F4FA0084808500C0BF
      C300C4C5C900F6FAFB00FDFFFE00F9FDF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FFF5FB00FFFEFF00FEFBF600FFFF
      F900FDFFF900D4DAD5007E838200B6B8B900928D8F00908A8B00ADA9A800A09E
      9D00D7D8D600FFFFFE00FBFCFA00FDFEFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000000000000000000000000000FFFDFF00FFFBFC00FDFFF900FCFF
      F800FBFFF700FDFFF900ECEDEB0086848400B1ABAC00B0ABAC0091908C00CECF
      CB00FEFFFB00FBFCFA00FFFFFF00FAF8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFDFF00FFFBFC00FDFFF900FCFF
      F800FBFFF700FDFFF900ECEDEB0086848400B1ABAC00B0ABAC0091908C00CECF
      CB00FEFFFB00FBFCFA00FFFFFF00FAF8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFAFE00FDFFFF00F9FFFA00F5FC
      F500FBFFF900F8FAF400FCF7F800FFFEFF00FFFDFF00F4F3F700FAFFFF00FAFF
      FE00F5FCF900F8FAFA00FFFEFF00FFFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FAFE00F8FDFE00F9FFFD00FAFF
      FC00FAFEF800FFFFFB00FFFEFF00FCF5FA00F6F2F800F9FCFF00F1F9F900F1FC
      FA00F5FEFB00F6FBFA00FEFAFF00FFF9FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000E00FE00F00000000EFEFEFEF00000000
      EFEFEEEF00000000EFEFEEEF00000000E82FE82F00000000EFEFEEEF00000000
      EFEFEEEF00000000EFEFEFEF00000000E00FE00F00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DRelDis: TDataSource
    DataSet = reldis
    Left = 547
    Top = 507
  end
  object DRelAut: TDataSource
    DataSet = relaut
    Left = 875
    Top = 507
  end
  object relrau: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  raucodigo,'
      '  clbcodigo,'
      '  relcodigo,'
      '  rauativo'
      'FROM rau where clbcodigo=:clbcodigo')
    Left = 176
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object relrauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object relraurelcodigo: TStringField
      FieldName = 'relcodigo'
    end
    object relraurauativo: TIntegerField
      FieldName = 'rauativo'
    end
  end
  object reldis: TUniQuery
    SQL.Strings = (
      'SELECT fra.fracodigo'
      '     , fraidentificacao'
      '     , franome'
      '     , rel.relcodigo'
      '     , relidentificacao'
      '  FROM mre'
      ' INNER JOIN fra '
      '         ON mre.fracodigo = fra.fracodigo'
      ' INNER JOIN rel '
      '         ON mre.relcodigo = rel.relcodigo'
      ' WHERE fra.fracodigo = :fracodigo'
      
        '   -- mestra os relatorios que usu'#225'rio n'#227'o tem permiss'#227'o de aces' +
        'so'
      '   AND rel.relcodigo NOT IN (SELECT relcodigo'
      '                               FROM rau'
      '                              WHERE rau.clbcodigo = :clbcodigo)')
    Left = 488
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fracodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object reldisfracodigo: TIntegerField
      FieldName = 'fracodigo'
    end
    object reldisfraidentificacao: TStringField
      FieldName = 'fraidentificacao'
      Size = 50
    end
    object reldisfranome: TStringField
      FieldName = 'franome'
      Size = 50
    end
    object reldisrelidentificacao: TStringField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'relidentificacao'
      Size = 50
    end
    object reldisrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
  end
  object relaut: TUniQuery
    SQL.Strings = (
      'SELECT fra.fracodigo'
      '     , fraidentificacao'
      '     , franome'
      '     , rel.relcodigo'
      '     , relidentificacao'
      '  FROM mre'
      ' INNER JOIN fra '
      '         ON mre.fracodigo = fra.fracodigo'
      ' INNER JOIN rel '
      '         ON mre.relcodigo = rel.relcodigo'
      ' WHERE fra.fracodigo = :fracodigo'
      '   -- mestra os relatorios que usu'#225'rio tem permiss'#227'o de acesso'
      '   AND rel.relcodigo IN (SELECT relcodigo'
      '                           FROM rau'
      '                          WHERE rau.clbcodigo = :clbcodigo)')
    Left = 784
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fracodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object relautfracodigo: TIntegerField
      FieldName = 'fracodigo'
    end
    object relautfraidentificacao: TStringField
      FieldName = 'fraidentificacao'
      Size = 50
    end
    object relautfranome: TStringField
      FieldName = 'franome'
      Size = 50
    end
    object relautrelidentificacao: TStringField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'relidentificacao'
      Size = 50
    end
    object relautrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
  end
  object fra: TUniQuery
    SQL.Strings = (
      'select fracodigo from fra where franome=:franome')
    Left = 640
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'franome'
        Value = nil
      end>
    object frafracodigo: TIntegerField
      FieldName = 'fracodigo'
    end
  end
  object rel: TUniQuery
    SQL.Strings = (
      'select relcodigo from rel')
    Left = 456
    Top = 400
  end
  object acttodas: TUniQuery
    SQL.Strings = (
      'select actcodigo from act')
    Left = 256
    Top = 496
  end
end
