unit PrototypeRegistry;

interface
 uses ConcretePrototype, System.Generics.Collections, System.Classes;
  type
    TPrototypeRegistry = class
      private
        List : TObjectList<TConcretePrototype>;
         ListNumber : TStringList;
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
  ListNumber := TStringList.Create;
end;

destructor TPrototypeRegistry.Destroy;
begin
  inherited;
  List.Free;
  ListNumber.Free;
end;

function TPrototypeRegistry.GetList: TStringList;
var
  I: Integer;
begin
    for I := 0 to List.Count -1   do begin
      ListNumber.Add(IntToStr(I));
    end;
    Result := ListNumber;
end;

end.
