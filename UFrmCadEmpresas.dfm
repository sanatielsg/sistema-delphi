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
        ExplicitTop = 89
        ExplicitHeight = 303
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
        end
      end
      inherited Panel2: TPanel
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 0
        ExplicitTop = 49
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
