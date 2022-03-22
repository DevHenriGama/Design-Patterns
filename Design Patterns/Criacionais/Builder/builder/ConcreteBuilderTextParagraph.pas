unit ConcreteBuilderTextParagraph;


interface

uses IBuilder, Product;

type
  TBuilderTexWidget = class(TInterfacedObject, ITextConvertBuilder)
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

{ TBuilderTexWidget }

procedure TBuilderTexWidget.ConvertChar(val: char);
begin
  // Process convertion
 FProduct.AddPart('C');
end;

procedure TBuilderTexWidget.ConvertFontChange(font: string);
begin
  // Process convertion
 FProduct.AddPart('TexWidget Font');
end;

procedure TBuilderTexWidget.ConvertParagraph(para: String);
begin
  // Process convertion
  FProduct.AddPart('TexWidget Paragraph');
end;

constructor TBuilderTexWidget.Create;
begin
 FProduct := TProduct.Create;
end;

destructor TBuilderTexWidget.Destroy;
begin
    FProduct.Free;
  inherited;
end;

function TBuilderTexWidget.GetConvert: TProduct;
begin
Result := FProduct;
end;


end.
