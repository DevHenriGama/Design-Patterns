unit AbstractProduct;

interface

uses  System.UITypes;

type
    AbstractProduct1 = interface
      ['{294FD2E4-8478-4BEE-87D6-278BBFC17A90}']
      function Color1 : Tcolor;
      function Color2 : TColor;
     end;

     AbstractProduct2 = interface
       ['{BE0AD090-6B8E-4FBF-84C7-FCFDD8CCD05E}']
       function Color1 : TColor;
       function Color2 : TColor;

     end;

implementation

end.
