program SingletonEx;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Singleton in 'Singleton.pas',
  uNewForm in 'uNewForm.pas' {NewForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TNewForm, NewForm);
  Application.Run;
end.
