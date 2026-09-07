object FraCadastro: TFraCadastro
  Left = 0
  Top = 0
  Width = 616
  Height = 91
  TabOrder = 0
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 91
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 502
    ExplicitHeight = 107
    object BtnNovo: TButton
      Left = 143
      Top = 7
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActNovo
      TabOrder = 0
    end
    object BtnGravar: TButton
      Left = 239
      Top = 7
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActGravar
      TabOrder = 1
    end
    object BtnCancelar: TButton
      Left = 335
      Top = 7
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActCancelar
      TabOrder = 2
    end
    object BtnExcluir: TButton
      Left = 431
      Top = 7
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActExcluir
      TabOrder = 3
    end
    object BtnPesquisar: TButton
      Left = 527
      Top = 7
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActPesquisar
      TabOrder = 4
    end
    object EdtID: TEdit
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
    object Button1: TButton
      Left = 13
      Top = 51
      Width = 27
      Height = 25
      Caption = '<'
      TabOrder = 6
    end
    object Button2: TButton
      Left = 43
      Top = 51
      Width = 28
      Height = 25
      Caption = '<<'
      TabOrder = 7
    end
    object Button3: TButton
      Left = 74
      Top = 51
      Width = 28
      Height = 25
      Caption = '>>'
      TabOrder = 8
    end
    object Button4: TButton
      Left = 105
      Top = 51
      Width = 28
      Height = 25
      Caption = '>'
      TabOrder = 9
    end
  end
end
