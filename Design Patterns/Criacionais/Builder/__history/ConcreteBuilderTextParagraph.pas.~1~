unit ConcreteBuilderTextParagraph;


interface

uses IBuilder;

type
  TBuilderTexWidget = class(TInterfacedObject, ITextConvertBuilder)
  public
    function ConvertChar(val: char): char;
    function ConvertFontChange(font: string): string;
    function ConvertParagraph(para: String): String;
  end;


implementation

{ TBuilderTexWidget }

function TBuilderTexWidget.ConvertChar(val: char): char;
begin
// Process convert
Result := 'C';
end;

function TBuilderTexWidget.ConvertFontChange(font: string): string;
begin
//Process convert
Result := 'TextWidget Font';
end;

function TBuilderTexWidget.ConvertParagraph(para: String): String;
begin
//process convert
Result := 'TextWidget Paragraph';
end;

end.
