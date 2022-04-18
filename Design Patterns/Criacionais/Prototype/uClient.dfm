object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 368
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Exibir: TButton
    Left = 24
    Top = 50
    Width = 114
    Height = 25
    Caption = 'Exibir Original'
    TabOrder = 0
    OnClick = ExibirClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 112
    Width = 322
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 25
    Top = 81
    Width = 113
    Height = 25
    Caption = 'Modificar Clone'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 83
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 263
    Top = 50
    Width = 75
    Height = 25
    Caption = 'GetClone'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 271
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Insert Clone'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 24
    Top = 232
    Width = 322
    Height = 97
    ItemHeight = 15
    TabOrder = 6
  end
  object Button4: TButton
    Left = 144
    Top = 52
    Width = 113
    Height = 25
    Caption = 'Exibir Clone'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 271
    Top = 335
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 8
    OnClick = Button5Click
  end
end
