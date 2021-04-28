unit UInterface;

interface

uses
  Vcl.Forms, System.SysUtils;

type
  IFormulario = interface
    ['{8725F2DA-66C5-410A-BB83-AD454F1301C3}']
    procedure abrirFormulario(Classe: TFormClass; Formulario: TForm);
  end;

  TOpen = class(TInterfacedObject, IFormulario)
    procedure abrirFormulario(Classe: TFormClass; Formulario: TForm);
  end;

implementation

procedure TOpen.abrirFormulario(Classe: TFormClass; Formulario: TForm);
var
  I: Integer;
begin
  with (Application.MainForm) do
    for I := 0 to MDIChildCount - 1 do
      if (MDIChildren[I] is Classe) then
      begin
        if MDIChildren[I].WindowState = wsMinimized then
          MDIChildren[I].WindowState := wsNormal;

        MDIChildren[I].Show;
        Exit;
      end;
  Formulario := Classe.Create(Application);
end;

end.
