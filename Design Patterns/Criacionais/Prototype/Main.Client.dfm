object uClient: TuClient
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'uClient'
  ClientHeight = 212
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Memo1: TMemo
    Left = 8
    Top = 115
    Width = 289
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Show Prot.'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Modify Prot'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 89
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Insert Prot'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 182
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Laod Prot'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 526
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Edit1: TEdit
    Left = 182
    Top = 65
    Width = 115
    Height = 23
    TabOrder = 6
  end
  object ListBox1: TListBox
    Left = 336
    Top = 24
    Width = 265
    Height = 145
    ItemHeight = 15
    TabOrder = 7
  end
  object Button6: TButton
    Left = 89
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Show Clone'
    TabOrder = 8
    OnClick = Button6Click
  end
end
