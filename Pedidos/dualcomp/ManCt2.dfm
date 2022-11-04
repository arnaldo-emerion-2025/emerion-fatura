inherited fmManCt2: TfmManCt2
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
    Left = 637
    Top = 465
    Width = 149
    Height = 16
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
  object grLabel1: TdxDBGraphicEdit
    Left = 2
    Top = 147
    Width = 785
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 37
  end
  object grLabel2: TPanel
    Left = 4
    Top = 149
    Width = 779
    Height = 31
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label32: TLabel
      Left = 2
      Top = 8
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
      Left = 176
      Top = 8
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
      Left = 271
      Top = 8
      Width = 63
      Height = 14
      Caption = 'Preço Unit'
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
      Left = 448
      Top = 8
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
      Left = 496
      Top = 8
      Width = 42
      Height = 14
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
    object Label14: TLabel
      Left = 582
      Top = 8
      Width = 80
      Height = 14
      Caption = 'Valor Liquido'
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
      Left = 714
      Top = 8
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
      Left = 347
      Top = 9
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
    object Label8: TLabel
      Left = 407
      Top = 8
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
      Left = 4
      Top = 6
      Width = 102
      Height = 14
      Caption = 'Número do Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 119
      Top = 6
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 4
      Top = 30
      Width = 46
      Height = 14
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label48: TLabel
      Left = 119
      Top = 30
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 119
      Top = 54
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 4
      Top = 54
      Width = 37
      Height = 14
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 4
      Top = 78
      Width = 54
      Height = 14
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 3
      Top = 127
      Width = 111
      Height = 14
      Caption = 'Padrao Faturamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 118
      Top = 127
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label44: TLabel
      Left = 119
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqPfa: TSpeedButton
      Left = 229
      Top = 123
      Width = 26
      Height = 22
      Hint = 'Pesquisar Padrões de Faturamento Existentes'
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
      Left = 229
      Top = 51
      Width = 26
      Height = 22
      Hint = 'Pesquisar Clientes Existentes'
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
      Left = 229
      Top = 27
      Width = 26
      Height = 22
      Hint = 'Pesquisar Empresas Existentes'
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
      Width = 41
      Height = 14
      Caption = 'Destino'
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
      Width = 42
      Height = 14
      Caption = 'Emissão'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label68: TLabel
      Left = 622
      Top = 31
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label60: TLabel
      Left = 622
      Top = 54
      Width = 4
      Height = 14
      Caption = ':'
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
    object Label31: TLabel
      Left = 622
      Top = 7
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
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
      Top = 126
      Width = 149
      Height = 14
      Caption = '(%) Desconto ICMS Região'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 717
      Top = 127
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 564
      Top = 102
      Width = 133
      Height = 14
      Caption = '(%) Desconto Comercial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label52: TLabel
      Left = 717
      Top = 102
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqVen: TSpeedButton
      Left = 229
      Top = 75
      Width = 26
      Height = 22
      Hint = 'Pesquisar Vendedores Existentes'
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
    object Label46: TLabel
      Left = 3
      Top = 102
      Width = 60
      Height = 14
      Caption = 'Atendente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 118
      Top = 102
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdTotRen: TdxDBColorCurrencyEdit
      Left = 630
      Top = 2
      Width = 104
      Hint = 'Total do Item'
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
      TabOrder = 20
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
      Left = 630
      Top = 50
      Width = 43
      Hint = 'Cliente'
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
      TabOrder = 9
      OnKeyDown = EdUfeCtaKeyDown
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFECTA'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomEmp: TdxDBColorEdit
      Left = 255
      Top = 26
      Width = 305
      Hint = 'Cliente'
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
      Left = 255
      Top = 50
      Width = 305
      Hint = 'Cliente'
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
    object EdNomVen: TdxDBColorEdit
      Left = 255
      Top = 74
      Width = 305
      Hint = 'Cliente'
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
      Left = 255
      Top = 122
      Width = 305
      Hint = 'Cliente'
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
      TabOrder = 17
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsCta
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNumCta: TdxDBColorEdit
      Left = 125
      Top = 2
      Width = 103
      Hint = 'Empresa'
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
      DataField = 'NUMCTA'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumCta: TPanel
      Left = 127
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
      Left = 125
      Top = 26
      Width = 103
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
      Left = 125
      Top = 50
      Width = 103
      Hint = 'Cliente'
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
      Left = 125
      Top = 74
      Width = 103
      Hint = 'Vendedor'
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
      Left = 125
      Top = 122
      Width = 103
      Hint = 'Padrão de Faturamento'
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
      TabOrder = 16
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
      Left = 258
      Top = 126
      Width = 298
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
    object pnNomVen: TPanel
      Left = 258
      Top = 77
      Width = 298
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
      Left = 258
      Top = 53
      Width = 298
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
    object pnNomEmp: TPanel
      Left = 258
      Top = 29
      Width = 298
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
      Left = 632
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
      Left = 630
      Top = 26
      Width = 104
      Hint = 'Data de Emissão da Cotação'
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
      Left = 632
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
      TabOrder = 19
    end
    object EdDscReg: TdxDBColorCurrencyEdit
      Left = 723
      Top = 122
      Width = 60
      Hint = 'Desconto ICMS Obrigatorio'
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
    object EdDscCom: TdxDBColorCurrencyEdit
      Left = 723
      Top = 98
      Width = 60
      Hint = 'Desconto Comercial'
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
      DataField = 'DSCCOM'
      DataSource = DsCta
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdFlgOco: TdxDBColorEdit
      Left = 734
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
      TabOrder = 21
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FLGOCO'
      CorDeFoco = clInfoBk
      Height = 25
      StoredValues = 1
    end
    object pnFlgOco: TPanel
      Left = 735
      Top = 28
      Width = 44
      Height = 19
      BevelOuter = bvNone
      Color = clLime
      TabOrder = 22
    end
    object EdCodAtd: TdxDBColorEdit
      Left = 125
      Top = 98
      Width = 103
      Hint = 'Atendente'
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
      TabOrder = 23
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsCta
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomAtd: TdxDBColorEdit
      Left = 255
      Top = 98
      Width = 305
      Hint = 'Cliente'
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
      TabOrder = 24
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object pnNomAtd: TPanel
      Left = 258
      Top = 102
      Width = 298
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
    end
  end
  object grCt21: TdxDBGraphicEdit
    Left = 2
    Top = 183
    Width = 785
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
    Height = 144
  end
  object grCt2: ThGrid
    Left = 4
    Top = 185
    Width = 779
    Height = 138
    Selected.Strings = (
      'CODGRU'#9'5'#9'CODGRU'#9'F'
      'CODSUB'#9'6'#9'CODSUB'#9'F'
      'CODPRO'#9'10'#9'CODPRO'#9'F'
      'QTPCT2'#9'12'#9'QTPCT2'#9'F'
      'VLUCT2'#9'12'#9'VLUCT2'#9'F'
      'CODUND'#9'5'#9'CODUND'#9'F'
      'IPICT2'#9'7'#9'IPICT2'#9'F'
      'ICMCT2'#9'7'#9'ICMCT2'#9'F'
      'DSCCT2'#9'8'#9'DSCCT2'#9'F'
      'VLQCT2'#9'17'#9'VLQCT2'#9'F'
      'TOTCT2'#9'16'#9'TOTCT2'#9'F')
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
    TabOrder = 2
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
    Left = 2
    Top = 328
    Width = 784
    Height = 121
    BevelOuter = bvNone
    TabOrder = 5
    OnExit = Panel2Exit
    object Label57: TLabel
      Left = 354
      Top = 78
      Width = 90
      Height = 14
      Caption = 'Margem Item :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 404
      Top = 102
      Width = 40
      Height = 14
      Caption = 'Itens :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 550
      Top = 29
      Width = 86
      Height = 14
      Caption = 'Total de Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 661
      Top = 29
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 550
      Top = 54
      Width = 53
      Height = 14
      Caption = 'Total IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 661
      Top = 54
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 550
      Top = 78
      Width = 105
      Height = 14
      Caption = 'Total ICMS Subs.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 661
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 550
      Top = 103
      Width = 104
      Height = 14
      Caption = 'Total da Cotação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 671
      Top = 110
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 661
      Top = 103
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 2
      Top = 78
      Width = 185
      Height = 14
      Caption = 'Total Desc. ICMS Obrigatorio :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdCbaCt2: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 163
      Hint = 'Código de Barras do Item'
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
      TabOrder = 0
      Visible = False
      OnEnter = EdCodProEnter
      OnExit = EdCbaCt2Exit
      OnKeyDown = EdCodProKeyDown
      OnKeyPress = EdCodEmpKeyPress
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CBACT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
    end
    object EdTotIte: TdxDBColorCurrencyEdit
      Left = 668
      Top = 25
      Width = 116
      Hint = 'Total do Item'
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
      TabOrder = 20
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
      Hint = 'Grupo do Item'
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
      TabOrder = 1
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
      Width = 44
      Hint = 'Sub-Grupo do Item'
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
      Left = 82
      Top = -1
      Width = 80
      Hint = 'Código do Item'
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
      TabOrder = 3
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
    object EdDscCt2: TdxDBColorCurrencyEdit
      Left = 485
      Top = -1
      Width = 61
      Hint = 'Percentual de Desconto para o Item'
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
      TabOrder = 8
      OnEnter = EdDscCt2Enter
      OnExit = EdDscCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCCT2'
      DataSource = DsCt2
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
    object EdVlqCt2: TdxDBColorCurrencyEdit
      Left = 545
      Top = -1
      Width = 124
      Hint = 'Preço Liquido Praticado para o Item'
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
      TabOrder = 9
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
      Left = 668
      Top = -1
      Width = 116
      Hint = 'Total do Item'
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
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpCt2: TdxDBColorCurrencyEdit
      Left = 161
      Top = -1
      Width = 91
      Hint = 'Quantidade Pedida do Item'
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
      TabOrder = 4
      OnEnter = EdQtpCt2Enter
      OnExit = EdQtpCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPCT2'
      DataSource = DsCt2
      DecimalPlaces = 0
      DisplayFormat = '###,###,##0'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluCt2: TdxDBColorCurrencyEdit
      Left = 251
      Top = -1
      Width = 89
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
      TabOrder = 5
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
    object EdCodUnd: TdxDBColorEdit
      Left = 339
      Top = -1
      Width = 34
      Hint = 'Unidade do Item'
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
    object EdIcmCt2: TdxDBColorCurrencyEdit
      Left = 431
      Top = -1
      Width = 55
      Hint = 'Aliquota de ICMS'
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
      TabOrder = 7
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMCT2'
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
      Top = 50
      Width = 547
      Hint = 'Cliente'
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
      TabOrder = 13
      OnEnter = EdDscCt2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSCT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsCt2: TPanel
      Left = 2
      Top = 53
      Width = 540
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
    object EdDesCt2: TdxDBColorEdit
      Left = -1
      Top = 25
      Width = 547
      Hint = 'Cliente'
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
      TabOrder = 11
      OnEnter = EdDscCt2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesCt2: TPanel
      Left = 2
      Top = 28
      Width = 540
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object EdTotMk2: TdxDBColorCurrencyEdit
      Left = 456
      Top = 74
      Width = 90
      Hint = 'Total do Item'
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotMk2: TPanel
      Left = 458
      Top = 78
      Width = 82
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
      TabOrder = 16
    end
    object EdNroCt2: TdxDBColorCurrencyEdit
      Left = 456
      Top = 98
      Width = 90
      Hint = 'Total do Item'
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
      DataField = 'NROCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNroCt2: TPanel
      Left = 458
      Top = 102
      Width = 82
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0000/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object pnTotIte: TPanel
      Left = 671
      Top = 28
      Width = 107
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
      TabOrder = 19
    end
    object EdTotIpi: TdxDBColorCurrencyEdit
      Left = 668
      Top = 50
      Width = 116
      Hint = 'Total de IPI'
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
      TabOrder = 21
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
      Left = 671
      Top = 54
      Width = 107
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
    object EdTotSub: TdxDBColorCurrencyEdit
      Left = 668
      Top = 74
      Width = 116
      Hint = 'Total de ICMS Substituto'
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
      DataField = 'TOTSUB'
      DataSource = DsCta
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSub: TPanel
      Left = 671
      Top = 77
      Width = 107
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
      TabOrder = 24
    end
    object EdIpiCt2: TdxDBColorCurrencyEdit
      Left = 372
      Top = -1
      Width = 60
      Hint = 'Aliquota de IPI'
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
      TabOrder = 25
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPICT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGer: TdxDBColorCurrencyEdit
      Left = 668
      Top = 98
      Width = 116
      Hint = 'Total da Nota'
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
      TabOrder = 26
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
      Left = 671
      Top = 101
      Width = 107
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
      TabOrder = 27
    end
    object EdTotDsr: TdxDBColorCurrencyEdit
      Left = 203
      Top = 74
      Width = 102
      Hint = 'Total de Desconto ICMS Obrigatorio'
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
      TabOrder = 28
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTDSR'
      DataSource = DsCta
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotDsr: TPanel
      Left = 205
      Top = 77
      Width = 94
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
      TabOrder = 29
    end
  end
  object pnEstoque: TPanel
    Left = 233
    Top = 126
    Width = 320
    Height = 193
    TabOrder = 6
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
  object DsCta: TwwDataSource
    DataSet = PedCta
    Left = 34
    Top = 237
  end
  object DsCt2: TwwDataSource
    DataSet = PedCt2
    OnDataChange = DsCt2DataChange
    Left = 34
    Top = 265
  end
  object UpCta: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCta'
      'set'
      '  HRECTA = :HRECTA,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  UFECTA = :UFECTA,'
      '  CODCLI = :CODCLI,'
      '  NOMCLI = :NOMCLI,'
      '  DSCREG = :DSCREG,'
      '  DSCCOM = :DSCCOM,'
      '  CODATD = :CODATD,'
      '  CODUSU = :CODUSU,'
      '  FLGTAB = :FLGTAB,'
      '  SEQCTA = :SEQCTA,'
      '  OBSCND = :OBSCND,'
      '  OBSENT = :OBSENT,'
      '  OBSVAL = :OBSVAL,'
      '  OBSCLI = :OBSCLI,'
      '  OBSCTA = :OBSCTA,'
      '  SITCTA = :SITCTA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA')
    InsertSQL.Strings = (
      'insert into PedCta'
      
        '  (CODEMP, DTECTA, NUMCTA, HRECTA, CODVEN, CODPFA, TIPPFA, UFECT' +
        'A, QTICTA, '
      
        '   SEQITE, CODCLI, NOMCLI, BASIPI, TOTIPI, BASICM, TOTICM, BASSU' +
        'B, TOTSUB, '
      
        '   TOTITE, TOTREN, TOTGER, DSCREG, DSCCOM, MEDDCO, MEDPRM, MEDDS' +
        'C, MEDACR, '
      
        '   TOTDSC, TOTDSR, TOTDSP, TOTACR, TOTDCO, TOTVEN, TOTCST, CODAT' +
        'D, CODUSU, '
      
        '   CODFIL, LANEST, ATUEST, INTFIN, FLGTAB, FLGCTB, SEQCTA, CONSU' +
        'M, CODIPI, '
      
        '   TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBICM, REDIC' +
        'M, BSCICM, '
      
        '   INCREV, INCFIN, TXFIPI, TXFICM, EMPRES, DTERES, NUMRES, OBSCN' +
        'D, OBSENT, '
      
        '   OBSVAL, OBSCLI, OBSCTA, SITCTA, FLGPSQ, FLGSLD, FLGOCO, CGCCL' +
        'I, INSCLI, '
      '   CLITAB, CODTCL, CODGCL)'
      'values'
      
        '  (:CODEMP, :DTECTA, :NUMCTA, :HRECTA, :CODVEN, :CODPFA, :TIPPFA' +
        ', :UFECTA, '
      
        '   :QTICTA, :SEQITE, :CODCLI, :NOMCLI, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTITE, :TOTREN, :TOTGER, :DSCREG, :DSCCOM' +
        ', :MEDDCO, '
      
        '   :MEDPRM, :MEDDSC, :MEDACR, :TOTDSC, :TOTDSR, :TOTDSP, :TOTACR' +
        ', :TOTDCO, '
      
        '   :TOTVEN, :TOTCST, :CODATD, :CODUSU, :CODFIL, :LANEST, :ATUEST' +
        ', :INTFIN, '
      
        '   :FLGTAB, :FLGCTB, :SEQCTA, :CONSUM, :CODIPI, :TIPIPI, :TRBIPI' +
        ', :REDIPI, '
      
        '   :BSCIPI, :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV' +
        ', :INCFIN, '
      
        '   :TXFIPI, :TXFICM, :EMPRES, :DTERES, :NUMRES, :OBSCND, :OBSENT' +
        ', :OBSVAL, '
      
        '   :OBSCLI, :OBSCTA, :SITCTA, :FLGPSQ, :FLGSLD, :FLGOCO, :CGCCLI' +
        ', :INSCLI, '
      '   :CLITAB, :CODTCL, :CODGCL)')
    DeleteSQL.Strings = (
      'delete from PedCta'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA')
    Left = 6
    Top = 293
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
      '  TABPRC = :TABPRC,'
      '  QTPCT2 = :QTPCT2,'
      '  VLUCT2 = :VLUCT2,'
      '  VLQCT2 = :VLQCT2,'
      '  DSCCT2 = :DSCCT2,'
      '  VDSCT2 = :VDSCT2,'
      '  DSPCT2 = :DSPCT2,'
      '  VDPCT2 = :VDPCT2,'
      '  PACCT2 = :PACCT2,'
      '  VACCT2 = :VACCT2,'
      '  DSCCOM = :DSCCOM,'
      '  VDSCOM = :VDSCOM,'
      '  IPICT2 = :IPICT2,'
      '  CLSIPI = :CLSIPI,'
      '  ICMCT2 = :ICMCT2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  REFCT2 = :REFCT2,'
      '  CBACT2 = :CBACT2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  SEQCT2 = :OLD_SEQCT2')
    InsertSQL.Strings = (
      'insert into PedCt2'
      
        '  (CODEMP, DTECTA, NUMCTA, SEQCT2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, '
      'CODPRO, '
      
        '   CODTAM, CODCOR, DESCT2, OBSCT2, CODST1, CODST2, CODUND, TABPR' +
        'C, '
      'QTPCT2, '
      
        '   QTDEMB, VLUCT2, VLQCT2, CSTCT2, VCHCT2, VRECT2, VCRCT2, VCPCT' +
        '2, '
      'VPRCT2, '
      
        '   VCSCT2, DSCCT2, VDSCT2, DSPCT2, VDPCT2, DSRCT2, VDRCT2, PACCT' +
        '2, '
      'VACCT2, '
      
        '   DSCCOM, VDSCOM, IPICT2, CLSIPI, ICMCT2, TOTVEN, TOTCST, BASIP' +
        'I, '
      'TOTIPI, '
      
        '   BASICM, TOTICM, BASSUB, TOTSUB, TOTCT2, TOTGE2, TOTREN, TOTDS' +
        'C, '
      'TOTDSR, '
      
        '   TOTDSP, TOTACR, TOTDCO, CODSTR, TIPSTR, REGIPI, TIPIPI, TRBIP' +
        'I, '
      'REDIPI, '
      
        '   BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFI' +
        'N, '
      'NROCT2, '
      
        '   FLASEQ, FLGDUP, VMECT2, VPFCT2, CSTCST, VCHCST, VRECST, VCRCS' +
        'T, '
      'VCPCST, '
      '   VPRCST, VMECST, VPFCST, REFCT2, CBACT2)'
      'values'
      
        '  (:CODEMP, :DTECTA, :NUMCTA, :SEQCT2, :CODEIT, :CODCLP, :CODGRU' +
        ', '
      ':CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESCT2, :OBSCT2, :CODST1, :CODST2' +
        ', '
      ':CODUND, '
      
        '   :TABPRC, :QTPCT2, :QTDEMB, :VLUCT2, :VLQCT2, :CSTCT2, :VCHCT2' +
        ', '
      ':VRECT2, '
      
        '   :VCRCT2, :VCPCT2, :VPRCT2, :VCSCT2, :DSCCT2, :VDSCT2, :DSPCT2' +
        ', '
      ':VDPCT2, '
      
        '   :DSRCT2, :VDRCT2, :PACCT2, :VACCT2, :DSCCOM, :VDSCOM, :IPICT2' +
        ', :CLSIPI, '
      
        '   :ICMCT2, :TOTVEN, :TOTCST, :BASIPI, :TOTIPI, :BASICM, :TOTICM' +
        ', :BASSUB, '
      
        '   :TOTSUB, :TOTCT2, :TOTGE2, :TOTREN, :TOTDSC, :TOTDSR, :TOTDSP' +
        ', '
      ':TOTACR, '
      
        '   :TOTDCO, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :NROCT2, '
      
        '   :FLASEQ, :FLGDUP, :VMECT2, :VPFCT2, :CSTCST, :VCHCST, :VRECST' +
        ', '
      ':VCRCST, '
      '   :VCPCST, :VPRCST, :VMECST, :VPFCST, :REFCT2, :CBACT2)')
    DeleteSQL.Strings = (
      'delete from PedCt2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  SEQCT2 = :OLD_SEQCT2')
    Left = 34
    Top = 293
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 67
    Top = 237
  end
  object PedCta: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedCtaNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedCta'
      'Where PedCta.CodEmp = :CodEmp'
      '     and PedCta.DteCta = :DteCta'
      '     and PedCta.NumCta = :NumCta')
    UpdateObject = UpCta
    ValidateWithMask = True
    Left = 6
    Top = 237
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteCta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumCta'
        ParamType = ptInput
      end>
    object PedCtaCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedCtaDTECTA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECTA'
      EditMask = '!99/99/9999;1;_'
    end
    object PedCtaNUMCTA: TIntegerField
      FieldName = 'NUMCTA'
    end
    object PedCtaHRECTA: TStringField
      FieldName = 'HRECTA'
      FixedChar = True
      Size = 8
    end
    object PedCtaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedCtaCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedCtaCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedCtaTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedCtaUFECTA: TStringField
      FieldName = 'UFECTA'
      FixedChar = True
      Size = 2
    end
    object PedCtaQTICTA: TIntegerField
      FieldName = 'QTICTA'
    end
    object PedCtaSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object PedCtaBASIPI: TFloatField
      FieldName = 'BASIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaBASICM: TFloatField
      FieldName = 'BASICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTICM: TFloatField
      FieldName = 'TOTICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaBASSUB: TFloatField
      FieldName = 'BASSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTITE: TFloatField
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTREN: TFloatField
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTGER: TFloatField
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaDSCREG: TFloatField
      FieldName = 'DSCREG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDACR: TFloatField
      FieldName = 'MEDACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTACR: TFloatField
      FieldName = 'TOTACR'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTCST: TFloatField
      FieldName = 'TOTCST'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedCtaCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object PedCtaFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object PedCtaFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedCtaSEQCTA: TStringField
      FieldName = 'SEQCTA'
      FixedChar = True
      Size = 22
    end
    object PedCtaCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object PedCtaTIPIPI: TStringField
      FieldName = 'TIPIPI'
      FixedChar = True
      Size = 7
    end
    object PedCtaTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object PedCtaBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object PedCtaCODICM: TStringField
      FieldName = 'CODICM'
      FixedChar = True
    end
    object PedCtaTIPICM: TStringField
      FieldName = 'TIPICM'
      FixedChar = True
      Size = 7
    end
    object PedCtaTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object PedCtaBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object PedCtaINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object PedCtaINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object PedCtaTXFIPI: TStringField
      FieldName = 'TXFIPI'
      FixedChar = True
      Size = 160
    end
    object PedCtaTXFICM: TStringField
      FieldName = 'TXFICM'
      FixedChar = True
      Size = 160
    end
    object PedCtaEMPRES: TIntegerField
      FieldName = 'EMPRES'
    end
    object PedCtaDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object PedCtaNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object PedCtaOBSCND: TStringField
      FieldName = 'OBSCND'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSENT: TStringField
      FieldName = 'OBSENT'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSVAL: TStringField
      FieldName = 'OBSVAL'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSCLI: TStringField
      FieldName = 'OBSCLI'
      FixedChar = True
      Size = 100
    end
    object PedCtaSITCTA: TStringField
      FieldName = 'SITCTA'
      FixedChar = True
      Size = 45
    end
    object PedCtaLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object PedCtaATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaOBSCTA: TMemoField
      FieldName = 'OBSCTA'
      BlobType = ftMemo
      Size = 500
    end
    object PedCtaFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      FixedChar = True
      Size = 3
    end
    object PedCtaFLGSLD: TStringField
      FieldName = 'FLGSLD'
      FixedChar = True
      Size = 1
    end
    object PedCtaFLGOCO: TStringField
      FieldName = 'FLGOCO'
      FixedChar = True
      Size = 1
    end
    object PedCtaCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object PedCtaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedCtaCGCCLI: TStringField
      FieldName = 'CGCCLI'
      FixedChar = True
      Size = 18
    end
    object PedCtaINSCLI: TStringField
      FieldName = 'INSCLI'
      FixedChar = True
      Size = 18
    end
    object PedCtaCLITAB: TStringField
      FieldName = 'CLITAB'
      FixedChar = True
      Size = 23
    end
    object PedCtaCODGCL: TIntegerField
      FieldName = 'CODGCL'
    end
  end
  object PedCt2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedCt2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedCt2.*,'
      
        '           PedCt2.CodGru || _UNICODE_FSS '#39'.'#39' || PedCt2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedCt2.CodPro as CodIte From PedCt2'
      'Where PedCt2.CodEmp = :CodEmp'
      '     and PedCt2.DteCta = :DteCta'
      '     and PedCt2.NumCta = :NumCta'
      'Order by PedCt2.NroCt2')
    UpdateObject = UpCt2
    ValidateWithMask = True
    Left = 6
    Top = 265
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteCta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumCta'
        ParamType = ptInput
      end>
    object PedCt2CODGRU: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDCT2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedCt2CODSUB: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDCT2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedCt2CODPRO: TStringField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDCT2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedCt2QTPCT2: TFloatField
      DisplayWidth = 12
      FieldName = 'QTPCT2'
      Origin = 'ISADE.PEDCT2.QTPCT2'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedCt2VLUCT2: TFloatField
      DisplayWidth = 12
      FieldName = 'VLUCT2'
      Origin = 'ISADE.PEDCT2.VLUCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CODUND: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDCT2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedCt2IPICT2: TFloatField
      DisplayWidth = 7
      FieldName = 'IPICT2'
      Origin = 'ISADE.PEDCT2.IPICT2'
      DisplayFormat = '###0'
    end
    object PedCt2ICMCT2: TFloatField
      DisplayWidth = 7
      FieldName = 'ICMCT2'
      Origin = 'ISADE.PEDCT2.ICMCT2'
      DisplayFormat = '###0'
    end
    object PedCt2DSCCT2: TFloatField
      DisplayWidth = 8
      FieldName = 'DSCCT2'
      Origin = 'ISADE.PEDCT2.DSCCT2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VLQCT2: TFloatField
      DisplayWidth = 17
      FieldName = 'VLQCT2'
      Origin = 'ISADE.PEDCT2.VLQCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTCT2: TFloatField
      DisplayWidth = 16
      FieldName = 'TOTCT2'
      Origin = 'ISADE.PEDCT2.TOTCT2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2DSPCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 9
      FieldName = 'DSPCT2'
      Origin = 'ISADE.PEDCT2.DSPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDCT2.CODEMP'
      Visible = False
    end
    object PedCt2DTECTA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECTA'
      Origin = 'ISADE.PEDCT2.DTECTA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object PedCt2NUMCTA: TIntegerField
      FieldName = 'NUMCTA'
      Origin = 'ISADE.PEDCT2.NUMCTA'
      Visible = False
    end
    object PedCt2SEQCT2: TIntegerField
      FieldName = 'SEQCT2'
      Origin = 'ISADE.PEDCT2.SEQCT2'
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
      FixedChar = True
      Size = 10
    end
    object PedCt2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDCT2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedCt2DESCT2: TStringField
      FieldName = 'DESCT2'
      Origin = 'ISADE.PEDCT2.DESCT2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedCt2OBSCT2: TStringField
      FieldName = 'OBSCT2'
      Origin = 'ISADE.PEDCT2.OBSCT2'
      Visible = False
      FixedChar = True
      Size = 100
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
    object PedCt2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Origin = 'ISADE.PEDCT2.TABPRC'
      Visible = False
    end
    object PedCt2CSTCT2: TFloatField
      FieldName = 'CSTCT2'
      Origin = 'ISADE.PEDCT2.CSTCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCHCT2: TFloatField
      FieldName = 'VCHCT2'
      Origin = 'ISADE.PEDCT2.VCHCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VRECT2: TFloatField
      FieldName = 'VRECT2'
      Origin = 'ISADE.PEDCT2.VRECT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCRCT2: TFloatField
      FieldName = 'VCRCT2'
      Origin = 'ISADE.PEDCT2.VCRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCPCT2: TFloatField
      FieldName = 'VCPCT2'
      Origin = 'ISADE.PEDCT2.VCPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VPRCT2: TFloatField
      FieldName = 'VPRCT2'
      Origin = 'ISADE.PEDCT2.VPRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCSCT2: TFloatField
      FieldName = 'VCSCT2'
      Origin = 'ISADE.PEDCT2.VCSCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VDSCT2: TFloatField
      FieldName = 'VDSCT2'
      Origin = 'ISADE.PEDCT2.VDSCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VDPCT2: TFloatField
      FieldName = 'VDPCT2'
      Origin = 'ISADE.PEDCT2.VDPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2DSRCT2: TFloatField
      FieldName = 'DSRCT2'
      Origin = 'ISADE.PEDCT2.DSRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VDRCT2: TFloatField
      FieldName = 'VDRCT2'
      Origin = 'ISADE.PEDCT2.VDRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2PACCT2: TFloatField
      FieldName = 'PACCT2'
      Origin = 'ISADE.PEDCT2.PACCT2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VACCT2: TFloatField
      FieldName = 'VACCT2'
      Origin = 'ISADE.PEDCT2.VACCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2DSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDCT2.DSCCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VDSCOM: TFloatField
      FieldName = 'VDSCOM'
      Origin = 'ISADE.PEDCT2.VDSCOM'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDCT2.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedCt2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDCT2.TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDCT2.TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDCT2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDCT2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDCT2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDCT2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDCT2.BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDCT2.TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDCT2.TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDCT2.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDCT2.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDCT2.TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDCT2.TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDCT2.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Origin = 'ISADE.PEDCT2.TOTDCO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDCT2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedCt2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDCT2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedCt2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDCT2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedCt2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDCT2.TIPIPI'
      Visible = False
      FixedChar = True
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
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDCT2.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDCT2.REGICM'
      Visible = False
      FixedChar = True
    end
    object PedCt2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDCT2.TIPICM'
      Visible = False
      FixedChar = True
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
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDCT2.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDCT2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDCT2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2NROCT2: TIntegerField
      FieldName = 'NROCT2'
      Origin = 'ISADE.PEDCT2.NROCT2'
      Visible = False
    end
    object PedCt2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.PEDCT2.FLASEQ'
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
    object PedCt2QTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Visible = False
    end
    object PedCt2VMECT2: TFloatField
      FieldName = 'VMECT2'
      Visible = False
    end
    object PedCt2VPFCT2: TFloatField
      FieldName = 'VPFCT2'
      Visible = False
    end
    object PedCt2CSTCST: TFloatField
      FieldName = 'CSTCST'
      Visible = False
    end
    object PedCt2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Visible = False
    end
    object PedCt2VRECST: TFloatField
      FieldName = 'VRECST'
      Visible = False
    end
    object PedCt2VCRCST: TFloatField
      FieldName = 'VCRCST'
      Visible = False
    end
    object PedCt2VCPCST: TFloatField
      FieldName = 'VCPCST'
      Visible = False
    end
    object PedCt2VPRCST: TFloatField
      FieldName = 'VPRCST'
      Visible = False
    end
    object PedCt2VMECST: TFloatField
      FieldName = 'VMECST'
      Visible = False
    end
    object PedCt2VPFCST: TFloatField
      FieldName = 'VPFCST'
      Visible = False
    end
    object PedCt2REFCT2: TStringField
      FieldName = 'REFCT2'
      Visible = False
      FixedChar = True
    end
    object PedCt2CODITE: TStringField
      FieldName = 'CODITE'
      Visible = False
      Size = 14
    end
    object PedCt2CBACT2: TStringField
      DisplayWidth = 20
      FieldName = 'CBACT2'
      Visible = False
      FixedChar = True
    end
  end
  object PedPar: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select ExiMka From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 95
    Top = 237
    object PedParEXIMKA: TStringField
      FieldName = 'EXIMKA'
      FixedChar = True
      Size = 3
    end
  end
end
