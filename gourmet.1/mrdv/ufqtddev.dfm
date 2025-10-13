inherited fqtddev: Tfqtddev
  ActiveControl = qtd
  Caption = 'Devolu'#231#227'o'
  ClientHeight = 103
  ClientWidth = 255
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 39
    Width = 111
    Height = 13
    Caption = 'Quantidade a Devolver'
  end
  inherited PlTitulo: TPanel
    Width = 255
    Caption = 'Devolu'#231#227'o'
  end
  inherited pbotoes: TPanel
    Top = 74
    Width = 255
    inherited psituacao: TPanel
      Caption = 'Informando'
    end
    inherited bconfirma: TBitBtn
      Left = 101
    end
    inherited bcancela: TBitBtn
      Left = 176
    end
  end
  object qtd: TEdit
    Left = 160
    Top = 36
    Width = 87
    Height = 21
    Alignment = taRightJustify
    Color = clYellow
    NumbersOnly = True
    TabOrder = 2
    Text = '1'
    OnKeyPress = FormKeyPress
  end
end
