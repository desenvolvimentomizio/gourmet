inherited frpg: Tfrpg
  Caption = 'Ajuste de Centros de Custos'
  ClientHeight = 387
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 358
  end
  inherited paginas: TPageControl
    Height = 358
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = '1'#170' Conta Contabil'
        FocusControl = pcgconta01
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = '1'#186' Centro de Custos'
        FocusControl = pcgccusto01
      end
      object Label3: TLabel
        Left = 8
        Top = 75
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = '2'#170' Conta Contabil'
        FocusControl = pcgconta02
      end
      object Label4: TLabel
        Left = 8
        Top = 102
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = '2'#186' Centro de Custos'
        FocusControl = pcgccusto02
      end
      object Label5: TLabel
        Left = 8
        Top = 139
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = '3'#170' Conta Contabil'
        FocusControl = pcgconta03
      end
      object Label6: TLabel
        Left = 8
        Top = 166
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = '3'#186' Centro de Custos'
        FocusControl = pcgccusto03
      end
      object Label7: TLabel
        Left = 8
        Top = 203
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = '4'#170' Conta Contabil'
        FocusControl = pcgconta04
      end
      object Label8: TLabel
        Left = 8
        Top = 230
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = '4'#186' Centro de Custos'
        FocusControl = pcgccusto04
      end
      object Label9: TLabel
        Left = 8
        Top = 267
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = '5'#170' Conta Contabil'
        FocusControl = pcgconta05
      end
      object Label10: TLabel
        Left = 8
        Top = 294
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = '5'#186' Centro de Custos'
        FocusControl = pcgccusto05
      end
      object spdbcta01: TSpeedButton
        Left = 204
        Top = 8
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbcta01Click
      end
      object Bvcta01: TBevel
        Left = 225
        Top = 8
        Width = 570
        Height = 21
        CustomHint = BalloonHint
      end
      object pcgideconta01: TDBText
        Left = 364
        Top = 11
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideconta01'
        DataSource = DSRegistro
      end
      object pcgestructa01: TDBText
        Left = 233
        Top = 11
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestructa01'
        DataSource = DSRegistro
      end
      object Bvcta02: TBevel
        Left = 225
        Top = 72
        Width = 570
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvcta03: TBevel
        Left = 225
        Top = 136
        Width = 570
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvcta04: TBevel
        Left = 225
        Top = 200
        Width = 570
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvcta05: TBevel
        Left = 225
        Top = 264
        Width = 570
        Height = 21
        CustomHint = BalloonHint
      end
      object pcgestructa02: TDBText
        Left = 233
        Top = 75
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestructa02'
        DataSource = DSRegistro
      end
      object pcgideconta02: TDBText
        Left = 364
        Top = 75
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideconta02'
        DataSource = DSRegistro
      end
      object pcgestructa03: TDBText
        Left = 233
        Top = 139
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestructa03'
        DataSource = DSRegistro
      end
      object pcgideconta03: TDBText
        Left = 364
        Top = 139
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideconta03'
        DataSource = DSRegistro
      end
      object pcgestructa04: TDBText
        Left = 233
        Top = 203
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestructa04'
        DataSource = DSRegistro
      end
      object pcgideconta04: TDBText
        Left = 364
        Top = 203
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideconta04'
        DataSource = DSRegistro
      end
      object pcgestructa05: TDBText
        Left = 233
        Top = 267
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestructa05'
        DataSource = DSRegistro
      end
      object pcgideconta05: TDBText
        Left = 364
        Top = 267
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideconta05'
        DataSource = DSRegistro
      end
      object spdbcta02: TSpeedButton
        Left = 204
        Top = 72
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbcta02Click
      end
      object spdbcta03: TSpeedButton
        Left = 204
        Top = 136
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbcta03Click
      end
      object spdbcta04: TSpeedButton
        Left = 204
        Top = 200
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbcta04Click
      end
      object spdbcta05: TSpeedButton
        Left = 204
        Top = 264
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbcta05Click
      end
      object spdbccu01: TSpeedButton
        Left = 182
        Top = 35
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbccu01Click
      end
      object spdbccu02: TSpeedButton
        Left = 182
        Top = 99
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbccu02Click
      end
      object spdbccu03: TSpeedButton
        Left = 182
        Top = 163
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbccu03Click
      end
      object spdbccu04: TSpeedButton
        Left = 182
        Top = 227
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbccu04Click
      end
      object spdbccu05: TSpeedButton
        Left = 182
        Top = 291
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spdbccu05Click
      end
      object Bvccu01: TBevel
        Left = 204
        Top = 35
        Width = 591
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvccu02: TBevel
        Left = 204
        Top = 99
        Width = 591
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvccu03: TBevel
        Left = 204
        Top = 163
        Width = 591
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvccu04: TBevel
        Left = 204
        Top = 226
        Width = 591
        Height = 21
        CustomHint = BalloonHint
      end
      object Bvccu05: TBevel
        Left = 204
        Top = 291
        Width = 591
        Height = 21
        CustomHint = BalloonHint
      end
      object pcgestruccu01: TDBText
        Left = 211
        Top = 38
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestruccu01'
        DataSource = DSRegistro
      end
      object pcgideccusto01: TDBText
        Left = 342
        Top = 38
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideccusto01'
        DataSource = DSRegistro
      end
      object pcgestruccu02: TDBText
        Left = 211
        Top = 102
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestruccu02'
        DataSource = DSRegistro
      end
      object pcgideccusto02: TDBText
        Left = 342
        Top = 102
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideccusto02'
        DataSource = DSRegistro
      end
      object pcgestruccu03: TDBText
        Left = 211
        Top = 166
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestruccu03'
        DataSource = DSRegistro
      end
      object pcgideccusto03: TDBText
        Left = 342
        Top = 166
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideccusto03'
        DataSource = DSRegistro
      end
      object pcgestruccu04: TDBText
        Left = 211
        Top = 230
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestruccu04'
        DataSource = DSRegistro
      end
      object pcgideccusto04: TDBText
        Left = 342
        Top = 230
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideccusto04'
        DataSource = DSRegistro
      end
      object pcgestruccu05: TDBText
        Left = 211
        Top = 294
        Width = 117
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgestruccu05'
        DataSource = DSRegistro
      end
      object pcgideccusto05: TDBText
        Left = 342
        Top = 294
        Width = 417
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgideccusto05'
        DataSource = DSRegistro
      end
      object pcgconta01: TDBEdit
        Tag = 777
        Left = 136
        Top = 8
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgconta01'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcgccusto01: TDBEdit
        Tag = 777
        Left = 136
        Top = 35
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgccusto01'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pcgconta02: TDBEdit
        Tag = 777
        Left = 136
        Top = 72
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgconta02'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pcgccusto02: TDBEdit
        Tag = 777
        Left = 136
        Top = 99
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgccusto02'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pcgconta03: TDBEdit
        Tag = 777
        Left = 136
        Top = 136
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgconta03'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object pcgccusto03: TDBEdit
        Tag = 777
        Left = 136
        Top = 163
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgccusto03'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object pcgconta04: TDBEdit
        Tag = 777
        Left = 136
        Top = 200
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgconta04'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object pcgccusto04: TDBEdit
        Tag = 777
        Left = 136
        Top = 227
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgccusto04'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object pcgconta05: TDBEdit
        Tag = 777
        Left = 136
        Top = 264
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgconta05'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object pcgccusto05: TDBEdit
        Tag = 777
        Left = 136
        Top = 291
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgccusto05'
        DataSource = DSRegistro
        TabOrder = 9
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select rpgchave, pcgconta01,pcgccusto01, pcgconta02, pcgccusto02' +
        ', pcgconta03, pcgccusto03, pcgconta04, pcgccusto04, pcgconta05, ' +
        'pcgccusto05 from rpg')
    object registrorpgchave: TIntegerField
      FieldName = 'rpgchave'
    end
    object registropcgconta01: TIntegerField
      DisplayLabel = '1'#170' Conta Contabil'
      FieldName = 'pcgconta01'
    end
    object registropcgestructa01: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestructa01'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgconta01'
      Size = 50
      Lookup = True
    end
    object registropcgideconta01: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideconta01'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgconta01'
      Size = 100
      Lookup = True
    end
    object registropcgccusto01: TIntegerField
      DisplayLabel = '1'#186' Centro de Custos'
      FieldName = 'pcgccusto01'
    end
    object registropcgestruccu01: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestruccu01'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgccusto01'
      Size = 50
      Lookup = True
    end
    object registropcgideccusto01: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideccusto01'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgccusto01'
      Size = 100
      Lookup = True
    end
    object registropcgconta02: TIntegerField
      DisplayLabel = '2'#170' Conta Contabil'
      FieldName = 'pcgconta02'
    end
    object registropcgestructa02: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestructa02'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgconta02'
      Size = 50
      Lookup = True
    end
    object registropcgideconta02: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideconta02'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgconta02'
      Size = 100
      Lookup = True
    end
    object registropcgccusto02: TIntegerField
      DisplayLabel = '2'#186' Centro de Custos'
      FieldName = 'pcgccusto02'
    end
    object registropcgestruccu02: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestruccu02'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgccusto02'
      Size = 50
      Lookup = True
    end
    object registropcgideccusto02: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideccusto02'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgccusto02'
      Size = 100
      Lookup = True
    end
    object registropcgconta03: TIntegerField
      DisplayLabel = '3'#170' Conta Contabil'
      FieldName = 'pcgconta03'
    end
    object registropcgestructa03: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestructa03'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgconta03'
      Size = 50
      Lookup = True
    end
    object registropcgideconta03: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideconta03'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgconta03'
      Size = 100
      Lookup = True
    end
    object registropcgccusto03: TIntegerField
      DisplayLabel = '3'#186' Centro de Custos'
      FieldName = 'pcgccusto03'
    end
    object registropcgestruccu03: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestruccu03'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgccusto03'
      Size = 50
      Lookup = True
    end
    object registropcgideccusto03: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideccusto03'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgccusto03'
      Size = 100
      Lookup = True
    end
    object registropcgconta04: TIntegerField
      DisplayLabel = '4'#170' Conta Contabil'
      FieldName = 'pcgconta04'
    end
    object registropcgestructa04: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestructa04'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgconta04'
      Size = 50
      Lookup = True
    end
    object registropcgideconta04: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideconta04'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgconta04'
      Size = 100
      Lookup = True
    end
    object registropcgccusto04: TIntegerField
      DisplayLabel = '4'#186' Centro de Custos'
      FieldName = 'pcgccusto04'
    end
    object registropcgestruccu04: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestruccu04'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgccusto04'
      Size = 50
      Lookup = True
    end
    object registropcgideccusto04: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideccusto04'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgccusto04'
      Size = 100
      Lookup = True
    end
    object registropcgconta05: TIntegerField
      DisplayLabel = '5'#170' Conta Contabil'
      FieldName = 'pcgconta05'
    end
    object registropcgestructa05: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestructa05'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgconta05'
      Size = 50
      Lookup = True
    end
    object registropcgideconta05: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideconta05'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgconta05'
      Size = 100
      Lookup = True
    end
    object registropcgccusto05: TIntegerField
      DisplayLabel = '5'#186' Centro de Custos'
      FieldName = 'pcgccusto05'
    end
    object registropcgestruccu05: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestruccu05'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgccusto05'
      Size = 50
      Lookup = True
    end
    object registropcgideccusto05: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgideccusto05'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgccusto05'
      Size = 100
      Lookup = True
    end
  end
  object pcg: tuniquery
    SQL.Strings = (
      'select pcgcodigo, pcgestrutural, pcgidentificacao from pcg')
    Params = <>
    Left = 412
    Top = 160
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgestrutural: TStringField
      FieldName = 'pcgestrutural'
      Size = 50
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 100
    end
  end
end
