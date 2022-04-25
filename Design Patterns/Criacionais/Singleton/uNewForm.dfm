object NewForm: TNewForm
  Left = 0
  Top = 0
  Caption = 'New Form'
  ClientHeight = 150
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
    Left = 398
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Show Values'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 256
    Top = 48
    Width = 225
    Height = 89
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 8
    Top = 107
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 8
    Top = 78
    Width = 121
    Height = 23
    TabOrder = 5
  end
end
