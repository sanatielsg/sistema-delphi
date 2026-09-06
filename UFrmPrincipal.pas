unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus
  , UDM
  , UFrmCadProdutos
  , UFrmCadClientes
  , UFrmCadCaixas
  , UFrmCadBancos
  , UFrmLanEstoque
  , UFrmLanPedVenda
  , UFrmLanCR
  , UFrmLanTesouraria
  , UFrmRelProdutos
  , UFrmRelClientes
  , UFrmRelCaixas
  , UFrmRelBancos
  , UFrmRelEstoque
  , UFrmRelPedVenda
  , UFrmRelCR
  , UFrmRelTesouraria
  , UFrmSisAtuDB
  , Vcl.ExtCtrls
  , Vcl.StdCtrls
  , UFrmCadEmpresa
  , System.IniFiles
  , USobre, Vcl.ComCtrls
  ;

type
  TFrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    MnuCadastros: TMenuItem;
    MnuLancamentos: TMenuItem;
    MniCadProdutos: TMenuItem;
    MniCadClientes: TMenuItem;
    MniLanEstoque: TMenuItem;
    MniLanPedVenda: TMenuItem;
    MniLanCR: TMenuItem;
    MniLanTesouraria: TMenuItem;
    MniCadCaixas: TMenuItem;
    MniCadBancos: TMenuItem;
    MnuRelatorios: TMenuItem;
    MniRelProdutos: TMenuItem;
    MniRelClientes: TMenuItem;
    MniLanCaixas: TMenuItem;
    MniRelBancos: TMenuItem;
    MniRelEstoque: TMenuItem;
    MniRelPedVenda: TMenuItem;
    MniRelCR: TMenuItem;
    MniRelTesouraria: TMenuItem;
    MnuSistema: TMenuItem;
    MniSisAtuDB: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    PnlMENUS: TPanel;
    PnlINFO: TPanel;
    LblDATA: TLabel;
    LblHORA: TLabel;
    LblDATAINFO: TLabel;
    LblHORAINFO: TLabel;
    TmtINFO: TTimer;
    MniCadEmpresas: TMenuItem;
    Sobre1: TMenuItem;
    StatusBar: TStatusBar;
    procedure MniCadProdutosClick(Sender: TObject);
    procedure MniCadClientesClick(Sender: TObject);
    procedure MniCadCaixasClick(Sender: TObject);
    procedure MniCadBancosClick(Sender: TObject);
    procedure MniLanEstoqueClick(Sender: TObject);
    procedure MniLanPedVendaClick(Sender: TObject);
    procedure MniLanCRClick(Sender: TObject);
    procedure MniLanTesourariaClick(Sender: TObject);
    procedure MniRelProdutosClick(Sender: TObject);
    procedure MniRelClientesClick(Sender: TObject);
    procedure MniLanCaixasClick(Sender: TObject);
    procedure MniRelBancosClick(Sender: TObject);
    procedure MniRelEstoqueClick(Sender: TObject);
    procedure MniRelPedVendaClick(Sender: TObject);
    procedure MniRelCRClick(Sender: TObject);
    procedure MniRelTesourariaClick(Sender: TObject);
    procedure MniSisAtuDBClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure TmtINFOTimer(Sender: TObject);
    procedure MniCadEmpresasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConectarBancoDados;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  ViewCadProdutos: TFrmCadProdutos;
  FrmCadCaixas: TFrmCadCaixas;
  FrmCadBancos: TFrmCadBancos;
  FrmLanEstoque: TFrmLanEstoque;
  FrmLanPedVenda: TFrmLanPedVenda;
  FrmLanCR: TFrmLanCR;
  FrmLanTesouraria: TFrmLanTesouraria;
  FrmRelProdutos: TFrmRelProdutos;
  FrmRelClientes: TFrmRelClientes;
  FrmRelCaixas: TFrmRelCaixas;
  FrmRelBancos: TFrmRelBancos;
  FrmRelEstoque: TFrmRelEstoque;
  FrmRelPedVenda: TFrmRelPedVenda;
  FrmRelCR: TFrmRelCR;
  FrmRelTesouraria: TFrmRelTesouraria;
  FrmSisAtuDB: TFrmSisAtuDB;


implementation

{$R *.dfm}

procedure TFrmPrincipal.ConectarBancoDados;
  var IniFile : TIniFile;
      ArquivoIni: String;
begin
  try
    ArquivoIni := ExtractFilePath(Application.ExeName) + 'config.ini';
    if not FileExists(ArquivoIni) then
      Raise Exception.Create('Arquivo .ini nao existe!');
    IniFile := TIniFile.Create(ArquivoIni);
    try
      DM.Con.Params.Database := IniFile.ReadString('banco','dbfile','');
      DM.DriverLink.VendorLib := IniFile.ReadString('banco','lib','');
    finally
      FreeAndNil(IniFile);
    end;
    DM.Con.Connected := True;
  except
  on E:Exception do
    begin
      ShowMessage('Ocorreu um erro ao contectar o banco de dados: '+E.Message);
      Application.Terminate;
    end;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  ConectarBancoDados;

  StatusBar.Panels[1].Text := DM.Con.Params.Database;
end;

procedure TFrmPrincipal.MniCadBancosClick(Sender: TObject);
begin
  FrmCadBancos := TFrmCadBancos.Create(Nil);
  try
    FrmCadBancos.ShowModal;
  finally
    FreeAndNil(FrmCadBancos)
  end;
end;

