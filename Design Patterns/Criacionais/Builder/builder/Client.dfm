object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 249
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Memo1: TMemo
    Left = 16
    Top = 8
    Width = 233
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 280
    Top = 47
    Width = 113
    Height = 25
    Caption = 'Build ASCII'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 96
    Width = 113
    Height = 25
    Caption = 'Build TeX'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 152
    Width = 113
    Height = 25
    Caption = 'Build TextWidget'
    TabOrder = 3
    OnClick = Button3Click
  end
end
