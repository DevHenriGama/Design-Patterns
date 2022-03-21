program BuilderEx;

uses
  Vcl.Forms,
  Client in 'Client.pas' {Form1},
  IBuilder in 'IBuilder.pas',
  ConcreteBuilderASCII in 'ConcreteBuilderASCII.pas',
  ConcreteBuilderTeX in 'ConcreteBuilderTeX.pas',
  ConcreteBuilderTextParagraph in 'ConcreteBuilderTextParagraph.pas',
  Product in 'Product.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
