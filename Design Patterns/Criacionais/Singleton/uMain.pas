unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Singleton, uNewForm;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Single : TSingleton;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
 Single := TSingleton.getInstance;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  with Single do begin
     Name := Edit1.Text;
     Model := Edit2.text;
  end;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
 Memo1.Lines.Add(Single.Name);
 Memo1.Lines.Add(Single.Model);
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
  NewForm.Show;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Assigned(Single) then
  Single.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
 ReportMemoryLeaksOnShutdown := True;
end;

end.
