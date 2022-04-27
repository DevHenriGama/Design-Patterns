unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdTCPServer, IdContext;

type
  TuMainForm = class(TForm)
    MainServer: TIdTCPServer;
    edtPort: TEdit;
    btnActive: TButton;
    lblStatus: TLabel;
    procedure btnActiveClick(Sender: TObject);
    procedure MainServerExecute(AContext: TIdContext);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMainForm: TuMainForm;

implementation

{$R *.dfm}

procedure TuMainForm.btnActiveClick(Sender: TObject);
begin
 MainServer.DefaultPort := StrToInt(edtPort.Text);
 if MainServer.Active then begin
   lblStatus.Caption := 'Status: Closed ';
   btnActive.Caption := 'Open Server';
   MainServer.Active := False;
 end
 else
 begin
   lblStatus.Caption := 'Status: Opened ';
   btnActive.Caption := 'Close Server';
   MainServer.Active := True;
 end;
end;

procedure TuMainForm.MainServerExecute(AContext: TIdContext);
begin
 ShowMessage('');
end;

end.
