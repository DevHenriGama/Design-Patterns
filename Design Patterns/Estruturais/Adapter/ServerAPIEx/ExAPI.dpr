program ExAPI;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {uMainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuMainForm, uMainForm);
  Application.Run;
end.
