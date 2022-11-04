inherited fmManAt2: TfmManAt2
  Left = 0
  Caption = 'Cotações'
  ClientHeight = 482
  ClientWidth = 786
  Font.Color = clNavy
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
    OnPaint = PaintBoxPaint
  end
  object LbText: TLabel
    Left = 4
    Top = 448
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
  object Label9: TLabel
    Left = 633
    Top = 465
    Width = 149
    Height = 16
    Alignment = taRightJustify
    Caption = 'F12-Continuar ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label53: TLabel
    Left = 564
    Top = 7
    Width = 49
    Height = 14
    Caption = 'Margem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label63: TLabel
    Left = 543
    Top = 423
    Width = 106
    Height = 14
    Caption = 'Total da cotação:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 2
    Top = 423
    Width = 210
    Height = 14
    Caption = 'Item com substituição tributária ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 352
    Top = 423
    Width = 36
    Height = 14
    Caption = 'Itens:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 0
    Top = 147
    Width = 786
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 33
  end
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 784
    Height = 145
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object PaintBox1: TPaintBox
      Left = -1
      Top = 0
      Width = 787
      Height = 482
      OnPaint = PaintBox1Paint
    end
    object Label29: TLabel
      Left = 2
      Top = 6
      Width = 111
      Height = 14
      Caption = 'Número da cotação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 2
      Top = 30
      Width = 50
      Height = 14
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 2
      Top = 54
      Width = 41
      Height = 14
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 2
      Top = 78
      Width = 58
      Height = 14
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 2
      Top = 127
      Width = 131
      Height = 14
      Caption = 'Padrao de faturamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqPfa: TSpeedButton
      Left = 241
      Top = 123
      Width = 26
      Height = 22
      Hint = 'Pesquisar padrões de faturamento cadastrados'
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
      OnClick = bpsqPfaClick
    end
    object bpsqCli: TSpeedButton
      Left = 241
      Top = 51
      Width = 26
      Height = 22
      Hint = 'Pesquisar clientes cadastrados'
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
      OnClick = bpsqCliClick
    end
    object bpsqEmp: TSpeedButton
      Left = 241
      Top = 27
      Width = 26
      Height = 22
      Hint = 'Pesquisar empresas cadastradas'
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
      OnClick = bpsqEmpClick
    end
    object Label54: TLabel
      Left = 564
      Top = 54
      Width = 45
      Height = 14
      Caption = 'Destino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label56: TLabel
      Left = 564
      Top = 31
      Width = 46
      Height = 14
      Caption = 'Emissão:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label03: TLabel
      Left = 564
      Top = 6
      Width = 53
      Height = 14
      Caption = 'Margem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label04: TLabel
      Left = 737
      Top = 7
      Width = 24
      Height = 14
      Caption = '(%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 564
      Top = 102
      Width = 150
      Height = 14
      Caption = '(%) Desconto ICMS região:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqVen: TSpeedButton
      Left = 241
      Top = 75
      Width = 26
      Height = 22
      Hint = 'Pesquisar vendedores cadastrados'
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
      OnClick = bPsqVenClick
    end
    object Label41: TLabel
      Left = 2
      Top = 102
      Width = 64
      Height = 14
      Caption = 'Atendente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqAtd: TSpeedButton
      Left = 241
      Top = 99
      Width = 26
      Height = 22
      Hint = 'Pesquisar atendentes cadastrados'
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
      OnClick = bPsqAtdClick
    end
    object Label50: TLabel
      Left = 564
      Top = 78
      Width = 141
      Height = 14
      Caption = '(%) Comissão comprador:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnNomBan: TLabel
      Left = 268
      Top = 6
      Width = 116
      Height = 14
      Caption = 'Banco preferencial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EdApeAtd: TdxDBColorEdit
      Left = 267
      Top = 98
      Width = 295
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsCta
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdTotRen: TdxDBColorCurrencyEdit
      Left = 632
      Top = 2
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
      TabOrder = 23
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsCta
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeCta: TdxDBColorEdit
      Left = 632
      Top = 50
      Width = 43
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
      OnKeyDown = EdUfeCtaKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFECTA'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 267
      Top = 26
      Width = 295
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsCta
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 267
      Top = 50
      Width = 295
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NOMCLI'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeVen: TdxDBColorEdit
      Left = 267
      Top = 74
      Width = 295
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsCta
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 267
      Top = 122
      Width = 518
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 20
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsCta
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdId_PedCta: TdxDBColorEdit
      Left = 137
      Top = 2
      Width = 103
      Color = 16577773
      Enabled = False
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
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'ID_PEDCTA'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_PedCta: TPanel
      Left = 139
      Top = 5
      Width = 96
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 137
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdCodEmpEnter
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 137
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      OnEnter = EdCodCliEnter
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodVen: TdxDBColorEdit
      Left = 137
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      OnEnter = EdCodCliEnter
      OnExit = EdCodVenExit
      OnKeyDown = EdCodVenKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 137
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 19
      OnEnter = EdDteCtaEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 270
      Top = 126
      Width = 511
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object pnApeVen: TPanel
      Left = 270
      Top = 77
      Width = 288
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object pnNomCli: TPanel
      Left = 270
      Top = 53
      Width = 288
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object pnApeEmp: TPanel
      Left = 270
      Top = 29
      Width = 288
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object pnUfeCta: TPanel
      Left = 634
      Top = 53
      Width = 37
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object EdDteCta: TdxDBColorDateEdit
      Left = 632
      Top = 26
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
      TabOrder = 5
      OnEnter = EdDteCtaEnter
      OnExit = EdDteCtaExit
      Alignment = taCenter
      DataField = 'DTECTA'
      DataSource = DsCta
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnTotRen: TPanel
      Left = 634
      Top = 5
      Width = 96
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object EdDscReg: TdxDBColorCurrencyEdit
      Left = 725
      Top = 98
      Width = 60
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
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCREG'
      DataSource = DsCta
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdFlgOco: TdxDBColorEdit
      Left = 736
      Top = 26
      Width = 49
      Hint = 'Empresa'
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
      TabOrder = 24
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FLGOCO'
      CorDeFoco = clInfoBk
      Height = 25
      StoredValues = 1
    end
    object pnFlgOco: TPanel
      Left = 738
      Top = 28
      Width = 43
      Height = 19
      BevelOuter = bvNone
      Color = clLime
      TabOrder = 25
    end
    object EdCodAtd: TdxDBColorEdit
      Left = 137
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      OnEnter = EdCodCliEnter
      OnExit = EdCodAtdExit
      OnKeyDown = EdCodAtdKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeAtd: TPanel
      Left = 270
      Top = 101
      Width = 288
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object EdComCli: TdxDBColorCurrencyEdit
      Left = 725
      Top = 74
      Width = 60
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'COMCLI'
      DisplayFormat = '###,###,##0.00'
      MaxValue = 100
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
  end
  object grCt21: TdxDBGraphicEdit
    Left = 0
    Top = 179
    Width = 786
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 1
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 143
  end
  object grLabel2: TPanel
    Left = 2
    Top = 149
    Width = 780
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label32: TLabel
      Left = 2
      Top = 6
      Width = 83
      Height = 14
      Caption = 'Nosso Código'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 160
      Top = 6
      Width = 71
      Height = 14
      Caption = 'Quantidade'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 249
      Top = 6
      Width = 63
      Height = 14
      Caption = 'Preço unit'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 398
      Top = 6
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'ICMS'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 501
      Top = 6
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = '%Acr'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 630
      Top = 6
      Width = 53
      Height = 14
      Caption = 'Valor Liq'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 715
      Top = 6
      Width = 64
      Height = 14
      Caption = 'Total Item'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 326
      Top = 6
      Width = 16
      Height = 14
      Caption = 'UN'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 552
      Top = 6
      Width = 42
      Height = 14
      Alignment = taRightJustify
      Caption = '%Desc'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 372
      Top = 6
      Width = 18
      Height = 14
      Alignment = taRightJustify
      Caption = 'IPI'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label66: TLabel
      Left = 452
      Top = 6
      Width = 22
      Height = 14
      Alignment = taRightJustify
      Caption = 'IVA'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object grCt2: ThGrid
    Left = 2
    Top = 181
    Width = 780
    Height = 137
    Selected.Strings = (
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'8'#9' '
      'QTPCT2'#9'12'#9' '
      'VLUCT2'#9'11'#9' '
      'CODUND'#9'5'#9' '
      'IPICT2'#9'5'#9' '
      'ICMCT2'#9'5'#9' '
      'MRGSUB'#9'6'#9' '
      'PACCT2'#9'8'#9' '
      'DSCCT2'#9'8'#9' '
      'VLQCT2'#9'12'#9' '
      'TOTCT2'#9'13'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCt2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grCt2Enter
    OnKeyDown = grCt2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel2: TPanel
    Left = 1
    Top = 323
    Width = 784
    Height = 95
    BevelOuter = bvNone
    TabOrder = 6
    OnExit = Panel2Exit
    object Label06: TLabel
      Left = 351
      Top = 52
      Width = 81
      Height = 14
      Caption = '(%) Margem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 542
      Top = 28
      Width = 95
      Height = 14
      Caption = 'Total dos itens:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 542
      Top = 76
      Width = 115
      Height = 14
      Caption = 'Total ICMS Subst.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 542
      Top = 53
      Width = 57
      Height = 14
      Caption = 'Total IPI:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label05: TLabel
      Left = 351
      Top = 28
      Width = 71
      Height = 14
      Caption = 'Custo item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label73: TLabel
      Left = 225
      Top = 76
      Width = 31
      Height = 14
      Caption = 'NCM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label75: TLabel
      Left = 1
      Top = 75
      Width = 68
      Height = 14
      Caption = 'Referencia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 351
      Top = 76
      Width = 75
      Height = 14
      Caption = 'Ref. Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdVcsCt2: TdxDBColorCurrencyEdit
      Left = 439
      Top = 24
      Width = 101
      Color = 16577773
      Enabled = False
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
      TabOrder = 15
      OnEnter = EdIpiCt2Enter
      OnExit = EdVcsCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VCSCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdObsCt2: TdxDBColorEdit
      Left = -1
      Top = 48
      Width = 349
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      OnEnter = EdIpiCt2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSCT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesCt2: TdxDBColorEdit
      Left = -1
      Top = 24
      Width = 349
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      OnEnter = EdIpiCt2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotCta: TdxDBColorCurrencyEdit
      Left = 687
      Top = 24
      Width = 98
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTITE'
      DataSource = DsCta
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 41
      Color = 16577773
      Enabled = False
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
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 39
      Top = -1
      Width = 46
      Color = 16577773
      Enabled = False
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
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 84
      Top = -1
      Width = 61
      Color = 16577773
      Enabled = False
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
      TabOrder = 2
      OnEnter = EdCodProEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpCt2: TdxDBColorCurrencyEdit
      Left = 144
      Top = -1
      Width = 92
      Color = 16577773
      Enabled = False
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
      TabOrder = 3
      OnEnter = EdQtpCt2Enter
      OnExit = EdQtpCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluCt2: TdxDBColorCurrencyEdit
      Left = 235
      Top = -1
      Width = 82
      Color = 16577773
      Enabled = False
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
      TabOrder = 4
      OnEnter = EdVluCt2Enter
      OnExit = EdVluCt2Exit
      OnKeyDown = EdVluCt2KeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmCt2: TdxDBColorCurrencyEdit
      Left = 394
      Top = -1
      Width = 40
      Color = 16577773
      Enabled = False
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
      TabOrder = 7
      OnEnter = EdIpiCt2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMCT2'
      DataSource = DsCt2
      DecimalPlaces = 0
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPacCt2: TdxDBColorCurrencyEdit
      Left = 479
      Top = -1
      Width = 61
      Color = 16577773
      Enabled = False
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
      TabOrder = 9
      OnExit = EdPacCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACCT2'
      DataSource = DsCt2
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 316
      Top = -1
      Width = 32
      Color = 16577773
      Enabled = False
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
      TabOrder = 5
      OnEnter = EdCodUndEnter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqCt2: TdxDBColorCurrencyEdit
      Left = 599
      Top = -1
      Width = 89
      Color = 16577773
      Enabled = False
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
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotCt2: TdxDBColorCurrencyEdit
      Left = 687
      Top = -1
      Width = 98
      Color = 16577773
      Enabled = False
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
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTCT2'
      DataSource = DsCt2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscCt2: TdxDBColorCurrencyEdit
      Left = 539
      Top = -1
      Width = 61
      Color = 16577773
      Enabled = False
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
      TabOrder = 10
      OnEnter = EdIpiCt2Enter
      OnExit = EdDscCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCCT2'
      DataSource = DsCt2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
    object pnTotIte: TPanel
      Left = 689
      Top = 27
      Width = 90
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
    object EdTotSub: TdxDBColorCurrencyEdit
      Left = 687
      Top = 72
      Width = 98
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
      TabOrder = 29
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSUB'
      DataSource = DsCta
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSub: TPanel
      Left = 689
      Top = 75
      Width = 90
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
    end
    object EdTotIpi: TdxDBColorCurrencyEdit
      Left = 687
      Top = 48
      Width = 98
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
      TabOrder = 27
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIPI'
      DataSource = DsCta
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIpi: TPanel
      Left = 689
      Top = 51
      Width = 90
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
    end
    object EdIpiCt2: TdxDBColorCurrencyEdit
      Left = 347
      Top = -1
      Width = 48
      Color = 16577773
      Enabled = False
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
      TabOrder = 6
      OnEnter = EdIpiCt2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPICT2'
      DataSource = DsCt2
      DecimalPlaces = 0
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnVcsCt2: TPanel
      Left = 441
      Top = 27
      Width = 93
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 259
      Top = 72
      Width = 89
      Color = 16577773
      Enabled = False
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
      TabOrder = 22
      OnEnter = EdCodUndEnter
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdRefCt2: TdxDBColorEdit
      Left = 74
      Top = 72
      Width = 147
      Color = 16577773
      Enabled = False
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
      TabOrder = 20
      OnEnter = EdCodUndEnter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'REFCT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesCt2: TPanel
      Left = 3
      Top = 28
      Width = 341
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object pnObsCt2: TPanel
      Left = 3
      Top = 52
      Width = 341
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object EdMrgSub: TdxDBColorCurrencyEdit
      Left = 433
      Top = -1
      Width = 47
      Color = 16577773
      Enabled = False
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
      TabOrder = 8
      OnEnter = EdIpiCt2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'MRGSUB'
      DataSource = DsCt2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotMk2: TdxDBColorCurrencyEdit
      Left = 439
      Top = 48
      Width = 80
      Color = 16577773
      Enabled = False
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
      TabOrder = 19
      OnEnter = EdIpiCt2Enter
      OnExit = EdTotMk2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsCt2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotMk2: TPanel
      Left = 441
      Top = 51
      Width = 72
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
    end
    object pnClsIpi: TPanel
      Left = 261
      Top = 75
      Width = 83
      Height = 14
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object pnRefCt2: TPanel
      Left = 77
      Top = 75
      Width = 140
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object EdCodICl: TdxDBColorEdit
      Left = 439
      Top = 72
      Width = 101
      Color = 16577773
      Enabled = False
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
      TabOrder = 24
      OnEnter = EdCodUndEnter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICL'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object EdTotGer: TdxDBColorCurrencyEdit
    Left = 688
    Top = 419
    Width = 98
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
    TabOrder = 7
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTGER'
    DataSource = DsCta
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotGer: TPanel
    Left = 690
    Top = 422
    Width = 90
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnEstoque: TPanel
    Left = 146
    Top = 124
    Width = 320
    Height = 193
    TabOrder = 3
    Visible = False
    object Panel10: TPanel
      Left = 8
      Top = 10
      Width = 305
      Height = 174
      BevelOuter = bvNone
      Color = clRed
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 2
        Width = 303
        Height = 170
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 14
          Width = 114
          Height = 14
          Caption = 'Estoque Adquirido'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 8
          Top = 40
          Width = 87
          Height = 14
          Caption = 'Estoque Atual'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 66
          Width = 118
          Height = 14
          Caption = 'Estoque Reservado'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 118
          Width = 116
          Height = 14
          Caption = 'Estoque Disponivel'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 136
          Top = 118
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 136
          Top = 66
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 136
          Top = 40
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 136
          Top = 14
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 8
          Top = 144
          Width = 69
          Height = 14
          Caption = 'Embalagem'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label58: TLabel
          Left = 136
          Top = 144
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 9
          Top = 92
          Width = 83
          Height = 14
          Caption = 'Estoque RMA'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 136
          Top = 92
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Panel13: TPanel
          Left = 155
          Top = 15
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 7
        end
        object Panel12: TPanel
          Left = 155
          Top = 41
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 6
        end
        object Panel11: TPanel
          Left = 155
          Top = 67
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 5
        end
        object Panel9: TPanel
          Left = 155
          Top = 119
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 4
        end
        object Panel8: TPanel
          Left = 152
          Top = 11
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 3
          object EdQtaIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 152
          Top = 37
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 2
          object EdQtdIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Left = 152
          Top = 63
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 1
          object EdQtrIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 152
          Top = 115
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 0
          object EdSldIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel16: TPanel
          Left = 155
          Top = 145
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 8
        end
        object Panel17: TPanel
          Left = 152
          Top = 141
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 9
          object EdQtdEmb: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel18: TPanel
          Left = 154
          Top = 93
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 10
        end
        object Panel19: TPanel
          Left = 152
          Top = 89
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 11
          object EdQtdRma: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object Panel14: TPanel
      Left = 13
      Top = 3
      Width = 128
      Height = 15
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Posição de Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object EdTrbSub: TdxDBColorEdit
    Left = 221
    Top = 419
    Width = 40
    Color = 16577773
    Enabled = False
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
    TabOrder = 9
    OnEnter = EdCodUndEnter
    Alignment = taCenter
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'TRBSUB'
    DataSource = DsCt2
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTrbSub: TPanel
    Left = 223
    Top = 422
    Width = 34
    Height = 14
    BevelOuter = bvNone
    Caption = ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object EdNroCt2: TdxDBColorCurrencyEdit
    Left = 440
    Top = 419
    Width = 70
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
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'NRORE2'
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNroCt2: TPanel
    Left = 443
    Top = 422
    Width = 61
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '000/000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object DsCta: TwwDataSource
    DataSet = PedCta
    Left = 31
    Top = 233
  end
  object DsCt2: TwwDataSource
    DataSet = PedCt2
    OnDataChange = DsCt2DataChange
    Left = 31
    Top = 261
  end
  object UpCta: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCta'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTECTA = :DTECTA,'
      '  HRECTA = :HRECTA,'
      '  CODVEN = :CODVEN,'
      '  CODATD = :CODATD,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  UFECTA = :UFECTA,'
      '  CODCLI = :CODCLI,'
      '  NOMCLI = :NOMCLI,'
      '  COMCLI = :COMCLI,'
      '  ID_PEDCND = :ID_PEDCND,'
      '  CODUSU = :CODUSU,'
      '  CODFIL = :CODFIL,'
      '  FLGTAB = :FLGTAB,'
      '  CODCFO = :CODCFO,'
      '  TIPCON = :TIPCON,'
      '  NOMCON = :NOMCON,'
      '  OBSVAL = :OBSVAL,'
      '  OBSENT = :OBSENT,'
      '  OB1CTA = :OB1CTA,'
      '  OB2CTA = :OB2CTA,'
      '  OB3CTA = :OB3CTA,'
      '  OB4CTA = :OB4CTA,'
      '  OB5CTA = :OB5CTA,'
      '  OB6CTA = :OB6CTA,'
      '  OB7CTA = :OB7CTA,'
      '  OB8CTA = :OB8CTA,'
      '  FLGAVI = :FLGAVI,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  SEQCTA = :SEQCTA,'
      '  FLGGER = :FLGGER,'
      '  PEDCLI = :PEDCLI,'
      '  FLGATU = :FLGATU,'
      '  SITCTA = :SITCTA'
      'where'
      '  ID_PEDCTA = :OLD_ID_PEDCTA')
    InsertSQL.Strings = (
      'insert into PedCta'
      '  (ID_PEDCTA, CODEMP, DTECTA, HRECTA, CODVEN, CODATD, CODPFA, '
      'TIPPFA, UFECTA, '
      
        '   QTICT2, QTICT3, SEQCT3, QTICT4, CODCLI, NOMCLI, BASIPI, TOTIP' +
        'I, BASICM, '
      
        '   TOTICM, BASSUB, TOTSUB, TOTITE, TOTREN, TOTGER, DSCREG, DSCCN' +
        'D, '
      'ACRCND, '
      
        '   MEDDSC, MEDACR, TOTDSC, TOTDSR, TOTACR, TOTDSP, TOTACP, TOTVE' +
        'N, '
      'TOTCST, '
      
        '   COMCLI, TOTCLI, ID_PEDCND, CODUSU, CODFIL, FLGTAB, CODCFO, LA' +
        'NEST, '
      'ATUEST, '
      
        '   INTFIN, FLGCTB, CONSUM, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, CODICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, TXFIPI, TXFIC' +
        'M, '
      'ID_PEDRES, '
      '   ID_PEDGER, TIPCON, NOMCON, OBSVAL, OBSENT, OB1CTA, OB2CTA, '
      'OB3CTA, OB4CTA, '
      
        '   OB5CTA, OB6CTA, OB7CTA, OB8CTA, FLGAVI, FLGPSQ, FLGOCO, CGCCL' +
        'I, '
      'INSCLI, '
      
        '   CLITAB, CODTCL, CODGCL, MODPFA, SEQCTA, FLGGER, PEDCLI, ID_PE' +
        'DATE, '
      'FLGATU, '
      '   SITCTA, TRBPIS, TRBCOF, PERPIS, TOTPIS, PERCOF, TOTCOF)'
      'values'
      
        '  (:ID_PEDCTA, :CODEMP, :DTECTA, :HRECTA, :CODVEN, :CODATD, :COD' +
        'PFA, '
      ':TIPPFA, '
      
        '   :UFECTA, :QTICT2, :QTICT3, :SEQCT3, :QTICT4, :CODCLI, :NOMCLI' +
        ', :BASIPI, '
      
        '   :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTREN' +
        ', :TOTGER, '
      
        '   :DSCREG, :DSCCND, :ACRCND, :MEDDSC, :MEDACR, :TOTDSC, :TOTDSR' +
        ', '
      ':TOTACR, '
      
        '   :TOTDSP, :TOTACP, :TOTVEN, :TOTCST, :COMCLI, :TOTCLI, :ID_PED' +
        'CND, '
      ':CODUSU, '
      
        '   :CODFIL, :FLGTAB, :CODCFO, :LANEST, :ATUEST, :INTFIN, :FLGCTB' +
        ', :CONSUM, '
      
        '   :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM' +
        ', :TRBICM, '
      
        '   :REDICM, :BSCICM, :INCREV, :INCFIN, :TXFIPI, :TXFICM, :ID_PED' +
        'RES, '
      ':ID_PEDGER, '
      
        '   :TIPCON, :NOMCON, :OBSVAL, :OBSENT, :OB1CTA, :OB2CTA, :OB3CTA' +
        ', '
      ':OB4CTA, '
      
        '   :OB5CTA, :OB6CTA, :OB7CTA, :OB8CTA, :FLGAVI, :FLGPSQ, :FLGOCO' +
        ', :CGCCLI, '
      
        '   :INSCLI, :CLITAB, :CODTCL, :CODGCL, :MODPFA, :SEQCTA, :FLGGER' +
        ', :PEDCLI, '
      
        '   :ID_PEDATE, :FLGATU, :SITCTA, :TRBPIS, :TRBCOF, :PERPIS, :TOT' +
        'PIS, '
      ':PERCOF, '
      '   :TOTCOF)')
    DeleteSQL.Strings = (
      'delete from PedCta'
      'where'
      '  ID_PEDCTA = :OLD_ID_PEDCTA')
    Left = 3
    Top = 289
  end
  object UpCt2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCt2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESCT2 = :DESCT2,'
      '  OBSCT2 = :OBSCT2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFCT2 = :REFCT2,'
      '  TABPRC = :TABPRC,'
      '  QTPCT2 = :QTPCT2,'
      '  QTDEMB = :QTDEMB,'
      '  VLUCT2 = :VLUCT2,'
      '  VLQCT2 = :VLQCT2,'
      '  CSTCT2 = :CSTCT2,'
      '  VCHCT2 = :VCHCT2,'
      '  VRECT2 = :VRECT2,'
      '  VCPCT2 = :VCPCT2,'
      '  VPRCT2 = :VPRCT2,'
      '  VCRCT2 = :VCRCT2,'
      '  VMECT2 = :VMECT2,'
      '  VPFCT2 = :VPFCT2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VCRCST = :VCRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  VCSCT2 = :VCSCT2,'
      '  CSTLAN = :CSTLAN,'
      '  TIPDSC = :TIPDSC,'
      '  DSCCT2 = :DSCCT2,'
      '  VDSCT2 = :VDSCT2,'
      '  TIPACR = :TIPACR,'
      '  PACCT2 = :PACCT2,'
      '  VACCT2 = :VACCT2,'
      '  DSRCT2 = :DSRCT2,'
      '  VDRCT2 = :VDRCT2,'
      '  IPICT2 = :IPICT2,'
      '  CODCFO = :CODCFO,'
      '  CLSIPI = :CLSIPI,'
      '  ICMCT2 = :ICMCT2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  TRBSUB = :TRBSUB,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  FLGATU = :FLGATU,'
      '  FLGDUP = :FLGDUP,'
      '  FLGREN = :FLGREN,'
      '  CODICL = :CODICL'
      'where'
      '  ID_PEDCT2 = :OLD_ID_PEDCT2')
    InsertSQL.Strings = (
      'insert into PedCt2'
      
        '  (ID_PEDCT2, ID_PEDCTA, CODEIT, CODCLP, CODGRU, CODSUB, CODPRO,' +
        ' '
      'CODTAM, '
      
        '   CODCOR, DESCT2, OBSCT2, CODST1, CODST2, CODUND, REFCT2, TABPR' +
        'C, '
      'QTICT4, '
      
        '   QTPCT2, QTDEMB, VLUCT2, VLQCT2, CSTCT2, VCHCT2, VRECT2, VCPCT' +
        '2, '
      'VPRCT2, '
      
        '   VCRCT2, VMECT2, VPFCT2, CSTCST, VCHCST, VRECST, VCPCST, VPRCS' +
        'T, '
      'VCRCST, '
      
        '   VMECST, VPFCST, VCSCT2, CSTLAN, TIPDSC, DSCCT2, VDSCT2, TIPAC' +
        'R, '
      'PACCT2, '
      
        '   VACCT2, DSRCT2, VDRCT2, IPICT2, PDPCT2, VDPCT2, PAPCT2, VAPCT' +
        '2, '
      'COMCLI, '
      
        '   VALCLI, CODCFO, CLSIPI, ICMCT2, TOTVEN, TOTCST, BASIPI, TOTIP' +
        'I, BASICM, '
      
        '   TOTICM, BASSUB, TOTSUB, TOTCT2, TOTGE2, TOTREN, TOTDSC, TOTDS' +
        'R, '
      'TOTACR, '
      
        '   TOTDSP, TOTACP, TOTCLI, CODSTR, TIPSTR, TRBSUB, ICMSUB, MRGSU' +
        'B, '
      'BASESB, '
      
        '   REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, ID_PEDICL, FLGATU, FLGDUP, FLGREN, NR' +
        'OCT2, '
      'TOTPIS, '
      '   TOTCOF, CODICL)'
      'values'
      
        '  (:ID_PEDCT2, :ID_PEDCTA, :CODEIT, :CODCLP, :CODGRU, :CODSUB, :' +
        'CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESCT2, :OBSCT2, :CODST1, :CODST2, :CODUND' +
        ', '
      ':REFCT2, '
      
        '   :TABPRC, :QTICT4, :QTPCT2, :QTDEMB, :VLUCT2, :VLQCT2, :CSTCT2' +
        ', '
      ':VCHCT2, '
      
        '   :VRECT2, :VCPCT2, :VPRCT2, :VCRCT2, :VMECT2, :VPFCT2, :CSTCST' +
        ', '
      ':VCHCST, '
      
        '   :VRECST, :VCPCST, :VPRCST, :VCRCST, :VMECST, :VPFCST, :VCSCT2' +
        ', '
      ':CSTLAN, '
      
        '   :TIPDSC, :DSCCT2, :VDSCT2, :TIPACR, :PACCT2, :VACCT2, :DSRCT2' +
        ', :VDRCT2, '
      
        '   :IPICT2, :PDPCT2, :VDPCT2, :PAPCT2, :VAPCT2, :COMCLI, :VALCLI' +
        ', :CODCFO, '
      
        '   :CLSIPI, :ICMCT2, :TOTVEN, :TOTCST, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTCT2, :TOTGE2, :TOTREN, :TOTDSC, :TOTDSR' +
        ', '
      ':TOTACR, '
      
        '   :TOTDSP, :TOTACP, :TOTCLI, :CODSTR, :TIPSTR, :TRBSUB, :ICMSUB' +
        ', '
      ':MRGSUB, '
      
        '   :BASESB, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :ID_PEDICL, :FLG' +
        'ATU, '
      ':FLGDUP, '
      '   :FLGREN, :NROCT2, :TOTPIS, :TOTCOF, :CODICL)')
    DeleteSQL.Strings = (
      'delete from PedCt2'
      'where'
      '  ID_PEDCT2 = :OLD_ID_PEDCT2')
    Left = 31
    Top = 289
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 64
    Top = 233
  end
  object PedCta: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedCtaNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedCta'
      'Where PedCta.Id_PedCta = :Id_PedCta')
    UpdateObject = UpCta
    ValidateWithMask = True
    Left = 3
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedCta'
        ParamType = ptInput
      end>
    object PedCtaID_PEDCTA: TIntegerField
      FieldName = 'ID_PEDCTA'
      Origin = 'ISADE.PEDCTA.ID_PEDCTA'
    end
    object PedCtaCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDCTA.CODEMP'
    end
    object PedCtaDTECTA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECTA'
      Origin = 'ISADE.PEDCTA.DTECTA'
      EditMask = '!99/99/9999;1;_'
    end
    object PedCtaHRECTA: TStringField
      FieldName = 'HRECTA'
      Origin = 'ISADE.PEDCTA.HRECTA'
      FixedChar = True
      Size = 8
    end
    object PedCtaCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.PEDCTA.CODVEN'
    end
    object PedCtaCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDCTA.CODPFA'
      Size = 15
    end
    object PedCtaTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDCTA.TIPPFA'
      Size = 7
    end
    object PedCtaUFECTA: TStringField
      FieldName = 'UFECTA'
      Origin = 'ISADE.PEDCTA.UFECTA'
      FixedChar = True
      Size = 2
    end
    object PedCtaQTICT2: TIntegerField
      FieldName = 'QTICT2'
      Origin = 'ISADE.PEDCTA.QTICT2'
    end
    object PedCtaQTICT3: TIntegerField
      FieldName = 'QTICT3'
      Origin = 'ISADE.PEDCTA.QTICT3'
    end
    object PedCtaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.PEDCTA.CODCLI'
    end
    object PedCtaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'ISADE.PEDCTA.NOMCLI'
      Size = 70
    end
    object PedCtaBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDCTA.BASIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDCTA.TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDCTA.BASICM'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDCTA.TOTICM'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDCTA.BASSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDCTA.TOTSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTITE: TFloatField
      FieldName = 'TOTITE'
      Origin = 'ISADE.PEDCTA.TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDCTA.TOTREN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDCTA.TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.PEDCTA.DSCREG'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.PEDCTA.MEDDSC'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.PEDCTA.MEDACR'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDCTA.TOTDSC'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDCTA.TOTDSR'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDCTA.TOTACR'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDCTA.TOTVEN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDCTA.TOTCST'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaID_PEDCND: TIntegerField
      FieldName = 'ID_PEDCND'
      Origin = 'ISADE.PEDCTA.ID_PEDCND'
    end
    object PedCtaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.PEDCTA.CODUSU'
    end
    object PedCtaCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.PEDCTA.CODFIL'
    end
    object PedCtaFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.PEDCTA.FLGTAB'
      Size = 25
    end
    object PedCtaCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDCTA.CODCFO'
      Size = 15
    end
    object PedCtaLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.PEDCTA.LANEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.PEDCTA.ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.PEDCTA.INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedCtaFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.PEDCTA.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedCtaCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.PEDCTA.CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.PEDCTA.CODIPI'
      Size = 30
    end
    object PedCtaTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDCTA.TIPIPI'
      Size = 7
    end
    object PedCtaTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDCTA.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDCTA.REDIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDCTA.BSCIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.PEDCTA.CODICM'
    end
    object PedCtaTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDCTA.TIPICM'
      Size = 7
    end
    object PedCtaTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDCTA.TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDCTA.REDICM'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDCTA.BSCICM'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDCTA.INCREV'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDCTA.INCFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.PEDCTA.TXFIPI'
      Size = 160
    end
    object PedCtaTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.PEDCTA.TXFICM'
      Size = 160
    end
    object PedCtaID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Origin = 'ISADE.PEDCTA.ID_PEDRES'
    end
    object PedCtaTIPCON: TStringField
      FieldName = 'TIPCON'
      Origin = 'ISADE.PEDCTA.TIPCON'
      FixedChar = True
      Size = 4
    end
    object PedCtaNOMCON: TStringField
      FieldName = 'NOMCON'
      Origin = 'ISADE.PEDCTA.NOMCON'
      Size = 80
    end
    object PedCtaOBSVAL: TStringField
      FieldName = 'OBSVAL'
      Origin = 'ISADE.PEDCTA.OBSVAL'
      Size = 80
    end
    object PedCtaOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.PEDCTA.OBSENT'
      Size = 80
    end
    object PedCtaOB1CTA: TStringField
      FieldName = 'OB1CTA'
      Origin = 'ISADE.PEDCTA.OB1CTA'
      Size = 80
    end
    object PedCtaOB2CTA: TStringField
      FieldName = 'OB2CTA'
      Origin = 'ISADE.PEDCTA.OB2CTA'
      Size = 80
    end
    object PedCtaOB3CTA: TStringField
      FieldName = 'OB3CTA'
      Origin = 'ISADE.PEDCTA.OB3CTA'
      Size = 80
    end
    object PedCtaOB4CTA: TStringField
      FieldName = 'OB4CTA'
      Origin = 'ISADE.PEDCTA.OB4CTA'
      Size = 80
    end
    object PedCtaOB5CTA: TStringField
      FieldName = 'OB5CTA'
      Origin = 'ISADE.PEDCTA.OB5CTA'
      Size = 80
    end
    object PedCtaOB6CTA: TStringField
      FieldName = 'OB6CTA'
      Origin = 'ISADE.PEDCTA.OB6CTA'
      Size = 80
    end
    object PedCtaOB7CTA: TStringField
      FieldName = 'OB7CTA'
      Origin = 'ISADE.PEDCTA.OB7CTA'
      Size = 80
    end
    object PedCtaOB8CTA: TStringField
      FieldName = 'OB8CTA'
      Origin = 'ISADE.PEDCTA.OB8CTA'
      Size = 80
    end
    object PedCtaFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      Origin = 'ISADE.PEDCTA.FLGPSQ'
      FixedChar = True
      Size = 3
    end
    object PedCtaFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Origin = 'ISADE.PEDCTA.FLGOCO'
      FixedChar = True
      Size = 3
    end
    object PedCtaCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.PEDCTA.CGCCLI'
      Size = 18
    end
    object PedCtaINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.PEDCTA.INSCLI'
      Size = 18
    end
    object PedCtaCLITAB: TStringField
      FieldName = 'CLITAB'
      Origin = 'ISADE.PEDCTA.CLITAB'
      Size = 23
    end
    object PedCtaCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.PEDCTA.CODTCL'
    end
    object PedCtaCODGCL: TIntegerField
      FieldName = 'CODGCL'
      Origin = 'ISADE.PEDCTA.CODGCL'
    end
    object PedCtaMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.PEDCTA.MODPFA'
    end
    object PedCtaSEQCTA: TStringField
      FieldName = 'SEQCTA'
      Origin = 'ISADE.PEDCTA.SEQCTA'
      FixedChar = True
      Size = 22
    end
    object PedCtaFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDCTA.FLGATU'
      FixedChar = True
      Size = 1
    end
    object PedCtaSITCTA: TStringField
      FieldName = 'SITCTA'
      Origin = 'ISADE.PEDCTA.SITCTA'
      Size = 45
    end
    object PedCtaDSCCND: TFloatField
      FieldName = 'DSCCND'
      Origin = 'ISADE.PEDCTA.DSCCND'
    end
    object PedCtaACRCND: TFloatField
      FieldName = 'ACRCND'
      Origin = 'ISADE.PEDCTA.ACRCND'
    end
    object PedCtaTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDCTA.TOTDSP'
    end
    object PedCtaTOTACP: TFloatField
      FieldName = 'TOTACP'
      Origin = 'ISADE.PEDCTA.TOTACP'
    end
    object PedCtaCODATD: TIntegerField
      FieldName = 'CODATD'
      Origin = 'ISADE.PEDCTA.CODATD'
    end
    object PedCtaSEQCT3: TIntegerField
      FieldName = 'SEQCT3'
      Origin = 'ISADE.PEDCTA.SEQCT3'
    end
    object PedCtaFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.PEDCTA.FLGAVI'
      FixedChar = True
      Size = 3
    end
    object PedCtaQTICT4: TIntegerField
      FieldName = 'QTICT4'
      Origin = 'ISADE.PEDCTA.QTICT4'
    end
    object PedCtaCOMCLI: TFloatField
      FieldName = 'COMCLI'
      Origin = 'ISADE.PEDCTA.COMCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaTOTCLI: TFloatField
      FieldName = 'TOTCLI'
      Origin = 'ISADE.PEDCTA.TOTCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCtaID_PEDGER: TIntegerField
      FieldName = 'ID_PEDGER'
      Origin = 'ISADE.PEDCTA.ID_PEDGER'
    end
    object PedCtaFLGGER: TStringField
      FieldName = 'FLGGER'
      Origin = 'ISADE.PEDCTA.FLGGER'
      FixedChar = True
      Size = 3
    end
    object PedCtaPEDCLI: TStringField
      FieldName = 'PEDCLI'
      Origin = 'ISADE.PEDCTA.PEDCLI'
    end
    object PedCtaID_PEDATE: TIntegerField
      FieldName = 'ID_PEDATE'
      Origin = 'ISADE.PEDCTA.ID_PEDATE'
    end
    object PedCtaTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.PEDCTA.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object PedCtaTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.PEDCTA.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object PedCtaPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.PEDCTA.PERPIS'
    end
    object PedCtaTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDCTA.TOTPIS'
    end
    object PedCtaPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.PEDCTA.PERCOF'
    end
    object PedCtaTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDCTA.TOTCOF'
    end
  end
  object PedCt2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedCt2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsCta
    SQL.Strings = (
      'Select * From PedCt2'
      'Where PedCt2.Id_PedCta = :Id_PedCta'
      'Order by PedCt2.NroCt2')
    UpdateObject = UpCt2
    ValidateWithMask = True
    Left = 3
    Top = 261
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDCTA'
        ParamType = ptUnknown
      end>
    object PedCt2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDCT2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedCt2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDCT2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedCt2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDCT2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedCt2QTPCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTPCT2'
      Origin = 'ISADE.PEDCT2.QTPCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VLUCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLUCT2'
      Origin = 'ISADE.PEDCT2.VLUCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDCT2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedCt2IPICT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'IPICT2'
      Origin = 'ISADE.PEDCT2.IPICT2'
      DisplayFormat = '###0'
    end
    object PedCt2ICMCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMCT2'
      Origin = 'ISADE.PEDCT2.ICMCT2'
      DisplayFormat = '###0'
    end
    object PedCt2MRGSUB: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'MRGSUB'
      Origin = 'ISADE.PEDCT2.MRGSUB'
      DisplayFormat = '##0.00'
    end
    object PedCt2PACCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'PACCT2'
      Origin = 'ISADE.PEDCT2.PACCT2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCt2DSCCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'DSCCT2'
      Origin = 'ISADE.PEDCT2.DSCCT2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VLQCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLQCT2'
      Origin = 'ISADE.PEDCT2.VLQCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTCT2'
      Origin = 'ISADE.PEDCT2.TOTCT2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2ID_PEDCT2: TIntegerField
      FieldName = 'ID_PEDCT2'
      Origin = 'ISADE.PEDCT2.ID_PEDCT2'
      Visible = False
    end
    object PedCt2ID_PEDCTA: TIntegerField
      FieldName = 'ID_PEDCTA'
      Origin = 'ISADE.PEDCT2.ID_PEDCTA'
      Visible = False
    end
    object PedCt2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.PEDCT2.CODEIT'
      Visible = False
    end
    object PedCt2CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.PEDCT2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.PEDCT2.CODTAM'
      Visible = False
      Size = 10
    end
    object PedCt2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDCT2.CODCOR'
      Visible = False
      Size = 10
    end
    object PedCt2DESCT2: TStringField
      FieldName = 'DESCT2'
      Origin = 'ISADE.PEDCT2.DESCT2'
      Visible = False
      Size = 70
    end
    object PedCt2OBSCT2: TStringField
      FieldName = 'OBSCT2'
      Origin = 'ISADE.PEDCT2.OBSCT2'
      Visible = False
      Size = 70
    end
    object PedCt2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.PEDCT2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.PEDCT2.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedCt2REFCT2: TStringField
      FieldName = 'REFCT2'
      Origin = 'ISADE.PEDCT2.REFCT2'
      Visible = False
    end
    object PedCt2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Origin = 'ISADE.PEDCT2.TABPRC'
      Visible = False
    end
    object PedCt2QTDEMB: TFloatField
      FieldName = 'QTDEMB'
      Origin = 'ISADE.PEDCT2.QTDEMB'
      Visible = False
    end
    object PedCt2VCHCT2: TFloatField
      FieldName = 'VCHCT2'
      Origin = 'ISADE.PEDCT2.VCHCT2'
      Visible = False
    end
    object PedCt2VRECT2: TFloatField
      FieldName = 'VRECT2'
      Origin = 'ISADE.PEDCT2.VRECT2'
      Visible = False
    end
    object PedCt2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.PEDCT2.VCHCST'
      Visible = False
    end
    object PedCt2VRECST: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.PEDCT2.VRECST'
      Visible = False
    end
    object PedCt2VCSCT2: TFloatField
      FieldName = 'VCSCT2'
      Origin = 'ISADE.PEDCT2.VCSCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedCt2CSTLAN: TFloatField
      FieldName = 'CSTLAN'
      Origin = 'ISADE.PEDCT2.CSTLAN'
      Visible = False
    end
    object PedCt2TIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.PEDCT2.TIPDSC'
      Visible = False
      Size = 10
    end
    object PedCt2VDSCT2: TFloatField
      FieldName = 'VDSCT2'
      Origin = 'ISADE.PEDCT2.VDSCT2'
      Visible = False
    end
    object PedCt2TIPACR: TStringField
      FieldName = 'TIPACR'
      Origin = 'ISADE.PEDCT2.TIPACR'
      Visible = False
      Size = 10
    end
    object PedCt2VACCT2: TFloatField
      FieldName = 'VACCT2'
      Origin = 'ISADE.PEDCT2.VACCT2'
      Visible = False
    end
    object PedCt2DSRCT2: TFloatField
      FieldName = 'DSRCT2'
      Origin = 'ISADE.PEDCT2.DSRCT2'
      Visible = False
    end
    object PedCt2VDRCT2: TFloatField
      FieldName = 'VDRCT2'
      Origin = 'ISADE.PEDCT2.VDRCT2'
      Visible = False
    end
    object PedCt2CODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDCT2.CODCFO'
      Visible = False
      Size = 10
    end
    object PedCt2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDCT2.CLSIPI'
      Visible = False
      Size = 30
    end
    object PedCt2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDCT2.TOTVEN'
      Visible = False
    end
    object PedCt2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDCT2.TOTCST'
      Visible = False
    end
    object PedCt2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDCT2.BASIPI'
      Visible = False
    end
    object PedCt2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDCT2.TOTIPI'
      Visible = False
    end
    object PedCt2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDCT2.BASICM'
      Visible = False
    end
    object PedCt2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDCT2.TOTICM'
      Visible = False
    end
    object PedCt2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDCT2.BASSUB'
      Visible = False
    end
    object PedCt2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDCT2.TOTSUB'
      Visible = False
    end
    object PedCt2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDCT2.TOTGE2'
      Visible = False
    end
    object PedCt2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDCT2.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedCt2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDCT2.TOTDSC'
      Visible = False
    end
    object PedCt2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDCT2.TOTDSR'
      Visible = False
    end
    object PedCt2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDCT2.TOTACR'
      Visible = False
    end
    object PedCt2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDCT2.CODSTR'
      Visible = False
    end
    object PedCt2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDCT2.TIPSTR'
      Visible = False
      Size = 7
    end
    object PedCt2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.PEDCT2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.PEDCT2.ICMSUB'
      Visible = False
    end
    object PedCt2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.PEDCT2.BASESB'
      Visible = False
    end
    object PedCt2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDCT2.REGIPI'
      Visible = False
      Size = 30
    end
    object PedCt2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDCT2.TIPIPI'
      Visible = False
      Size = 7
    end
    object PedCt2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDCT2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDCT2.REDIPI'
      Visible = False
    end
    object PedCt2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDCT2.BSCIPI'
      Visible = False
    end
    object PedCt2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDCT2.REGICM'
      Visible = False
    end
    object PedCt2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDCT2.TIPICM'
      Visible = False
      Size = 7
    end
    object PedCt2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDCT2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDCT2.REDICM'
      Visible = False
    end
    object PedCt2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDCT2.BSCICM'
      Visible = False
    end
    object PedCt2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDCT2.INCREV'
      Visible = False
    end
    object PedCt2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDCT2.INCFIN'
      Visible = False
    end
    object PedCt2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDCT2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDCT2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2FLGREN: TStringField
      FieldName = 'FLGREN'
      Origin = 'ISADE.PEDCT2.FLGREN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2NROCT2: TIntegerField
      FieldName = 'NROCT2'
      Origin = 'ISADE.PEDCT2.NROCT2'
      Visible = False
    end
    object PedCt2PDPCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'PDPCT2'
      Origin = 'ISADE.PEDCT2.PDPCT2'
      Visible = False
    end
    object PedCt2VDPCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDPCT2'
      Origin = 'ISADE.PEDCT2.VDPCT2'
      Visible = False
    end
    object PedCt2PAPCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'PAPCT2'
      Origin = 'ISADE.PEDCT2.PAPCT2'
      Visible = False
    end
    object PedCt2VAPCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VAPCT2'
      Origin = 'ISADE.PEDCT2.VAPCT2'
      Visible = False
    end
    object PedCt2TOTDSP: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDCT2.TOTDSP'
      Visible = False
    end
    object PedCt2TOTACP: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTACP'
      Origin = 'ISADE.PEDCT2.TOTACP'
      Visible = False
    end
    object PedCt2ID_PEDICL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDICL'
      Origin = 'ISADE.PEDCT2.ID_PEDICL'
      Visible = False
    end
    object PedCt2QTICT4: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTICT4'
      Origin = 'ISADE.PEDCT2.QTICT4'
      Visible = False
    end
    object PedCt2COMCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'COMCLI'
      Origin = 'ISADE.PEDCT2.COMCLI'
      Visible = False
    end
    object PedCt2VALCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALCLI'
      Origin = 'ISADE.PEDCT2.VALCLI'
      Visible = False
    end
    object PedCt2TOTCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCLI'
      Origin = 'ISADE.PEDCT2.TOTCLI'
      Visible = False
    end
    object PedCt2CSTCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCT2'
      Origin = 'ISADE.PEDCT2.CSTCT2'
      Visible = False
    end
    object PedCt2VCPCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPCT2'
      Origin = 'ISADE.PEDCT2.VCPCT2'
      Visible = False
    end
    object PedCt2VPRCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRCT2'
      Origin = 'ISADE.PEDCT2.VPRCT2'
      Visible = False
    end
    object PedCt2VCRCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCT2'
      Origin = 'ISADE.PEDCT2.VCRCT2'
      Visible = False
    end
    object PedCt2VMECT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VMECT2'
      Origin = 'ISADE.PEDCT2.VMECT2'
      Visible = False
    end
    object PedCt2VPFCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFCT2'
      Origin = 'ISADE.PEDCT2.VPFCT2'
      Visible = False
    end
    object PedCt2CSTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCST'
      Origin = 'ISADE.PEDCT2.CSTCST'
      Visible = False
    end
    object PedCt2VCPCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPCST'
      Origin = 'ISADE.PEDCT2.VCPCST'
      Visible = False
    end
    object PedCt2VPRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRCST'
      Origin = 'ISADE.PEDCT2.VPRCST'
      Visible = False
    end
    object PedCt2VCRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCST'
      Origin = 'ISADE.PEDCT2.VCRCST'
      Visible = False
    end
    object PedCt2VMECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VMECST'
      Origin = 'ISADE.PEDCT2.VMECST'
      Visible = False
    end
    object PedCt2VPFCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFCST'
      Origin = 'ISADE.PEDCT2.VPFCST'
      Visible = False
    end
    object PedCt2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDCT2.TOTPIS'
      Visible = False
    end
    object PedCt2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDCT2.TOTCOF'
      Visible = False
    end
    object PedCt2CODICL: TStringField
      FieldName = 'CODICL'
      Origin = 'ISADE.PEDCT2.CODICL'
      Visible = False
      Size = 30
    end
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.ExiRen,'
      '           PedPar.TipAtd,'
      '           PedPar.TipPag,'
      '           PedPar.UsaDec,'
      '           PedPar.FlgCot,'
      '           PedPar.QtdCta,'
      '           PedPar.RefDes,'
      '           PedPar.ExiLoc,'
      '           PedPar.FlgDup,'
      '           PedPar.MudRen'
      'From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 92
    Top = 233
    object PedParEXIREN: TStringField
      FieldName = 'EXIREN'
      FixedChar = True
      Size = 3
    end
    object PedParTIPATD: TStringField
      FieldName = 'TIPATD'
      Size = 9
    end
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      FixedChar = True
      Size = 3
    end
    object PedParTIPPAG: TStringField
      FieldName = 'TIPPAG'
      Size = 28
    end
    object PedParQTDCTA: TIntegerField
      FieldName = 'QTDCTA'
    end
    object PedParFLGCOT: TStringField
      FieldName = 'FLGCOT'
      FixedChar = True
      Size = 3
    end
    object PedParREFDES: TStringField
      FieldName = 'REFDES'
      FixedChar = True
      Size = 3
    end
    object PedParMUDREN: TStringField
      FieldName = 'MUDREN'
      FixedChar = True
      Size = 3
    end
    object PedParEXILOC: TStringField
      FieldName = 'EXILOC'
      FixedChar = True
      Size = 3
    end
    object PedParFLGDUP: TStringField
      FieldName = 'FLGDUP'
      FixedChar = True
      Size = 3
    end
  end
end
