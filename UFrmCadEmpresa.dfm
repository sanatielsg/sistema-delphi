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
        Height = 91
        Align = alTop
        TabOrder = 0
        inherited Panel: TPanel
          BevelOuter = bvNone
          Color = clKhaki
          ParentBackground = False
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 616
          inherited EdtID: TEdit
            StyleElements = [seFont, seClient, seBorder]
          end
        end
      end
      object PnlFormulario: TPanel
        Left = 0
        Top = 91
        Width = 616
        Height = 320
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = -141
        ExplicitTop = -26
        ExplicitHeight = 304
        object LblCadID: TLabel
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
        object Label1: TLabel
          Left = 16
          Top = 53
          Width = 68
          Height = 15
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 303
          Top = 53
          Width = 44
          Height = 15
          Caption = 'Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 99
          Width = 27
          Height = 16
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 231
          Top = 100
          Width = 20
          Height = 15
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtCadRazaoSocial: TEdit
          Left = 16
          Top = 70
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 100
          TabOrder = 0
        end
        object EdtCadFantasia: TEdit
          Left = 303
          Top = 70
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 100
          TabOrder = 1
        end
        object EdtCadCNPJ: TEdit
          Left = 16
          Top = 117
          Width = 209
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object EdtCadCPF: TEdit
          Left = 231
          Top = 117
          Width = 202
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
        end
      end
    end
    object TSConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
end
