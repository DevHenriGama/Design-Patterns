unit Bridge.TRefinedAbstraction;

interface

uses Bridge.IDatabaseAbstraction, Bridge.IImplementor;

  type
    TRefinedDatabase  = class(TInterfacedObject,IDatabaseAbstraction)
    private
       Implementor : IDatabase;
    public
      constructor Create( Database : IDatabase);
      destructor Destroy;Override;
      procedure Insert(Value : String);
      function ShowData : String;
    end;
implementation



{ TRefinedDatabase }



constructor TRefinedDatabase.Create(Database: IDatabase);
begin
  Self.Implementor := Database;
end;

destructor TRefinedDatabase.Destroy;
begin

  inherited;
end;

procedure TRefinedDatabase.Insert(Value: String);
begin
 Implementor.Insert(Value);
end;

function TRefinedDatabase.ShowData: String;
begin
Result := Implementor.ShowData;
end;

end.
