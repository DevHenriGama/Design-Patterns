{
O padrão Bridge tem a intenção de desacoplar a abstração.
Nesse exemplo usei uma ideia de desacomplamento para banco de dados,
separei A abstração da interface do banco para poder ultilizar varios
gerenciadores de base de dados. Isso me permite a fácil adição de novos
bancos de dados, também, Reduzirá a quantidade de classes.
}
unit Bridge.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Bridge.IDatabaseAbstraction, Bridge.TRefinedAbstraction,
  Bridge.ConcreteImplementorOne, Bridge.ConcreteImplementorTwo;

type
  TfrmMain = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Database : IDatabaseAbstraction; // Instancia da classe de abstração
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
Database.Insert(Edit1.Text);
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
Edit2.Text := Database.ShowData;
end;

procedure TfrmMain.RadioGroup1Click(Sender: TObject);
begin
 //Aqui e feita a escolha de qual instancia eu uso.
 case RadioGroup1.ItemIndex of
  0:Database := TRefinedDatabase.Create(TConcreteImp1.Create);
  1:Database := TRefinedDatabase.Create(TConcreteImp2.Create);
 end;
end;

end.
