inherited fdpch: Tfdpch
  Caption = 'Dep'#243'sito de Cheques'
  ClientHeight = 600
  ClientWidth = 733
  ExplicitWidth = 749
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 571
    Width = 733
    ExplicitTop = 571
    ExplicitWidth = 733
    inherited bconfirma: TBitBtn
      Left = 579
      ExplicitLeft = 579
    end
    inherited bcancela: TBitBtn
      Left = 654
      ExplicitLeft = 654
    end
    inherited bfechar: TBitBtn
      Left = 514
      ExplicitLeft = 514
    end
  end
  inherited paginas: TPageControl
    Width = 733
    Height = 571
    ExplicitWidth = 733
    ExplicitHeight = 571
    inherited Principal: TTabSheet
      ExplicitWidth = 725
      ExplicitHeight = 543
      inherited Label7: TLabel
        Top = 515
        Width = 100
        Caption = 'Total do Dep'#243'sito R$'
        ExplicitTop = 515
        ExplicitWidth = 100
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
        ReadOnly = True
        TabOrder = 6
        ExplicitTop = 512
      end
      inherited DBGLista: TDBGrid
        Left = 144
        Width = 550
        Color = clWhite
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
        ReadOnly = True
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
      DisplayLabel = 'Total do Dep'#243'sito R$'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited che: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  cco.ctacodigo,'
      '  c.chechave,'
      '  c.cheemissao,'
      '  c.chevencimento,'
      '  c.chenumero,'
      '  c.checonta,'
      '  c.cheagencia,'
      '  c.chenome,'
      '  c.bcocodigo,'
      '  c.chedocumento,'
      '  c.chetelefone,'
      '  c.chevalor,'
      ' (SELECT ltc.schcodigo '
      '    FROM ltc'
      '  JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      
        ' WHERE c.chechave=che.chechave and cco.ctacodigo=:ctacodigo and ' +
        'tchcodigo is null '
      '   order by ltc.ltcchave DESC LIMIT 1)  schcodigo,'
      ' '
      '  ltc.mdccodigo,'
      '  c.etdcodigo'
      'FROM ltc'
      '  JOIN che c'
      '    ON ltc.chechave = c.chechave'
      '  JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      
        ' where (ltc.schcodigo=:schcodigo or ltc.schcodigo=3)  and cco.ct' +
        'acodigo=:ctacodigo and tchcodigo is null'
      'order by c.chevencimento')
  end
end
