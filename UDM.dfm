object DM: TDM
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
    Left = 40
    Top = 208
  end
  object DriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Firebird-2.5.9.27139-0_Win32\bin\fbclient.dll'
    Left = 40
    Top = 120
  end
end
