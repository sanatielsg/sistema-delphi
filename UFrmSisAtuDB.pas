unit UFrmSisAtuDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls
  , UDM
  ;

type
  TFrmSisAtuDB = class(TForm)
    BtnAtualizarDB: TButton;
    Label1: TLabel;
    LblVersaoDB: TLabel;
    procedure BtnAtualizarDBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSisAtuDB: TFrmSisAtuDB;

implementation

{$R *.dfm}

procedure TFrmSisAtuDB.BtnAtualizarDBClick(Sender: TObject);
begin
  DM.AtualizarDB;
end;

end.
