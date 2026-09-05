object FrmSisAtuDB: TFrmSisAtuDB
  Left = 0
  Top = 0
  Caption = 'Atualiza'#231#227'o do Banco de Dados'
  ClientHeight = 152
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 26
    Width = 235
    Height = 28
    Caption = 'Vers'#227'o do Banco de dados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LblVersaoDB: TLabel
    Left = 257
    Top = 26
    Width = 11
    Height = 28
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object BtnAtualizarDB: TButton
    Left = 8
    Top = 85
    Width = 298
    Height = 41
    Caption = 'Atualizar Banco de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnAtualizarDBClick
  end
end
