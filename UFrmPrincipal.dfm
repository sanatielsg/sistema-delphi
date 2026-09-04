object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Delphi'
  ClientHeight = 441
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  WindowState = wsMaximized
  TextHeight = 15
  object PnlMENUS: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object PnlINFO: TPanel
      Left = 591
      Top = 1
      Width = 129
      Height = 55
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      ExplicitLeft = 560
      ExplicitTop = 3
      ExplicitHeight = 51
      object LblDATA: TLabel
        Left = 8
        Top = 9
        Width = 37
        Height = 17
        Caption = 'Data.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblHORA: TLabel
        Left = 8
        Top = 32
        Width = 38
        Height = 17
        Caption = 'Hora.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblDATAINFO: TLabel
        Left = 51
        Top = 8
        Width = 68
        Height = 17
        Caption = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblHORAINFO: TLabel
        Left = 53
        Top = 32
        Width = 50
        Height = 17
        Caption = '00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 24
    Top = 72
    object MnuCadastros: TMenuItem
      Caption = 'Cadastros'
      object MniCadProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = MniCadProdutosClick
      end
      object MniCadClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = MniCadClientesClick
      end
      object MniCadCaixas: TMenuItem
        Caption = 'Caixas'
        OnClick = MniCadCaixasClick
      end
      object MniCadBancos: TMenuItem
        Caption = 'Bancos'
        OnClick = MniCadBancosClick
      end
    end
    object MnuLancamentos: TMenuItem
      Caption = 'Lan'#231'amentos'
      object MniLanEstoque: TMenuItem
        Caption = 'Estoque'
        OnClick = MniLanEstoqueClick
      end
      object MniLanPedVenda: TMenuItem
        Caption = 'Pedidos de Venda'
        OnClick = MniLanPedVendaClick
      end
      object MniLanCR: TMenuItem
        Caption = 'Contas a Receber'
        OnClick = MniLanCRClick
      end
      object MniLanTesouraria: TMenuItem
        Caption = 'Tesouraria'
        OnClick = MniLanTesourariaClick
      end
    end
    object MnuRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object MniRelProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = MniRelProdutosClick
      end
      object MniRelClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = MniRelClientesClick
      end
      object MniLanCaixas: TMenuItem
        Caption = 'Caixas'
        OnClick = MniLanCaixasClick
      end
      object MniRelBancos: TMenuItem
        Caption = 'Bancos'
        OnClick = MniRelBancosClick
      end
      object MniRelEstoque: TMenuItem
        Caption = 'Estoque'
        OnClick = MniRelEstoqueClick
      end
      object MniRelPedVenda: TMenuItem
        Caption = 'Pedidos de Venda'
        OnClick = MniRelPedVendaClick
      end
      object MniRelCR: TMenuItem
        Caption = 'Contas a Receber'
        OnClick = MniRelCRClick
      end
      object MniRelTesouraria: TMenuItem
        Caption = 'Tesouraria'
        OnClick = MniRelTesourariaClick
      end
    end
    object MnuSistema: TMenuItem
      Caption = 'Sistema'
      object MniSisAtuDB: TMenuItem
        Caption = 'Atualizar Banco de Dados'
        OnClick = MniSisAtuDBClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
  end
  object TmtINFO: TTimer
    OnTimer = TmtINFOTimer
    Left = 80
    Top = 72
  end
end
