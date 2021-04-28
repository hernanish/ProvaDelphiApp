unit UModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.XPMan;

type
  TfrmModelo = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelo: TfrmModelo;

implementation

{$R *.dfm}

procedure TfrmModelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := Nil;
end;

end.
