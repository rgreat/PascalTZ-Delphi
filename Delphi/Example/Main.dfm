object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'PascalTZ for Delphi Test App'
  ClientHeight = 65
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 8
    Width = 186
    Height = 23
    Date = 45598.000000000000000000
    Time = 0.886903703700227200
    Kind = dtkDateTime
    TabOrder = 0
    OnChange = DateTimePicker1Change
  end
  object DateTimePicker2: TDateTimePicker
    Left = 8
    Top = 37
    Width = 186
    Height = 23
    Date = 45598.000000000000000000
    Time = 0.886903703700227200
    Kind = dtkDateTime
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 200
    Top = 8
    Width = 305
    Height = 23
    TabOrder = 2
    Text = 'Europe/Helsinki'
    OnChange = DateTimePicker1Change
  end
  object Edit2: TEdit
    Left = 200
    Top = 37
    Width = 305
    Height = 23
    TabOrder = 3
    Text = 'Europe/Moscow'
    OnChange = DateTimePicker1Change
  end
end
