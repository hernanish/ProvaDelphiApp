unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    mPrincipal: TMainMenu;
    smTarefas: TMenuItem;
    smTarefa1: TMenuItem;
    smTarefa2: TMenuItem;
    smTarefa3: TMenuItem;
    procedure smTarefa1Click(Sender: TObject);
    procedure smTarefa2Click(Sender: TObject);
    procedure smTarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UInterface, UTarefa1, UTarefa2, UTarefa3;

{$R *.dfm}

procedure TfrmPrincipal.smTarefa1Click(Sender: TObject);
var
  tarefa1 : IFormulario;
begin
  tarefa1 := TOpen.Create;
  tarefa1.abrirFormulario(TfrmTarefa1, frmTarefa1);
end;

procedure TfrmPrincipal.smTarefa2Click(Sender: TObject);
var
  tarefa2 : IFormulario;
begin
  tarefa2 := TOpen.Create;
  tarefa2.abrirFormulario(TfrmTarefa2, frmTarefa2);
end;

procedure TfrmPrincipal.smTarefa3Click(Sender: TObject);
var
  tarefa3 : IFormulario;
begin
  tarefa3 := TOpen.Create;
  tarefa3.abrirFormulario(TfrmTarefa3, frmTarefa3);
end;

end.
