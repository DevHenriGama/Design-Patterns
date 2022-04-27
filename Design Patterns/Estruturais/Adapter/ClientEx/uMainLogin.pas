unit uMainLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TuMainFormClient = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMainFormClient: TuMainFormClient;

implementation

{$R *.dfm}

end.
