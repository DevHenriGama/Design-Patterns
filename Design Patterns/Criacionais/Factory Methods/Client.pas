unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Creator, ConcreteCreator,
  Product;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FCreator : ICreator;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
with FCreator.GetUserDate do begin
 Edit1.Text := GetToken;
 Edit2.Text := GetPassword;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
with FCreator.GetSession('Normal') do begin
 Edit1.Text := Username;
 Edit2.Text := Password;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 with FCreator.GetSession('') do begin
 Edit1.Text := Username;
 Edit2.Text := Password;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 ReportMemoryLeaksOnShutdown := True;
 FCreator := TCreator.Create;

end;

end.
