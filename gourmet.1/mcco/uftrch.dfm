inherited ftrch: Tftrch
  Caption = 'Transfer'#234'ncia de Cheques'
  ClientHeight = 610
  ClientWidth = 818
  ExplicitWidth = 834
  ExplicitHeight = 649
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 581
    Width = 818
    ExplicitTop = 581
    ExplicitWidth = 818
    inherited bconfirma: TBitBtn
      Left = 664
      ExplicitLeft = 664
    end
    inherited bcancela: TBitBtn
      Left = 739
      ExplicitLeft = 739
    end
    inherited bfechar: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
  end
  inherited paginas: TPageControl
    Width = 818
    Height = 581
    ExplicitWidth = 818
    ExplicitHeight = 581
    inherited Principal: TTabSheet
      ExplicitWidth = 810
      ExplicitHeight = 553
      inherited Label7: TLabel
        Top = 515
        Width = 124
        Caption = 'Total da Transfer'#234'ncia R$'
        ExplicitTop = 515
        ExplicitWidth = 124
      end
      inherited Label3: TLabel
        Top = 488
        ExplicitTop = 488
      end
      object Label4: TLabel [5]
        Left = 8
        Top = 461
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
      end
      inherited dchtotal: TDBEdit
        Top = 512
        TabOrder = 6
        ExplicitTop = 512
      end
      inherited DBGLista: TDBGrid
        Width = 590
        Columns = <
          item
            Expanded = False
            FieldName = 'tmpselecionar'
            Title.Alignment = taCenter
            Title.Caption = ' '
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bcocodigo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chenumero'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'checonta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheagencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chevalor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chevencimento'
            Title.Caption = 'Data'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mdccodigo'
            Title.Caption = 'Al'#237'nea'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'schcodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'chechave'
            Title.Caption = 'Nr. Chave'
            Visible = True
          end>
      end
      inherited dchquantidade: TDBEdit
        Top = 485
        TabOrder = 5
        ExplicitTop = 485
      end
      inherited mdccodigo: TDBEdit
        TabOrder = 7
      end
      object dchhistorico: TDBEdit
        Left = 139
        Top = 458
        Width = 550
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dchhistorico'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    inherited registrodchtotal: TFloatField
      DisplayLabel = 'Total das Transfer'#234'ncia R$'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 368
    Top = 296
  end
end
