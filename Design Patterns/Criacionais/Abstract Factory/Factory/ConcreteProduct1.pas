unit ConcreteProduct1;

interface

uses
  System.UITypes, AbstractProduct;


type
    TProduct1 = class (TInterfacedObject,AbstractProduct1)

    private

    public
       function Color1 : TColor;
       function Color2 : TColor;
      constructor Create;
      destructor Destroy;override;
    end;
implementation

uses
  Vcl.Graphics;

{ TProduct1 }

function TProduct1.Color1: TColor;
begin
Result := clYellow;
end;

function TProduct1.Color2: TColor;
begin
 Result := clGreen;
end;

constructor TProduct1.Create;
begin

end;

destructor TProduct1.Destroy;
begin

  inherited;
end;

end.
