object CM: TCM
  OldCreateOrder = False
  Height = 271
  Width = 415
  object ConexaoServer: TSQLConnection
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
        'Token=91d62ebb5b0d1b1b'
      
        'ConnectionString=DriverName=DataSnap,DriverUnit=Data.DBXDataSnap' +
        ',HostName=192.168.5.101,Port=211,CommunicationProtocol=tcp/ip,Da' +
        'tasnapContext=datasnap/,DriverAssemblyLoader=Borland.Data.TDBXCl' +
        'ientDriverLoader,Borland.Data.DbxClientDriver,Version=19.0.0.0,C' +
        'ulture=neutral,PublicKeyToken=91d62ebb5b0d1b1b,ConnectionString=' +
        'DriverName=DataSnap,DriverUnit=Data.DBXDataSnap,HostName=192.168' +
        '.5.101,Port=211,CommunicationProtocol=tcp/ip,DatasnapContext=dat' +
        'asnap/,DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,' +
        'Borland.Data.DbxClientDriver,Version=19.0.0.0,Culture=neutral,Pu' +
        'blicKeyToken=91d62ebb5b0d1b1b')
    AfterConnect = ConexaoServerAfterConnect
    AfterDisconnect = ConexaoServerAfterDisconnect
    Left = 88
    Top = 56
    UniqueId = '{E1525FE5-3C5F-4C26-AF24-7524C2D635BD}'
  end
end
