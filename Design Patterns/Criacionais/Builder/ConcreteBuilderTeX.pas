unit ConcreteBuilderTeX;

interface

uses IBuilder, Product;

type
  TBuilderTeX = class(TInterfacedObject, ITextConvertBuilder)
  private
    FProduct: TProduct;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ConvertChar(val: char);
    procedure ConvertFontChange(font: string);
    procedure ConvertParagraph(para: String);
    function GetConvert: TProduct;
  end;

implementation

{ TBuilderTeX }

procedure TBuilderTeX.ConvertChar(val: char);
begin
  // Process convertion
 FProduct.AddPart('B');
end;

procedure TBuilderTeX.ConvertFontChange(font: string);
begin
  // Process convertion
 FProduct.AddPart('TeX Font');
end;

procedure TBuilderTeX.ConvertParagraph(para: String);
begin
  // Process convertion
  FProduct.AddPart('TeX Paragraph');
end;

constructor TBuilderTeX.Create;
begin
 FProduct := TProduct.Create;
end;

destructor TBuilderTeX.Destroy;
begin
    FProduct.Free;
  inherited;
end;

function TBuilderTeX.GetConvert: TProduct;
begin
Result := FProduct;
end;


end.
