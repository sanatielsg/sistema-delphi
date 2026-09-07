object DM: TDM
  OnCreate = DataModuleCreate
  Height = 286
  Width = 412
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'Database=C:\sistema-delphi\db\BANCO259.FDB'
      'DriverID=FB')
    Connected = True
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
    VendorLib = 'C:\Firebird\Firebird-2.5.9.27139-0_Win32\bin\fbclient.dll'
    Left = 40
    Top = 112
  end
  object QryPesEmpresas: TFDQuery
    Active = True
    Connection = Con
    SQL.Strings = (
      'SELECT * FROM EMPRESAS')
    Left = 144
    Top = 40
    object QryPesEmpresasEMP_ID: TIntegerField
      FieldName = 'EMP_ID'
      Origin = 'EMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPesEmpresasEMP_RAZAO_SOCIAL: TStringField
      FieldName = 'EMP_RAZAO_SOCIAL'
      Origin = 'EMP_RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object QryPesEmpresasEMP_NOME_FANTASIA: TStringField
      FieldName = 'EMP_NOME_FANTASIA'
      Origin = 'EMP_NOME_FANTASIA'
      Required = True
      Size = 100
    end
    object QryPesEmpresasEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
      Required = True
      Size = 14
    end
    object QryPesEmpresasEMP_CPF: TStringField
      FieldName = 'EMP_CPF'
      Origin = 'EMP_CPF'
      Required = True
      Size = 11
    end
  end
  object DSQryPesEmpresas: TDataSource
    DataSet = QryPesEmpresas
    Left = 152
    Top = 96
  end
end
