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
      'Database=C:\sistema-delphi\db\BANCO504.FDB'
      'DriverID=FB')
    Connected = True
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
    VendorLib = 'C:\Firebird\Firebird-5.0.4.1812-0-windows-x86\fbclient.dll'
    Left = 40
    Top = 120
  end
end
