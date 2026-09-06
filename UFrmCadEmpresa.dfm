object FrmCadEmpresa: TFrmCadEmpresa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    ActivePage = TSCadastro
    Align = alClient
    TabOrder = 0
    object TSCadastro: TTabSheet
      Caption = 'Cadastro'
      inline BotoesCadastro: TFraCadastro
        Left = 0
        Top = 0
        Width = 616
        Height = 107
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 67
        ExplicitTop = 62
        inherited Panel: TPanel
          Width = 616
          BevelOuter = bvNone
          Color = clKhaki
          ParentBackground = False
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = -1
          ExplicitWidth = 502
        end
      end
      object PnlFormulario: TPanel
        Left = 0
        Top = 107
        Width = 616
        Height = 304
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 32
        ExplicitTop = 120
        ExplicitWidth = 561
        ExplicitHeight = 273
        object LblRegistro: TLabel
          Left = 16
          Top = 16
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
      end
    end
    object TSConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
end
