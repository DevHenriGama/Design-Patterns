program BridgePattern;

uses
  Vcl.Forms,
  Bridge.MainForm in 'Bridge.MainForm.pas' {frmMain},
  Bridge.IDatabaseAbstraction in 'Bridge.IDatabaseAbstraction.pas',
  Bridge.TRefinedAbstraction in 'Bridge.TRefinedAbstraction.pas',
  Bridge.IImplementor in 'Bridge.IImplementor.pas',
  Bridge.ConcreteImplementorOne in 'Bridge.ConcreteImplementorOne.pas',
  Bridge.ConcreteImplementorTwo in 'Bridge.ConcreteImplementorTwo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
