unit uClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ConcretePrototype,
  PrototypeRegistry;

type
  TfMain = class(TForm)
    Exibir: TButton;
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    Button5: TButton;
    procedure ExibirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    MainObj, CloneObj : TConcretePrototype;
    PRegistry : TPrototypeRegistry;

  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation



procedure TfMain.Button1Click(Sender: TObject);
begin
CloneObj.Name := Edit1.Text;
end;

procedure TfMain.Button2Click(Sender: TObject);
begin
CloneObj := PRegistry.Clone(ListBox1.ItemIndex);
end;

procedure TfMain.Button3Click(Sender: TObject);
begin
 PRegistry.AddPrototype(CloneObj);
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
Memo1.Lines.Add(CloneObj.Name);
Memo1.Lines.Add(CloneObj.Whois);
Memo1.Lines.Add(IntToStr(CloneObj.ID));
end;

procedure TfMain.Button5Click(Sender: TObject);
begin
ListBox1.Items := PRegistry.GetList;
end;

procedure TfMain.ExibirClick(Sender: TObject);
Begin
Memo1.Lines.Add(MainObj.Name);
Memo1.Lines.Add(MainObj.Whois);
Memo1.Lines.Add(IntToStr(MainObj.ID));
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
    MainObj := TConcretePrototype.Create;
    CloneObj := MainObj.Clone;
    PRegistry :=  TPrototypeRegistry.Create;
end;

end.
