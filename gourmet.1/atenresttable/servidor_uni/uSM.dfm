object SM: TSM
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 513
  Width = 511
  object zito: TUniQuery
    Connection = fprinciServRest.conexao
    Left = 184
    Top = 272
  end
  object DSzito: TDataSetProvider
    DataSet = zito
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 272
  end
end
