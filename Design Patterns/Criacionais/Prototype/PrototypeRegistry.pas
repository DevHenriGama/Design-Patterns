unit PrototypeRegistry;

interface
 uses ConcretePrototype, System.Generics.Collections, System.Classes;
  type
    TPrototypeRegistry = class
      private
        List : TObjectList<TConcretePrototype>;
        public
        constructor Create;
        destructor Destroy;override;
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
  List.Add(Prototype.Create);
end;

function TPrototypeRegistry.Clone(Index: Integer): TConcretePrototype;
begin
 Result := List[Index];
end;



constructor TPrototypeRegistry.Create;
begin
  List := TObjectList<TConcretePrototype>.Create;
end;

destructor TPrototypeRegistry.Destroy;
begin
   List.Free;
  inherited;
end;

function TPrototypeRegistry.GetList: TStringList;
var ListNumber : TStringList;
  I: Integer;
begin
  ListNumber := TStringList.Create;
  try
    for I := 0 to List.Count -1   do begin
      ListNumber.Add(IntToStr(I));
    end;
    Result := ListNumber;
  finally
    //ListNumber.Free;
  end;
end;

end.
