object uMainFormClient: TuMainFormClient
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Client Exemple'
  ClientHeight = 289
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object edtUsername: TEdit
    Left = 144
    Top = 56
    Width = 193
    Height = 23
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 144
    Top = 104
    Width = 193
    Height = 23
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
  end
end
