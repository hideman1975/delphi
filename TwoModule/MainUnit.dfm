object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 269
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 45
    Width = 113
    Height = 33
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 168
    Top = 101
    Width = 65
    Height = 20
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 32
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
end
