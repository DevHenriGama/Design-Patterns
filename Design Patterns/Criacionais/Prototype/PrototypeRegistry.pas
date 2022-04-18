unit PrototypeRegistry;

interface
 uses ConcretePrototype, System.Generics.Collections, System.Classes;
  type
    TPrototypeRegistry = class
      private
        List : TObjectList<TConcretePrototype>;
      public
         function Clone(Index : Integer) : TConcretePrototype;
         procedure AddPrototype( Prototype : TConcretePrototype);
         function GetList : TStringList;
    end;

implementation

uses
  System.SysUtils;



{ TPrototypeRegistry }

procedure TPrototypeRegistry.AddPrototype(Prototype: TConcretePrototype);
begin
  List.Add(Prototype);
end;

function TPrototypeRegistry.Clone(Index: Integer): TConcretePrototype;
begin
 Result := List[Index];
end;



function TPrototypeRegistry.GetList: TStringList;
var ListNumber : TStringList;
  I: Integer;
begin
  ListNumber := TStringList.Create;
  try
    for I := 0 to List.Count do begin
      ListNumber[I] := IntToStr(I);
    end;
    Result := ListNumber;
  finally
    ListNumber.Free;
  end;
end;

end.
