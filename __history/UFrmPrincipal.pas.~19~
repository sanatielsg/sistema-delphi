unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus
  , UFrmCadProdutos
  , UFrmCadClientes
  , UFrmCadCaixas
  , UFrmCadBancos
  ;

type
  TFrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    MnuCadastros: TMenuItem;
    MnuLancamentos: TMenuItem;
    MniCadProdutos: TMenuItem;
    MniCadClientes: TMenuItem;
    MniLanEstoque: TMenuItem;
    MniLanPedVendas: TMenuItem;
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
    MniRelPedVendas: TMenuItem;
    MniRelCR: TMenuItem;
    MniRelTesouraria: TMenuItem;
    MnuSistema: TMenuItem;
    MniSisAtuDB: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MniCadProdutosClick(Sender: TObject);
    procedure MniCadClientesClick(Sender: TObject);
    procedure MniCadCaixasClick(Sender: TObject);
    procedure MniCadBancosClick(Sender: TObject);
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

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FrmCadProdutos := TFrmCadProdutos.Create(Self);
  FrmCadClientes := TFrmCadClientes.Create(Self);
  FrmCadCaixas   := TFrmCadCaixas.Create(Self);
  FrmCadBancos   := TFrmCadBancos.Create(Self);
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

end.
