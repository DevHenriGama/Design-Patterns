object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 250
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Instance Singleton'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Set Values'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 198
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Show Values'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 128
    Top = 8
    Width = 75
    Height = 25
    Caption = 'New Form'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 144
    Width = 265
    Height = 89
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 8
    Top = 107
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 8
    Top = 78
    Width = 121
    Height = 23
    TabOrder = 6
  end
end
