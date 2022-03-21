unit ConcreteBuilderTeX;

interface

uses IBuilder;

type
  TBuilderTeX = class(TInterfacedObject, ITextConvertBuilder)
  public
    function ConvertChar(val: char): char;
    function ConvertFontChange(font: string): string;
    function ConvertParagraph(para: String): String;
  end;

implementation

{ TBuilderTeX }

function TBuilderTeX.ConvertChar(val: char): char;
begin
//process convert
 Result := 'B';
end;

function TBuilderTeX.ConvertFontChange(font: string): string;
begin
//process convert
Result := 'Font TeX';
end;

function TBuilderTeX.ConvertParagraph(para: String): String;
begin
//process convert
Result := 'TeX Paragraph';
end;

end.
