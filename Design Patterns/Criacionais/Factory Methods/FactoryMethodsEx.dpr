program FactoryMethodsEx;

uses
  Vcl.Forms,
  Client in 'Client.pas' {Form1},
  ConcreteProduct in 'ConcreteProduct.pas',
  Product in 'Product.pas',
  ConcreteCreator in 'ConcreteCreator.pas',
  Creator in 'Creator.pas',
  ConcreteProduct2 in 'ConcreteProduct2.pas',
  ConcreteProduct3.Emissed in 'ConcreteProduct3.Emissed.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
