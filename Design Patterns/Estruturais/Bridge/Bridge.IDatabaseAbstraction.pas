unit Bridge.IDatabaseAbstraction;

interface
        //Os m�todos ser�o similares a extens�o do Implementor.
  type
    IDatabaseAbstraction = interface
      ['{FAC87118-4F46-4F42-AF66-177DADE020AA}']
      procedure Insert(Value : String);
      function ShowData : String;
    end;

implementation

end.
