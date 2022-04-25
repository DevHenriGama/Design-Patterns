unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Singleton;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    Single : TSingleton;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

procedure TfrmMain.FormCreate(Sender: TObject);
begin
ReportMemoryLeaksOnShutdown := True;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
 Single := TSingleton.getInstance;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
 Memo1.Lines.Add(Single.Name);
 Memo1.Lines.Add(Single.Model);
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
 Single.Name := Edit1.Text;
 Single.Model := Edit2.Text;
end;

end.
