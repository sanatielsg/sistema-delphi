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
  , UFrmSisAtuDB, Vcl.ExtCtrls, Vcl.StdCtrls
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
    procedure FormCreate(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  FrmCadProdutos : TFrmCadProdutos;
  FrmCadCaixas : TFrmCadCaixas;
  FrmCadBancos : TFrmCadBancos;
  FrmLanEstoque : TFrmLanEstoque;
  FrmLanPedVenda : TFrmLanPedVenda;
  FrmLanCR : TFrmLanCR;
  FrmLanTesouraria : TFrmLanTesouraria;
  FrmRelProdutos : TFrmRelProdutos;
  FrmRelClientes : TFrmRelClientes;
  FrmRelCaixas : TFrmRelCaixas;
  FrmRelBancos : TFrmRelBancos;
  FrmRelEstoque : TFrmRelEstoque;
  FrmRelPedVenda : TFrmRelPedVenda;
  FrmRelCR : TFrmRelCR;
  FrmRelTesouraria : TFrmRelTesouraria;
  FrmSisAtuDB : TFrmSisAtuDB;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FrmCadProdutos := TFrmCadProdutos.Create(Self);
  FrmCadClientes := TFrmCadClientes.Create(Self);
  FrmCadCaixas   := TFrmCadCaixas.Create(Self);
  FrmCadBancos   := TFrmCadBancos.Create(Self);
  FrmLanEstoque  := TFrmLanEstoque.Create(Self);
  FrmLanPedVenda := TFrmLanPedVenda.Create(Self);
  FrmLanCR       := TFrmLanCR.Create(Self);
  FrmLanTesouraria := TFrmLanTesouraria.Create(Self);
  FrmRelProdutos := TFrmRelProdutos.Create(Self);
  FrmRelClientes := TFrmRelClientes.Create(Self);
  FrmRelCaixas   := TFrmRelCaixas.Create(Self);
  FrmRelBancos   := TFrmRelBancos.Create(Self);
  FrmRelEstoque  := TFrmRelEstoque.Create(Self);
  FrmRelPedVenda := TFrmRelPedVenda.Create(Self);
  FrmRelCR       := TFrmRelCR.Create(Self);
  FrmRelTesouraria := TFrmRelTesouraria.Create(Self);
  FrmSisAtuDB    := TFrmSisAtuDB.Create(Self);
end;

procedure TFrmPrincipal.MniCadBancosClick(Sender: TObject);
begin
  FrmCadBancos.ShowModal;
end;

procedure TFrmPrincipal.MniCadCaixasClick(Sender: TObject);
begin
  FrmCadCaixas.ShowModal;
end;

procedure TFrmPrincipal.MniCadClientesClick(Sender: TObject);
begin
  FrmCadClientes.ShowModal;
end;

procedure TFrmPrincipal.MniCadProdutosClick(Sender: TObject);
begin
  FrmCadProdutos.ShowModal;
end;

procedure TFrmPrincipal.MniLanCaixasClick(Sender: TObject);
begin
  FrmRelCaixas.ShowModal;
end;

procedure TFrmPrincipal.MniLanCRClick(Sender: TObject);
begin
  FrmLanCR.ShowModal;
end;

procedure TFrmPrincipal.MniLanEstoqueClick(Sender: TObject);
begin
  FrmLanEstoque.ShowModal;
end;

procedure TFrmPrincipal.MniLanPedVendaClick(Sender: TObject);
begin
  FrmLanPedVenda.ShowModal;
end;

procedure TFrmPrincipal.MniLanTesourariaClick(Sender: TObject);
begin
  FrmLanTesouraria.ShowModal;
end;

procedure TFrmPrincipal.MniRelBancosClick(Sender: TObject);
begin
  FrmRelBancos.ShowModal;
end;

procedure TFrmPrincipal.MniRelClientesClick(Sender: TObject);
begin
  FrmRelClientes.ShowModal;
end;

procedure TFrmPrincipal.MniRelCRClick(Sender: TObject);
begin
  FrmRelCR.ShowModal;
end;

procedure TFrmPrincipal.MniRelEstoqueClick(Sender: TObject);
begin
  FrmRelEstoque.ShowModal;
end;

procedure TFrmPrincipal.MniRelPedVendaClick(Sender: TObject);
begin
  FrmRelPedVenda.ShowModal;
end;

procedure TFrmPrincipal.MniRelProdutosClick(Sender: TObject);
begin
  FrmRelProdutos.ShowModal;
end;

procedure TFrmPrincipal.MniRelTesourariaClick(Sender: TObject);
begin
  FrmRelTesouraria.ShowModal;
end;

procedure TFrmPrincipal.MniSisAtuDBClick(Sender: TObject);
begin
  FrmSisAtuDB.ShowModal;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.TmtINFOTimer(Sender: TObject);
begin
LblDATAINFO.Caption := FormatDateTime('DD/MM/YYYY', now);
LblHORAINFO.Caption := FormatDateTime('HH:MM:SS', now);
end;

end.
