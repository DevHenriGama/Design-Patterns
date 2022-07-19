unit Bridge.IImplementor;

interface

  type
    IDatabase = interface
      ['{FBD54362-2AC7-4977-A07B-F99E6E545386}']
      procedure Insert(Value : String);
      function ShowData : String;
    end;

implementation

end.
