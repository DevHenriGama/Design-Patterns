unit Main.Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ConcretePrototype,
  PrototypeRegistry;

type
  TuClient = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    MainObj : TConcretePrototype;
    CloneObj : TConcretePrototype;
    RegistryProt : TPrototypeRegistry;
  public
    { Public declarations }
  end;

var
  uClient: TuClient;

implementation

{$R *.dfm}

procedure TuClient.Button1Click(Sender: TObject);
begin
  MainObj.Initialize;
  Memo1.Lines.Add(MainObj.Whois);
  Memo1.Lines.Add(MainObj.Name);
  Memo1.Lines.Add(IntToStr(MainObj.ID));
end;

procedure TuClient.Button2Click(Sender: TObject);
begin
 CloneObj := MainObj.Clone;
 CloneObj.Name := Edit1.Text;
end;

procedure TuClient.Button3Click(Sender: TObject);
begin
 RegistryProt.AddPrototype(CloneObj);
end;

procedure TuClient.Button4Click(Sender: TObject);
begin
 CloneObj := RegistryProt.Clone(ListBox1.ItemIndex);
end;

procedure TuClient.Button5Click(Sender: TObject);
begin
ListBox1.Items := RegistryProt.GetList;
end;

procedure TuClient.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(CloneObj.Whois);
  Memo1.Lines.Add(CloneObj.Name);
  Memo1.Lines.Add(IntToStr(CloneObj.ID));
end;

procedure TuClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainObj.Free;
RegistryProt.Free;
end;

procedure TuClient.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
 RegistryProt := TPrototypeRegistry.Create;
 MainObj := TConcretePrototype.Create;

end;

end.
