unit Creator;

interface

uses Product;
  type
  ICreator = Interface
    ['{F3A9795C-05A7-4A2E-80EC-7A406EBBC483}']
    function GetUserDate : IProduct;
    function GetSession(Session : String) : IEmissionProduct;   //Modelo de Emissão
  End;

implementation

end.
