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
    constructor Create;
    class function getInstance : TSingleton;
    property Name : String read FName write SetName;
    property Model : String read FModel write SetModel;
    end;

    var
      SingletonInstance : TSingleton;

implementation

{ TSingleton }

constructor TSingleton.Create;
begin
 SingletonInstance := Self;
end;

class function TSingleton.getInstance: TSingleton;
begin
  if not Assigned(SingletonInstance) then begin
    Result := TSingleton.Create;
  end else
  begin
      Result := SingletonInstance;
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
