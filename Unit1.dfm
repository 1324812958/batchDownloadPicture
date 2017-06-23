object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 489
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 264
    ExplicitTop = 240
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 160
      Top = 14
      Width = 96
      Height = 13
      Caption = #27599#34892#25918#20837#19968#20010#38142#25509
    end
    object Button1: TButton
      Left = 24
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 697
    Height = 448
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = -24
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