procedure TFrmPrincipal.MniCadCaixasClick(Sender: TObject);
begin
  FrmCadCaixas := TFrmCadCaixas.Create(Nil);
  try
    FrmCadCaixas.ShowModal;
  finally
    FreeAndNil(FrmCadCaixas);
  end;
end;

procedure TFrmPrincipal.MniCadClientesClick(Sender: TObject);
begin
  FrmCadClientes := TFrmCadClientes.Create(Nil);
  try
    FrmCadClientes.ShowModal;
  finally
    FreeAndNil(FrmCadClientes);
  end;
end;

procedure TFrmPrincipal.MniCadEmpresasClick(Sender: TObject);
begin
  FrmCadEmpresa := TFrmCadEmpresa.Create(Nil);
  try
    FrmCadEmpresa.ShowModal;
  finally
    FreeAndNil(FrmCadEmpresa);
  end;
end;

procedure TFrmPrincipal.MniCadProdutosClick(Sender: TObject);
begin
  FrmCadProdutos := TFrmCadProdutos.Create(Nil);
  try
    FrmCadProdutos.ShowModal;
  finally
    FreeAndNil(FrmCadProdutos);
  end;
end;

procedure TFrmPrincipal.MniLanCaixasClick(Sender: TObject);
begin
  FrmRelCaixas := TFrmRelCaixas.Create(Nil);
  try
    FrmRelCaixas.ShowModal;
  finally
    FreeAndNil(FrmRelCaixas);
  end;
end;

procedure TFrmPrincipal.MniLanCRClick(Sender: TObject);
begin
  FrmLanCR := TFrmLanCR.Create(Nil);
  try
    FrmLanCR.ShowModal;
  finally
    FreeAndNil(FrmLanCR);
  end;
end;

procedure TFrmPrincipal.MniLanEstoqueClick(Sender: TObject);
begin
  try
    FrmLanEstoque := TFrmLanEstoque.Create(Nil);
    FrmLanEstoque.ShowModal;
  finally
    FreeAndNil(FrmLanEstoque);
  end;
end;

procedure TFrmPrincipal.MniLanPedVendaClick(Sender: TObject);
begin
  FrmLanPedVenda := TFrmLanPedVenda.Create(Nil);
  try
    FrmLanPedVenda.ShowModal;
  finally
    FreeAndNil(FrmLanPedVenda);
  end;
end;

procedure TFrmPrincipal.MniLanTesourariaClick(Sender: TObject);
begin
  FrmLanTesouraria := TFrmLanTesouraria.Create(Nil);
  try
    FrmLanTesouraria.ShowModal;
  finally
    FreeAndNil(FrmLanTesouraria);
  end;
end;

procedure TFrmPrincipal.MniRelBancosClick(Sender: TObject);
begin
  FrmRelBancos := TFrmRelBancos.Create(Nil);
  try
    FrmRelBancos.ShowModal;
  finally
    FreeAndNil(FrmRelBancos);
  end;
end;

procedure TFrmPrincipal.MniRelClientesClick(Sender: TObject);
begin
  FrmRelClientes := TFrmRelClientes.Create(Nil);
  try
    FrmRelClientes.ShowModal;
  finally
    FreeAndNil(FrmRelClientes);
  end;
end;

procedure TFrmPrincipal.MniRelCRClick(Sender: TObject);
begin
  FrmRelCR := TFrmRelCR.Create(Nil);
  try
    FrmRelCR.ShowModal;
  finally
    FreeAndNil(FrmRelCR);
  end;
end;

procedure TFrmPrincipal.MniRelEstoqueClick(Sender: TObject);
begin
  FrmRelEstoque := TFrmRelEstoque.Create(Nil);
  try
    FrmRelEstoque.ShowModal;
  finally
    FreeAndNil(FrmRelEstoque);
  end;
end;

procedure TFrmPrincipal.MniRelPedVendaClick(Sender: TObject);
begin
  FrmRelPedVenda := TFrmRelPedVenda.Create(Nil);
  try
    FrmRelPedVenda.ShowModal;
  finally
    FreeAndNil(FrmRelPedVenda);
  end;
end;

procedure TFrmPrincipal.MniRelProdutosClick(Sender: TObject);
begin
  FrmRelProdutos := TFrmRelProdutos.Create(Nil);
  try
    FrmRelProdutos.ShowModal;
  finally
    FreeAndNil(FrmRelProdutos);
  end;
end;

procedure TFrmPrincipal.MniRelTesourariaClick(Sender: TObject);
begin
  FrmRelTesouraria := TFrmRelTesouraria.Create(Nil);
  try
    FrmRelTesouraria.ShowModal;
  finally
    FreeAndNil(FrmRelTesouraria);
  end;
end;

procedure TFrmPrincipal.MniSisAtuDBClick(Sender: TObject);
begin
  FrmSisAtuDB := TFrmSisAtuDB.Create(Nil);
  try
    FrmSisAtuDB.ShowModal;
  finally
    FreeAndNil(FrmSisAtuDB);
  end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
begin
  FrmSobre := TFrmSobre.Create(Nil);
  try
    FrmSobre.ShowModal;
  finally
    FreeAndNil(FrmSobre);
  end;
end;

procedure TFrmPrincipal.TmtINFOTimer(Sender: TObject);
begin
  LblDATAINFO.Caption := FormatDateTime('DD/MM/YYYY', now);
  LblHORAINFO.Caption := FormatDateTime('HH:MM:SS', now);
end;

end.
