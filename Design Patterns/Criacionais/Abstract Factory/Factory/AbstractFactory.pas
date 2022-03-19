unit AbstractFactory;

interface

uses AbstractProduct;

type
    IAbstractFactory = interface
    ['{528DB6F4-AF55-4D46-891F-415B1DC4CBAA}']
      function Style1 : AbstractProduct1;
      function Style2 : AbstractProduct2;
    end;

implementation

end.
