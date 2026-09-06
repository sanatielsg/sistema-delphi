unit UDMCadastroAcoes;

interface

uses
  System.SysUtils, System.Classes, System.Actions, Vcl.ActnList;

type
  TDMCadastroAcoes = class(TDataModule)
    ActionList: TActionList;
    ActNovo: TAction;
    ActCancelar: TAction;
    ActGravar: TAction;
    ActExcluir: TAction;
    ActPesquisar: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadastroAcoes: TDMCadastroAcoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
