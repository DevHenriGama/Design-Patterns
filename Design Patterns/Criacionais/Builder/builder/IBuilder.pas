unit IBuilder;

interface

uses Product;

type
  ITextConvertBuilder = interface
    ['{65200D1E-978A-472F-B6D9-2EB88B3F9256}']
    procedure ConvertChar(val: char);
    procedure ConvertFontChange(font: string);
    procedure ConvertParagraph(para: String);
    function GetConvert: TProduct;
  end;

implementation

end.
