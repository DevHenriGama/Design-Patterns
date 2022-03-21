unit ConcreteBuilderASCII;

interface

uses IBuilder;

type
  TBuilderASCII = class(TInterfacedObject, ITextConvertBuilder)
  public
    function ConvertChar(val: char): char;
    function ConvertFontChange(font: string): string;
    function ConvertParagraph(para: String): String;
  end;

implementation

{ TBuilderASCII }

function TBuilderASCII.ConvertChar(val: char): char;
begin
  // Process convertion
  Result := 'A';
end;

function TBuilderASCII.ConvertFontChange(font: string): string;
begin
  // Process convertion
  Result := 'ASCII Font'
end;

function TBuilderASCII.ConvertParagraph(para: String): String;
begin
  // Process convertion
  Result := 'ASCII Paragraph';
end;


end.
