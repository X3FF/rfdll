object Form1: TForm1
  Left = 0
  Top = 0
  Cursor = crHandPoint
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form1'
  ClientHeight = 169
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 5
    Top = 8
    Width = 74
    Height = 35
    Cursor = crHandPoint
    Caption = 'Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 85
    Top = 7
    Width = 70
    Height = 35
    Cursor = crHandPoint
    Caption = 'Buff [F1]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Shape1: TShape
    Left = 21
    Top = 12
    Width = 44
    Height = 3
    Brush.Color = clGray
    Enabled = False
    Pen.Style = psClear
  end
  object Label1: TLabel
    Left = 181
    Top = 4
    Width = 35
    Height = 11
    Caption = 'Autoloot'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lootswitch: TToggleSwitch
    Left = 174
    Top = 16
    Width = 50
    Height = 20
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    ShowStateCaption = False
    TabOrder = 0
    OnClick = lootswitchClick
  end
  object Edit1: TEdit
    Left = 241
    Top = 15
    Width = 60
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 309
    Top = 15
    Width = 60
    Height = 21
    TabOrder = 2
  end
  object loottimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = loottimerTimer
    Left = 436
    Top = 11
  end
  object charStat: TTimer
    Enabled = False
    Interval = 500
    OnTimer = charStatTimer
    Left = 256
    Top = 48
  end
end
