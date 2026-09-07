unit UFrmCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tpage = class(TForm)
    StatusBar: TStatusBar;
    PageControl: TPageControl;
    TSCadastro: TTabSheet;
    TSConsulta: TTabSheet;
    PnlCadTop: TPanel;
    PnlCadForm: TPanel;
    BtnCadNovo: TButton;
    BtnCadGravar: TButton;
    BtnCadCancelar: TButton;
    BtnCadExcluir: TButton;
    BtnCadPesquisar: TButton;
    EdtCadID: TEdit;
    BtnCadAnterior: TButton;
    BtnCadPrimeiro: TButton;
    BtnCadUltimo: TButton;
    BtnCadProximo: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  page: Tpage;

implementation

{$R *.dfm}

end.
