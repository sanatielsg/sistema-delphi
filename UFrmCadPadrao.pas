unit UFrmCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    Button1: TButton;
    Edit1: TEdit;
    CbxPesCriterios: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

end.
