inherited FrmCadEmpresas: TFrmCadEmpresas
  Caption = 'Cadastro de Empresas'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited PageControl: TPageControl
    inherited TSCadastro: TTabSheet
      inherited PnlCadTop: TPanel
        StyleElements = [seFont, seClient, seBorder]
        inherited EdtCadCodigo: TEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      inherited PnlCadForm: TPanel
        StyleElements = [seFont, seClient, seBorder]
        object Label1: TLabel
          Left = 12
          Top = 16
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
        end
        object EdtcadRazaoSocial: TEdit
          Left = 12
          Top = 37
          Width = 581
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 0
        end
      end
    end
    inherited TSPesquisa: TTabSheet
      inherited Panel1: TPanel
        StyleElements = [seFont, seClient, seBorder]
        inherited EdtPesCriterio: TEdit
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited CbxPesCriterio: TComboBox
          StyleElements = [seFont, seClient, seBorder]
          Items.Strings = (
            'C'#243'digo'
            'Raz'#227'o Social'
            'Nome Fantasia')
        end
      end
      inherited Panel2: TPanel
        StyleElements = [seFont, seClient, seBorder]
        inherited DBGPesPesquisar: TDBGrid
          DataSource = DM.DSQryPesEmpresas
          Columns = <
            item
              Expanded = False
              FieldName = 'EMP_ID'
              Title.Caption = 'C'#243'digo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_RAZAO_SOCIAL'
              Title.Caption = 'Raz'#227'o Social'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NOME_FANTASIA'
              Title.Caption = 'Nome Fantasia'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_CNPJ'
              Title.Caption = 'CNPJ'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_CPF'
              Title.Caption = 'CPF'
              Width = 150
              Visible = True
            end>
        end
      end
    end
  end
end
