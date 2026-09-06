unit UFraCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls
  , UDMCadastroAcoes
  ;

type
  TFraCadastro = class(TFrame)
    Panel: TPanel;
    BtnNovo: TButton;
    BtnGravar: TButton;
    BtnCancelar: TButton;
    BtnExcluir: TButton;
    BtnPesquisar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
