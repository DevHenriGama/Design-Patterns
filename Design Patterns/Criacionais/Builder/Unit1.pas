unit Unit1;

interface

uses
  System.Classes;

type
  TProduct  = class
    private
      FConvert : TStringlist;
    public
      constructor Create;
      destructor Destroy;override;
  end;

implementation

{ TProduct }

constructor TProduct.Create;
begin
 FConvert := TStringList.Create;
end;

destructor TProduct.Destroy;
begin
  FConvert.Free;
  inherited;
end;

end.
