unit ConcreteBuilderASCII;

interface

uses IBuilder, Product;

type
  TBuilderASCII = class(TInterfacedObject, ITextConvertBuilder)
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

{ TBuilderASCII }

procedure TBuilderASCII.ConvertChar(val: char);
begin
  // Process convertion
 FProduct.AddPart('A');
end;

procedure TBuilderASCII.ConvertFontChange(font: string);
begin
  // Process convertion
 FProduct.AddPart('ASCII Font');
end;

procedure TBuilderASCII.ConvertParagraph(para: String);
begin
  // Process convertion
  FProduct.AddPart('ASCII Paragraph');
end;

constructor TBuilderASCII.Create;
begin
 FProduct := TProduct.Create;
end;

destructor TBuilderASCII.Destroy;
begin
    FProduct.Free;
  inherited;
end;

function TBuilderASCII.GetConvert: TProduct;
begin
Result := FProduct;
end;

end.
