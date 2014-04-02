object Form1: TForm1
  Left = 177
  Top = 110
  AutoScroll = False
  Caption = 'Form1'
  ClientHeight = 213
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    389
    213)
  PixelsPerInch = 96
  TextHeight = 13
  object SB1: TSpeedButton
    Left = 24
    Top = 75
    Width = 23
    Height = 22
    OnClick = SB1Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 5
    Top = 187
    Width = 379
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 2
    Top = 43
    Width = 73
    Height = 25
    Caption = 'Otw'#243'rz...'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 80
    Top = 8
    Width = 302
    Height = 124
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    Color = 16777088
    TabOrder = 2
    DesignSize = (
      302
      124)
    object NazwaTracka: TLabel
      Left = 8
      Top = 8
      Width = 279
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
    end
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 121
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = 'Pozycja: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 96
      Width = 109
      Height = 13
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = 'D'#322'ugosc: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object TrackBar1: TTrackBar
    Left = -8
    Top = 136
    Width = 393
    Height = 45
    Anchors = [akLeft, akRight, akBottom]
    Max = 0
    TabOrder = 3
    OnChange = TrackBar1Change
  end
  object Button2: TButton
    Left = 2
    Top = 11
    Width = 73
    Height = 25
    Caption = 'Playlist'
    TabOrder = 4
    OnClick = Button2Click
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'wav'
    Filter = 
      'Pliki Wave|*.wav|Muzyka MIDI|*.mid;*.rmi|MP3|*.mp3|Wszystkie Pli' +
      'ki|*.*'
    Top = 104
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 40
    Top = 104
  end
end
