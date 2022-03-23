unit ConcreteProduct;

interface

uses Product;

type
  TProduct = class(TInterfacedObject, IProduct)
  private

  public
    function GetToken: String;
    function GetPassword: String;
  end;

implementation

{ TProduct }

function TProduct.GetPassword: String;
begin
    Result := '*****';
end;

function TProduct.GetToken: String;
begin
  Result := 'XDIKLÇ15ACTÇQ';
end;

end.
