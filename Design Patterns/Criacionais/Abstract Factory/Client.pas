unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AbstractFactory, ConcreteFactory;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFactory : IAbstractFactory;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 with FFactory.Style1 do begin
   Panel1.Font.Color := Color1;
   Panel2.Font.Color := Color2;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 with FFactory.Style2 do begin
   Panel1.Font.Color := Color1;
   Panel2.Font.Color := Color2;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FFactory := TConcreteFactory.Create;
ReportMemoryLeaksOnShutdown := true;
end;

end.
