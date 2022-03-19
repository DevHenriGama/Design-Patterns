unit ConcreteProduct2;

interface

uses AbstractProduct, System.UITypes;

type
    TProduct2 = class (TInterfacedObject, AbstractProduct2)

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

{ TProduct2 }

function TProduct2.Color1: TColor;
begin
 Result := clred;
end;

function TProduct2.Color2: TColor;
begin
 Result := clBlue;
end;

constructor TProduct2.Create;
begin

end;

destructor TProduct2.Destroy;
begin

  inherited;
end;

end.
