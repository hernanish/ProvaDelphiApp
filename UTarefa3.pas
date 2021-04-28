unit UTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmTarefa3 = class(TfrmModelo)
    lbVlrProjeto: TLabel;
    dbgProjetos: TDBGrid;
    edTotal: TMaskEdit;
    edTotalDiv: TMaskEdit;
    btnTotal: TButton;
    btnTotalDiv: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTotalClick(Sender: TObject);
    procedure btnTotalDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cdsProjetos : TClientDataSet;
    dsProjetos : TDataSource;
  end;

var
  frmTarefa3: TfrmTarefa3;

implementation

{$R *.dfm}

procedure TfrmTarefa3.btnTotalClick(Sender: TObject);
var
  I: Integer;
  Soma: Currency;
begin
  Soma := 0;

  cdsProjetos.First;
  while not cdsProjetos.Eof do
  begin
    soma := soma + cdsProjetos.FieldByName('Valor').AsFloat;
    cdsProjetos.Next;
  end;

  edTotal.Text := FormatFloat('R$ ###,##0.00', Soma);
end;

procedure TfrmTarefa3.btnTotalDivClick(Sender: TObject);
var
  I: Integer;
  Soma, Valor1, Valor2 : Currency;
begin
  Soma := 0;
  Valor1 := 0;
  Valor2 := 0;

  cdsProjetos.First;
  for I := 1 to cdsProjetos.RecordCount-1 do
  begin
    Valor1 := cdsProjetos.FieldByName('Valor').AsFloat;
    cdsProjetos.Next;
    Valor2 := cdsProjetos.FieldByName('Valor').AsFloat;
    soma := soma + (Valor2/Valor1);
  end;

  edTotalDiv.Text := FormatFloat('R$ ###,##0.00', Soma);
end;

procedure TfrmTarefa3.FormCreate(Sender: TObject);
var
  I, X : Integer;
begin
  cdsProjetos := TClientDataSet.Create(Self);
  dsProjetos := TDataSource.Create(Self);

  cdsProjetos.Close;
  cdsProjetos.FieldDefs.Clear;
  cdsProjetos.FieldDefs.add('IdProjeto', ftInteger);
  cdsProjetos.FieldDefs.add('NomeProjeto', ftString,50);
  cdsProjetos.FieldDefs.add('Valor', ftFloat);
  cdsProjetos.CreateDataSet;

  dsProjetos.DataSet := cdsProjetos;
  dbgProjetos.DataSource := dsProjetos;

  dbgProjetos.columns[0].width := 189;
  dbgProjetos.columns[1].width := 550;
  dbgProjetos.columns[2].width := 178;

  X := 10;
  for I := 1 to 10 do
  begin
    cdsProjetos.Append;
    cdsProjetos.FieldByName('IdProjeto').AsInteger := I;
    cdsProjetos.FieldByName('NomeProjeto').AsString := 'Projeto ' + IntToStr(I);
    cdsProjetos.FieldByName('Valor').AsFloat := StrtoFloat(IntToStr(Random(100)));
    cdsProjetos.Post;
    X := X + 10;
  end;

  (cdsProjetos.FieldByName('Valor') as TFloatField).DisplayFormat := 'R$ ###,##0.00'
end;

end.
