unit UFrmCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadPadrao = class(TForm)
    StatusBar: TStatusBar;
    PageControl: TPageControl;
    TSCadastro: TTabSheet;
    TSPesquisa: TTabSheet;
    PnlCadTop: TPanel;
    PnlCadForm: TPanel;
    BtnCadNovo: TButton;
    BtnCadGravar: TButton;
    BtnCadCancelar: TButton;
    BtnCadExcluir: TButton;
    BtnCadPesquisar: TButton;
    EdtCadCodigo: TEdit;
    BtnCadAnterior: TButton;
    BtnCadPrimeiro: TButton;
    BtnCadUltimo: TButton;
    BtnCadProximo: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnPesPesquisar: TButton;
    EdtPesCriterio: TEdit;
    CbxPesCriterio: TComboBox;
    DBGPesPesquisar: TDBGrid;
    procedure BtnCadNovoClick(Sender: TObject);
    procedure BtnCadGravarClick(Sender: TObject);
    procedure BtnCadCancelarClick(Sender: TObject);
    procedure BtnCadExcluirClick(Sender: TObject);
    procedure BtnCadPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AcoesBotaoNovo();
    procedure AcoesBotaoGravar();
    procedure AcoesBotaoCancelar();
    procedure AcoesBotaoExcluir();
    procedure AcoesBotaoPesquisar();
  public
    { Public declarations }

  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

procedure TFrmCadPadrao.AcoesBotaoCancelar;
begin

  AcoesBotaoGravar;
end;

procedure TFrmCadPadrao.AcoesBotaoExcluir;
begin


  AcoesBotaoGravar;
end;

procedure TFrmCadPadrao.AcoesBotaoGravar;
begin
  BtnCadNovo.Enabled      := True;
  BtnCadGravar.Enabled    := False;
  BtnCadCancelar.Enabled  := False;
  BtnCadExcluir.Enabled   := False;
  BtnCadPesquisar.Enabled := True;
end;

procedure TFrmCadPadrao.AcoesBotaoNovo;
begin
  BtnCadNovo.Enabled      := False;
  BtnCadGravar.Enabled    := True;
  BtnCadCancelar.Enabled  := True;
  BtnCadExcluir.Enabled   := False;
  BtnCadPesquisar.Enabled := False;
end;

procedure TFrmCadPadrao.AcoesBotaoPesquisar;
begin
  PageControl.TabIndex := 1;
end;

procedure TFrmCadPadrao.BtnCadCancelarClick(Sender: TObject);
begin
  AcoesBotaoCancelar;
end;

procedure TFrmCadPadrao.BtnCadExcluirClick(Sender: TObject);
begin
  AcoesBotaoExcluir;
end;

procedure TFrmCadPadrao.BtnCadGravarClick(Sender: TObject);
begin
  AcoesBotaoGravar;
end;

procedure TFrmCadPadrao.BtnCadNovoClick(Sender: TObject);
begin
  AcoesBotaoNovo;
end;

procedure TFrmCadPadrao.BtnCadPesquisarClick(Sender: TObject);
begin
  AcoesBotaoPesquisar;
end;

procedure TFrmCadPadrao.FormShow(Sender: TObject);
begin
  PageControl.TabIndex := 1;
end;

end.
