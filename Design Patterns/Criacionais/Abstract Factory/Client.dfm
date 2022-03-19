object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 188
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 48
    Width = 185
    Height = 41
    Caption = 'Color 1'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 8
    Top = 128
    Width = 185
    Height = 41
    Caption = 'Color 2'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 280
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Style1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Style2'
    TabOrder = 3
    OnClick = Button2Click
  end
end
