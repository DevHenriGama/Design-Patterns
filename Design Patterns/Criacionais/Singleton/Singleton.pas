unit Singleton;

interface
  type
    TSingleton = class
      private
        FName: String;
        FModel: String;
        procedure SetModel(const Value: String);
        procedure SetName(const Value: String);
      public
        class function getInstance : TSingleton;
        property Name : String read FName write SetName;
        property Model : String read FModel write SetModel;
    end;

    var
      MyInstance : TSingleton;

implementation

{ TSingleton }

class function TSingleton.getInstance: TSingleton;
begin
 if Assigned(MyInstance) then begin
   Result := MyInstance;
 end
 else
 begin
   Result := TSingleton.Create;
 end;
end;

procedure TSingleton.SetModel(const Value: String);
begin
  FModel := Value;
end;

procedure TSingleton.SetName(const Value: String);
begin
  FName := Value;
end;

end.
