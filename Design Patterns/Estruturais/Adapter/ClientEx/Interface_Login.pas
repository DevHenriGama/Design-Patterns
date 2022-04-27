unit Interface_Login;

interface

  type
    ILogin = interface
      ['{61DBEF87-19F0-49FA-8571-76430B5B4A1E}']
      procedure ValidateLogin;
      function SetUsername( _UserName : String) : ILogin;
      function SetPassword(_Password : String) : ILogin;
    end;

implementation

end.
