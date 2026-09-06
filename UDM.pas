unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Con: TFDConnection;
    Qry: TFDQuery;
    DriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarDB(aVersaoAtual, aVersaoNova: Integer);

    procedure ExecutarComando(aComando: String);
    procedure AtualizarVersaoDB(aVersao: Integer);
    function ExisteTabela(aTabela:String): Boolean;
  public
    { Public declarations }
    function  GetVersaoDB: Integer;
    procedure AtualizarBanco();
  end;

var
  DM: TDM;
  VersaoBanco: integer = 2;
  Comandos : TStringList;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AtualizarDB(aVersaoAtual, aVersaoNova: Integer);
  var I: Integer;
begin
  if aVersaoAtual < aVersaoNova then
  begin
    try
      for I := aVersaoAtual+1 to aVersaoNova do
      begin
        ExecutarComando(Comandos[I]);
      end;
      AtualizarVersaoDB(aVersaoNova);
    finally
      Comandos.Free;
    end;
  end;
end;

procedure TDM.AtualizarBanco;
begin
  if not ExisteTabela('PARAMETROS') then
  begin
    ExecutarComando(Comandos[0]);
    ExecutarComando(Comandos[1]);
    AtualizarVersaoDB(1);
  end else
  AtualizarDB(GetVersaoDB, VersaoBanco);
end;

procedure TDM.AtualizarVersaoDB(aVersao: Integer);
begin
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('UPDATE PARAMETROS SET PAR_VERSAODB = ' + IntToStr(aVersao));
  Qry.ExecSQL;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Comandos := TStringList.Create;

  With Comandos do
  begin
    Insert(0, 'CREATE TABLE PARAMETROS (PAR_ID INTEGER NOT NULL PRIMARY KEY, PAR_VERSAODB INTEGER DEFAULT 0 NOT NULL )');
    Insert(1, 'INSERT INTO PARAMETROS (PAR_ID) VALUES (1)');
    Insert(2, 'CREATE TABLE EMPRESAS (EMP_ID INTEGER NOT NULL PRIMARY KEY)');
  end;
end;

procedure TDM.ExecutarComando(aComando: String);
begin
 Qry.Close;
 Qry.SQL.Clear;
 Qry.ExecSQL(aComando);
end;

function TDM.ExisteTabela(aTabela: String): Boolean;
begin
 Result := False;
 Qry.Close;
 Qry.SQL.Clear;
 Qry.SQL.Add('SELECT COUNT(*) as QT FROM RDB$RELATIONS WHERE RDB$RELATION_NAME = :tabela AND RDB$SYSTEM_FLAG = 0');
 Qry.ParamByName('tabela').AsString := aTabela;
 Qry.Open();
 Result := Qry.FieldByName('QT').AsInteger > 0;
end;

function TDM.GetVersaoDB: Integer;
begin
  Result := 0;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('SELECT PAR_VERSAODB FROM PARAMETROS');
  try
    Qry.Open();
    Result :=  Qry.FieldByName('PAR_VERSAODB').AsInteger;
  finally
    Qry.Close;
  end;
end;

end.
