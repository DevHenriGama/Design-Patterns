object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Bridge Example -Client'
  ClientHeight = 142
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 161
    Height = 23
    TabOrder = 0
    Text = 'Define Value'
  end
  object Edit2: TEdit
    Left = 16
    Top = 48
    Width = 161
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 3
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 224
    Top = 8
    Width = 185
    Height = 121
    Caption = 'Select Database'
    Items.Strings = (
      'Database 1'
      'Database 2')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
end
