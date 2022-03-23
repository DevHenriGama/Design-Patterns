unit ConcreteCreator;

interface

uses Creator, Product, ConcreteProduct, ConcreteProduct2,
  ConcreteProduct3.Emissed;

type
  TCreator = class(TInterfacedObject, ICreator)
  private

  public
     function GetSession(Session : String) : IEmissionProduct;
    function GetUserDate: IProduct;
  end;

implementation

{ TCreator }

function TCreator.GetSession(Session : String) : IEmissionProduct;
begin
 if Session = 'Normal' then
  Result := TProduct2.Create
 else
  Result := TProduct3.Create;

end;

function TCreator.GetUserDate: IProduct;
begin
 Result := TProduct.Create;
end;

end.
