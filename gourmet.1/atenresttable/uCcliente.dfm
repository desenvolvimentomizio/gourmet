object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 271
  Width = 415
  object conexao: TSQLConnection
    ConnectionName = 'ServermizioRest'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'DriverUnit=Data.DBXDataSnap'
      'HostName=192.168.5.101'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=19.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 48
    Top = 40
    UniqueId = '{1BDD7E4B-35BE-4116-AF2E-19E7D0A91ABF}'
  end
end
