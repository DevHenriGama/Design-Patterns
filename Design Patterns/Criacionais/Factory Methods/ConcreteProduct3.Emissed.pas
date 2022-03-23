unit ConcreteProduct3.Emissed;

interface

uses Product;

type
  // Produto por emissão , quando passa o Item.
  TProduct3 = class(TInterfacedObject, IEmissionProduct)
  public
    function Username: String;
    function Password: String;
  end;

implementation

{ TProduct3 }

function TProduct3.Password: String;
begin
 Result := 'Emissed Password';
end;

function TProduct3.Username: String;
begin
  Result := 'Emissed Username';
end;

end.
