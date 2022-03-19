unit ConcreteFactory;

interface

uses AbstractFactory, AbstractProduct, ConcreteProduct2, ConcreteProduct1;

type
    TConcreteFactory = class (TInterfacedObject, IAbstractFactory )

    private

    public
      constructor Create;
      destructor Destroy;override;
      function Style1 : AbstractProduct1;
      function Style2 : AbstractProduct2;
    end;
implementation

{ TConcreteFactory }



constructor TConcreteFactory.Create;
begin

end;

function TConcreteFactory.Style2: AbstractProduct2;
begin
Result := TProduct2.Create;
end;

function TConcreteFactory.Style1: AbstractProduct1;
begin
 Result := TProduct1.Create;
end;

destructor TConcreteFactory.Destroy;
begin

  inherited;
end;

end.
