unit uNewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Singleton;

type
  TNewForm = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }

    NewSingle : TSingleton;
  public
    { Public declarations }
  end;

var
  NewForm: TNewForm;

implementation

end.
