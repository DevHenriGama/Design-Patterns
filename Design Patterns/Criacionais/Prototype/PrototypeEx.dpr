program PrototypeEx;

uses
  Vcl.Forms,
  uClient in 'uClient.pas' {fMain},
  ConcretePrototype in 'ConcretePrototype.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
