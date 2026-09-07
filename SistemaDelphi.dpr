program SistemaDelphi;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCadProdutos in 'UFrmCadProdutos.pas' {FrmCadProdutos},
  UFrmCadClientes in 'UFrmCadClientes.pas' {FrmCadClientes},
  UFrmCadCaixas in 'UFrmCadCaixas.pas' {FrmCadCaixas},
  UFrmCadBancos in 'UFrmCadBancos.pas' {FrmCadBancos},
  UFrmLanEstoque in 'UFrmLanEstoque.pas' {FrmLanEstoque},
  UFrmLanPedVenda in 'UFrmLanPedVenda.pas' {FrmLanPedVenda},
  UFrmLanCR in 'UFrmLanCR.pas' {FrmLanCR},
  UFrmLanTesouraria in 'UFrmLanTesouraria.pas' {FrmLanTesouraria},
  UFrmRelProdutos in 'UFrmRelProdutos.pas' {FrmRelProdutos},
  UFrmRelClientes in 'UFrmRelClientes.pas' {FrmRelClientes},
  UFrmRelCaixas in 'UFrmRelCaixas.pas' {FrmRelCaixas},
  UFrmRelBancos in 'UFrmRelBancos.pas' {FrmRelBancos},
  UFrmRelEstoque in 'UFrmRelEstoque.pas' {FrmRelEstoque},
  UFrmRelPedVenda in 'UFrmRelPedVenda.pas' {FrmRelPedVenda},
  UFrmRelCR in 'UFrmRelCR.pas' {FrmRelCR},
  UFrmRelTesouraria in 'UFrmRelTesouraria.pas' {FrmRelTesouraria},
  UFrmSisAtuDB in 'UFrmSisAtuDB.pas' {FrmSisAtuDB},
  UDM in 'UDM.pas' {DM: TDataModule},
  UFrmCadEmpresa in 'UFrmCadEmpresa.pas' {FrmCadEmpresa},
  USobre in 'USobre.pas' {FrmSobre},
  UFraCadastro in 'UFraCadastro.pas' {FraCadastro: TFrame},
  UDMCadastroAcoes in 'UDMCadastroAcoes.pas' {DMCadastroAcoes: TDataModule},
  UFrmCadastroPadrao in 'UFrmCadastroPadrao.pas' {page};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmSobre, FrmSobre);
  Application.CreateForm(TDMCadastroAcoes, DMCadastroAcoes);
  Application.CreateForm(Tpage, page);
  Application.Run;
end.
