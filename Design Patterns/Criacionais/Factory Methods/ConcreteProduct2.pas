unit ConcreteProduct2;

interface

uses Product;

type
  TProduct2 = class(TInterfacedObject, IEmissionProduct)


  public
    function Username: String;
    function Password: String;
  end;

implementation

{ TProduct2 }

function TProduct2.Password: String;
begin
 Result := '1234';
end;

function TProduct2.Username: String;
begin
 Result := 'admin@admin1212';
end;

end.
