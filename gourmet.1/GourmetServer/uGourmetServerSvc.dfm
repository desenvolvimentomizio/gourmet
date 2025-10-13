object GourmetServerServer: TGourmetServerServer
  OldCreateOrder = False
  OnCreate = ServiceCreate
  DisplayName = 'Mizio - Gourmet Server'
  StartType = stManual
  AfterInstall = ServiceAfterInstall
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 150
  Width = 215
end
