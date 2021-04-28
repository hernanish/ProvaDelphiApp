program ProvaDelphiApp;

uses
  Vcl.Forms,
  UPrincipal in '..\Principal\UPrincipal.pas' {frmPrincipal},
  UModelo in '..\Hierarquia\UModelo.pas' {frmModelo},
  UFuncoes in '..\Funcoes\UFuncoes.pas',
  UTarefa1 in '..\UTarefa1.pas' {frmTarefa1},
  UInterface in '..\Interface\UInterface.pas',
  UTarefa2 in '..\UTarefa2.pas' {frmTarefa2},
  UTarefa3 in '..\UTarefa3.pas' {frmTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
