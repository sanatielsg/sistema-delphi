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
    EdtID: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
