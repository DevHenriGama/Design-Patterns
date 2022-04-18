unit ConcretePrototype;

interface

  type
    TConcretePrototype = class
    private
    FName: String;
    FID: Integer;
    FWhois: String;
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetWhois(const Value: String);

    public
    constructor Create;
    destructor Destroy;override;
      function Clone : TConcretePrototype;
     property Whois : String read FWhois write SetWhois;
     property ID : Integer read FID write SetID;
     property Name : String read FName write SetName;

    end;

implementation

{ ConcretePrototype }



function TConcretePrototype.Clone: TConcretePrototype;
var Prototype : TConcretePrototype;
begin
 Prototype := TConcretePrototype.Create;
 Prototype.FName := Self.FName;
 Prototype.FID := Self.FID;
 Prototype.FWhois := Self.FWhois;
 Result := Prototype;
end;

constructor TConcretePrototype.Create;
begin
 FName := 'Henrique';
 FWhois := 'Director';
 FID  := 1;
end;

destructor TConcretePrototype.Destroy;
begin

  inherited;
end;

procedure TConcretePrototype.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TConcretePrototype.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TConcretePrototype.SetWhois(const Value: String);
begin
  FWhois := Value;
end;

end.
