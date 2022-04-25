program SingletonEx;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Singleton in 'Singleton.pas',
  uNewForm in 'uNewForm.pas' {NewForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TNewForm, NewForm);
  Application.Run;
end.
