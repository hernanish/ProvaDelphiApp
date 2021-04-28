unit UTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.StdCtrls, Vcl.ComCtrls, System.Threading;

type
  TfrmTarefa2 = class(TfrmModelo)
    pbTemp1: TProgressBar;
    pbTemp2: TProgressBar;
    btnStart: TButton;
    edTemp1: TEdit;
    edTemp2: TEdit;
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure paralelo;
    procedure barra(PBar: TProgressBar; Ed: Integer);
  end;

var
  frmTarefa2: TfrmTarefa2;

implementation

{$R *.dfm}

procedure TfrmTarefa2.barra(PBar: TProgressBar; Ed: Integer);
var
  I : Integer;
begin
  for I := 0 to 100 do
  begin
    Sleep(Ed);
    PBar.Position := I;
  end;
end;

procedure TfrmTarefa2.btnStartClick(Sender: TObject);
begin
  if StrToIntDef(edTemp1.Text, 0) = 0 then
  begin
    ShowMessage('Informe um valor inteiro.');
    edTemp1.SetFocus;
  end
  else
    if StrToIntDef(edTemp2.Text, 0) = 0 then
    begin
      ShowMessage('Informe um valor inteiro.');
      edTemp2.SetFocus;
    end
    else
      paralelo;
end;

procedure TfrmTarefa2.paralelo;
var
  Tasks: array [0..1] of ITask;
begin
  Tasks[0] := TTask.Create(procedure
                           begin
                             barra(pbTemp1, StrToInt(edTemp1.Text));
                           end);
  Tasks[0].Start;

  Tasks[1] := TTask.Create(procedure
                           begin
                             barra(pbTemp2, StrToInt(edTemp2.Text));
                           end);
  Tasks[1].Start;
end;

end.
