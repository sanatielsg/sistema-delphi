unit UFrmCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFraCadastro, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmCadEmpresa = class(TForm)
    PageControl: TPageControl;
    TSCadastro: TTabSheet;
    TSConsulta: TTabSheet;
    BotoesCadastro: TFraCadastro;
    PnlFormulario: TPanel;
    LblRegistro: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresa: TFrmCadEmpresa;

implementation

{$R *.dfm}

end.
