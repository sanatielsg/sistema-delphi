object DM: TDM
  OnCreate = DataModuleCreate
  Height = 286
  Width = 320
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object Qry: TFDQuery
    Connection = Con
    Left = 32
    Top = 200
  end
  object DriverLink: TFDPhysFBDriverLink
    Left = 40
    Top = 112
  end
end
