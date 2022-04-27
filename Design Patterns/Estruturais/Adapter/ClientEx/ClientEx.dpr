program ClientEx;

uses
  Vcl.Forms,
  uMainLogin in 'uMainLogin.pas' {uMainFormClient},
  Interface_Login in 'Interface_Login.pas',
  Classe_Login in 'Classe_Login.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuMainFormClient, uMainFormClient);
  Application.Run;
end.
