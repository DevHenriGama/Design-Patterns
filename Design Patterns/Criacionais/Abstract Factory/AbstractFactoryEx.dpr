program AbstractFactoryEx;

uses
  Vcl.Forms,
  Client in 'Client.pas' {Form1},
  ConcreteFactory in 'Factory\ConcreteFactory.pas',
  AbstractFactory in 'Factory\AbstractFactory.pas',
  ConcreteProduct1 in 'Factory\ConcreteProduct1.pas',
  ConcreteProduct2 in 'Factory\ConcreteProduct2.pas',
  AbstractProduct in 'Factory\AbstractProduct.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
