inherited fmManPed: TfmManPed
  Left = 0
  Caption = 'Pedidos'
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
    Width = 147
    Height = 16
    Caption = 'F12-Continuar Esc-Sair'
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
    Left = -1
    Top = 171
    Width = 790
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 33
  end
  object grLabel2: TPanel
    Left = 1
    Top = 173
    Width = 784
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
      Left = 189
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
      Left = 285
      Top = 6
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
      Left = 441
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
      Left = 489
      Top = 6
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
      Left = 626
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
      Left = 718
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
      Left = 364
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
    object Label24: TLabel
      Left = 547
      Top = 6
      Width = 46
      Height = 14
      Caption = '%Prom'
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
      Left = 415
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
  end
  object Panel3: TPanel
    Left = 58
    Top = 719
    Width = 549
    Height = 47
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 1
    Top = 0
    Width = 784
    Height = 169
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object PaintBox1: TPaintBox
      Left = -1
      Top = 0
      Width = 786
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
    object Label41: TLabel
      Left = 3
      Top = 150
      Width = 68
      Height = 14
      Caption = 'Entregar Em'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 118
      Top = 150
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
    object Label50: TLabel
      Left = 370
      Top = 150
      Width = 45
      Height = 14
      Caption = 'Limite :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 451
      Top = 6
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
    object Label55: TLabel
      Left = 564
      Top = 54
      Width = 52
      Height = 14
      Caption = 'CPF/CNPJ'
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
      Left = 619
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
    object Label59: TLabel
      Left = 619
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
    object Label60: TLabel
      Left = 506
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
      Left = 619
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
      Top = 102
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
      Left = 715
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
    object Label1: TLabel
      Left = 564
      Top = 126
      Width = 138
      Height = 14
      Caption = 'Pagamento Antecipado ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 715
      Top = 126
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
      Top = 78
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
    object Label6: TLabel
      Left = 722
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
    object Label52: TLabel
      Left = 715
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
    object bpsqVen: TSpeedButton
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
      OnClick = bpsqVenClick
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 32
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsRes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCgcCli: TdxDBColorEdit
      Left = 630
      Top = 50
      Width = 153
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
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CGCCLI'
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdUfeRes: TdxDBColorEdit
      Left = 517
      Top = 2
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
      TabOrder = 13
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFERES'
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdLimite: TdxDBColorCurrencyEdit
      Left = 422
      Top = 146
      Width = 138
      Hint = 'Total do Item'
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
      DataField = 'TOTRES'
      DataSource = DsRes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
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
      TabOrder = 5
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
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
      TabOrder = 9
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
      CorDeFoco = clBlack
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
      TabOrder = 16
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
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
      TabOrder = 21
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
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
      TabOrder = 25
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMRES'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumRes: TPanel
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdCodEmpEnter
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsRes
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      OnEnter = EdCodCliEnter
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsRes
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      OnEnter = EdCodCliEnter
      OnExit = EdCodVenExit
      OnKeyDown = EdCodVenKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      StoredValues = 1
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
      TabOrder = 20
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsRes
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 24
      OnEnter = EdCodCliEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdPrfREs: TdxDBColorEdit
      Left = 125
      Top = 146
      Width = 103
      Hint = 'Prazo em Dias para o Faturamento do Pedido'
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
      OnEnter = EdDteREsEnter
      OnExit = EdPrfREsExit
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'PRFRES'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDtfRes: TdxDBColorDateEdit
      Left = 255
      Top = 146
      Width = 104
      Hint = 'Data Prevista para o Faturamento do Pedido'
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
      OnEnter = EdDteREsEnter
      OnExit = EdDtfResExit
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTFRES'
      DataSource = DsRes
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 5
    end
    object pnNomPfa: TPanel
      Left = 259
      Top = 126
      Width = 297
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
    object pnNomAtd: TPanel
      Left = 259
      Top = 102
      Width = 297
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object pnNomVen: TPanel
      Left = 259
      Top = 77
      Width = 297
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
    object pnNomCli: TPanel
      Left = 259
      Top = 53
      Width = 297
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object pnNomEmp: TPanel
      Left = 259
      Top = 29
      Width = 297
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object pnLimite: TPanel
      Left = 424
      Top = 149
      Width = 132
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
    object pnUfeRes: TPanel
      Left = 519
      Top = 5
      Width = 37
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object pnCgcCli: TPanel
      Left = 634
      Top = 53
      Width = 145
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object EdDteREs: TdxDBColorDateEdit
      Left = 630
      Top = 26
      Width = 104
      Hint = 'Data de Emissão do Pedido'
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
      OnEnter = EdDteREsEnter
      Alignment = taCenter
      DataField = 'DTERES'
      DataSource = DsRes
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FLGOCO'
      DataSource = DsRes
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
      TabOrder = 3
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
      TabOrder = 31
    end
    object EdDscReg: TdxDBColorCurrencyEdit
      Left = 720
      Top = 98
      Width = 63
      Hint = 'Desconto ICMS Obrigatorio'
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCREG'
      DataSource = DsRes
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPedAnt: TdxDBColorPickEdit
      Left = 720
      Top = 122
      Width = 63
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 23
      DataField = 'PEDANT'
      DataSource = DsRes
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'Sim'
        'Nao')
      CorDeFoco = clInfoBk
      StoredValues = 64
    end
    object EdDscCom: TdxDBColorCurrencyEdit
      Left = 720
      Top = 74
      Width = 63
      Hint = 'Desconto Comercial'
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
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCCOM'
      DataSource = DsRes
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object grRe21: TdxDBGraphicEdit
    Left = -1
    Top = 203
    Width = 787
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 121
  end
  object grRe2: ThGrid
    Left = 1
    Top = 205
    Width = 783
    Height = 115
    Selected.Strings = (
      'CODGRU'#9'6'#9'CODGRU'
      'CODSUB'#9'8'#9'CODSUB'
      'CODPRO'#9'9'#9'CODPRO'
      'QTPRE2'#9'12'#9'QTPRE2'
      'VLURE2'#9'12'#9'VLURE2'
      'CODUND'#9'6'#9'CODUND'
      'IPIRE2'#9'5'#9'IPIRE2'
      'ICMRE2'#9'5'#9'ICMRE2'
      'DSCRE2'#9'8'#9'DSCRE2'
      'DSPRE2'#9'8'#9' '
      'VLQRE2'#9'12'#9'VLQRE2'
      'TOTRE2'#9'14'#9'TOTRE2'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDrawDataCell = grRe2DrawDataCell
    OnEnter = grRe2Enter
    OnKeyDown = grRe2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel15: TPanel
    Left = 785
    Top = 205
    Width = 1
    Height = 141
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 8
  end
  object Panel2: TPanel
    Left = 1
    Top = 325
    Width = 786
    Height = 124
    BevelOuter = bvNone
    TabOrder = 4
    OnExit = Panel2Exit
    object Label57: TLabel
      Left = 346
      Top = 77
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
      Left = 396
      Top = 101
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
    object Label5: TLabel
      Left = 540
      Top = 28
      Width = 93
      Height = 14
      Caption = 'Total dos Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 676
      Top = 28
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
      Left = 540
      Top = 77
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
    object Label27: TLabel
      Left = 540
      Top = 53
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
    object Label8: TLabel
      Left = 676
      Top = 50
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
      Left = 676
      Top = 77
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
    object Label63: TLabel
      Left = 540
      Top = 101
      Width = 97
      Height = 14
      Caption = 'Total do Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label64: TLabel
      Left = 676
      Top = 101
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
      Left = 3
      Top = 77
      Width = 177
      Height = 14
      Caption = 'Total Desc. ICMS Obrigatorio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label65: TLabel
      Left = 3
      Top = 101
      Width = 157
      Height = 14
      Caption = 'Total de ICMS Substituto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label66: TLabel
      Left = 189
      Top = 77
      Width = 12
      Height = 14
      Caption = ' : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label67: TLabel
      Left = 189
      Top = 101
      Width = 12
      Height = 14
      Caption = ' : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdObsRe2: TdxDBColorEdit
      Left = -1
      Top = 48
      Width = 538
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
      OnEnter = EdDscRe2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSRE2'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesRe2: TdxDBColorEdit
      Left = -1
      Top = 24
      Width = 538
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
      OnEnter = EdDscRe2Enter
      OnExit = EdDesRe2Exit
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESRE2'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotRes: TdxDBColorCurrencyEdit
      Left = 684
      Top = 24
      Width = 102
      Hint = 'Total do Item'
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
      TabOrder = 20
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTRES'
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNroRe2: TdxDBColorCurrencyEdit
      Left = 447
      Top = 97
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'NRORE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotMk2: TdxDBColorCurrencyEdit
      Left = 447
      Top = 73
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 49
      Hint = 'Grupo do Item'
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
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 47
      Top = -1
      Width = 57
      Hint = 'Sub-Grupo do Item'
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
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 103
      Top = -1
      Width = 73
      Hint = 'Código do Item'
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
      OnEnter = EdCodProEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpRe2: TdxDBColorCurrencyEdit
      Left = 175
      Top = -1
      Width = 90
      Hint = 'Quantidade Pedida do Item'
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
      OnEnter = EdQtpRe2Enter
      OnExit = EdQtpRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPRE2'
      DataSource = DsRe2
      DecimalPlaces = 0
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluRe2: TdxDBColorCurrencyEdit
      Left = 264
      Top = -1
      Width = 88
      Hint = 'Preço Praticado para o Item'
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
      TabOrder = 4
      OnEnter = EdVluRe2Enter
      OnExit = EdVluRe2Exit
      OnKeyDown = EdVluRe2KeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLURE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmRe2: TdxDBColorCurrencyEdit
      Left = 437
      Top = -1
      Width = 40
      Hint = 'Aliquota de ICMS'
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
      AutoSize = False
      DataField = 'ICMRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscRe2: TdxDBColorCurrencyEdit
      Left = 476
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      OnEnter = EdDscRe2Enter
      OnExit = EdDscRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCRE2'
      DataSource = DsRe2
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 351
      Top = -1
      Width = 41
      Hint = 'Unidade do Item'
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
      OnEnter = EdCodUndEnter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqRe2: TdxDBColorCurrencyEdit
      Left = 597
      Top = -1
      Width = 88
      Hint = 'Preço Liquido Praticado para o Item'
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
      AutoSize = False
      DataField = 'VLQRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotRe2: TdxDBColorCurrencyEdit
      Left = 684
      Top = -1
      Width = 102
      Hint = 'Total do Item'
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
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDspRe2: TdxDBColorCurrencyEdit
      Left = 536
      Top = -1
      Width = 62
      Hint = 'Percentual Praticado de Desconto Promocional para o Item'
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
      OnEnter = EdDscRe2Enter
      OnExit = EdDspRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSPRE2'
      DataSource = DsRe2
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
    object pnTotMk2: TPanel
      Left = 449
      Top = 76
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
      TabOrder = 15
    end
    object pnNroRe2: TPanel
      Left = 449
      Top = 101
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
      TabOrder = 17
    end
    object pnTotRes: TPanel
      Left = 686
      Top = 28
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
      TabOrder = 19
    end
    object pnDesRe2: TPanel
      Left = 3
      Top = 28
      Width = 530
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
    object pnObsRe2: TPanel
      Left = 3
      Top = 52
      Width = 530
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
    object EdTotSub: TdxDBColorCurrencyEdit
      Left = 684
      Top = 73
      Width = 102
      Hint = 'Total de ICMS Substituição'
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
      TabOrder = 21
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIPI'
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSub: TPanel
      Left = 686
      Top = 76
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
      TabOrder = 22
    end
    object EdTotIpi: TdxDBColorCurrencyEdit
      Left = 684
      Top = 49
      Width = 102
      Hint = 'Total da Nota'
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
      AutoSize = False
      DataField = 'TOTGER'
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIpi: TPanel
      Left = 686
      Top = 52
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
      TabOrder = 24
    end
    object EdIpiRe2: TdxDBColorCurrencyEdit
      Left = 391
      Top = -1
      Width = 47
      Hint = 'Aliquota de IPI'
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
      DataField = 'IPIRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGer: TdxDBColorCurrencyEdit
      Left = 684
      Top = 97
      Width = 102
      Hint = 'Total de ICMS Substituição'
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
      TabOrder = 26
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIPI'
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotGer: TPanel
      Left = 686
      Top = 100
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
      TabOrder = 27
    end
    object EdTotDsr: TdxDBColorCurrencyEdit
      Left = 204
      Top = 73
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
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotDsr: TPanel
      Left = 206
      Top = 76
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
    object Panel20: TPanel
      Left = 206
      Top = 100
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
      TabOrder = 30
    end
    object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
      Left = 204
      Top = 97
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
      TabOrder = 31
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTDSR'
      DataSource = DsRes
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSu2: TPanel
      Left = 206
      Top = 101
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
      TabOrder = 32
    end
  end
  object pnEstoque: TPanel
    Left = 265
    Top = 126
    Width = 320
    Height = 193
    TabOrder = 7
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
  object DsRes: TwwDataSource
    DataSet = PedRes
    Left = 30
    Top = 207
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    OnDataChange = DsRe2DataChange
    Left = 30
    Top = 235
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  HRERES = :HRERES,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODTIP = :CODTIP,'
      '  PRFRES = :PRFRES,'
      '  DTFRES = :DTFRES,'
      '  CODATD = :CODATD,'
      '  CODTRA = :CODTRA,'
      '  FLGTAB = :FLGTAB,'
      '  UFERES = :UFERES,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CEPCLI = :CEPCLI,'
      '  TENCLI = :TENCLI,'
      '  ENDCLI = :ENDCLI,'
      '  REFCLI = :REFCLI,'
      '  NUMCLI = :NUMCLI,'
      '  BAICLI = :BAICLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFECLI = :UFECLI,'
      '  INECLI = :INECLI,'
      '  CGECLI = :CGECLI,'
      '  OBSRES = :OBSRES,'
      '  DSCREG = :DSCREG,'
      '  DSCCOM = :DSCCOM,'
      '  CODUSU = :CODUSU,'
      '  FLGAVI = :FLGAVI,'
      '  SEQRES = :SEQRES,'
      '  PEDANT = :PEDANT,'
      '  SITRES = :SITRES,'
      '  CLITAB = :CLITAB,'
      '  NOMENT = :NOMENT'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      
        '  (CODEMP, DTERES, NUMRES, HRERES, CODCLI, CODVEN, CODPFA, TIPPF' +
        'A, CODTIP, '
      
        '   PRFRES, DTFRES, CODATD, CODFIL, CODTRA, FLGTAB, UFERES, CGCCL' +
        'I, INSCLI, '
      
        '   CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCLI, UFECL' +
        'I, INECLI, '
      
        '   CGECLI, OBSRES, QTIRES, SEQITE, QTPRES, SEQPAR, LINRES, QTLRE' +
        'S, QTFRES, '
      
        '   BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTVEN, TOTCS' +
        'T, TOTRES, '
      
        '   TOTREN, TOTGER, TOTLIQ, TOTBRT, BASCOM, TOTCOM, DSCREG, DSCCO' +
        'M, TOTDCO, '
      
        '   MEDDCO, MEDACR, MEDCOM, MEDPRM, TOTDSC, TOTDSR, TOTDSP, TOTAC' +
        'R, DESREG, '
      
        '   CODUSU, FLGPSQ, DTLPSQ, FLGCTB, FLGAVI, FLGOCO, SEQRES, ATUES' +
        'T, INTFIN, '
      
        '   CONSUM, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPIC' +
        'M, TRBICM, '
      
        '   REDICM, BSCICM, INCREV, INCFIN, FLGCOM, DTECOM, HRECOM, OBSCO' +
        'M, USUCOM, '
      
        '   PEDANT, FLGFIN, DTEFIN, HREFIN, OBSFIN, USUFIN, DTEREJ, HRERE' +
        'J, OBSREJ, '
      
        '   USUREJ, TXFIPI, TXFICM, FLGSLD, FATRES, FATGER, DEVRES, DEVGE' +
        'R, SLDRES, '
      
        '   SLDGER, MEDDSC, FLGIMP, FLGGER, LIBSLD, DTEDEL, HREDEL, OBSDE' +
        'L, USUDEL, '
      
        '   DTEFPE, HREFPE, OBSFPE, USUFPE, FLGREQ, LANEST, FLGRES, SITRE' +
        'S, QTDIMP, '
      
        '   EMPCTA, DTECTA, NUMCTA, PRCCTA, MODPFA, MESRES, ANORES, FLGPR' +
        'O, PEDPRO, '
      
        '   DTEPRO, HREPRO, OBSPRO, USUPRO, CLITAB, CODTCL, CODGCL, FLGCO' +
        'N, DTECON, '
      
        '   HRECON, OBSCON, USUCON, TIPCOM, CODCOM, FLGSER, BASISS, TOTIS' +
        'S, TIPCPA, '
      
        '   MEDCAT, BASCAT, TOTCAT, FLGFEC, EMPPED, DTEPED, NUMPED, FLGDI' +
        'F, FLGCMP, '
      '   HRECMP, DTECMP, USUCMP, FLGIPI, TOTIPC, NOMENT)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :HRERES, :CODCLI, :CODVEN, :CODPFA' +
        ', :TIPPFA, '
      
        '   :CODTIP, :PRFRES, :DTFRES, :CODATD, :CODFIL, :CODTRA, :FLGTAB' +
        ', :UFERES, '
      
        '   :CGCCLI, :INSCLI, :CEPCLI, :TENCLI, :ENDCLI, :REFCLI, :NUMCLI' +
        ', :BAICLI, '
      
        '   :CIDCLI, :UFECLI, :INECLI, :CGECLI, :OBSRES, :QTIRES, :SEQITE' +
        ', :QTPRES, '
      
        '   :SEQPAR, :LINRES, :QTLRES, :QTFRES, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTVEN, :TOTCST, :TOTRES, :TOTREN, :TOTGER' +
        ', :TOTLIQ, '
      
        '   :TOTBRT, :BASCOM, :TOTCOM, :DSCREG, :DSCCOM, :TOTDCO, :MEDDCO' +
        ', :MEDACR, '
      
        '   :MEDCOM, :MEDPRM, :TOTDSC, :TOTDSR, :TOTDSP, :TOTACR, :DESREG' +
        ', :CODUSU, '
      
        '   :FLGPSQ, :DTLPSQ, :FLGCTB, :FLGAVI, :FLGOCO, :SEQRES, :ATUEST' +
        ', :INTFIN, '
      
        '   :CONSUM, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :FLGCOM, :DTECOM' +
        ', :HRECOM, '
      
        '   :OBSCOM, :USUCOM, :PEDANT, :FLGFIN, :DTEFIN, :HREFIN, :OBSFIN' +
        ', :USUFIN, '
      
        '   :DTEREJ, :HREREJ, :OBSREJ, :USUREJ, :TXFIPI, :TXFICM, :FLGSLD' +
        ', :FATRES, '
      
        '   :FATGER, :DEVRES, :DEVGER, :SLDRES, :SLDGER, :MEDDSC, :FLGIMP' +
        ', :FLGGER, '
      
        '   :LIBSLD, :DTEDEL, :HREDEL, :OBSDEL, :USUDEL, :DTEFPE, :HREFPE' +
        ', :OBSFPE, '
      
        '   :USUFPE, :FLGREQ, :LANEST, :FLGRES, :SITRES, :QTDIMP, :EMPCTA' +
        ', :DTECTA, '
      
        '   :NUMCTA, :PRCCTA, :MODPFA, :MESRES, :ANORES, :FLGPRO, :PEDPRO' +
        ', :DTEPRO, '
      
        '   :HREPRO, :OBSPRO, :USUPRO, :CLITAB, :CODTCL, :CODGCL, :FLGCON' +
        ', :DTECON, '
      
        '   :HRECON, :OBSCON, :USUCON, :TIPCOM, :CODCOM, :FLGSER, :BASISS' +
        ', :TOTISS, '
      
        '   :TIPCPA, :MEDCAT, :BASCAT, :TOTCAT, :FLGFEC, :EMPPED, :DTEPED' +
        ', :NUMPED, '
      
        '   :FLGDIF, :FLGCMP, :HRECMP, :DTECMP, :USUCMP, :FLGIPI, :TOTIPC' +
        ', :NOMENT)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 2
    Top = 263
  end
  object UpRe2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRe2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESRE2 = :DESRE2,'
      '  OBSRE2 = :OBSRE2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFRE2 = :REFRE2,'
      '  LIQRE2 = :LIQRE2,'
      '  BRTRE2 = :BRTRE2,'
      '  TABPRC = :TABPRC,'
      '  CODPRM = :CODPRM,'
      '  SEQPR2 = :SEQPR2,'
      '  QTPRE2 = :QTPRE2,'
      '  VLURE2 = :VLURE2,'
      '  VLQRE2 = :VLQRE2,'
      '  DSCRE2 = :DSCRE2,'
      '  VDSRE2 = :VDSRE2,'
      '  DSPRE2 = :DSPRE2,'
      '  VDPRE2 = :VDPRE2,'
      '  PACRE2 = :PACRE2,'
      '  VACRE2 = :VACRE2,'
      '  DSCCOM = :DSCCOM,'
      '  VDSCOM = :VDSCOM,'
      '  IPIRE2 = :IPIRE2,'
      '  CLSIPI = :CLSIPI,'
      '  ICMRE2 = :ICMRE2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  PEDCLI = :PEDCLI,'
      '  FLGDUP = :FLGDUP'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQRE2 = :OLD_SEQRE2')
    InsertSQL.Strings = (
      'insert into PedRe2'
      
        '  (CODEMP, DTERES, NUMRES, SEQRE2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      
        '   CODTAM, CODCOR, DESRE2, OBSRE2, CODST1, CODST2, CODUND, REFRE' +
        '2, LIQRE2, '
      
        '   BRTRE2, LINRE2, TABPRC, CODPRM, SEQPR2, QTPRE2, QTSRE2, QTFRE' +
        '2, QTDRE2, '
      
        '   QTDEMB, ULTQTS, SLDRE2, VLURE2, VLQRE2, CSTRE2, VCHRE2, VRERE' +
        '2, VCRRE2, '
      
        '   VCPRE2, VPRRE2, CSTCST, VCHCST, VRECST, VCRCST, VCPCST, VPRCS' +
        'T, VCSRE2, '
      
        '   DSCRE2, VDSRE2, DSPRE2, VDPRE2, DSRRE2, VDRRE2, PACRE2, VACRE' +
        '2, DSCCOM, '
      
        '   VDSCOM, CODCOM, PCORE2, IPIRE2, CLSIPI, CLFRE2, ICMRE2, TOTVE' +
        'N, TOTCST, '
      
        '   BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTRE2, TOTGE' +
        '2, TOTREN, '
      
        '   TOTLIQ, TOTBRT, BASCOM, TOTCOM, TOTDSC, TOTDSR, TOTDSP, TOTAC' +
        'R, TOTDCO, '
      
        '   CODSTR, TIPSTR, REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, REGIC' +
        'M, TIPICM, '
      
        '   TRBICM, REDICM, BSCICM, INCREV, INCFIN, EMPGER, DTEGER, NUMGE' +
        'R, SEQGR2, '
      
        '   SEQGR3, PEDCLI, FLASEQ, FLGRES, FLGREQ, FLGDUP, CODVWA, NRORE' +
        '2, VMERE2, '
      
        '   VPFRE2, VMECST, VPFCST, DSCPER, FLGVAL, FLGLIB, CODTIP, CODCA' +
        'T, CODMRC, '
      
        '   MESRES, ANORES, LANCST, VPFOUT, OUTCST, ISSRE2, BASISS, TOTIS' +
        'S, FLGPAC)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQRE2, :CODEIT, :CODCLP, :CODGRU' +
        ', :CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESRE2, :OBSRE2, :CODST1, :CODST2' +
        ', :CODUND, '
      
        '   :REFRE2, :LIQRE2, :BRTRE2, :LINRE2, :TABPRC, :CODPRM, :SEQPR2' +
        ', :QTPRE2, '
      
        '   :QTSRE2, :QTFRE2, :QTDRE2, :QTDEMB, :ULTQTS, :SLDRE2, :VLURE2' +
        ', :VLQRE2, '
      
        '   :CSTRE2, :VCHRE2, :VRERE2, :VCRRE2, :VCPRE2, :VPRRE2, :CSTCST' +
        ', :VCHCST, '
      
        '   :VRECST, :VCRCST, :VCPCST, :VPRCST, :VCSRE2, :DSCRE2, :VDSRE2' +
        ', :DSPRE2, '
      
        '   :VDPRE2, :DSRRE2, :VDRRE2, :PACRE2, :VACRE2, :DSCCOM, :VDSCOM' +
        ', :CODCOM, '
      
        '   :PCORE2, :IPIRE2, :CLSIPI, :CLFRE2, :ICMRE2, :TOTVEN, :TOTCST' +
        ', :BASIPI, '
      
        '   :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTRE2, :TOTGE2' +
        ', :TOTREN, '
      
        '   :TOTLIQ, :TOTBRT, :BASCOM, :TOTCOM, :TOTDSC, :TOTDSR, :TOTDSP' +
        ', :TOTACR, '
      
        '   :TOTDCO, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :EMPGER, '
      
        '   :DTEGER, :NUMGER, :SEQGR2, :SEQGR3, :PEDCLI, :FLASEQ, :FLGRES' +
        ', :FLGREQ, '
      
        '   :FLGDUP, :CODVWA, :NRORE2, :VMERE2, :VPFRE2, :VMECST, :VPFCST' +
        ', :DSCPER, '
      
        '   :FLGVAL, :FLGLIB, :CODTIP, :CODCAT, :CODMRC, :MESRES, :ANORES' +
        ', :LANCST, '
      '   :VPFOUT, :OUTCST, :ISSRE2, :BASISS, :TOTISS, :FLGPAC)')
    DeleteSQL.Strings = (
      'delete from PedRe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQRE2 = :OLD_SEQRE2')
    Left = 30
    Top = 263
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 2
    Top = 291
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedResNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedRes'
      'Where PedRes.CodEmp = :CodEmp'
      '     and PedRes.DteRes = :DteRes'
      '     and PedRes.NumRes = :NumRes')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 2
    Top = 207
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteRes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumRes'
        ParamType = ptInput
      end>
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDRES.CODEMP'
    end
    object PedResDTERES: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTERES'
      Origin = 'ISADE.PEDRES.DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedResNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.PEDRES.NUMRES'
    end
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      Origin = 'ISADE.PEDRES.HRERES'
      FixedChar = True
      Size = 8
    end
    object PedResCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.PEDRES.CODCLI'
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.PEDRES.CODVEN'
    end
    object PedResCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDRES.CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDRES.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedResCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'ISADE.PEDRES.CODTIP'
    end
    object PedResPRFRES: TIntegerField
      FieldName = 'PRFRES'
      Origin = 'ISADE.PEDRES.PRFRES'
    end
    object PedResDTFRES: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTFRES'
      Origin = 'ISADE.PEDRES.DTFRES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.PEDRES.CODFIL'
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.PEDRES.CODTRA'
    end
    object PedResUFERES: TStringField
      FieldName = 'UFERES'
      Origin = 'ISADE.PEDRES.UFERES'
      FixedChar = True
      Size = 2
    end
    object PedResCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.PEDRES.CGCCLI'
      FixedChar = True
      Size = 18
    end
    object PedResINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.PEDRES.INSCLI'
      FixedChar = True
      Size = 18
    end
    object PedResCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.PEDRES.CEPCLI'
      EditMask = '!99999\-999;0; '
      FixedChar = True
      Size = 8
    end
    object PedResTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.PEDRES.TENCLI'
      FixedChar = True
      Size = 10
    end
    object PedResENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.PEDRES.ENDCLI'
      FixedChar = True
      Size = 70
    end
    object PedResREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.PEDRES.REFCLI'
      FixedChar = True
      Size = 40
    end
    object PedResNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.PEDRES.NUMCLI'
      FixedChar = True
      Size = 10
    end
    object PedResBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.PEDRES.BAICLI'
      FixedChar = True
    end
    object PedResCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.PEDRES.CIDCLI'
      FixedChar = True
    end
    object PedResUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.PEDRES.UFECLI'
      FixedChar = True
      Size = 2
    end
    object PedResINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.PEDRES.INECLI'
      FixedChar = True
      Size = 18
    end
    object PedResCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.PEDRES.CGECLI'
      FixedChar = True
      Size = 18
    end
    object PedResOBSRES: TStringField
      FieldName = 'OBSRES'
      Origin = 'ISADE.PEDRES.OBSRES'
      FixedChar = True
      Size = 240
    end
    object PedResQTIRES: TIntegerField
      FieldName = 'QTIRES'
      Origin = 'ISADE.PEDRES.QTIRES'
    end
    object PedResSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.PEDRES.SEQITE'
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
      Origin = 'ISADE.PEDRES.QTPRES'
    end
    object PedResLINRES: TIntegerField
      FieldName = 'LINRES'
      Origin = 'ISADE.PEDRES.LINRES'
    end
    object PedResQTLRES: TIntegerField
      FieldName = 'QTLRES'
      Origin = 'ISADE.PEDRES.QTLRES'
    end
    object PedResQTFRES: TIntegerField
      FieldName = 'QTFRES'
      Origin = 'ISADE.PEDRES.QTFRES'
    end
    object PedResBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDRES.BASIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDRES.TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDRES.BASICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDRES.TOTICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDRES.BASSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDRES.TOTSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDRES.TOTCST'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDRES.TOTVEN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTRES: TFloatField
      FieldName = 'TOTRES'
      Origin = 'ISADE.PEDRES.TOTRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDRES.TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDRES.TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDRES.TOTLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDRES.TOTBRT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.PEDRES.BASCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.PEDRES.TOTCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDRES.DSCCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.PEDRES.DSCREG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Origin = 'ISADE.PEDRES.MEDCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Origin = 'ISADE.PEDRES.MEDPRM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDRES.TOTDSC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDRES.TOTDSR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDRES.TOTDSP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.PEDRES.DESREG'
      FixedChar = True
      Size = 100
    end
    object PedResCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.PEDRES.CODUSU'
    end
    object PedResFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      Origin = 'ISADE.PEDRES.FLGPSQ'
      FixedChar = True
      Size = 3
    end
    object PedResDTLPSQ: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTLPSQ'
      Origin = 'ISADE.PEDRES.DTLPSQ'
      EditMask = '!99/99/9999;1; '
    end
    object PedResFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.PEDRES.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedResFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.PEDRES.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object PedResFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Origin = 'ISADE.PEDRES.FLGOCO'
      FixedChar = True
      Size = 1
    end
    object PedResSEQRES: TStringField
      FieldName = 'SEQRES'
      Origin = 'ISADE.PEDRES.SEQRES'
      FixedChar = True
      Size = 22
    end
    object PedResATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.PEDRES.ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedResINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.PEDRES.INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedResCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.PEDRES.CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedResCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.PEDRES.CODIPI'
      FixedChar = True
      Size = 30
    end
    object PedResTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDRES.TIPIPI'
      FixedChar = True
      Size = 7
    end
    object PedResTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDRES.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedResREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDRES.REDIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDRES.BSCIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.PEDRES.CODICM'
      FixedChar = True
    end
    object PedResTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDRES.TIPICM'
      FixedChar = True
      Size = 7
    end
    object PedResTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDRES.TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedResREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDRES.REDICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDRES.BSCICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDRES.INCREV'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDRES.INCFIN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      Origin = 'ISADE.PEDRES.PEDANT'
      FixedChar = True
      Size = 3
    end
    object PedResDTEREJ: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEREJ'
      Origin = 'ISADE.PEDRES.DTEREJ'
      EditMask = '!99/99/9999;1; '
    end
    object PedResHREREJ: TStringField
      FieldName = 'HREREJ'
      Origin = 'ISADE.PEDRES.HREREJ'
      FixedChar = True
      Size = 8
    end
    object PedResOBSREJ: TMemoField
      FieldName = 'OBSREJ'
      Origin = 'ISADE.PEDRES.OBSREJ'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUREJ: TIntegerField
      FieldName = 'USUREJ'
      Origin = 'ISADE.PEDRES.USUREJ'
    end
    object PedResFLGFIN: TStringField
      FieldName = 'FLGFIN'
      Origin = 'ISADE.PEDRES.FLGFIN'
      FixedChar = True
      Size = 1
    end
    object PedResDTEFIN: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEFIN'
      Origin = 'ISADE.PEDRES.DTEFIN'
      EditMask = '!99/99/9999;1; '
    end
    object PedResHREFIN: TStringField
      FieldName = 'HREFIN'
      Origin = 'ISADE.PEDRES.HREFIN'
      FixedChar = True
      Size = 8
    end
    object PedResOBSFIN: TMemoField
      FieldName = 'OBSFIN'
      Origin = 'ISADE.PEDRES.OBSFIN'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFIN: TIntegerField
      FieldName = 'USUFIN'
      Origin = 'ISADE.PEDRES.USUFIN'
    end
    object PedResTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.PEDRES.TXFIPI'
      FixedChar = True
      Size = 160
    end
    object PedResTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.PEDRES.TXFICM'
      FixedChar = True
      Size = 160
    end
    object PedResFLGSLD: TStringField
      FieldName = 'FLGSLD'
      Origin = 'ISADE.PEDRES.FLGSLD'
      FixedChar = True
      Size = 1
    end
    object PedResFATRES: TFloatField
      FieldName = 'FATRES'
      Origin = 'ISADE.PEDRES.FATRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFATGER: TFloatField
      FieldName = 'FATGER'
      Origin = 'ISADE.PEDRES.FATGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVRES: TFloatField
      FieldName = 'DEVRES'
      Origin = 'ISADE.PEDRES.DEVRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVGER: TFloatField
      FieldName = 'DEVGER'
      Origin = 'ISADE.PEDRES.DEVGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDRES: TFloatField
      FieldName = 'SLDRES'
      Origin = 'ISADE.PEDRES.SLDRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDGER: TFloatField
      FieldName = 'SLDGER'
      Origin = 'ISADE.PEDRES.SLDGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.PEDRES.MEDDSC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.PEDRES.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object PedResFLGGER: TStringField
      FieldName = 'FLGGER'
      Origin = 'ISADE.PEDRES.FLGGER'
      FixedChar = True
      Size = 3
    end
    object PedResLIBSLD: TStringField
      FieldName = 'LIBSLD'
      Origin = 'ISADE.PEDRES.LIBSLD'
      FixedChar = True
      Size = 3
    end
    object PedResTOTACR: TFloatField
      FieldName = 'TOTACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
    end
    object PedResHREDEL: TStringField
      FieldName = 'HREDEL'
      FixedChar = True
      Size = 8
    end
    object PedResOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUDEL: TIntegerField
      FieldName = 'USUDEL'
    end
    object PedResDTEFPE: TDateTimeField
      FieldName = 'DTEFPE'
    end
    object PedResHREFPE: TStringField
      FieldName = 'HREFPE'
      FixedChar = True
      Size = 8
    end
    object PedResOBSFPE: TMemoField
      FieldName = 'OBSFPE'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFPE: TIntegerField
      FieldName = 'USUFPE'
    end
    object PedResSEQPAR: TIntegerField
      FieldName = 'SEQPAR'
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      FixedChar = True
      Size = 45
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTDCO: TFloatField
      FieldName = 'TOTDCO'
    end
    object PedResMEDDCO: TFloatField
      FieldName = 'MEDDCO'
    end
    object PedResCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedResFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object PedResFLGCOM: TStringField
      FieldName = 'FLGCOM'
      FixedChar = True
      Size = 1
    end
    object PedResDTECOM: TDateTimeField
      FieldName = 'DTECOM'
    end
    object PedResHRECOM: TStringField
      FieldName = 'HRECOM'
      FixedChar = True
      Size = 8
    end
    object PedResOBSCOM: TMemoField
      FieldName = 'OBSCOM'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUCOM: TIntegerField
      FieldName = 'USUCOM'
    end
    object PedResFLGREQ: TStringField
      FieldName = 'FLGREQ'
      FixedChar = True
      Size = 3
    end
    object PedResFLGRES: TStringField
      FieldName = 'FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedResQTDIMP: TIntegerField
      FieldName = 'QTDIMP'
    end
    object PedResMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object PedResEMPCTA: TIntegerField
      FieldName = 'EMPCTA'
    end
    object PedResDTECTA: TDateTimeField
      FieldName = 'DTECTA'
    end
    object PedResNUMCTA: TIntegerField
      FieldName = 'NUMCTA'
    end
    object PedResPRCCTA: TStringField
      FieldName = 'PRCCTA'
      FixedChar = True
      Size = 3
    end
    object PedResMESRES: TStringField
      FieldName = 'MESRES'
      FixedChar = True
      Size = 3
    end
    object PedResANORES: TIntegerField
      FieldName = 'ANORES'
    end
    object PedResFLGPRO: TStringField
      FieldName = 'FLGPRO'
      FixedChar = True
      Size = 1
    end
    object PedResPEDPRO: TStringField
      FieldName = 'PEDPRO'
      FixedChar = True
      Size = 3
    end
    object PedResDTEPRO: TDateTimeField
      FieldName = 'DTEPRO'
    end
    object PedResHREPRO: TStringField
      FieldName = 'HREPRO'
      FixedChar = True
      Size = 8
    end
    object PedResOBSPRO: TMemoField
      FieldName = 'OBSPRO'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUPRO: TIntegerField
      FieldName = 'USUPRO'
    end
    object PedResCLITAB: TStringField
      FieldName = 'CLITAB'
      FixedChar = True
      Size = 23
    end
    object PedResCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object PedResCODGCL: TIntegerField
      FieldName = 'CODGCL'
      Origin = 'ISADE.PEDRES.CODGCL'
    end
    object PedResFLGCON: TStringField
      FieldName = 'FLGCON'
      Origin = 'ISADE.PEDRES.FLGCON'
      FixedChar = True
      Size = 1
    end
    object PedResDTECON: TDateTimeField
      FieldName = 'DTECON'
      Origin = 'ISADE.PEDRES.DTECON'
    end
    object PedResHRECON: TStringField
      FieldName = 'HRECON'
      Origin = 'ISADE.PEDRES.HRECON'
      FixedChar = True
      Size = 8
    end
    object PedResOBSCON: TMemoField
      FieldName = 'OBSCON'
      Origin = 'ISADE.PEDRES.OBSCON'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = 'ISADE.PEDRES.USUCON'
    end
    object PedResTIPCOM: TStringField
      FieldName = 'TIPCOM'
      Origin = 'ISADE.PEDRES.TIPCOM'
      FixedChar = True
    end
    object PedResCODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'ISADE.PEDRES.CODCOM'
      FixedChar = True
      Size = 3
    end
    object PedResFLGSER: TStringField
      FieldName = 'FLGSER'
      Origin = 'ISADE.PEDRES.FLGSER'
      FixedChar = True
      Size = 3
    end
    object PedResBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.PEDRES.BASISS'
    end
    object PedResTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.PEDRES.TOTISS'
    end
    object PedResTIPCPA: TStringField
      FieldName = 'TIPCPA'
      Origin = 'ISADE.PEDRES.TIPCPA'
      FixedChar = True
      Size = 10
    end
    object PedResMEDCAT: TFloatField
      FieldName = 'MEDCAT'
      Origin = 'ISADE.PEDRES.MEDCAT'
    end
    object PedResBASCAT: TFloatField
      FieldName = 'BASCAT'
      Origin = 'ISADE.PEDRES.BASCAT'
    end
    object PedResTOTCAT: TFloatField
      FieldName = 'TOTCAT'
      Origin = 'ISADE.PEDRES.TOTCAT'
    end
    object PedResFLGFEC: TStringField
      FieldName = 'FLGFEC'
      Origin = 'ISADE.PEDRES.FLGFEC'
      FixedChar = True
      Size = 3
    end
    object PedResEMPPED: TIntegerField
      FieldName = 'EMPPED'
      Origin = 'ISADE.PEDRES.EMPPED'
    end
    object PedResDTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Origin = 'ISADE.PEDRES.DTEPED'
    end
    object PedResNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'ISADE.PEDRES.NUMPED'
    end
    object PedResFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.PEDRES.FLGDIF'
      FixedChar = True
      Size = 3
    end
    object PedResFLGCMP: TStringField
      FieldName = 'FLGCMP'
      Origin = 'ISADE.PEDRES.FLGCMP'
      FixedChar = True
      Size = 1
    end
    object PedResHRECMP: TStringField
      FieldName = 'HRECMP'
      Origin = 'ISADE.PEDRES.HRECMP'
      FixedChar = True
      Size = 8
    end
    object PedResDTECMP: TDateTimeField
      FieldName = 'DTECMP'
      Origin = 'ISADE.PEDRES.DTECMP'
    end
    object PedResUSUCMP: TIntegerField
      FieldName = 'USUCMP'
      Origin = 'ISADE.PEDRES.USUCMP'
    end
    object PedResFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDRES.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedResTOTIPC: TFloatField
      FieldName = 'TOTIPC'
      Origin = 'ISADE.PEDRES.TOTIPC'
    end
    object PedResNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.PEDRES.NOMENT'
      FixedChar = True
      Size = 70
    end
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedRe2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpRe2
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 2
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteRes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumRes'
        ParamType = ptInput
      end>
    object PedRe2CODGRU: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDRE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedRe2CODSUB: TStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDRE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedRe2CODPRO: TStringField
      Alignment = taCenter
      DisplayWidth = 9
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDRE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedRe2QTPRE2: TFloatField
      DisplayWidth = 12
      FieldName = 'QTPRE2'
      Origin = 'ISADE.PEDRE2.QTPRE2'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedRe2VLURE2: TFloatField
      DisplayWidth = 12
      FieldName = 'VLURE2'
      Origin = 'ISADE.PEDRE2.VLURE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CODUND: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDRE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedRe2IPIRE2: TFloatField
      DisplayWidth = 5
      FieldName = 'IPIRE2'
      Origin = 'ISADE.PEDRE2.IPIRE2'
      DisplayFormat = '###0'
    end
    object PedRe2ICMRE2: TFloatField
      DisplayWidth = 5
      FieldName = 'ICMRE2'
      Origin = 'ISADE.PEDRE2.ICMRE2'
      DisplayFormat = '###0'
    end
    object PedRe2DSCRE2: TFloatField
      DisplayWidth = 8
      FieldName = 'DSCRE2'
      Origin = 'ISADE.PEDRE2.DSCRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2DSPRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'DSPRE2'
      Origin = 'ISADE.PEDRE2.DSPRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VLQRE2: TFloatField
      DisplayWidth = 12
      FieldName = 'VLQRE2'
      Origin = 'ISADE.PEDRE2.VLQRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTRE2: TFloatField
      DisplayWidth = 14
      FieldName = 'TOTRE2'
      Origin = 'ISADE.PEDRE2.TOTRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VMERE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VMERE2'
      Origin = 'ISADE.PEDRE2.VMERE2'
      Visible = False
    end
    object PedRe2VPFRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFRE2'
      Origin = 'ISADE.PEDRE2.VPFRE2'
      Visible = False
    end
    object PedRe2VMECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VMECST'
      Origin = 'ISADE.PEDRE2.VMECST'
      Visible = False
    end
    object PedRe2VPFCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFCST'
      Origin = 'ISADE.PEDRE2.VPFCST'
      Visible = False
    end
    object PedRe2FLGRES: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDRE2.FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2PACRE2: TFloatField
      DisplayWidth = 9
      FieldName = 'PACRE2'
      Origin = 'ISADE.PEDRE2.PACRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2CODTAM: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODTAM'
      Origin = 'ISADE.PEDRE2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedRe2CODCOR: TStringField
      Alignment = taCenter
      DisplayWidth = 7
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDRE2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedRe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDRE2.CODEMP'
      Visible = False
    end
    object PedRe2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.PEDRE2.NUMRES'
      Visible = False
    end
    object PedRe2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Origin = 'ISADE.PEDRE2.SEQRE2'
      Visible = False
    end
    object PedRe2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.PEDRE2.CODEIT'
      Visible = False
    end
    object PedRe2CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.PEDRE2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2DESRE2: TStringField
      FieldName = 'DESRE2'
      Origin = 'ISADE.PEDRE2.DESRE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedRe2OBSRE2: TStringField
      FieldName = 'OBSRE2'
      Origin = 'ISADE.PEDRE2.OBSRE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedRe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDRE2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.PEDRE2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.PEDRE2.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedRe2LIQRE2: TFloatField
      FieldName = 'LIQRE2'
      Origin = 'ISADE.PEDRE2.LIQRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2BRTRE2: TFloatField
      FieldName = 'BRTRE2'
      Origin = 'ISADE.PEDRE2.BRTRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2LINRE2: TIntegerField
      FieldName = 'LINRE2'
      Origin = 'ISADE.PEDRE2.LINRE2'
      Visible = False
    end
    object PedRe2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Origin = 'ISADE.PEDRE2.TABPRC'
      Visible = False
    end
    object PedRe2QTSRE2: TFloatField
      FieldName = 'QTSRE2'
      Origin = 'ISADE.PEDRE2.QTSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2SLDRE2: TFloatField
      FieldName = 'SLDRE2'
      Origin = 'ISADE.PEDRE2.SLDRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VDSRE2: TFloatField
      FieldName = 'VDSRE2'
      Origin = 'ISADE.PEDRE2.VDSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VACRE2: TFloatField
      FieldName = 'VACRE2'
      Origin = 'ISADE.PEDRE2.VACRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDRE2.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedRe2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDRE2.TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDRE2.TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDRE2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDRE2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDRE2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDRE2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDRE2.TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDRE2.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDRE2.TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDRE2.TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.PEDRE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Origin = 'ISADE.PEDRE2.NRORE2'
      Visible = False
    end
    object PedRe2VCHRE2: TFloatField
      FieldName = 'VCHRE2'
      Origin = 'ISADE.PEDRE2.VCHRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VRERE2: TFloatField
      FieldName = 'VRERE2'
      Origin = 'ISADE.PEDRE2.VRERE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VCPRE2: TFloatField
      FieldName = 'VCPRE2'
      Origin = 'ISADE.PEDRE2.VCPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VPRRE2: TFloatField
      FieldName = 'VPRRE2'
      Origin = 'ISADE.PEDRE2.VPRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'ISADE.PEDRE2.CODCOM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2PCORE2: TFloatField
      FieldName = 'PCORE2'
      Origin = 'ISADE.PEDRE2.PCORE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.PEDRE2.BASCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.PEDRE2.TOTCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2QTFRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTFRE2'
      Origin = 'ISADE.PEDRE2.QTFRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2QTDRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDRE2'
      Origin = 'ISADE.PEDRE2.QTDRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.PEDRE2.DTERES'
      Visible = False
    end
    object PedRe2ULTQTS: TFloatField
      FieldName = 'ULTQTS'
      Origin = 'ISADE.PEDRE2.ULTQTS'
      Visible = False
    end
    object PedRe2VCSRE2: TFloatField
      FieldName = 'VCSRE2'
      Origin = 'ISADE.PEDRE2.VCSRE2'
      Visible = False
    end
    object PedRe2VDPRE2: TFloatField
      FieldName = 'VDPRE2'
      Origin = 'ISADE.PEDRE2.VDPRE2'
      Visible = False
    end
    object PedRe2DSRRE2: TFloatField
      FieldName = 'DSRRE2'
      Origin = 'ISADE.PEDRE2.DSRRE2'
      Visible = False
    end
    object PedRe2VDRRE2: TFloatField
      FieldName = 'VDRRE2'
      Origin = 'ISADE.PEDRE2.VDRRE2'
      Visible = False
    end
    object PedRe2CLFRE2: TStringField
      FieldName = 'CLFRE2'
      Origin = 'ISADE.PEDRE2.CLFRE2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDRE2.TOTDSC'
      Visible = False
    end
    object PedRe2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDRE2.TOTDSR'
      Visible = False
    end
    object PedRe2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDRE2.TOTDSP'
      Visible = False
    end
    object PedRe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDRE2.TOTACR'
      Visible = False
    end
    object PedRe2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDRE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDRE2.REDIPI'
      Visible = False
    end
    object PedRe2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDRE2.BSCIPI'
      Visible = False
    end
    object PedRe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDRE2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDRE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDRE2.REDICM'
      Visible = False
    end
    object PedRe2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDRE2.BSCICM'
      Visible = False
    end
    object PedRe2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDRE2.INCREV'
      Visible = False
    end
    object PedRe2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDRE2.INCFIN'
      Visible = False
    end
    object PedRe2CODPRM: TIntegerField
      FieldName = 'CODPRM'
      Origin = 'ISADE.PEDRE2.CODPRM'
      Visible = False
    end
    object PedRe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDRE2.BASSUB'
      Visible = False
    end
    object PedRe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDRE2.TOTSUB'
      Visible = False
    end
    object PedRe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDRE2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedRe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDRE2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDRE2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedRe2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDRE2.REGICM'
      Visible = False
      FixedChar = True
    end
    object PedRe2DSCCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDRE2.DSCCOM'
      Visible = False
    end
    object PedRe2VDSCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'VDSCOM'
      Origin = 'ISADE.PEDRE2.VDSCOM'
      Visible = False
    end
    object PedRe2TOTDCO: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDCO'
      Origin = 'ISADE.PEDRE2.TOTDCO'
      Visible = False
    end
    object PedRe2SEQPR2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPR2'
      Origin = 'ISADE.PEDRE2.SEQPR2'
      Visible = False
    end
    object PedRe2CSTRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTRE2'
      Origin = 'ISADE.PEDRE2.CSTRE2'
      Visible = False
    end
    object PedRe2VCRRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRRE2'
      Origin = 'ISADE.PEDRE2.VCRRE2'
      Visible = False
    end
    object PedRe2FLGDUP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDRE2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2EMPGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPGER'
      Origin = 'ISADE.PEDRE2.EMPGER'
      Visible = False
    end
    object PedRe2DTEGER: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEGER'
      Origin = 'ISADE.PEDRE2.DTEGER'
      Visible = False
    end
    object PedRe2NUMGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMGER'
      Origin = 'ISADE.PEDRE2.NUMGER'
      Visible = False
    end
    object PedRe2SEQGR2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGR2'
      Origin = 'ISADE.PEDRE2.SEQGR2'
      Visible = False
    end
    object PedRe2PEDCLI: TStringField
      DisplayWidth = 20
      FieldName = 'PEDCLI'
      Origin = 'ISADE.PEDRE2.PEDCLI'
      Visible = False
      FixedChar = True
    end
    object PedRe2FLGREQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREQ'
      Origin = 'ISADE.PEDRE2.FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2QTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Origin = 'ISADE.PEDRE2.QTDEMB'
      Visible = False
    end
    object PedRe2CODVWA: TStringField
      DisplayWidth = 14
      FieldName = 'CODVWA'
      Origin = 'ISADE.PEDRE2.CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object PedRe2REFRE2: TStringField
      DisplayWidth = 20
      FieldName = 'REFRE2'
      Origin = 'ISADE.PEDRE2.REFRE2'
      Visible = False
      FixedChar = True
    end
    object PedRe2SEQGR3: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGR3'
      Origin = 'ISADE.PEDRE2.SEQGR3'
      Visible = False
    end
    object PedRe2CSTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCST'
      Origin = 'ISADE.PEDRE2.CSTCST'
      Visible = False
    end
    object PedRe2VCHCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCHCST'
      Origin = 'ISADE.PEDRE2.VCHCST'
      Visible = False
    end
    object PedRe2VRECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VRECST'
      Origin = 'ISADE.PEDRE2.VRECST'
      Visible = False
    end
    object PedRe2VCRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCST'
      Origin = 'ISADE.PEDRE2.VCRCST'
      Visible = False
    end
    object PedRe2VCPCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPCST'
      Origin = 'ISADE.PEDRE2.VCPCST'
      Visible = False
    end
    object PedRe2VPRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRCST'
      Origin = 'ISADE.PEDRE2.VPRCST'
      Visible = False
    end
    object PedRe2DSCPER: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPER'
      Origin = 'ISADE.PEDRE2.DSCPER'
      Visible = False
    end
    object PedRe2FLGVAL: TStringField
      DisplayWidth = 3
      FieldName = 'FLGVAL'
      Origin = 'ISADE.PEDRE2.FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGLIB: TStringField
      DisplayWidth = 3
      FieldName = 'FLGLIB'
      Origin = 'ISADE.PEDRE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2CODTIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Origin = 'ISADE.PEDRE2.CODTIP'
      Visible = False
    end
    object PedRe2CODCAT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODCAT'
      Origin = 'ISADE.PEDRE2.CODCAT'
      Visible = False
    end
    object PedRe2CODMRC: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODMRC'
      Origin = 'ISADE.PEDRE2.CODMRC'
      Visible = False
    end
    object PedRe2MESRES: TStringField
      DisplayWidth = 3
      FieldName = 'MESRES'
      Origin = 'ISADE.PEDRE2.MESRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2ANORES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ANORES'
      Origin = 'ISADE.PEDRE2.ANORES'
      Visible = False
    end
    object PedRe2LANCST: TStringField
      DisplayWidth = 3
      FieldName = 'LANCST'
      Origin = 'ISADE.PEDRE2.LANCST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2VPFOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFOUT'
      Origin = 'ISADE.PEDRE2.VPFOUT'
      Visible = False
    end
    object PedRe2OUTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTCST'
      Origin = 'ISADE.PEDRE2.OUTCST'
      Visible = False
    end
    object PedRe2ISSRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSRE2'
      Origin = 'ISADE.PEDRE2.ISSRE2'
      Visible = False
    end
    object PedRe2BASISS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASISS'
      Origin = 'ISADE.PEDRE2.BASISS'
      Visible = False
    end
    object PedRe2TOTISS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTISS'
      Origin = 'ISADE.PEDRE2.TOTISS'
      Visible = False
    end
    object PedRe2FLGPAC: TStringField
      DisplayWidth = 3
      FieldName = 'FLGPAC'
      Origin = 'ISADE.PEDRE2.FLGPAC'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
