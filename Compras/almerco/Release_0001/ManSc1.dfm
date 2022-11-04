inherited fmManSc1: TfmManSc1
  Left = 0
  Caption = 'Simulação de custos de importação'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
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
  object LbText: TLabel
    Left = 2
    Top = 449
    Width = 159
    Height = 16
    Caption = 'F1-Iniciais F2-Inteligente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 646
    Top = 463
    Width = 137
    Height = 16
    Alignment = taRightJustify
    Caption = 'F12-Concluir ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 2
    Top = 355
    Width = 85
    Height = 14
    Caption = 'Qtde de caixas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 2
    Top = 379
    Width = 68
    Height = 14
    Caption = 'Peso liquido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label21: TLabel
    Left = 2
    Top = 403
    Width = 64
    Height = 14
    Caption = 'Peso bruto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 2
    Top = 427
    Width = 55
    Height = 14
    Caption = 'Cubagem:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 242
    Top = 355
    Width = 110
    Height = 14
    Caption = 'Qtde de containers:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 242
    Top = 380
    Width = 109
    Height = 14
    Caption = 'Frete maritimo US$:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 525
    Top = 355
    Width = 223
    Height = 14
    Caption = 'Nivel de ocupação do(s) container(s)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label32: TLabel
    Left = 525
    Top = 380
    Width = 30
    Height = 14
    Caption = 'Peso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label33: TLabel
    Left = 525
    Top = 404
    Width = 55
    Height = 14
    Caption = 'Cubagem:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object pnPeso: TLabel
    Left = 706
    Top = 380
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = '   0,00%'
  end
  object pnCubagem: TLabel
    Left = 706
    Top = 404
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = '   0,00%'
  end
  object EdTotFrt: TdxDBColorEdit
    Left = 357
    Top = 376
    Width = 103
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
    Height = 24
    StoredValues = 1
  end
  object EdTotLiq: TdxDBColorEdit
    Left = 110
    Top = 375
    Width = 103
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
    Height = 24
    StoredValues = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 220
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
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
      OnPaint = PaintBox1Paint
    end
    object bPsqClp: TSpeedButton
      Left = 214
      Top = 27
      Width = 26
      Height = 22
      Hint = 'Pesquisar classificações de itens cadastradas'
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
      OnClick = bPsqClpClick
    end
    object Label12: TLabel
      Left = 2
      Top = 30
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
    object bPsqGru: TSpeedButton
      Left = 214
      Top = 51
      Width = 26
      Height = 22
      Hint = 'Pesquisar grupos cadastrados'
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
      OnClick = bPsqGruClick
    end
    object bPsqSub: TSpeedButton
      Left = 214
      Top = 75
      Width = 26
      Height = 22
      Hint = 'Pesquisar subgrupos cadastrados'
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
      OnClick = bPsqSubClick
    end
    object bPsqPro: TSpeedButton
      Left = 214
      Top = 99
      Width = 26
      Height = 22
      Hint = 'Pesquisar itens cadastrados'
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
      OnClick = bPsqProClick
    end
    object Label1: TLabel
      Left = 2
      Top = 54
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
      Top = 78
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
      Top = 102
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
      Left = 242
      Top = 6
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
      Left = 597
      Top = 198
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
      Left = 460
      Top = 6
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
      Left = 636
      Top = 102
      Width = 28
      Height = 14
      Caption = 'NCM:'
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
      Top = 6
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
    object Label11: TLabel
      Left = 2
      Top = 150
      Width = 93
      Height = 14
      Caption = 'Porto de origem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqPo1: TSpeedButton
      Left = 214
      Top = 147
      Width = 26
      Height = 22
      Hint = 'Pesquisar portos cadastrados'
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
      OnClick = bPsqPo1Click
    end
    object Label13: TLabel
      Left = 2
      Top = 174
      Width = 96
      Height = 14
      Caption = 'Porto de destino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqPo2: TSpeedButton
      Left = 214
      Top = 171
      Width = 26
      Height = 22
      Hint = 'Pesquisar portos cadastrados'
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
      OnClick = bPsqPo2Click
    end
    object Label14: TLabel
      Left = 2
      Top = 126
      Width = 66
      Height = 14
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqFor: TSpeedButton
      Left = 214
      Top = 123
      Width = 26
      Height = 22
      Hint = 'Pesquisar fornecedores cadastrados'
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
      OnClick = bPsqForClick
    end
    object Label15: TLabel
      Left = 2
      Top = 6
      Width = 94
      Height = 14
      Caption = 'No. da operação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 2
      Top = 198
      Width = 83
      Height = 14
      Caption = 'Valor FOB US$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 242
      Top = 198
      Width = 103
      Height = 14
      Caption = 'Preço mínimo US$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdNomFor: TdxDBColorEdit
      Left = 241
      Top = 122
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
      TabOrder = 20
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomClp: TdxDBColorEdit
      Left = 241
      Top = 26
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
      TabOrder = 6
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomClp: TPanel
      Left = 243
      Top = 28
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object EdCodClp: TdxDBColorEdit
      Left = 110
      Top = 26
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
      TabOrder = 5
      OnEnter = EdCodClpEnter
      OnExit = EdCodClpExit
      OnKeyDown = EdCodClpKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = 110
      Top = 50
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
      TabOrder = 8
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomGru: TdxDBColorEdit
      Left = 241
      Top = 50
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
      TabOrder = 9
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomGru: TPanel
      Left = 243
      Top = 52
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object EdCodSub: TdxDBColorEdit
      Left = 110
      Top = 74
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
      TabOrder = 11
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomSub: TdxDBColorEdit
      Left = 241
      Top = 74
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
      TabOrder = 12
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomSub: TPanel
      Left = 243
      Top = 76
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object EdCodPro: TdxDBColorEdit
      Left = 110
      Top = 98
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
      TabOrder = 14
      OnEnter = EdCodGruEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDscPro: TdxDBColorEdit
      Left = 241
      Top = 98
      Width = 391
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
    object pnDscPro: TPanel
      Left = 243
      Top = 100
      Width = 385
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object EdDteSco: TdxDBColorDateEdit
      Left = 350
      Top = 2
      Width = 104
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdDteScoEnter
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
    object EdQtdSco: TdxDBColorCurrencyEdit
      Left = 670
      Top = 194
      Width = 115
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 30
      OnEnter = EdDteScoEnter
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
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 551
      Top = 2
      Width = 82
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnEnter = EdDteScoEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALTMO'
      DataSource = DsCmpSco
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 670
      Top = 98
      Width = 115
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
      TabOrder = 17
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnClsIpi: TPanel
      Left = 672
      Top = 100
      Width = 109
      Height = 18
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object EdMrgSco: TdxDBColorCurrencyEdit
      Left = 714
      Top = 2
      Width = 71
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdDteScoEnter
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
    object EdId_PorOri: TdxDBColorEdit
      Left = 110
      Top = 146
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
      TabOrder = 22
      OnEnter = EdId_FinForEnter
      OnExit = EdId_PorOriExit
      OnKeyDown = EdId_PorOriKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'ID_PORORI'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomPo1: TdxDBColorEdit
      Left = 241
      Top = 146
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
      TabOrder = 23
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPo1: TPanel
      Left = 243
      Top = 148
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object EdId_PorDes: TdxDBColorEdit
      Left = 110
      Top = 170
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
      TabOrder = 25
      OnEnter = EdId_FinForEnter
      OnExit = EdId_PorDesExit
      OnKeyDown = EdId_PorDesKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'ID_PORDES'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomPo2: TdxDBColorEdit
      Left = 241
      Top = 170
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
      TabOrder = 26
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPo2: TPanel
      Left = 243
      Top = 172
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object EdId_FinFor: TdxDBColorEdit
      Left = 110
      Top = 122
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
      TabOrder = 19
      OnEnter = EdId_FinForEnter
      OnExit = EdId_FinForExit
      OnKeyDown = EdId_FinForKeyDown
      OnKeyPress = EdCodClpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'ID_FINFOR'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomFor: TPanel
      Left = 243
      Top = 124
      Width = 538
      Height = 18
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object EdId_CmpCso: TdxDBColorEdit
      Left = 110
      Top = 2
      Width = 103
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
      DataField = 'ID_CMPSCO'
      DataSource = DsCmpSco
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnlId_CmpSco: TPanel
      Left = 112
      Top = 4
      Width = 97
      Height = 18
      Alignment = taRightJustify
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
      object pnId_CmpSco: TPanel
        Left = -2
        Top = 0
        Width = 96
        Height = 18
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = ' '
        Color = 8437695
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object EdFobSco: TdxDBColorCurrencyEdit
      Left = 110
      Top = 194
      Width = 103
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 28
      OnEnter = EdDteScoEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'FOBSCO'
      DataSource = DsCmpSco
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdMinSco: TdxDBColorCurrencyEdit
      Left = 349
      Top = 194
      Width = 103
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 29
      OnEnter = EdDteScoEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'MINSCO'
      DataSource = DsCmpSco
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object Panel15: TPanel
    Left = 2
    Top = 220
    Width = 781
    Height = 128
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Panel16: TPanel
      Left = 1
      Top = 31
      Width = 779
      Height = 96
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
    object grSc2: ThGrid
      Tag = 1
      Left = 2
      Top = 0
      Width = 777
      Height = 126
      Selected.Strings = (
        'NOMARM'#9'20'#9' '
        'PESMAX'#9'15'#9' '
        'CUBMAX'#9'15'#9' '
        'MSCSC2'#9'12'#9' '
        'THCSC2'#9'12'#9' '
        'QTDPRE'#9'15'#9' '
        'QTDUTI'#9'14'#9' '
        'FLGUSA'#9'3'#9'        ')
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
      OnEnter = grSc2Enter
      OnKeyDown = grSc2KeyDown
      IndicatorColor = icYellow
      CorDeFoco = clInfoBk
    end
    object Panel17: TPanel
      Left = 1
      Top = 1
      Width = 779
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
      object Label18: TLabel
        Left = 3
        Top = 7
        Width = 72
        Height = 13
        Caption = 'Armadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 189
        Top = 7
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Peso máx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 269
        Top = 7
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cubagem máx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 422
        Top = 7
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'MSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 511
        Top = 7
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'THC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 543
        Top = 7
        Width = 104
        Height = 13
        Alignment = taRightJustify
        Caption = 'Containers prev'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 685
        Top = 7
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Utilizados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 760
        Top = 7
        Width = 8
        Height = 13
        Caption = 'S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object pncontainer: TPanel
      Left = 280
      Top = 59
      Width = 222
      Height = 44
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 3
      Visible = False
      object pncontainer1: TPanel
        Left = 1
        Top = 1
        Width = 220
        Height = 42
        BevelOuter = bvNone
        Color = 8437695
        TabOrder = 0
        OnExit = pncontainer1Exit
        object Label34: TLabel
          Left = 9
          Top = 13
          Width = 121
          Height = 14
          Caption = 'Qtde de Container(s):'
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object EdQtdUti: TdxDBColorCurrencyEdit
          Left = 140
          Top = 9
          Width = 72
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 0
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDUTI'
          DataSource = DsCmpSc2
          DecimalPlaces = 0
          DisplayFormat = '####0'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
      end
    end
  end
  object EdTotCxa: TdxDBColorEdit
    Left = 110
    Top = 351
    Width = 103
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
    TabOrder = 2
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnlTotCxa: TPanel
    Left = 112
    Top = 353
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object pnTotCxa: TPanel
      Left = -3
      Top = 0
      Width = 98
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlTotLiq: TPanel
    Left = 112
    Top = 377
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object pnTotLiq: TPanel
      Left = 1
      Top = 0
      Width = 94
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object EdTotBrt: TdxDBColorEdit
    Left = 110
    Top = 399
    Width = 103
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
    TabOrder = 6
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnlTotBrt: TPanel
    Left = 112
    Top = 401
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object pnTotBrt: TPanel
      Left = -3
      Top = 0
      Width = 98
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object EdTotCub: TdxDBColorEdit
    Left = 110
    Top = 423
    Width = 103
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
    TabOrder = 8
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnlTotCub: TPanel
    Left = 112
    Top = 425
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object pnTotCub: TPanel
      Left = -3
      Top = 0
      Width = 98
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object EdQtdCon: TdxDBColorEdit
    Left = 357
    Top = 351
    Width = 103
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
  object pnlQtdCon: TPanel
    Left = 359
    Top = 353
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object pnQtdCon: TPanel
      Left = -3
      Top = 0
      Width = 98
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlTotFrt: TPanel
    Left = 359
    Top = 378
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object pnTotFrt: TPanel
      Left = -3
      Top = 0
      Width = 98
      Height = 18
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Color = 8437695
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object dxDBColorEdit2: TdxDBColorEdit
    Left = 591
    Top = 376
    Width = 103
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
    TabOrder = 14
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object Panel4: TPanel
    Left = 593
    Top = 378
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    object ProgressBar1: TdxfProgressBar
      Left = -2
      Top = -2
      Width = 101
      Height = 22
      BarBevelOuter = bvNone
      BevelOuter = bvLowered
      Orientation = orHorizontal
      Max = 100
      Min = 0
      Position = 0
      ShowTextStyle = stsPercent
      BeginColor = clNavy
      EndColor = clWhite
      Style = sExSolid
      Step = 10
      TransparentGlyph = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object dxDBColorEdit3: TdxDBColorEdit
    Left = 591
    Top = 400
    Width = 103
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
    TabOrder = 16
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object Panel6: TPanel
    Left = 593
    Top = 402
    Width = 97
    Height = 18
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = 8437695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    object ProgressBar2: TdxfProgressBar
      Left = -2
      Top = -2
      Width = 101
      Height = 22
      BarBevelOuter = bvNone
      BevelOuter = bvLowered
      Orientation = orHorizontal
      Max = 100
      Min = 0
      Position = 0
      ShowTextStyle = stsPercent
      BeginColor = clNavy
      EndColor = clWhite
      Style = sExSolid
      Step = 10
      TransparentGlyph = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object CmpSco: TwwQuery
    CachedUpdates = True
    OnNewRecord = CmpScoNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpSco'
      'Where CmpSco.Id_CmpSco = :Id_CmpSco')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpCmpSco
    ValidateWithMask = True
    Left = 301
    Top = 417
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
    object CmpScoID_FINFOR: TIntegerField
      FieldName = 'ID_FINFOR'
      Origin = 'ISADE.CMPSCO.ID_FINFOR'
    end
    object CmpScoID_PORORI: TIntegerField
      FieldName = 'ID_PORORI'
      Origin = 'ISADE.CMPSCO.ID_PORORI'
    end
    object CmpScoID_PORDES: TIntegerField
      FieldName = 'ID_PORDES'
      Origin = 'ISADE.CMPSCO.ID_PORDES'
    end
    object CmpScoCLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPSCO.CLSIPI'
      Size = 30
    end
    object CmpScoFOBSCO: TFloatField
      FieldName = 'FOBSCO'
      Origin = 'ISADE.CMPSCO.FOBSCO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpScoVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.CMPSCO.VALTMO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpScoQTDSCO: TFloatField
      FieldName = 'QTDSCO'
      Origin = 'ISADE.CMPSCO.QTDSCO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpScoMRGSCO: TFloatField
      FieldName = 'MRGSCO'
      Origin = 'ISADE.CMPSCO.MRGSCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpScoTOTCXA: TFloatField
      FieldName = 'TOTCXA'
      Origin = 'ISADE.CMPSCO.TOTCXA'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object CmpScoTOTCUB: TFloatField
      FieldName = 'TOTCUB'
      Origin = 'ISADE.CMPSCO.TOTCUB'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
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
    object CmpScoQTDSC2: TIntegerField
      FieldName = 'QTDSC2'
      Origin = 'ISADE.CMPSCO.QTDSC2'
    end
    object CmpScoMINSCO: TFloatField
      FieldName = 'MINSCO'
      Origin = 'ISADE.CMPSCO.MINSCO'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoID_GERUSU: TIntegerField
      FieldName = 'ID_GERUSU'
      Origin = 'ISADE.CMPSCO.ID_GERUSU'
    end
    object CmpScoQTDCON: TIntegerField
      FieldName = 'QTDCON'
      Origin = 'ISADE.CMPSCO.QTDCON'
    end
    object CmpScoTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPSCO.TOTLIQ'
    end
    object CmpScoTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPSCO.TOTBRT'
    end
    object CmpScoCUBPRO: TFloatField
      FieldName = 'CUBPRO'
      Origin = 'ISADE.CMPSCO.CUBPRO'
    end
    object CmpScoCXAPRO: TFloatField
      FieldName = 'CXAPRO'
      Origin = 'ISADE.CMPSCO.CXAPRO'
    end
    object CmpScoLIQPRO: TFloatField
      FieldName = 'LIQPRO'
      Origin = 'ISADE.CMPSCO.LIQPRO'
    end
    object CmpScoBRTPRO: TFloatField
      FieldName = 'BRTPRO'
      Origin = 'ISADE.CMPSCO.BRTPRO'
    end
    object CmpScoDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.CMPSCO.DTEATU'
    end
    object CmpScoHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.CMPSCO.HREATU'
      FixedChar = True
      Size = 8
    end
    object CmpScoFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.CMPSCO.FLGATU'
      FixedChar = True
      Size = 1
    end
    object CmpScoTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.CMPSCO.TOTFRT'
    end
    object CmpScoTOTFOB: TFloatField
      FieldName = 'TOTFOB'
      Origin = 'ISADE.CMPSCO.TOTFOB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoFRTINT: TFloatField
      FieldName = 'FRTINT'
      Origin = 'ISADE.CMPSCO.FRTINT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTCFR: TFloatField
      FieldName = 'TOTCFR'
      Origin = 'ISADE.CMPSCO.TOTCFR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOESEG: TStringField
      FieldName = 'MOESEG'
      Origin = 'ISADE.CMPSCO.MOESEG'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALSEG: TFloatField
      FieldName = 'VALSEG'
      Origin = 'ISADE.CMPSCO.VALSEG'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPSEG: TStringField
      FieldName = 'TIPSEG'
      Origin = 'ISADE.CMPSCO.TIPSEG'
      Size = 10
    end
    object CmpScoTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.CMPSCO.TOTSEG'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEIMP: TStringField
      FieldName = 'MOEIMP'
      Origin = 'ISADE.CMPSCO.MOEIMP'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALIMP: TFloatField
      FieldName = 'VALIMP'
      Origin = 'ISADE.CMPSCO.VALIMP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPIMP: TStringField
      FieldName = 'TIPIMP'
      Origin = 'ISADE.CMPSCO.TIPIMP'
      Size = 10
    end
    object CmpScoTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      Origin = 'ISADE.CMPSCO.TOTIMP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEIPI: TStringField
      FieldName = 'MOEIPI'
      Origin = 'ISADE.CMPSCO.MOEIPI'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALIPI: TFloatField
      FieldName = 'VALIPI'
      Origin = 'ISADE.CMPSCO.VALIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPSCO.TIPIPI'
      Size = 10
    end
    object CmpScoTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPSCO.TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEICM: TStringField
      FieldName = 'MOEICM'
      Origin = 'ISADE.CMPSCO.MOEICM'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALICM: TFloatField
      FieldName = 'VALICM'
      Origin = 'ISADE.CMPSCO.VALICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPSCO.TIPICM'
      Size = 10
    end
    object CmpScoTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPSCO.TOTICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEPIS: TStringField
      FieldName = 'MOEPIS'
      Origin = 'ISADE.CMPSCO.MOEPIS'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALPIS: TFloatField
      FieldName = 'VALPIS'
      Origin = 'ISADE.CMPSCO.VALPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPPIS: TStringField
      FieldName = 'TIPPIS'
      Origin = 'ISADE.CMPSCO.TIPPIS'
      Size = 10
    end
    object CmpScoTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.CMPSCO.TOTPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOECOF: TStringField
      FieldName = 'MOECOF'
      Origin = 'ISADE.CMPSCO.MOECOF'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALCOF: TFloatField
      FieldName = 'VALCOF'
      Origin = 'ISADE.CMPSCO.VALCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPCOF: TStringField
      FieldName = 'TIPCOF'
      Origin = 'ISADE.CMPSCO.TIPCOF'
      Size = 10
    end
    object CmpScoTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.CMPSCO.TOTCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTIDE: TFloatField
      FieldName = 'TOTIDE'
      Origin = 'ISADE.CMPSCO.TOTIDE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEDES: TStringField
      FieldName = 'MOEDES'
      Origin = 'ISADE.CMPSCO.MOEDES'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALDES: TFloatField
      FieldName = 'VALDES'
      Origin = 'ISADE.CMPSCO.VALDES'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPDES: TStringField
      FieldName = 'TIPDES'
      Origin = 'ISADE.CMPSCO.TIPDES'
      Size = 10
    end
    object CmpScoTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.CMPSCO.TOTDES'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOESIS: TStringField
      FieldName = 'MOESIS'
      Origin = 'ISADE.CMPSCO.MOESIS'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALSIS: TFloatField
      FieldName = 'VALSIS'
      Origin = 'ISADE.CMPSCO.VALSIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPSIS: TStringField
      FieldName = 'TIPSIS'
      Origin = 'ISADE.CMPSCO.TIPSIS'
      Size = 10
    end
    object CmpScoTOTSIS: TFloatField
      FieldName = 'TOTSIS'
      Origin = 'ISADE.CMPSCO.TOTSIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEAFR: TStringField
      FieldName = 'MOEAFR'
      Origin = 'ISADE.CMPSCO.MOEAFR'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALAFR: TFloatField
      FieldName = 'VALAFR'
      Origin = 'ISADE.CMPSCO.VALAFR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPAFR: TStringField
      FieldName = 'TIPAFR'
      Origin = 'ISADE.CMPSCO.TIPAFR'
      Size = 10
    end
    object CmpScoTOTAFR: TFloatField
      FieldName = 'TOTAFR'
      Origin = 'ISADE.CMPSCO.TOTAFR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEDSC: TStringField
      FieldName = 'MOEDSC'
      Origin = 'ISADE.CMPSCO.MOEDSC'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALDSC: TFloatField
      FieldName = 'VALDSC'
      Origin = 'ISADE.CMPSCO.VALDSC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.CMPSCO.TIPDSC'
      Size = 10
    end
    object CmpScoTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPSCO.TOTDSC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEEBL: TStringField
      FieldName = 'MOEEBL'
      Origin = 'ISADE.CMPSCO.MOEEBL'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALEBL: TFloatField
      FieldName = 'VALEBL'
      Origin = 'ISADE.CMPSCO.VALEBL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPEBL: TStringField
      FieldName = 'TIPEBL'
      Origin = 'ISADE.CMPSCO.TIPEBL'
      Size = 10
    end
    object CmpScoTOTEBL: TFloatField
      FieldName = 'TOTEBL'
      Origin = 'ISADE.CMPSCO.TOTEBL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOELDI: TStringField
      FieldName = 'MOELDI'
      Origin = 'ISADE.CMPSCO.MOELDI'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALLDI: TFloatField
      FieldName = 'VALLDI'
      Origin = 'ISADE.CMPSCO.VALLDI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPLDI: TStringField
      FieldName = 'TIPLDI'
      Origin = 'ISADE.CMPSCO.TIPLDI'
      Size = 10
    end
    object CmpScoTOTLDI: TFloatField
      FieldName = 'TOTLDI'
      Origin = 'ISADE.CMPSCO.TOTLDI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEDEV: TStringField
      FieldName = 'MOEDEV'
      Origin = 'ISADE.CMPSCO.MOEDEV'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALDEV: TFloatField
      FieldName = 'VALDEV'
      Origin = 'ISADE.CMPSCO.VALDEV'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPDEV: TStringField
      FieldName = 'TIPDEV'
      Origin = 'ISADE.CMPSCO.TIPDEV'
      Size = 10
    end
    object CmpScoTOTDEV: TFloatField
      FieldName = 'TOTDEV'
      Origin = 'ISADE.CMPSCO.TOTDEV'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOECOR: TStringField
      FieldName = 'MOECOR'
      Origin = 'ISADE.CMPSCO.MOECOR'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALCOR: TFloatField
      FieldName = 'VALCOR'
      Origin = 'ISADE.CMPSCO.VALCOR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPCOR: TStringField
      FieldName = 'TIPCOR'
      Origin = 'ISADE.CMPSCO.TIPCOR'
      Size = 10
    end
    object CmpScoTOTCOR: TFloatField
      FieldName = 'TOTCOR'
      Origin = 'ISADE.CMPSCO.TOTCOR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEARM: TStringField
      FieldName = 'MOEARM'
      Origin = 'ISADE.CMPSCO.MOEARM'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALARM: TFloatField
      FieldName = 'VALARM'
      Origin = 'ISADE.CMPSCO.VALARM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPARM: TStringField
      FieldName = 'TIPARM'
      Origin = 'ISADE.CMPSCO.TIPARM'
      Size = 10
    end
    object CmpScoTOTARM: TFloatField
      FieldName = 'TOTARM'
      Origin = 'ISADE.CMPSCO.TOTARM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEPRC: TStringField
      FieldName = 'MOEPRC'
      Origin = 'ISADE.CMPSCO.MOEPRC'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALPRC: TFloatField
      FieldName = 'VALPRC'
      Origin = 'ISADE.CMPSCO.VALPRC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPPRC: TStringField
      FieldName = 'TIPPRC'
      Origin = 'ISADE.CMPSCO.TIPPRC'
      Size = 10
    end
    object CmpScoTOTPRC: TFloatField
      FieldName = 'TOTPRC'
      Origin = 'ISADE.CMPSCO.TOTPRC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTMCA: TFloatField
      FieldName = 'TOTMCA'
      Origin = 'ISADE.CMPSCO.TOTMCA'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTCIF: TFloatField
      FieldName = 'TOTCIF'
      Origin = 'ISADE.CMPSCO.TOTCIF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOECAP: TStringField
      FieldName = 'MOECAP'
      Origin = 'ISADE.CMPSCO.MOECAP'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALCAP: TFloatField
      FieldName = 'VALCAP'
      Origin = 'ISADE.CMPSCO.VALCAP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPCAP: TStringField
      FieldName = 'TIPCAP'
      Origin = 'ISADE.CMPSCO.TIPCAP'
      Size = 10
    end
    object CmpScoTOTCAP: TFloatField
      FieldName = 'TOTCAP'
      Origin = 'ISADE.CMPSCO.TOTCAP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEFIN: TStringField
      FieldName = 'MOEFIN'
      Origin = 'ISADE.CMPSCO.MOEFIN'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALFIN: TFloatField
      FieldName = 'VALFIN'
      Origin = 'ISADE.CMPSCO.VALFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPFIN: TStringField
      FieldName = 'TIPFIN'
      Origin = 'ISADE.CMPSCO.TIPFIN'
      Size = 10
    end
    object CmpScoTOTFIN: TFloatField
      FieldName = 'TOTFIN'
      Origin = 'ISADE.CMPSCO.TOTFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOETRA: TStringField
      FieldName = 'MOETRA'
      Origin = 'ISADE.CMPSCO.MOETRA'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALTRA: TFloatField
      FieldName = 'VALTRA'
      Origin = 'ISADE.CMPSCO.VALTRA'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPTRA: TStringField
      FieldName = 'TIPTRA'
      Origin = 'ISADE.CMPSCO.TIPTRA'
      Size = 10
    end
    object CmpScoTOTTRA: TFloatField
      FieldName = 'TOTTRA'
      Origin = 'ISADE.CMPSCO.TOTTRA'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEMAD: TStringField
      FieldName = 'MOEMAD'
      Origin = 'ISADE.CMPSCO.MOEMAD'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALMAD: TFloatField
      FieldName = 'VALMAD'
      Origin = 'ISADE.CMPSCO.VALMAD'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPMAD: TStringField
      FieldName = 'TIPMAD'
      Origin = 'ISADE.CMPSCO.TIPMAD'
      Size = 10
    end
    object CmpScoTOTMAD: TFloatField
      FieldName = 'TOTMAD'
      Origin = 'ISADE.CMPSCO.TOTMAD'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOESNA: TStringField
      FieldName = 'MOESNA'
      Origin = 'ISADE.CMPSCO.MOESNA'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALSNA: TFloatField
      FieldName = 'VALSNA'
      Origin = 'ISADE.CMPSCO.VALSNA'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPSNA: TStringField
      FieldName = 'TIPSNA'
      Origin = 'ISADE.CMPSCO.TIPSNA'
      Size = 10
    end
    object CmpScoTOTSNA: TFloatField
      FieldName = 'TOTSNA'
      Origin = 'ISADE.CMPSCO.TOTSNA'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEDED: TStringField
      FieldName = 'MOEDED'
      Origin = 'ISADE.CMPSCO.MOEDED'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALDED: TFloatField
      FieldName = 'VALDED'
      Origin = 'ISADE.CMPSCO.VALDED'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPDED: TStringField
      FieldName = 'TIPDED'
      Origin = 'ISADE.CMPSCO.TIPDED'
      Size = 10
    end
    object CmpScoTOTDED: TFloatField
      FieldName = 'TOTDED'
      Origin = 'ISADE.CMPSCO.TOTDED'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTDIS: TFloatField
      FieldName = 'TOTDIS'
      Origin = 'ISADE.CMPSCO.TOTDIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTNET: TFloatField
      FieldName = 'TOTNET'
      Origin = 'ISADE.CMPSCO.TOTNET'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoMOEICE: TStringField
      FieldName = 'MOEICE'
      Origin = 'ISADE.CMPSCO.MOEICE'
      FixedChar = True
      Size = 3
    end
    object CmpScoVALICE: TFloatField
      FieldName = 'VALICE'
      Origin = 'ISADE.CMPSCO.VALICE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTIPICE: TStringField
      FieldName = 'TIPICE'
      Origin = 'ISADE.CMPSCO.TIPICE'
      Size = 10
    end
    object CmpScoTOTICE: TFloatField
      FieldName = 'TOTICE'
      Origin = 'ISADE.CMPSCO.TOTICE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTENT: TFloatField
      FieldName = 'TOTENT'
      Origin = 'ISADE.CMPSCO.TOTENT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.CMPSCO.TOTCST'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoVLUSCO: TFloatField
      FieldName = 'VLUSCO'
      Origin = 'ISADE.CMPSCO.VLUSCO'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoICMSCO: TFloatField
      FieldName = 'ICMSCO'
      Origin = 'ISADE.CMPSCO.ICMSCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoICMCAL: TFloatField
      FieldName = 'ICMCAL'
      Origin = 'ISADE.CMPSCO.ICMCAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoIPISCO: TFloatField
      FieldName = 'IPISCO'
      Origin = 'ISADE.CMPSCO.IPISCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoIPICAL: TFloatField
      FieldName = 'IPICAL'
      Origin = 'ISADE.CMPSCO.IPICAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoPISSCO: TFloatField
      FieldName = 'PISSCO'
      Origin = 'ISADE.CMPSCO.PISSCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoPISCAL: TFloatField
      FieldName = 'PISCAL'
      Origin = 'ISADE.CMPSCO.PISCAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoCOFSCO: TFloatField
      FieldName = 'COFSCO'
      Origin = 'ISADE.CMPSCO.COFSCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoCOFCAL: TFloatField
      FieldName = 'COFCAL'
      Origin = 'ISADE.CMPSCO.COFCAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoIRESCO: TFloatField
      FieldName = 'IRESCO'
      Origin = 'ISADE.CMPSCO.IRESCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoIRECAL: TFloatField
      FieldName = 'IRECAL'
      Origin = 'ISADE.CMPSCO.IRECAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoCSSSCO: TFloatField
      FieldName = 'CSSSCO'
      Origin = 'ISADE.CMPSCO.CSSSCO'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoCSSCAL: TFloatField
      FieldName = 'CSSCAL'
      Origin = 'ISADE.CMPSCO.CSSCAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.CMPSCO.TOTVEN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTREC: TFloatField
      FieldName = 'TOTREC'
      Origin = 'ISADE.CMPSCO.TOTREC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoRENCAL: TFloatField
      FieldName = 'RENCAL'
      Origin = 'ISADE.CMPSCO.RENCAL'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoVALREN: TFloatField
      FieldName = 'VALREN'
      Origin = 'ISADE.CMPSCO.VALREN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.CMPSCO.TOTREN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoVALMLI: TFloatField
      FieldName = 'VALMLI'
      Origin = 'ISADE.CMPSCO.VALMLI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTMLI: TFloatField
      FieldName = 'TOTMLI'
      Origin = 'ISADE.CMPSCO.TOTMLI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoFRTMAR: TFloatField
      FieldName = 'FRTMAR'
      Origin = 'ISADE.CMPSCO.FRTMAR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpScoTOTIND: TFloatField
      FieldName = 'TOTIND'
      Origin = 'ISADE.CMPSCO.TOTIND'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoVLUINF: TFloatField
      FieldName = 'VLUINF'
      Origin = 'ISADE.CMPSCO.VLUINF'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpScoTOTINF: TFloatField
      FieldName = 'TOTINF'
      Origin = 'ISADE.CMPSCO.ID_CMPSCO'
    end
  end
  object UpCmpSco: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpSco'
      'set'
      '  DTESCO = :DTESCO,'
      '  HRESCO = :HRESCO,'
      '  FOBSCO = :FOBSCO,'
      '  MINSCO = :MINSCO,'
      '  VALTMO = :VALTMO,'
      '  QTDSCO = :QTDSCO,'
      '  MRGSCO = :MRGSCO,'
      '  FRTMAR = :FRTMAR,'
      '  FRTINT = :FRTINT,'
      '  TOTCFR = :TOTCFR,'
      '  MOESEG = :MOESEG,'
      '  VALSEG = :VALSEG,'
      '  TIPSEG = :TIPSEG,'
      '  TOTSEG = :TOTSEG,'
      '  TOTCIF = :TOTCIF,'
      '  MOEIMP = :MOEIMP,'
      '  VALIMP = :VALIMP,'
      '  TIPIMP = :TIPIMP,'
      '  TOTIMP = :TOTIMP,'
      '  MOEIPI = :MOEIPI,'
      '  VALIPI = :VALIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TOTIPI = :TOTIPI,'
      '  MOEICM = :MOEICM,'
      '  VALICM = :VALICM,'
      '  TIPICM = :TIPICM,'
      '  TOTICM = :TOTICM,'
      '  MOEPIS = :MOEPIS,'
      '  VALPIS = :VALPIS,'
      '  TIPPIS = :TIPPIS,'
      '  TOTPIS = :TOTPIS,'
      '  MOECOF = :MOECOF,'
      '  VALCOF = :VALCOF,'
      '  TIPCOF = :TIPCOF,'
      '  TOTCOF = :TOTCOF,'
      '  TOTIDE = :TOTIDE,'
      '  MOEDES = :MOEDES,'
      '  VALDES = :VALDES,'
      '  TIPDES = :TIPDES,'
      '  TOTDES = :TOTDES,'
      '  MOESIS = :MOESIS,'
      '  VALSIS = :VALSIS,'
      '  TIPSIS = :TIPSIS,'
      '  TOTSIS = :TOTSIS,'
      '  MOEAFR = :MOEAFR,'
      '  VALAFR = :VALAFR,'
      '  TIPAFR = :TIPAFR,'
      '  TOTAFR = :TOTAFR,'
      '  MOEDSC = :MOEDSC,'
      '  VALDSC = :VALDSC,'
      '  TIPDSC = :TIPDSC,'
      '  TOTDSC = :TOTDSC,'
      '  MOEEBL = :MOEEBL,'
      '  VALEBL = :VALEBL,'
      '  TIPEBL = :TIPEBL,'
      '  TOTEBL = :TOTEBL,'
      '  MOECAP = :MOECAP,'
      '  VALCAP = :VALCAP,'
      '  TIPCAP = :TIPCAP,'
      '  TOTCAP = :TOTCAP,'
      '  MOELDI = :MOELDI,'
      '  VALLDI = :VALLDI,'
      '  TIPLDI = :TIPLDI,'
      '  TOTLDI = :TOTLDI,'
      '  MOEDEV = :MOEDEV,'
      '  VALDEV = :VALDEV,'
      '  TIPDEV = :TIPDEV,'
      '  TOTDEV = :TOTDEV,'
      '  MOECOR = :MOECOR,'
      '  VALCOR = :VALCOR,'
      '  TIPCOR = :TIPCOR,'
      '  TOTCOR = :TOTCOR,'
      '  MOEARM = :MOEARM,'
      '  VALARM = :VALARM,'
      '  TIPARM = :TIPARM,'
      '  TOTARM = :TOTARM,'
      '  MOEPRC = :MOEPRC,'
      '  VALPRC = :VALPRC,'
      '  TIPPRC = :TIPPRC,'
      '  TOTPRC = :TOTPRC,'
      '  TOTMCA = :TOTMCA,'
      '  TOTENT = :TOTENT,'
      '  TOTCST = :TOTCST,'
      '  MOEICE = :MOEICE,'
      '  VALICE = :VALICE,'
      '  TIPICE = :TIPICE,'
      '  TOTICE = :TOTICE,'
      '  MOEFIN = :MOEFIN,'
      '  VALFIN = :VALFIN,'
      '  TIPFIN = :TIPFIN,'
      '  TOTFIN = :TOTFIN,'
      '  MOETRA = :MOETRA,'
      '  VALTRA = :VALTRA,'
      '  TIPTRA = :TIPTRA,'
      '  TOTTRA = :TOTTRA,'
      '  MOEMAD = :MOEMAD,'
      '  VALMAD = :VALMAD,'
      '  TIPMAD = :TIPMAD,'
      '  TOTMAD = :TOTMAD,'
      '  MOESNA = :MOESNA,'
      '  VALSNA = :VALSNA,'
      '  TIPSNA = :TIPSNA,'
      '  TOTSNA = :TOTSNA,'
      '  MOEDED = :MOEDED,'
      '  VALDED = :VALDED,'
      '  TIPDED = :TIPDED,'
      '  TOTDED = :TOTDED,'
      '  TOTDIS = :TOTDIS,'
      '  TOTNET = :TOTNET,'
      '  VLUSCO = :VLUSCO,'
      '  ICMSCO = :ICMSCO,'
      '  ICMCAL = :ICMCAL,'
      '  IPISCO = :IPISCO,'
      '  IPICAL = :IPICAL,'
      '  PISSCO = :PISSCO,'
      '  PISCAL = :PISCAL,'
      '  COFSCO = :COFSCO,'
      '  COFCAL = :COFCAL,'
      '  IRESCO = :IRESCO,'
      '  IRECAL = :IRECAL,'
      '  CSSSCO = :CSSSCO,'
      '  CSSCAL = :CSSCAL,'
      '  TOTVEN = :TOTVEN,'
      '  TOTREC = :TOTREC,'
      '  RENCAL = :RENCAL,'
      '  VALREN = :VALREN,'
      '  TOTREN = :TOTREN,'
      '  VALMLI = :VALMLI,'
      '  TOTMLI = :TOTMLI,'
      '  ID_GERUSU = :ID_GERUSU,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  FLGATU = :FLGATU,'
      '  SEQSCO = :SEQSCO,'
      '  SITSCO = :SITSCO,'
      '  TOTIND = :TOTIND,'
      '  VLUINF = :VLUINF,'
      '  TOTINF = :TOTINF'
      'where'
      '  ID_CMPSCO = :OLD_ID_CMPSCO')
    InsertSQL.Strings = (
      'insert into CmpSco'
      
        '  (ID_CMPSCO, DTESCO, HRESCO, CODCLP, CODGRU, CODSUB, CODPRO, ID' +
        '_FINFOR, '
      
        '   ID_PORORI, ID_PORDES, CLSIPI, QTDSC2, QTDCON, FOBSCO, MINSCO,' +
        ' VALTMO, '
      
        '   QTDSCO, MRGSCO, TOTCXA, TOTLIQ, TOTBRT, TOTCUB, CUBPRO, CXAPR' +
        'O, LIQPRO, '
      
        '   BRTPRO, FRTMAR, TOTFRT, TOTFOB, FRTINT, TOTCFR, MOESEG, VALSE' +
        'G, TIPSEG, '
      
        '   TOTSEG, TOTCIF, MOEIMP, VALIMP, TIPIMP, TOTIMP, MOEIPI, VALIP' +
        'I, TIPIPI, '
      
        '   TOTIPI, MOEICM, VALICM, TIPICM, TOTICM, MOEPIS, VALPIS, TIPPI' +
        'S, TOTPIS, '
      
        '   MOECOF, VALCOF, TIPCOF, TOTCOF, TOTIDE, MOEDES, VALDES, TIPDE' +
        'S, TOTDES, '
      
        '   MOESIS, VALSIS, TIPSIS, TOTSIS, MOEAFR, VALAFR, TIPAFR, TOTAF' +
        'R, MOEDSC, '
      
        '   VALDSC, TIPDSC, TOTDSC, MOEEBL, VALEBL, TIPEBL, TOTEBL, MOECA' +
        'P, VALCAP, '
      
        '   TIPCAP, TOTCAP, MOELDI, VALLDI, TIPLDI, TOTLDI, MOEDEV, VALDE' +
        'V, TIPDEV, '
      
        '   TOTDEV, MOECOR, VALCOR, TIPCOR, TOTCOR, MOEARM, VALARM, TIPAR' +
        'M, TOTARM, '
      
        '   MOEPRC, VALPRC, TIPPRC, TOTPRC, TOTMCA, TOTENT, TOTCST, MOEIC' +
        'E, VALICE, '
      
        '   TIPICE, TOTICE, MOEFIN, VALFIN, TIPFIN, TOTFIN, MOETRA, VALTR' +
        'A, TIPTRA, '
      
        '   TOTTRA, MOEMAD, VALMAD, TIPMAD, TOTMAD, MOESNA, VALSNA, TIPSN' +
        'A, TOTSNA, '
      
        '   MOEDED, VALDED, TIPDED, TOTDED, TOTDIS, TOTNET, VLUSCO, ICMSC' +
        'O, ICMCAL, '
      
        '   IPISCO, IPICAL, PISSCO, PISCAL, COFSCO, COFCAL, IRESCO, IRECA' +
        'L, CSSSCO, '
      
        '   CSSCAL, TOTVEN, TOTREC, RENCAL, VALREN, TOTREN, VALMLI, TOTML' +
        'I, ID_GERUSU, '
      
        '   DTEATU, HREATU, FLGATU, SEQSCO, SITSCO, TOTIND, VLUINF, TOTIN' +
        'F)'
      'values'
      
        '  (:ID_CMPSCO, :DTESCO, :HRESCO, :CODCLP, :CODGRU, :CODSUB, :COD' +
        'PRO, :ID_FINFOR, '
      
        '   :ID_PORORI, :ID_PORDES, :CLSIPI, :QTDSC2, :QTDCON, :FOBSCO, :' +
        'MINSCO, '
      
        '   :VALTMO, :QTDSCO, :MRGSCO, :TOTCXA, :TOTLIQ, :TOTBRT, :TOTCUB' +
        ', :CUBPRO, '
      
        '   :CXAPRO, :LIQPRO, :BRTPRO, :FRTMAR, :TOTFRT, :TOTFOB, :FRTINT' +
        ', :TOTCFR, '
      
        '   :MOESEG, :VALSEG, :TIPSEG, :TOTSEG, :TOTCIF, :MOEIMP, :VALIMP' +
        ', :TIPIMP, '
      
        '   :TOTIMP, :MOEIPI, :VALIPI, :TIPIPI, :TOTIPI, :MOEICM, :VALICM' +
        ', :TIPICM, '
      
        '   :TOTICM, :MOEPIS, :VALPIS, :TIPPIS, :TOTPIS, :MOECOF, :VALCOF' +
        ', :TIPCOF, '
      
        '   :TOTCOF, :TOTIDE, :MOEDES, :VALDES, :TIPDES, :TOTDES, :MOESIS' +
        ', :VALSIS, '
      
        '   :TIPSIS, :TOTSIS, :MOEAFR, :VALAFR, :TIPAFR, :TOTAFR, :MOEDSC' +
        ', :VALDSC, '
      
        '   :TIPDSC, :TOTDSC, :MOEEBL, :VALEBL, :TIPEBL, :TOTEBL, :MOECAP' +
        ', :VALCAP, '
      
        '   :TIPCAP, :TOTCAP, :MOELDI, :VALLDI, :TIPLDI, :TOTLDI, :MOEDEV' +
        ', :VALDEV, '
      
        '   :TIPDEV, :TOTDEV, :MOECOR, :VALCOR, :TIPCOR, :TOTCOR, :MOEARM' +
        ', :VALARM, '
      
        '   :TIPARM, :TOTARM, :MOEPRC, :VALPRC, :TIPPRC, :TOTPRC, :TOTMCA' +
        ', :TOTENT, '
      
        '   :TOTCST, :MOEICE, :VALICE, :TIPICE, :TOTICE, :MOEFIN, :VALFIN' +
        ', :TIPFIN, '
      
        '   :TOTFIN, :MOETRA, :VALTRA, :TIPTRA, :TOTTRA, :MOEMAD, :VALMAD' +
        ', :TIPMAD, '
      
        '   :TOTMAD, :MOESNA, :VALSNA, :TIPSNA, :TOTSNA, :MOEDED, :VALDED' +
        ', :TIPDED, '
      
        '   :TOTDED, :TOTDIS, :TOTNET, :VLUSCO, :ICMSCO, :ICMCAL, :IPISCO' +
        ', :IPICAL, '
      
        '   :PISSCO, :PISCAL, :COFSCO, :COFCAL, :IRESCO, :IRECAL, :CSSSCO' +
        ', :CSSCAL, '
      
        '   :TOTVEN, :TOTREC, :RENCAL, :VALREN, :TOTREN, :VALMLI, :TOTMLI' +
        ', :ID_GERUSU, '
      
        '   :DTEATU, :HREATU, :FLGATU, :SEQSCO, :SITSCO, :TOTIND, :VLUINF' +
        ', :TOTINF)')
    DeleteSQL.Strings = (
      'delete from CmpSco'
      'where'
      '  ID_CMPSCO = :OLD_ID_CMPSCO')
    Left = 301
    Top = 445
  end
  object DsCmpSco: TwwDataSource
    DataSet = CmpSco
    OnDataChange = DsCmpScoDataChange
    Left = 329
    Top = 417
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 329
    Top = 445
  end
  object CmpSc2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpSco
    SQL.Strings = (
      'Select CmpSc2.*,'
      '           CmpArm.NomArm'
      
        'From CmpSc2 LEFT JOIN CmpArm ON (CmpSc2.Id_CmpArm = CmpArm.Id_Cm' +
        'pArm)'
      'Where CmpSc2.Id_CmpSco = :Id_CmpSco')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpCmpSc2
    ControlType.Strings = (
      'FLGUSA;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 362
    Top = 417
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPSCO'
        ParamType = ptInput
      end>
    object CmpSc2NOMARM: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'NOMARM'
      Size = 70
    end
    object CmpSc2PESMAX: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'PESMAX'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpSc2CUBMAX: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'CUBMAX'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpSc2MSCSC2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'MSCSC2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpSc2THCSC2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'THCSC2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpSc2QTDPRE: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'QTDPRE'
      DisplayFormat = '##0'
    end
    object CmpSc2QTDUTI: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'QTDUTI'
      DisplayFormat = '##0'
    end
    object CmpSc2FLGUSA: TStringField
      DisplayLabel = '        '
      DisplayWidth = 3
      FieldName = 'FLGUSA'
      FixedChar = True
      Size = 3
    end
    object CmpSc2ID_CMPSC2: TIntegerField
      FieldName = 'ID_CMPSC2'
      Visible = False
    end
    object CmpSc2ID_CMPSCO: TIntegerField
      FieldName = 'ID_CMPSCO'
      Visible = False
    end
    object CmpSc2ID_CMPARM: TIntegerField
      FieldName = 'ID_CMPARM'
      Visible = False
    end
  end
  object UpCmpSc2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpSc2'
      'set'
      '  QTDUTI = :QTDUTI,'
      '  FLGUSA = :FLGUSA'
      'where'
      '  ID_CMPSC2 = :OLD_ID_CMPSC2')
    InsertSQL.Strings = (
      'insert into CmpSc2'
      
        '  (ID_CMPSC2, ID_CMPSCO, ID_CMPARM, MSCSC2, THCSC2, PESMAX, CUBM' +
        'AX, '
      'QTDPRE, '
      '   QTDUTI, FLGUSA)'
      'values'
      
        '  (:ID_CMPSC2, :ID_CMPSCO, :ID_CMPARM, :MSCSC2, :THCSC2, :PESMAX' +
        ', '
      ':CUBMAX, '
      '   :QTDPRE, :QTDUTI, :FLGUSA)')
    DeleteSQL.Strings = (
      'delete from CmpSc2'
      'where'
      '  ID_CMPSC2 = :OLD_ID_CMPSC2')
    Left = 362
    Top = 445
  end
  object DsCmpSc2: TwwDataSource
    DataSet = CmpSc2
    OnDataChange = DsCmpSc2DataChange
    Left = 390
    Top = 417
  end
  object quSQL1: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 390
    Top = 445
  end
end
