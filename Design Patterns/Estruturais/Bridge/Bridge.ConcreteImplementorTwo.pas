unit Bridge.ConcreteImplementorTwo;

interface

uses Bridge.IImplementor;

type
  TConcreteImp2 = class(TInterfacedObject, IDatabase)

  private
    FValue : String;
  public
    procedure Insert(Value : String);
    function ShowData : String;
  end;

implementation



{ TConcreteImp1 }

procedure TConcreteImp2.Insert(Value: String);
begin
 FValue := Value;
end;

function TConcreteImp2.ShowData: String;
begin
Result := FValue;
end;

end.
