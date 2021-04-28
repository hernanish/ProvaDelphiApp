unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs, Vcl.StdCtrls;

type
  TspQuery = class(TFDQuery)
  private
    { Private declarations }
    FspCondicoes: TStrings ;
    FspColunas: TStrings ;
    FspTabelas: TStrings ;

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetspColunas(const Value: TStrings );
    procedure SetspCondicoes(const Value: TStrings );
    procedure SetspTabelas(const Value: TStrings );
    procedure GeraSQL(MemoSQL: TMemo);
    function VerificaMemo(palavra: TStrings): String;
    function ContaPalavras(Texto: TStrings): Integer;
  published
    { Published declarations }
    property spCondicoes: TStrings  read FspCondicoes write SetspCondicoes;
    property spColunas: TStrings  read FspColunas write SetspColunas;
    property spTabelas: TStrings  read FspTabelas write SetspTabelas;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

function TspQuery.ContaPalavras(Texto: TStrings): Integer;
var
  Lista :TStringList;
begin
  with TStringList.Create do
  begin
    Delimiter := ' ';
    DelimitedText := StringReplace(Texto.Text, ',', ' ', [rfReplaceAll]);
    Result := Count;
    Free;
  end;
end;

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited Create (AOwner);
  FspCondicoes := TStringList.Create;
  FspColunas := TStringList.Create;
  FspTabelas := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  FspCondicoes.Free;
  FspColunas.Free;
  FspTabelas.Free;
  inherited Destroy;
end;

procedure TspQuery.GeraSQL(MemoSQL: TMemo);
begin
  MemoSQL.Clear;

  MemoSQL.Lines.Add('SELECT');
  MemoSQL.Lines.AddStrings(FspColunas);

  MemoSQL.Lines.Add('FROM');
  MemoSQL.Lines.AddStrings(FspTabelas);

  MemoSQL.Lines.Add('WHERE');
  MemoSQL.Lines.AddStrings(FspCondicoes);

  if VerificaMemo(FspTabelas) <> '' then
  begin
    Showmessage(VerificaMemo(FspTabelas));
    MemoSQL.Clear;
  end;
end;

procedure TspQuery.SetspColunas(const Value: TStrings);
begin
  FspColunas.Assign(Value);
end;

procedure TspQuery.SetspCondicoes(const Value: TStrings);
begin
  FspCondicoes.Assign(Value);
end;

procedure TspQuery.SetspTabelas(const Value: TStrings);
begin
  FspTabelas.Assign(Value);
end;

function TspQuery.VerificaMemo(palavra: TStrings): String;
var
  I : Integer;
begin
  if palavra.Count > 1 then
  begin
    result := 'Só pode existir uma tabela.';
    exit;
  end;

  if ContaPalavras(palavra) > 1 then
  begin
    result := 'Só pode existir uma tabela.';
    exit;
  end;
end;

end.
