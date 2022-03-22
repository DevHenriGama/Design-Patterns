unit Product;

interface

uses
  System.Classes;

type
  TProduct  = class
    private
      FProduct : TStringlist;
    public
      constructor Create;
      destructor Destroy;override;
      procedure AddPart(val : String);
      function GetProductBuilded : TStringList;
  end;

implementation

{ TProduct }

procedure TProduct.AddPart(val: String);
begin
 FProduct.Add(val);
end;

constructor TProduct.Create;
begin
 FProduct := TStringList.Create;
end;

destructor TProduct.Destroy;
begin
  FProduct.Free;
  inherited;
end;

function TProduct.GetProductBuilded: TStringList;
begin
 Result := FProduct;
end;

end.
