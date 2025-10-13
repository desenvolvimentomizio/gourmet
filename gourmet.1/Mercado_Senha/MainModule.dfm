object mm: Tmm
  OldCreateOrder = False
  Theme = 'neptune'
  TouchTheme = 'cupertino'
  BrowserOptions = [boDisableMouseRightClick, boDisableChromeRefresh]
  MonitoredKeys.Keys = <>
  Height = 564
  Width = 737
  object conexao: TUniConnection
    ProviderName = 'mySQL'
    LoginPrompt = False
    Left = 160
    Top = 16
  end
  object ajusta_senha: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM ese')
    Left = 264
    Top = 16
  end
  object consulta_senha: TUniQuery
    Connection = conexao
    Left = 264
    Top = 72
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 56
    Top = 64
  end
end
