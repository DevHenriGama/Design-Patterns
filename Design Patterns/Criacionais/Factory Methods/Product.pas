unit Product;

interface

  type
    IProduct = interface
      ['{F48D6586-D007-411E-94B8-E856576BF94B}']
      function GetToken : String;
      function GetPassword : String;
    end;

    IEmissionProduct = interface
      ['{43EC4992-4017-4A99-8038-61913477F0F2}']
    function Username : String;
    function Password : String;
    end;

implementation

end.
