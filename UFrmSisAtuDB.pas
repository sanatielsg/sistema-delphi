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
    procedure FormShow(Sender: TObject);
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
  DM.AtualizarBanco();
  LblVersaoDB.Caption := IntToStr(DM.GetVersaoDB);
end;

procedure TFrmSisAtuDB.FormShow(Sender: TObject);
begin
  try
     LblVersaoDB.Caption := IntToStr(DM.GetVersaoDB);
  except
    on E:Exception do
      ShowMessage('Ocorreu um erro: ' + E.Message);
  end;
end;

end.
