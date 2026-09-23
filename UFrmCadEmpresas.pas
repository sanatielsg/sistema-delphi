unit UFrmCadEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadPadrao, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls
  , UDM
  , UUTil
  ;

type
  TFrmCadEmpresas = class(TFrmCadPadrao)
    EdtcadRazaoSocial: TEdit;
    Label1: TLabel;
    procedure BtnCadNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresas: TFrmCadEmpresas;

implementation

{$R *.dfm}

procedure TFrmCadEmpresas.BtnCadNovoClick(Sender: TObject);
begin
  inherited;
  TUtil.LimparForm(PnlCadForm);
end;

end.
