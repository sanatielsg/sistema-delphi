object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Delphi'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object MainMenu: TMainMenu
    Left = 96
    Top = 40
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
      end
      object MniLanTesouraria: TMenuItem
        Caption = 'Tesouraria'
      end
    end
    object MnuRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object MniRelProdutos: TMenuItem
        Caption = 'Produtos'
      end
      object MniRelClientes: TMenuItem
        Caption = 'Clientes'
      end
      object MniLanCaixas: TMenuItem
        Caption = 'Caixas'
      end
      object MniRelBancos: TMenuItem
        Caption = 'Bancos'
      end
      object MniRelEstoque: TMenuItem
        Caption = 'Estoque'
      end
      object MniRelPedVenda: TMenuItem
        Caption = 'Pedidos de Venda'
      end
      object MniRelCR: TMenuItem
        Caption = 'Contas a Receber'
      end
      object MniRelTesouraria: TMenuItem
        Caption = 'Tesouraria'
      end
    end
    object MnuSistema: TMenuItem
      Caption = 'Sistema'
      object MniSisAtuDB: TMenuItem
        Caption = 'Atualizar Banco de Dados'
      end
    end
  end
end
