program PrototypeEx;

uses
  Vcl.Forms,
  Main.Client in 'Main.Client.pas' {uClient},
  ConcretePrototype in 'F:\Progamação\Projects\Delphi\Estudos\Design-Patterns\Design Patterns\Criacionais\Prototype\ConcretePrototype.pas',
  PrototypeRegistry in 'F:\Progamação\Projects\Delphi\Estudos\Design-Patterns\Design Patterns\Criacionais\Prototype\PrototypeRegistry.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Obsidian');
  Application.CreateForm(TuClient, uClient);
  Application.Run;
end.
