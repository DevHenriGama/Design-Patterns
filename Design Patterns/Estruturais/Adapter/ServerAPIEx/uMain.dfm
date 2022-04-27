object uMainForm: TuMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Example API - Server'
  ClientHeight = 84
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lblStatus: TLabel
    Left = 8
    Top = 45
    Width = 74
    Height = 15
    Caption = 'Status: Closed'
  end
  object edtPort: TEdit
    Left = 8
    Top = 8
    Width = 177
    Height = 23
    TabOrder = 0
    Text = '1212'
  end
  object btnActive: TButton
    Left = 200
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open Server'
    TabOrder = 1
    OnClick = btnActiveClick
  end
  object MainServer: TIdTCPServer
    Bindings = <>
    DefaultPort = 1212
    OnExecute = MainServerExecute
    Left = 288
    Top = 8
  end
end
