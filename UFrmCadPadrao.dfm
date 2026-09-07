object FrmCadPadrao: TFrmCadPadrao
  Left = 0
  Top = 0
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
  object StatusBar: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <>
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 624
    Height = 422
    ActivePage = TSPesquisa
    Align = alClient
    TabOrder = 1
    object TSCadastro: TTabSheet
      Caption = 'Cadastro'
      object PnlCadTop: TPanel
        Left = 0
        Top = 0
        Width = 616
        Height = 89
        Align = alTop
        TabOrder = 0
        object BtnCadNovo: TButton
          Left = 164
          Top = 16
          Width = 81
          Height = 57
          Caption = 'Novo'
          TabOrder = 0
        end
        object BtnCadGravar: TButton
          Left = 251
          Top = 16
          Width = 81
          Height = 57
          Caption = 'Gravar'
          TabOrder = 1
        end
        object BtnCadCancelar: TButton
          Left = 338
          Top = 16
          Width = 81
          Height = 57
          Caption = 'Cancelar'
          TabOrder = 2
        end
        object BtnCadExcluir: TButton
          Left = 425
          Top = 16
          Width = 81
          Height = 57
          Caption = 'Excluir'
          TabOrder = 3
        end
        object BtnCadPesquisar: TButton
          Left = 512
          Top = 16
          Width = 81
          Height = 57
          Caption = 'Pesquisar'
          TabOrder = 4
        end
        object EdtCadCodigo: TEdit
          Left = 11
          Top = 12
          Width = 121
          Height = 36
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '0'
        end
        object BtnCadAnterior: TButton
          Left = 12
          Top = 54
          Width = 25
          Height = 25
          Caption = '<'
          TabOrder = 6
        end
        object BtnCadPrimeiro: TButton
          Left = 43
          Top = 54
          Width = 25
          Height = 25
          Caption = '<<'
          TabOrder = 7
        end
        object BtnCadUltimo: TButton
          Left = 74
          Top = 54
          Width = 25
          Height = 25
          Caption = '>>'
          TabOrder = 8
        end
        object BtnCadProximo: TButton
          Left = 105
          Top = 54
          Width = 25
          Height = 25
          Caption = '>'
          TabOrder = 9
        end
      end
      object PnlCadForm: TPanel
        Left = 0
        Top = 89
        Width = 616
        Height = 303
        Align = alClient
        TabOrder = 1
        ExplicitTop = 113
        ExplicitHeight = 279
      end
    end
    object TSPesquisa: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 616
        Height = 49
        Align = alTop
        TabOrder = 0
        DesignSize = (
          616
          49)
        object BtnPesPesquisar: TButton
          Left = 494
          Top = 10
          Width = 106
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar'
          TabOrder = 0
        end
        object EdtPesCriterio: TEdit
          Left = 104
          Top = 11
          Width = 382
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object CbxPesCriterio: TComboBox
          Left = 10
          Top = 11
          Width = 88
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 2
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo')
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 49
        Width = 616
        Height = 343
        Align = alClient
        TabOrder = 1
        ExplicitLeft = -40
        ExplicitTop = 39
        object DBGPesPesquisar: TDBGrid
          Left = 1
          Top = 1
          Width = 614
          Height = 341
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
  end
end
