unit UTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery;

type
  TfrmTarefa1 = class(TfrmModelo)
    mmColunas: TMemo;
    mmTabelas: TMemo;
    mmCondicoes: TMemo;
    btGerarSQL: TButton;
    mmSQLGerado: TMemo;
    lbColunas: TLabel;
    lbTabelas: TLabel;
    lbCondicoes: TLabel;
    lbSQL: TLabel;
    spQuery1: TspQuery;
    procedure btGerarSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Prova1 : TspQuery;
  end;

var
  frmTarefa1: TfrmTarefa1;

implementation

{$R *.dfm}

procedure TfrmTarefa1.btGerarSQLClick(Sender: TObject);
begin
  spQuery1.SetspColunas(mmColunas.Lines);
  spQuery1.SetspTabelas(mmTabelas.Lines);
  spQuery1.SetspCondicoes(mmCondicoes.Lines);

  spQuery1.GeraSQL(mmSQLGerado);
end;

end.
