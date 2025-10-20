inherited fmManSc1: TfmManSc1
  Left = 0
  Caption = 'Simulação de custos de importação'
  ClientHeight = 482
  ClientWidth = 786
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 786
    Height = 482
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnPaint = PaintBoxPaint
  end
  object Label11: TLabel
    Left = 3
    Top = 410
    Width = 114
    Height = 14
    Caption = 'Recebimento liquido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 3
    Top = 435
    Width = 62
    Height = 14
    Caption = 'Custo NET:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 3
    Top = 460
    Width = 99
    Height = 14
    Caption = 'Lucro operacional:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 297
    Top = 410
    Width = 15
    Height = 14
    Caption = 'IR:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 297
    Top = 435
    Width = 31
    Height = 14
    Caption = 'CSSL:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 297
    Top = 460
    Width = 128
    Height = 14
    Caption = 'Margem liquida após IR:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 123
    BevelOuter = bvNone
    TabOrder = 0
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 786
      Height = 482
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnPaint = PaintBoxPaint
    end
    object bPsqArq: TSpeedButton
      Left = 214
      Top = 5
      Width = 26
      Height = 22
      Hint = 'Pesquisar Arquitetos Existentes'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
        FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
        7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
        787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
        78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
        B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
        B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
        7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    end
    object Label12: TLabel
      Left = 2
      Top = 8
      Width = 68
      Height = 14
      Caption = 'Classificação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 214
      Top = 29
      Width = 26
      Height = 22
      Hint = 'Pesquisar Arquitetos Existentes'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
        FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
        7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
        787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
        78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
        B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
        B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
        7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    end
    object SpeedButton2: TSpeedButton
      Left = 214
      Top = 53
      Width = 26
      Height = 22
      Hint = 'Pesquisar Arquitetos Existentes'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
        FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
        7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
        787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
        78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
        B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
        B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
        7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    end
    object SpeedButton3: TSpeedButton
      Left = 214
      Top = 77
      Width = 26
      Height = 22
      Hint = 'Pesquisar Arquitetos Existentes'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
        FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
        7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
        787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
        78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
        B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
        B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
        BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
        7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
        C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    end
    object Label1: TLabel
      Left = 2
      Top = 32
      Width = 37
      Height = 14
      Caption = 'Grupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 2
      Top = 56
      Width = 57
      Height = 14
      Caption = 'Subgrupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 2
      Top = 80
      Width = 30
      Height = 14
      Caption = 'Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 2
      Top = 104
      Width = 101
      Height = 14
      Caption = 'Data da simulação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 243
      Top = 104
      Width = 67
      Height = 14
      Caption = 'Quantidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 431
      Top = 104
      Width = 88
      Height = 14
      Caption = 'Câmbio R$/US$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 638
      Top = 80
      Width = 28
      Height = 14
      Caption = 'CNM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 638
      Top = 104
      Width = 73
      Height = 14
      Caption = '(%) Margem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdNomArq: TdxDBColorEdit
      Left = 241
      Top = 4
      Width = 544
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clWindow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomArq: TPanel
      Left = 243
      Top = 6
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EdId_ProArq: TdxDBColorEdit
      Left = 110
      Top = 4
      Width = 103
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object dxDBColorEdit1: TdxDBColorEdit
      Left = 110
      Top = 28
      Width = 103
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object dxDBColorEdit2: TdxDBColorEdit
      Left = 241
      Top = 28
      Width = 544
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clWindow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Panel2: TPanel
      Left = 243
      Top = 30
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object dxDBColorEdit3: TdxDBColorEdit
      Left = 110
      Top = 52
      Width = 103
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object dxDBColorEdit4: TdxDBColorEdit
      Left = 241
      Top = 52
      Width = 544
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clWindow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Panel3: TPanel
      Left = 243
      Top = 54
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object dxDBColorEdit5: TdxDBColorEdit
      Left = 110
      Top = 76
      Width = 103
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 9
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object dxDBColorEdit6: TdxDBColorEdit
      Left = 241
      Top = 76
      Width = 393
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clWindow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Panel4: TPanel
      Left = 243
      Top = 78
      Width = 387
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object EdDtePed: TdxDBColorDateEdit
      Left = 110
      Top = 100
      Width = 104
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taCenter
      DataField = 'DTESCO'
      DataSource = DsCmpSco
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdVluPe2: TdxDBColorCurrencyEdit
      Left = 315
      Top = 100
      Width = 111
      Hint = 'Preço Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTDSCO'
      DataSource = DsCmpSco
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
      Left = 523
      Top = 100
      Width = 111
      Hint = 'Preço Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALCOT'
      DataSource = DsCmpSco
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object dxDBColorEdit7: TdxDBColorEdit
      Left = 674
      Top = 76
      Width = 111
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clWindow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Panel5: TPanel
      Left = 676
      Top = 78
      Width = 105
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
      Left = 714
      Top = 100
      Width = 71
      Hint = 'Preço Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'MRGSCO'
      DataSource = DsCmpSco
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object Panel6: TPanel
    Left = 2
    Top = 127
    Width = 782
    Height = 139
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Panel8: TPanel
      Left = 1
      Top = 31
      Width = 781
      Height = 107
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object grTlc: ThGrid
      Tag = 1
      Left = 2
      Top = 0
      Width = 779
      Height = 137
      Selected.Strings = (
        'NOMMLC'#9'81'#9'                                           '
        
          'TOTSC2'#9'20'#9'                                                      ' +
          '              ')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      BorderStyle = bsNone
      Color = 16577773
      DataSource = DsCmpSc2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      IndicatorColor = icYellow
      CorDeFoco = clInfoBk
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 780
      Height = 30
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label9: TLabel
        Left = 3
        Top = 7
        Width = 95
        Height = 13
        Caption = 'Agrupamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel9: TPanel
    Left = 2
    Top = 265
    Width = 782
    Height = 139
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object Panel10: TPanel
      Left = 1
      Top = 31
      Width = 780
      Height = 107
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object hGrid1: ThGrid
      Tag = 1
      Left = 2
      Top = 0
      Width = 778
      Height = 137
      Selected.Strings = (
        'DESSC3'#9'81'#9' '
        'PERSC3'#9'13'#9' '
        'TOTSC3'#9'15'#9'                                    '#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      BorderStyle = bsNone
      Color = 16577773
      DataSource = DsCmpSc3
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      IndicatorColor = icYellow
      CorDeFoco = clInfoBk
    end
    object Panel11: TPanel
      Left = 1
      Top = 1
      Width = 780
      Height = 30
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label10: TLabel
        Left = 3
        Top = 7
        Width = 128
        Height = 13
        Caption = 'Tipo de lançamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dxDBColorEdit8: TdxDBColorEdit
    Left = 122
    Top = 405
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel12: TPanel
    Left = 124
    Top = 407
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object dxDBColorEdit9: TdxDBColorEdit
    Left = 122
    Top = 430
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 5
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel13: TPanel
    Left = 124
    Top = 432
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object dxDBColorEdit10: TdxDBColorEdit
    Left = 122
    Top = 455
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 7
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel14: TPanel
    Left = 124
    Top = 457
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object dxDBColorEdit11: TdxDBColorEdit
    Left = 431
    Top = 405
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 9
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel15: TPanel
    Left = 433
    Top = 407
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object dxDBColorEdit12: TdxDBColorEdit
    Left = 431
    Top = 430
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 11
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel16: TPanel
    Left = 433
    Top = 432
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object dxDBColorEdit13: TdxDBColorEdit
    Left = 431
    Top = 455
    Width = 136
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clWindow
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 13
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 25
    StoredValues = 1
  end
  object Panel17: TPanel
    Left = 433
    Top = 457
    Width = 130
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object CmpSco: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpSco'
      'Where CmpSco.Id_CmpSco = :Id_CmpSco')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpCmpSco
    ValidateWithMask = True
    Left = 446
    Top = 11
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpSco'
        ParamType = ptInput
      end>
    object CmpScoID_CMPSCO: TIntegerField
      FieldName = 'ID_CMPSCO'
      Origin = 'ISADE.CMPSCO.ID_CMPSCO'
    end
    object CmpScoDTESCO: TDateTimeField
      FieldName = 'DTESCO'
      Origin = 'ISADE.CMPSCO.DTESCO'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpScoHRESCO: TStringField
      FieldName = 'HRESCO'
      Origin = 'ISADE.CMPSCO.HRESCO'
      FixedChar = True
      Size = 8
    end
    object CmpScoCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.CMPSCO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpScoCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.CMPSCO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpScoCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.CMPSCO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpScoCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.CMPSCO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpScoCLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPSCO.CLSIPI'
      Size = 30
    end
    object CmpScoQTDSCO: TFloatField
      FieldName = 'QTDSCO'
      Origin = 'ISADE.CMPSCO.QTDSCO'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoVALCOT: TFloatField
      FieldName = 'VALCOT'
      Origin = 'ISADE.CMPSCO.VALCOT'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoID_PORORI: TIntegerField
      FieldName = 'ID_PORORI'
      Origin = 'ISADE.CMPSCO.ID_PORORI'
    end
    object CmpScoID_PORDES: TIntegerField
      FieldName = 'ID_PORDES'
      Origin = 'ISADE.CMPSCO.ID_PORDES'
    end
    object CmpScoMRGSCO: TFloatField
      FieldName = 'MRGSCO'
      Origin = 'ISADE.CMPSCO.MRGSCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoSEQSCO: TStringField
      FieldName = 'SEQSCO'
      Origin = 'ISADE.CMPSCO.SEQSCO'
      FixedChar = True
      Size = 22
    end
    object CmpScoSITSCO: TStringField
      FieldName = 'SITSCO'
      Origin = 'ISADE.CMPSCO.SITSCO'
      Size = 45
    end
  end
  object UpCmpSco: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpSco'
      'set'
      '  DTESCO = :DTESCO,'
      '  HRESCO = :HRESCO,'
      '  MRGSCO = :MRGSCO,'
      '  QTDSCO = :QTDSCO,'
      '  VALCOT = :VALCOT,'
      '  ID_PORORI = :ID_PORORI,'
      '  ID_PORDES = :ID_PORDES,'
      '  SITSCO = :SITSCO'
      'where'
      '  ID_CMPSCO = :OLD_ID_CMPSCO')
    InsertSQL.Strings = (
      'insert into CmpSco'
      '  (ID_CMPSCO, DTESCO, HRESCO, CODCLP, CODGRU, CODSUB, CODPRO, '
      'CLSIPI, MRGSCO, '
      '   QTDSCO, VALCOT, ID_PORORI, ID_PORDES, SEQSCO, SITSCO)'
      'values'
      
        '  (:ID_CMPSCO, :DTESCO, :HRESCO, :CODCLP, :CODGRU, :CODSUB, :COD' +
        'PRO, '
      ':CLSIPI, '
      
        '   :MRGSCO, :QTDSCO, :VALCOT, :ID_PORORI, :ID_PORDES, :SEQSCO, :' +
        'SITSCO)')
    DeleteSQL.Strings = (
      'delete from CmpSco'
      'where'
      '  ID_CMPSCO = :OLD_ID_CMPSCO')
    Left = 446
    Top = 39
  end
  object DsCmpSco: TwwDataSource
    DataSet = CmpSco
    Left = 474
    Top = 11
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 474
    Top = 39
  end
  object CmpSc2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpSco
    SQL.Strings = (
      'Select CmpSc2.*,'
      '           CmpMLC.NomMLC '
      
        'From CmpSc2 LEFT JOIN CmpMLC ON (CmpSc2.Id_CmpMLC = CmpMLC.Id_Cm' +
        'pMLC)'
      'Where CmpSc2.Id_CmpSco = :Id_CmpSco')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpCmpSc2
    ValidateWithMask = True
    Left = 6
    Top = 207
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPSCO'
        ParamType = ptInput
      end>
    object CmpSc2NOMMLC: TStringField
      DisplayLabel = '                                           '
      DisplayWidth = 81
      FieldName = 'NOMMLC'
      Size = 70
    end
    object CmpSc2TOTSC2: TFloatField
      DisplayLabel = 
        '                                                                ' +
        '    '
      DisplayWidth = 20
      FieldName = 'TOTSC2'
    end
    object CmpSc2ID_CMPSC2: TIntegerField
      FieldName = 'ID_CMPSC2'
      Visible = False
    end
    object CmpSc2ID_CMPSCO: TIntegerField
      FieldName = 'ID_CMPSCO'
      Visible = False
    end
    object CmpSc2ID_CMPMLC: TIntegerField
      FieldName = 'ID_CMPMLC'
      Visible = False
    end
  end
  object DsCmpSc2: TwwDataSource
    DataSet = CmpSc2
    Left = 34
    Top = 207
  end
  object UpCmpSc2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpSc2'
      'set'
      '  TOTSC2 = :TOTSC2'
      'where'
      '  ID_CMPSC2 = :OLD_ID_CMPSC2')
    InsertSQL.Strings = (
      'insert into CmpSc2'
      '(ID_CMPSC2, ID_CMPSCO, ID_CMPMLC, TOTSC2)'
      'values'
      '(:ID_CMPSC2, :ID_CMPSCO, :ID_CMPMLC, :TOTSC2)')
    DeleteSQL.Strings = (
      'delete from CmpSc2'
      'where'
      '  ID_CMPSC2 = :OLD_ID_CMPSC2')
    Left = 6
    Top = 235
  end
  object CmpSc3: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpSc2
    SQL.Strings = (
      'Select * From CmpSc3'
      'Where CmpSc3.Id_CmpSc2 = :Id_CmpSc2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpCmpSc3
    ValidateWithMask = True
    Left = 5
    Top = 345
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPSC2'
        ParamType = ptInput
      end>
    object CmpSc3DESSC3: TStringField
      DisplayLabel = ' '
      DisplayWidth = 81
      FieldName = 'DESSC3'
      Origin = 'ISADE.CMPSC3.DESSC3'
      Size = 70
    end
    object CmpSc3PERSC3: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'PERSC3'
      Origin = 'ISADE.CMPSC3.PERSC3'
    end
    object CmpSc3TOTSC3: TFloatField
      DisplayLabel = '                                    '
      DisplayWidth = 15
      FieldName = 'TOTSC3'
      Origin = 'ISADE.CMPSC3.TOTSC3'
    end
    object CmpSc3ID_CMPSC3: TIntegerField
      FieldName = 'ID_CMPSC3'
      Origin = 'ISADE.CMPSC3.ID_CMPSC3'
      Visible = False
    end
    object CmpSc3ID_CMPSC2: TIntegerField
      FieldName = 'ID_CMPSC2'
      Origin = 'ISADE.CMPSC3.ID_CMPSC2'
      Visible = False
    end
    object CmpSc3TIPSC3: TStringField
      FieldName = 'TIPSC3'
      Origin = 'ISADE.CMPSC3.TIPSC3'
      Visible = False
      Size = 7
    end
    object CmpSc3BASSC3: TFloatField
      FieldName = 'BASSC3'
      Origin = 'ISADE.CMPSC3.BASSC3'
      Visible = False
    end
    object CmpSc3REDSC3: TFloatField
      FieldName = 'REDSC3'
      Origin = 'ISADE.CMPSC3.REDSC3'
      Visible = False
    end
  end
  object UpCmpSc3: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpSc3'
      'set'
      '  PERSC3 = :PERSC3,'
      '  BASSC3 = :BASSC3,'
      '  REDSC3 = :REDSC3,'
      '  TOTSC3 = :TOTSC3'
      'where'
      '  ID_CMPSC3 = :OLD_ID_CMPSC3')
    InsertSQL.Strings = (
      'insert into CmpSc3'
      
        '  (ID_CMPSC3, ID_CMPSC2, DESSC3, TIPSC3, PERSC3, BASSC3, REDSC3,' +
        ' TOTSC3)'
      'values'
      
        '  (:ID_CMPSC3, :ID_CMPSC2, :DESSC3, :TIPSC3, :PERSC3, :BASSC3, :' +
        'REDSC3, '
      '   :TOTSC3)')
    DeleteSQL.Strings = (
      'delete from CmpSc3'
      'where'
      '  ID_CMPSC3 = :OLD_ID_CMPSC3')
    Left = 5
    Top = 373
  end
  object DsCmpSc3: TwwDataSource
    DataSet = CmpSc3
    Left = 33
    Top = 345
  end
end
