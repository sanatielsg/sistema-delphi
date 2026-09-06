object FraCadastro: TFraCadastro
  Left = 0
  Top = 0
  Width = 502
  Height = 107
  TabOrder = 0
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 107
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 521
    object BtnNovo: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActNovo
      TabOrder = 0
    end
    object BtnGravar: TButton
      Left = 112
      Top = 16
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActGravar
      TabOrder = 1
    end
    object BtnCancelar: TButton
      Left = 208
      Top = 16
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActCancelar
      TabOrder = 2
    end
    object BtnExcluir: TButton
      Left = 304
      Top = 16
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActExcluir
      TabOrder = 3
    end
    object BtnPesquisar: TButton
      Left = 400
      Top = 16
      Width = 75
      Height = 73
      Action = DMCadastroAcoes.ActPesquisar
      TabOrder = 4
    end
  end
end
