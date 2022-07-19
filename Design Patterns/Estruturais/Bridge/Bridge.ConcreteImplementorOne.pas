unit Bridge.ConcreteImplementorOne;

interface

uses Bridge.IImplementor;

type
  TConcreteImp1 = class(TInterfacedObject, IDatabase)

  private
    FValue : String;
  public
    procedure Insert(Value : String);
    function ShowData : String;
  end;

implementation



{ TConcreteImp1 }

procedure TConcreteImp1.Insert(Value: String);
begin
 FValue := Value;
end;

function TConcreteImp1.ShowData: String;
begin
Result := FValue;
end;

end.
