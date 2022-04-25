unit uNewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Singleton;

type
  TNewForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    SingleNew : TSingleton;
  public
    { Public declarations }
  end;

var
  NewForm: TNewForm;

implementation

{$R *.dfm}

procedure TNewForm.Button1Click(Sender: TObject);
begin
 SingleNew := TSingleton.getInstance;
end;

procedure TNewForm.Button2Click(Sender: TObject);
begin
  with SingleNew do begin
     Name := Edit1.Text;
     Model := Edit2.text;
  end;
end;

procedure TNewForm.Button3Click(Sender: TObject);
begin
Memo1.Lines.Add(SingleNew.Name);
 Memo1.Lines.Add(SingleNew.Model);
end;

end.
