object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 215
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 160
    Top = 7
    Width = 145
    Height = 25
    Caption = 'Instance Singleton'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 51
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 16
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Button2: TButton
    Left = 160
    Top = 47
    Width = 145
    Height = 25
    Caption = 'New Form'
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 16
    Top = 120
    Width = 185
    Height = 65
    TabOrder = 4
  end
  object Button3: TButton
    Left = 8
    Top = 191
    Width = 89
    Height = 25
    Caption = 'Show VALUES'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = 'set Values'
    TabOrder = 6
    OnClick = Button4Click
  end
end
