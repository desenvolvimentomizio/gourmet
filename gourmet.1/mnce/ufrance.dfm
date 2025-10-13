inherited france: Tfrance
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited PnlRodapeGrid: TPanel
          inherited Pnl1: TPanel
            inherited Pltotalsaidas: TPanel
              Left = 170
              ExplicitLeft = 170
            end
            inherited Pltotaldescontossaidas: TPanel
              Left = 340
              ExplicitLeft = 340
            end
            inherited Pltotalliquidosaidas: TPanel
              Left = 0
              ExplicitLeft = 0
            end
            inherited Pltotalnfesaidas: TPanel
              Left = 662
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 185
              Height = 41
              TabOrder = 4
            end
            object plTotalPendentes: TPanel
              Left = 832
              Top = 0
              Width = 170
              Height = 23
              Align = alLeft
              Alignment = taRightJustify
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'NFE a Emitir  0,00'
              Color = 4227327
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 5
              ExplicitLeft = 662
            end
            object Panel1: TPanel
              Left = 492
              Top = 0
              Width = 170
              Height = 23
              Align = alLeft
              Alignment = taRightJustify
              BevelInner = bvLowered
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'NFE Emitidas'
              Color = 5356845
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 6
            end
          end
        end
      end
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
