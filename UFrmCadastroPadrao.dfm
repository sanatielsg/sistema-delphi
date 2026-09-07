object page: Tpage
  Left = 0
  Top = 0
  ClientHeight = 448
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object StatusBar: TStatusBar
    Left = 0
    Top = 429
    Width = 627
    Height = 19
    Panels = <>
    ExplicitLeft = 432
    ExplicitTop = 424
    ExplicitWidth = 0
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 627
    Height = 429
    ActivePage = TSCadastro
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 422
    object TSCadastro: TTabSheet
      Caption = 'Cadastro'
      object PnlCadTop: TPanel
        Left = 0
        Top = 0
        Width = 619
        Height = 97
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 739
        object BtnCadNovo: TButton
          Left = 143
          Top = 7
          Width = 75
          Height = 73
          Action = DMCadastroAcoes.ActNovo
          TabOrder = 0
        end
        object BtnCadGravar: TButton
          Left = 239
          Top = 7
          Width = 75
          Height = 73
          Action = DMCadastroAcoes.ActGravar
          TabOrder = 1
        end
        object BtnCadCancelar: TButton
          Left = 335
          Top = 7
          Width = 75
          Height = 73
          Action = DMCadastroAcoes.ActCancelar
          TabOrder = 2
        end
        object BtnCadExcluir: TButton
          Left = 431
          Top = 7
          Width = 75
          Height = 73
          Action = DMCadastroAcoes.ActExcluir
          TabOrder = 3
        end
        object BtnCadPesquisar: TButton
          Left = 527
          Top = 7
          Width = 75
          Height = 73
          Action = DMCadastroAcoes.ActPesquisar
          TabOrder = 4
        end
        object EdtCadID: TEdit
          Left = 12
          Top = 9
          Width = 121
          Height = 36
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 9
          NumbersOnly = True
          ParentFont = False
          TabOrder = 5
          Text = '0'
        end
        object BtnCadAnterior: TButton
          Left = 13
          Top = 51
          Width = 27
          Height = 25
          Caption = '<'
          TabOrder = 6
        end
        object BtnCadPrimeiro: TButton
          Left = 43
          Top = 51
          Width = 28
          Height = 25
          Caption = '<<'
          TabOrder = 7
        end
        object BtnCadUltimo: TButton
          Left = 74
          Top = 51
          Width = 28
          Height = 25
          Caption = '>>'
          TabOrder = 8
        end
        object BtnCadProximo: TButton
          Left = 105
          Top = 51
          Width = 28
          Height = 25
          Caption = '>'
          TabOrder = 9
        end
      end
      object PnlCadForm: TPanel
        Left = 0
        Top = 97
        Width = 619
        Height = 302
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 79
        ExplicitWidth = 610
        ExplicitHeight = 310
      end
    end
    object TSConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
end
