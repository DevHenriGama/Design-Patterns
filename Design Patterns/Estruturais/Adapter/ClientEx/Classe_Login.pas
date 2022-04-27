unit Classe_Login;

interface

uses Interface_Login;

  type
    TLogin = class(TInterfacedObject, ILogin)
     private
       _FUser : String;
       _FPassword : String;
     public
      class function New : ILogin;
      procedure ValidateLogin;
      function SetUsername( _UserName : String) : ILogin;
      function SetPassword(_Password : String) : ILogin;
    end;

implementation

{ TLogin }

class function TLogin.New: ILogin;
begin
 Result := Self.Create;
end;

function TLogin.SetPassword(_Password: String): ILogin;
begin
 Result := Self;
 _FPassword := _Password;
end;

function TLogin.SetUsername(_UserName: String): ILogin;
begin
 Result := Self;
 _FUser := _UserName;
end;

procedure TLogin.ValidateLogin;
begin

end;

end.
