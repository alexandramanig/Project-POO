object Form2: TForm2
  Left = 299
  Top = 68
  Width = 1013
  Height = 692
  Caption = 'FazanServer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object nameLabel: TLabel
    Left = 80
    Top = 16
    Width = 200
    Height = 27
    Caption = 'Numele dumneavoastra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object enemyNameLabel: TLabel
    Left = 640
    Top = 16
    Width = 167
    Height = 27
    Caption = 'Numele inamicului'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object fazanLabel: TLabel
    Left = 56
    Top = 160
    Width = 232
    Height = 18
    Caption = 'Introduceti un cuvant'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 632
    Top = 176
    Width = 210
    Height = 18
    Caption = 'Inamicul a introdus'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object cuvLabel: TLabel
    Left = 24
    Top = 336
    Width = 3
    Height = 13
    Caption = ' '
  end
  object conectLabel: TLabel
    Left = 216
    Top = 232
    Width = 590
    Height = 40
    Caption = 'Se asteapta conectarea unui client'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLitere: TLabel
    Left = 64
    Top = 508
    Width = 126
    Height = 28
    Caption = 'Literele tale: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblScor: TLabel
    Left = 64
    Top = 540
    Width = 111
    Height = 28
    Caption = 'Scorul tau: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblLitereEnemy: TLabel
    Left = 616
    Top = 508
    Width = 200
    Height = 28
    Caption = 'Literele inamicului: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblScorEnemy: TLabel
    Left = 616
    Top = 540
    Width = 184
    Height = 28
    Caption = 'Scorul inamicului:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object imagineCastigator: TImage
    Left = 184
    Top = 112
    Width = 569
    Height = 345
  end
  object btnexit2: TButton
    Left = 896
    Top = 600
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 0
    OnClick = btnexit2Click
  end
  object nameBox: TEdit
    Left = 48
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 1
    Visible = False
    OnChange = nameBoxChange
  end
  object enemyNameBox: TEdit
    Left = 584
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 2
    Visible = False
    OnChange = enemyNameBoxChange
  end
  object brnNameSelect: TButton
    Left = 104
    Top = 88
    Width = 113
    Height = 33
    Caption = 'Alege nume'
    TabOrder = 3
    Visible = False
    OnClick = brnNameSelectClick
  end
  object cuvantBox: TEdit
    Left = 48
    Top = 200
    Width = 249
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object enemyCuvantBox: TEdit
    Left = 608
    Top = 200
    Width = 249
    Height = 21
    TabOrder = 5
    Visible = False
    OnChange = enemyCuvantBoxChange
  end
  object sendCuvantButton: TButton
    Left = 32
    Top = 264
    Width = 121
    Height = 41
    Caption = 'Trimtie cuvant'
    TabOrder = 6
    Visible = False
    OnClick = sendCuvantButtonClick
  end
  object cuvList: TListBox
    Left = 64
    Top = 328
    Width = 161
    Height = 145
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  object cuvEnemyList: TListBox
    Left = 680
    Top = 328
    Width = 161
    Height = 145
    ItemHeight = 13
    TabOrder = 8
    Visible = False
  end
  object btnNuStiu: TButton
    Left = 176
    Top = 264
    Width = 137
    Height = 41
    Caption = 'NU STIU'
    TabOrder = 9
    Visible = False
    OnClick = btnNuStiuClick
  end
  object litereBox: TEdit
    Left = 192
    Top = 512
    Width = 113
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnChange = litereBoxChange
  end
  object scorBox: TEdit
    Left = 176
    Top = 544
    Width = 17
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = '0'
    Visible = False
  end
  object litereEnemyBox: TEdit
    Left = 816
    Top = 512
    Width = 113
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    Visible = False
    OnChange = litereEnemyBoxChange
  end
  object scorEnemyBox: TEdit
    Left = 816
    Top = 544
    Width = 17
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Text = '0'
    Visible = False
    OnChange = scorEnemyBoxChange
  end
end
