unit UFrmCadEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadPadrao, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls
  , UDM
  ;

type
  TFrmCadEmpresas = class(TFrmCadPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresas: TFrmCadEmpresas;

implementation

{$R *.dfm}

end.
