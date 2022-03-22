unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IBuilder, Director,
  Product, ConcreteBuilderTextParagraph, ConcreteBuilderASCII,
  ConcreteBuilderTeX;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FBuilder :  ITextConvertBuilder;
    Fdirector : TDirector;
    FProduct : TProduct;
      public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 FBuilder := TBuilderASCII.Create;
 Fdirector := TDirector.Create(FBuilder);
 FProduct := FBuilder.GetConvert;

 Memo1.Lines.Add(FProduct.GetProductBuilded.Text);

 Fdirector.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 FBuilder := TBuilderTeX.Create;
 Fdirector := TDirector.Create(FBuilder);
 FProduct := FBuilder.GetConvert;

 Memo1.Lines.Add(FProduct.GetProductBuilded.Text);

 Fdirector.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 FBuilder := TBuilderTexWidget.Create;
 Fdirector := TDirector.Create(FBuilder);
 FProduct := FBuilder.GetConvert;

 Memo1.Lines.Add(FProduct.GetProductBuilded.Text);

 Fdirector.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ReportMemoryLeaksOnShutdown := True;
end;

end.
