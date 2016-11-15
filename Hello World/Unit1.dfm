object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 475
  ClientWidth = 498
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
    Left = 328
    Top = 48
    Width = 57
    Height = 25
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 56
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 400
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fname'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sname'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Width = 60
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Delphi\Study\He' +
      'llo World\db1.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 72
    Top = 88
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'user'
    Left = 144
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 96
  end
end
