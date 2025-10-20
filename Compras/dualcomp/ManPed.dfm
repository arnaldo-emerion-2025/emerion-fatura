inherited fmManPed: TfmManPed
  Left = 0
  Caption = 'Pedido de Compra'
  ClientHeight = 481
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
    Height = 481
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
    Left = 4
    Top = 463
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
  object Label8: TLabel
    Left = 673
    Top = 463
    Width = 114
    Height = 16
    Caption = 'F12-Cont Esc-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grPe21: TdxDBGraphicEdit
    Left = 1
    Top = 229
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
    Height = 120
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 1
    Top = 195
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
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 34
  end
  object grLabel2: TPanel
    Left = 3
    Top = 197
    Width = 780
    Height = 28
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label32: TLabel
      Left = 3
      Top = 7
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
    object Label10: TLabel
      Left = 200
      Top = 7
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
      Left = 295
      Top = 7
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
    object Label21: TLabel
      Left = 485
      Top = 7
      Width = 18
      Height = 14
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
    object Label22: TLabel
      Left = 418
      Top = 7
      Width = 32
      Height = 14
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
      Left = 514
      Top = 7
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
    object Label24: TLabel
      Left = 582
      Top = 7
      Width = 28
      Height = 14
      Caption = '%CF'
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
    object Label25: TLabel
      Left = 637
      Top = 7
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
    object Label26: TLabel
      Left = 715
      Top = 7
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
    object Label20: TLabel
      Left = 372
      Top = 7
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 195
    BevelOuter = bvNone
    TabOrder = 3
    OnExit = Panel2Exit
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 786
      Height = 482
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
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
    object Label9: TLabel
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
    object Label1: TLabel
      Left = 4
      Top = 30
      Width = 54
      Height = 14
      Caption = 'Empresa :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
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
    object bpsqEmp: TSpeedButton
      Left = 225
      Top = 27
      Width = 25
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
    object Label2: TLabel
      Left = 533
      Top = 30
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
      Left = 599
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
    object Label33: TLabel
      Left = 720
      Top = 30
      Width = 14
      Height = 14
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label53: TLabel
      Left = 739
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
    object Label4: TLabel
      Left = 4
      Top = 54
      Width = 62
      Height = 14
      Caption = 'Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
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
    object bpsqFor: TSpeedButton
      Left = 225
      Top = 51
      Width = 25
      Height = 22
      Hint = 'Pesquisar Fornecedores Existentes'
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
      OnClick = bpsqForClick
    end
    object Label3: TLabel
      Left = 533
      Top = 54
      Width = 44
      Height = 14
      Caption = 'Contato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 599
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
    object Label5: TLabel
      Left = 4
      Top = 126
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
    object Label7: TLabel
      Left = 119
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
    object bpsqPfa: TSpeedButton
      Left = 225
      Top = 123
      Width = 25
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
    object Label13: TLabel
      Left = 4
      Top = 78
      Width = 110
      Height = 14
      Caption = 'Tipo de Classificação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
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
    object bPsqClp: TSpeedButton
      Left = 225
      Top = 75
      Width = 25
      Height = 22
      Hint = 'Pesquisar Classificações de Itens Existentes'
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
    object Label18: TLabel
      Left = 4
      Top = 150
      Width = 109
      Height = 14
      Caption = 'Previsão de Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 119
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
    object Label16: TLabel
      Left = 4
      Top = 102
      Width = 82
      Height = 14
      Caption = 'Tipo de Moeda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 119
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
    object bPsqTmo: TSpeedButton
      Left = 225
      Top = 99
      Width = 25
      Height = 22
      Hint = 'Pesquisar Tipos de Moedas Existentes'
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
      OnClick = bPsqTmoClick
    end
    object pnSemana: TLabel
      Left = 355
      Top = 150
      Width = 67
      Height = 14
      Caption = 'Sexta Feira'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 626
      Top = 102
      Width = 44
      Height = 14
      Caption = 'Cotação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 678
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
    object Label03: TLabel
      Left = 368
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
      Left = 423
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
    object Label34: TLabel
      Left = 541
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
    object Label46: TLabel
      Left = 678
      Top = 150
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 554
      Top = 150
      Width = 75
      Height = 14
      Caption = 'Qtd Caixa(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 119
      Top = 174
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label63: TLabel
      Left = 4
      Top = 174
      Width = 67
      Height = 14
      Caption = 'Cubagem ³'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label64: TLabel
      Left = 327
      Top = 174
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label65: TLabel
      Left = 554
      Top = 174
      Width = 120
      Height = 14
      Caption = 'Peso Bruto Caixa(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 253
      Top = 174
      Width = 138
      Height = 14
      Caption = 'Peso Liquido Caixa(s) :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label66: TLabel
      Left = 678
      Top = 174
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object p1TotCub: TLabel
      Left = 177
      Top = 174
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object p1TotLiq: TLabel
      Left = 465
      Top = 174
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object p1TotBrt: TLabel
      Left = 737
      Top = 174
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object p1TotCxa: TLabel
      Left = 737
      Top = 151
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdNomTmo: TdxDBColorEdit
      Left = 250
      Top = 98
      Width = 371
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfePed: TdxDBColorEdit
      Left = 743
      Top = 26
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
      TabOrder = 6
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEPED'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumPed: TdxDBColorEdit
      Left = 125
      Top = 2
      Width = 100
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
      DataField = 'NUMPED'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumPed: TPanel
      Left = 127
      Top = 6
      Width = 92
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
      Width = 100
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
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomEmp: TdxDBColorEdit
      Left = 250
      Top = 26
      Width = 279
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
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomEmp: TPanel
      Left = 254
      Top = 29
      Width = 270
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
    object EdDtePed: TdxDBColorDateEdit
      Left = 606
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdDtePedEnter
      OnExit = EdDtePedExit
      Alignment = taCenter
      DataField = 'DTEPED'
      DataSource = DsPed
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnUfePed: TPanel
      Left = 746
      Top = 29
      Width = 36
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdCodFor: TdxDBColorEdit
      Left = 125
      Top = 50
      Width = 100
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
      TabOrder = 8
      OnEnter = EdCodForEnter
      OnExit = EdCodForExit
      OnKeyDown = EdCodForKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODFOR'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomFor: TdxDBColorEdit
      Left = 250
      Top = 50
      Width = 279
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
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomFor: TPanel
      Left = 254
      Top = 53
      Width = 270
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
    object EdNomCon: TdxDBColorEdit
      Left = 605
      Top = 50
      Width = 181
      Hint = 'Contato (Fornecedor)'
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
      DataField = 'NOMCON'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 125
      Top = 122
      Width = 100
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
      TabOrder = 19
      OnEnter = EdCodForEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 250
      Top = 122
      Width = 536
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
      TabOrder = 20
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 254
      Top = 125
      Width = 527
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
    object EdClpPed: TdxDBColorEdit
      Left = 125
      Top = 74
      Width = 100
      Hint = 'Classificação dos Itens a Serem Informados no Pedido'
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
      OnEnter = EdCodForEnter
      OnExit = EdClpPedExit
      OnKeyDown = EdClpPedKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomClp: TdxDBColorEdit
      Left = 250
      Top = 74
      Width = 535
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
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomClp: TPanel
      Left = 254
      Top = 77
      Width = 527
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object EdPrePed: TdxDBColorEdit
      Left = 125
      Top = 146
      Width = 100
      Hint = 'Prazo em Dias para Provavel Entrega do Pedido'
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
      TabOrder = 22
      OnEnter = EdDtePedEnter
      OnExit = EdPrePedExit
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'PREPED'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDpePed: TdxDBColorDateEdit
      Left = 250
      Top = 146
      Width = 100
      Hint = 'Data para Provavel Entrega do Pedido'
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
      OnEnter = EdDtePedEnter
      OnExit = EdDpePedExit
      Alignment = taCenter
      AutoSize = False
      DataField = 'DPEPED'
      DataSource = DsPed
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 5
    end
    object EdFlgOco: TdxDBColorEdit
      Left = 743
      Top = 1
      Width = 43
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
      Left = 745
      Top = 3
      Width = 37
      Height = 19
      BevelOuter = bvNone
      Color = clLime
      TabOrder = 25
    end
    object EdCodTmo: TdxDBColorEdit
      Left = 125
      Top = 98
      Width = 100
      Hint = 'Tipo de Moeda para Entrada'
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
      OnEnter = EdCodForEnter
      OnExit = EdCodTmoExit
      OnKeyDown = EdCodTmoKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODTMO'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomTmo: TPanel
      Left = 254
      Top = 101
      Width = 363
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 685
      Top = 98
      Width = 100
      Hint = 'Valor de Cotação para a Moeda'
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
      DataField = 'VALTMO'
      DataSource = DsPed
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotRen: TdxDBColorCurrencyEdit
      Left = 434
      Top = 2
      Width = 95
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
      TabOrder = 26
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotRen: TPanel
      Left = 436
      Top = 5
      Width = 87
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
  end
  object grPe2: ThGrid
    Left = 3
    Top = 231
    Width = 780
    Height = 114
    Selected.Strings = (
      'CODCLP'#9'3'#9' '
      'CODGRU'#9'6'#9' '
      'CODSUB'#9'7'#9' '
      'CODPRO'#9'9'#9' '
      'QTPPE2'#9'11'#9' '
      'VLUPE2'#9'12'#9' '
      'CODUND'#9'5'#9'CODUND'
      'ICMPE2'#9'7'#9' '
      'IPIPE2'#9'7'#9' '
      'DSCPE2'#9'7'#9' '
      'PACPE2'#9'7'#9' '
      'VLQPE2'#9'11'#9' '
      'TOTGE2'#9'12'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grPe2Enter
    OnKeyDown = grPe2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel1: TPanel
    Left = 1
    Top = 350
    Width = 784
    Height = 114
    BevelOuter = bvNone
    TabOrder = 5
    OnExit = Panel1Exit
    object Label41: TLabel
      Left = 565
      Top = 27
      Width = 90
      Height = 14
      Caption = 'Total de Itens '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 664
      Top = 27
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
    object pnTotPed: TLabel
      Left = 751
      Top = 27
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 565
      Top = 74
      Width = 77
      Height = 14
      Caption = 'Total Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 664
      Top = 74
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
    object pnNroPe2: TLabel
      Left = 724
      Top = 97
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = '000/000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label57: TLabel
      Left = 400
      Top = 74
      Width = 73
      Height = 14
      Caption = 'Margem Item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 400
      Top = 51
      Width = 70
      Height = 14
      Caption = 'Preço Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 664
      Top = 51
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
    object pnTotAcc: TLabel
      Left = 751
      Top = 51
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 565
      Top = 97
      Width = 36
      Height = 14
      Caption = 'Itens '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 664
      Top = 97
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
    object Label40: TLabel
      Left = 476
      Top = 51
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
      Left = 476
      Top = 74
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
    object pnTotGer: TLabel
      Left = 751
      Top = 74
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 565
      Top = 51
      Width = 91
      Height = 14
      Caption = 'Despesas Forn.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label50: TLabel
      Left = 400
      Top = 27
      Width = 38
      Height = 14
      Caption = '(%) II'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label51: TLabel
      Left = 476
      Top = 27
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
    object Label49: TLabel
      Left = 2
      Top = 74
      Width = 81
      Height = 14
      Caption = 'Qtde por Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label52: TLabel
      Left = 88
      Top = 74
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
    object Label54: TLabel
      Left = 400
      Top = 97
      Width = 61
      Height = 14
      Caption = 'Cubagem ³'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label55: TLabel
      Left = 476
      Top = 97
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
    object Label56: TLabel
      Left = 207
      Top = 74
      Width = 84
      Height = 14
      Caption = 'Liquido Caixa(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label58: TLabel
      Left = 295
      Top = 74
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
      Left = 207
      Top = 97
      Width = 76
      Height = 14
      Caption = 'Bruto Caixa(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label60: TLabel
      Left = 295
      Top = 97
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
    object Label36: TLabel
      Left = 2
      Top = 97
      Width = 67
      Height = 14
      Caption = 'Qtd Caixa(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label48: TLabel
      Left = 88
      Top = 97
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
    object EdCodClp: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 28
      Hint = 'Classificação do Item'
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
      OnEnter = EdCodClpEnter
      OnExit = EdCodClpExit
      OnKeyDown = EdCodClpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = 26
      Top = -1
      Width = 43
      Hint = 'Grupo do Item'
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
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 68
      Top = -1
      Width = 57
      Hint = 'Sub-Grupo do Item'
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
      TabOrder = 2
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 124
      Top = -1
      Width = 64
      Hint = 'Código do Item'
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
      TabOrder = 3
      OnEnter = EdCodGruEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpPe2: TdxDBColorCurrencyEdit
      Left = 187
      Top = -1
      Width = 89
      Hint = 'Quantidade Pedida do Item'
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
      TabOrder = 4
      OnEnter = EdQtpPe2Enter
      OnExit = EdQtpPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluPe2: TdxDBColorCurrencyEdit
      Left = 275
      Top = -1
      Width = 88
      Hint = 'Preço Praticado para o Item'
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
      TabOrder = 5
      OnEnter = EdQtpPe2Enter
      OnExit = EdVluPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUPE2'
      DataSource = DsPe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmPe2: TdxDBColorCurrencyEdit
      Left = 396
      Top = -1
      Width = 60
      Hint = 'Aliquota de ICMS'
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
      TabOrder = 7
      OnEnter = EdQtpPe2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMPE2'
      DataSource = DsPe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiPe2: TdxDBColorCurrencyEdit
      Left = 455
      Top = -1
      Width = 55
      Hint = 'Aliquota de IPI'
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
      TabOrder = 8
      OnEnter = EdQtpPe2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIPE2'
      DataSource = DsPe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscPe2: TdxDBColorCurrencyEdit
      Left = 509
      Top = -1
      Width = 53
      Hint = 'Percentual de Desconto para o Item'
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
      TabOrder = 9
      OnEnter = EdQtpPe2Enter
      OnExit = EdDscPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCPE2'
      DataSource = DsPe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPacPe2: TdxDBColorCurrencyEdit
      Left = 561
      Top = -1
      Width = 54
      Hint = 'Percentual de Acrescimo para o Item'
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
      TabOrder = 10
      OnEnter = EdQtpPe2Enter
      OnExit = EdPacPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACPE2'
      DataSource = DsPe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqPe2: TdxDBColorCurrencyEdit
      Left = 614
      Top = -1
      Width = 82
      Hint = 'Preço Liquido Praticado para o Item'
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
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQPE2'
      DataSource = DsPe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGe2: TdxDBColorCurrencyEdit
      Left = 695
      Top = -1
      Width = 90
      Hint = 'Total do Item'
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
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 362
      Top = -1
      Width = 35
      Hint = 'Unidade de Medida do Item'
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
      TabOrder = 6
      OnEnter = EdCodUndEnter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesPe2: TdxDBColorEdit
      Left = -1
      Top = 23
      Width = 398
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
      OnEnter = EdQtpPe2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESPE2'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesPe2: TPanel
      Left = 3
      Top = 27
      Width = 390
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
    object EdObsPe2: TdxDBColorEdit
      Left = -1
      Top = 47
      Width = 398
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
      TabOrder = 15
      OnEnter = EdQtpPe2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSPE2'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsPe2: TPanel
      Left = 3
      Top = 51
      Width = 390
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object pnTotMk2: TPanel
      Left = 484
      Top = 74
      Width = 72
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object EdValVen: TdxDBColorCurrencyEdit
      Left = 481
      Top = 47
      Width = 80
      Hint = 'Preço de Tabela do Item'
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
      TabOrder = 19
      OnEnter = EdQtpPe2Enter
      OnExit = EdVluPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALVEN'
      DataSource = DsPe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdImpPe2: TdxDBColorCurrencyEdit
      Left = 481
      Top = 23
      Width = 80
      Hint = 'Aliquota de II'
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
      TabOrder = 18
      OnEnter = EdQtpPe2Enter
      OnExit = EdVluPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IMPPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnCxaPe2: TPanel
      Left = 94
      Top = 74
      Width = 106
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object pnTotCub: TPanel
      Left = 484
      Top = 97
      Width = 72
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object pnTotLiq: TPanel
      Left = 301
      Top = 74
      Width = 93
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object pnTotBrt: TPanel
      Left = 301
      Top = 97
      Width = 93
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object pnTotCxa: TPanel
      Left = 94
      Top = 97
      Width = 106
      Height = 15
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
  end
  object CmpPed: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpPedNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPed.*,'
      '           FinFor.EmaFor,'
      '           FinFor.NomFor,'
      '           FinFor.BaiFor,'
      '           FinFor.CidFor,'
      '           FinFor.SigUfe,'
      '           GerUsu.LogUsu,'
      '           FinFor.CodTmo as ModFor,'
      
        '           Endereco(TenFor,EndFor,NumFor,RefFor,'#39#39','#39#39','#39#39') as End' +
        'For,'
      
        '           TextoOcor('#39'('#39',FinFor.PrtFor,'#39')'#39','#39' '#39',FinFor.FonFor,'#39#39',' +
        #39#39') as FonFor,'
      
        '           TextoOcor('#39'('#39',FinFor.PrfFor,'#39')'#39','#39' '#39',FinFor.FaxFor,'#39#39',' +
        #39#39') as FaxFor'
      'From CmpPed LEFT JOIN FinFor ON (CmpPed.CodFor = FinFor.CodFor)'
      
        '                       LEFT JOIN GerUsu ON (CmpPed.CodUsu = GerU' +
        'su.CodUsu)'
      'Where CmpPed.CodEmp = :CodEmp'
      '     and CmpPed.DtePed = :DtePed'
      '     and CmpPed.NumPed = :NumPed')
    UpdateObject = UpPed
    ValidateWithMask = True
    Left = 5
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DtePed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
      end>
    object CmpPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.CMPPED.CODEMP'
    end
    object CmpPedDTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Origin = 'ISADE.CMPPED.DTEPED'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'ISADE.CMPPED.NUMPED'
    end
    object CmpPedHREPED: TStringField
      FieldName = 'HREPED'
      Origin = 'ISADE.CMPPED.HREPED'
      FixedChar = True
      Size = 8
    end
    object CmpPedCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = 'ISADE.CMPPED.CODFOR'
    end
    object CmpPedCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Origin = 'ISADE.CMPPED.CONPLC'
    end
    object CmpPedSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Origin = 'ISADE.CMPPED.SUBPLC'
    end
    object CmpPedCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.CMPPED.CODPFA'
      FixedChar = True
      Size = 15
    end
    object CmpPedTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.CMPPED.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object CmpPedPREPED: TIntegerField
      FieldName = 'PREPED'
      Origin = 'ISADE.CMPPED.PREPED'
    end
    object CmpPedDPEPED: TDateTimeField
      FieldName = 'DPEPED'
      Origin = 'ISADE.CMPPED.DPEPED'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.CMPPED.CODFIL'
    end
    object CmpPedUFEPED: TStringField
      FieldName = 'UFEPED'
      Origin = 'ISADE.CMPPED.UFEPED'
      FixedChar = True
      Size = 2
    end
    object CmpPedCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.CMPPED.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpPedNOMCON: TStringField
      FieldName = 'NOMCON'
      Origin = 'ISADE.CMPPED.NOMCON'
      FixedChar = True
      Size = 40
    end
    object CmpPedNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Origin = 'ISADE.CMPPED.NOMVEN'
      FixedChar = True
      Size = 40
    end
    object CmpPedCEPENT: TStringField
      FieldName = 'CEPENT'
      Origin = 'ISADE.CMPPED.CEPENT'
      EditMask = '99999\-999;1;_'
      FixedChar = True
      Size = 8
    end
    object CmpPedTENENT: TStringField
      FieldName = 'TENENT'
      Origin = 'ISADE.CMPPED.TENENT'
      FixedChar = True
      Size = 10
    end
    object CmpPedENDENT: TStringField
      FieldName = 'ENDENT'
      Origin = 'ISADE.CMPPED.ENDENT'
      FixedChar = True
      Size = 70
    end
    object CmpPedREFENT: TStringField
      FieldName = 'REFENT'
      Origin = 'ISADE.CMPPED.REFENT'
      FixedChar = True
      Size = 40
    end
    object CmpPedNUMENT: TStringField
      FieldName = 'NUMENT'
      Origin = 'ISADE.CMPPED.NUMENT'
      FixedChar = True
      Size = 10
    end
    object CmpPedBAIENT: TStringField
      FieldName = 'BAIENT'
      Origin = 'ISADE.CMPPED.BAIENT'
      FixedChar = True
    end
    object CmpPedCIDENT: TStringField
      FieldName = 'CIDENT'
      Origin = 'ISADE.CMPPED.CIDENT'
      FixedChar = True
    end
    object CmpPedUFEENT: TStringField
      FieldName = 'UFEENT'
      Origin = 'ISADE.CMPPED.UFEENT'
      FixedChar = True
      Size = 2
    end
    object CmpPedFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.CMPPED.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object CmpPedOBSPED: TStringField
      FieldName = 'OBSPED'
      Origin = 'ISADE.CMPPED.OBSPED'
      FixedChar = True
      Size = 240
    end
    object CmpPedQTIPED: TIntegerField
      FieldName = 'QTIPED'
      Origin = 'ISADE.CMPPED.QTIPED'
    end
    object CmpPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.CMPPED.SEQITE'
    end
    object CmpPedBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPPED.BASIPI'
    end
    object CmpPedTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPPED.TOTIPI'
    end
    object CmpPedBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPPED.BASICM'
    end
    object CmpPedTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPPED.TOTICM'
    end
    object CmpPedBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPPED.BASSUB'
    end
    object CmpPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPPED.TOTSUB'
    end
    object CmpPedTOTPED: TFloatField
      FieldName = 'TOTPED'
      Origin = 'ISADE.CMPPED.TOTPED'
    end
    object CmpPedTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.CMPPED.TOTGER'
    end
    object CmpPedMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.CMPPED.MEDDSC'
    end
    object CmpPedTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPPED.TOTDSC'
    end
    object CmpPedMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.CMPPED.MEDACR'
    end
    object CmpPedTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.CMPPED.TOTACR'
    end
    object CmpPedLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.CMPPED.LANEST'
      FixedChar = True
      Size = 3
    end
    object CmpPedATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.CMPPED.ATUEST'
      FixedChar = True
      Size = 3
    end
    object CmpPedINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.CMPPED.INTFIN'
      FixedChar = True
      Size = 3
    end
    object CmpPedCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.CMPPED.CONSUM'
      FixedChar = True
      Size = 3
    end
    object CmpPedCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.CMPPED.CODIPI'
      FixedChar = True
      Size = 30
    end
    object CmpPedTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPPED.TIPIPI'
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPPED.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object CmpPedREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPPED.REDIPI'
    end
    object CmpPedBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPPED.BSCIPI'
    end
    object CmpPedCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.CMPPED.CODICM'
      FixedChar = True
    end
    object CmpPedTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPPED.TIPICM'
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPPED.TRBICM'
      FixedChar = True
      Size = 3
    end
    object CmpPedREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPPED.REDICM'
    end
    object CmpPedBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPPED.BSCICM'
    end
    object CmpPedINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPPED.INCREV'
    end
    object CmpPedINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPPED.INCFIN'
    end
    object CmpPedTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.CMPPED.TXFIPI'
      FixedChar = True
      Size = 160
    end
    object CmpPedTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.CMPPED.TXFICM'
      FixedChar = True
      Size = 160
    end
    object CmpPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.CMPPED.CODUSU'
    end
    object CmpPedSEQPED: TStringField
      FieldName = 'SEQPED'
      Origin = 'ISADE.CMPPED.SEQPED'
      FixedChar = True
      Size = 22
    end
    object CmpPedSITPED: TStringField
      FieldName = 'SITPED'
      Origin = 'ISADE.CMPPED.SITPED'
      FixedChar = True
      Size = 45
    end
    object CmpPedOBSCND: TStringField
      FieldName = 'OBSCND'
      Origin = 'ISADE.CMPPED.OBSCND'
      FixedChar = True
      Size = 100
    end
    object CmpPedEMAFOR: TStringField
      FieldName = 'EMAFOR'
      FixedChar = True
      Size = 50
    end
    object CmpPedCODTMO: TIntegerField
      FieldName = 'CODTMO'
    end
    object CmpPedFLGOCO: TStringField
      FieldName = 'FLGOCO'
      FixedChar = True
      Size = 1
    end
    object CmpPedFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object CmpPedVALTMO: TFloatField
      FieldName = 'VALTMO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object CmpPedTOTVEN: TFloatField
      FieldName = 'TOTVEN'
    end
    object CmpPedTOTREN: TFloatField
      FieldName = 'TOTREN'
    end
    object CmpPedMODFOR: TIntegerField
      FieldName = 'MODFOR'
    end
    object CmpPedDTEFPE: TDateTimeField
      FieldName = 'DTEFPE'
    end
    object CmpPedHREFPE: TStringField
      FieldName = 'HREFPE'
      FixedChar = True
      Size = 8
    end
    object CmpPedOBSFPE: TMemoField
      FieldName = 'OBSFPE'
      BlobType = ftMemo
      Size = 300
    end
    object CmpPedUSUFPE: TIntegerField
      FieldName = 'USUFPE'
    end
    object CmpPedFLGRES: TStringField
      FieldName = 'FLGRES'
      FixedChar = True
      Size = 3
    end
    object CmpPedNOMFOR: TStringField
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 40
    end
    object CmpPedBAIFOR: TStringField
      FieldName = 'BAIFOR'
      FixedChar = True
    end
    object CmpPedCIDFOR: TStringField
      FieldName = 'CIDFOR'
      FixedChar = True
    end
    object CmpPedSIGUFE: TStringField
      FieldName = 'SIGUFE'
      FixedChar = True
      Size = 2
    end
    object CmpPedLOGUSU: TStringField
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object CmpPedENDFOR: TStringField
      FieldName = 'ENDFOR'
      FixedChar = True
      Size = 172
    end
    object CmpPedFONFOR: TStringField
      FieldName = 'FONFOR'
      FixedChar = True
      Size = 100
    end
    object CmpPedFAXFOR: TStringField
      FieldName = 'FAXFOR'
      FixedChar = True
      Size = 100
    end
    object CmpPedPERACR: TFloatField
      FieldName = 'PERACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTACP: TFloatField
      FieldName = 'TOTACP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTACC: TFloatField
      FieldName = 'TOTACC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object CmpPedQTPPED: TIntegerField
      FieldName = 'QTPPED'
    end
    object CmpPedSQPPED: TIntegerField
      FieldName = 'SQPPED'
    end
    object CmpPedBASIMP: TFloatField
      FieldName = 'BASIMP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedPERACI: TFloatField
      FieldName = 'PERACI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTACI: TFloatField
      FieldName = 'TOTACI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTAIP: TFloatField
      FieldName = 'TOTAIP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedLANGER: TFloatField
      FieldName = 'LANGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedSLDGER: TFloatField
      FieldName = 'SLDGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedTOTCUB: TFloatField
      FieldName = 'TOTCUB'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedTOTCXA: TFloatField
      FieldName = 'TOTCXA'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
  end
  object CmpPe2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpPe2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpPe2'
      'Where CmpPe2.CodEmp = :CodEmp'
      '     and CmpPe2.DtePed = :DtePed'
      '     and CmpPe2.NumPed = :NumPed'
      'Order by CmpPe2.NroPe2')
    UpdateObject = UpPe2
    ValidateWithMask = True
    Left = 5
    Top = 260
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DtePed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
      end>
    object CmpPe2CODCLP: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.CMPPE2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODGRU'
      Origin = 'ISADE.CMPPE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpPe2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODSUB'
      Origin = 'ISADE.CMPPE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpPe2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 9
      FieldName = 'CODPRO'
      Origin = 'ISADE.CMPPE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpPe2QTPPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTPPE2'
      Origin = 'ISADE.CMPPE2.QTPPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2VLUPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLUPE2'
      Origin = 'ISADE.CMPPE2.VLUPE2'
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPe2CODUND: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.CMPPE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpPe2ICMPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'ICMPE2'
      Origin = 'ISADE.CMPPE2.ICMPE2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpPe2IPIPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPIPE2'
      Origin = 'ISADE.CMPPE2.IPIPE2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpPe2DSCPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'DSCPE2'
      Origin = 'ISADE.CMPPE2.DSCPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2PACPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'PACPE2'
      Origin = 'ISADE.CMPPE2.PACPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2VLQPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLQPE2'
      Origin = 'ISADE.CMPPE2.VLQPE2'
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPe2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTGE2'
      Origin = 'ISADE.CMPPE2.TOTGE2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTPE2: TFloatField
      DisplayLabel = '                      '
      DisplayWidth = 13
      FieldName = 'TOTPE2'
      Origin = 'ISADE.CMPPE2.TOTPE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2CODTAM: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODTAM'
      Origin = 'ISADE.CMPPE2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2CODCOR: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCOR'
      Origin = 'ISADE.CMPPE2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.CMPPE2.CODEMP'
      Visible = False
    end
    object CmpPe2DTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Origin = 'ISADE.CMPPE2.DTEPED'
      Visible = False
    end
    object CmpPe2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'ISADE.CMPPE2.NUMPED'
      Visible = False
    end
    object CmpPe2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Origin = 'ISADE.CMPPE2.SEQPE2'
      Visible = False
    end
    object CmpPe2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.CMPPE2.CODEIT'
      Visible = False
    end
    object CmpPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Origin = 'ISADE.CMPPE2.DESPE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpPe2OBSPE2: TStringField
      FieldName = 'OBSPE2'
      Origin = 'ISADE.CMPPE2.OBSPE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.CMPPE2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.CMPPE2.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPPE2.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2SLDPE2: TFloatField
      FieldName = 'SLDPE2'
      Origin = 'ISADE.CMPPE2.SLDPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2VDSPE2: TFloatField
      FieldName = 'VDSPE2'
      Origin = 'ISADE.CMPPE2.VDSPE2'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPe2VACPE2: TFloatField
      FieldName = 'VACPE2'
      Origin = 'ISADE.CMPPE2.VACPE2'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPPE2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPPE2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPPE2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPPE2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPPE2.BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPPE2.TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPPE2.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpPe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.CMPPE2.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpPe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.CMPPE2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.CMPPE2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.CMPPE2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPPE2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPPE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPPE2.REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPPE2.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.CMPPE2.REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPPE2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPPE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPPE2.REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPPE2.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPPE2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPPE2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.CMPPE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2NROPE2: TIntegerField
      FieldName = 'NROPE2'
      Origin = 'ISADE.CMPPE2.NROPE2'
      Visible = False
    end
    object CmpPe2QTEPE2: TFloatField
      FieldName = 'QTEPE2'
      Visible = False
    end
    object CmpPe2QTRPE2: TFloatField
      FieldName = 'QTRPE2'
      Visible = False
    end
    object CmpPe2FLGDUP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2QTIPE3: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTIPE3'
      Visible = False
    end
    object CmpPe2SEQPE3: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPE3'
      Visible = False
    end
    object CmpPe2FLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2VLQITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VLQITE'
      Visible = False
    end
    object CmpPe2FLGVAL: TStringField
      DisplayWidth = 3
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2FLGLAN: TStringField
      DisplayWidth = 1
      FieldName = 'FLGLAN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2VALVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'VALVEN'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object CmpPe2TOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object CmpPe2CODPFO: TStringField
      DisplayWidth = 30
      FieldName = 'CODPFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2QTNPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTNPE2'
      Visible = False
    end
    object CmpPe2OBSPE3: TStringField
      DisplayWidth = 100
      FieldName = 'OBSPE3'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2FLGENT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2IMPPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPPE2'
      Origin = 'ISADE.CMPPE2.IMPPE2'
      Visible = False
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpPe2BASIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIMP'
      Origin = 'ISADE.CMPPE2.BASIMP'
      Visible = False
    end
    object CmpPe2TOTIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIMP'
      Origin = 'ISADE.CMPPE2.TOTIMP'
      Visible = False
    end
    object CmpPe2LIQPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQPE2'
      Origin = 'ISADE.CMPPE2.LIQPE2'
      Visible = False
    end
    object CmpPe2BRTPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTPE2'
      Origin = 'ISADE.CMPPE2.BRTPE2'
      Visible = False
    end
    object CmpPe2CUBPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'CUBPE2'
      Origin = 'ISADE.CMPPE2.CUBPE2'
      Visible = False
    end
    object CmpPe2CXAPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'CXAPE2'
      Origin = 'ISADE.CMPPE2.CXAPE2'
      Visible = False
    end
    object CmpPe2TOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPPE2.TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPPE2.TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTCUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCUB'
      Origin = 'ISADE.CMPPE2.TOTCUB'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTCXA: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCXA'
      Origin = 'ISADE.CMPPE2.TOTCXA'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
  end
  object UpPed: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPed'
      'set'
      '  HREPED = :HREPED,'
      '  CODFOR = :CODFOR,'
      '  CONPLC = :CONPLC,'
      '  SUBPLC = :SUBPLC,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  PREPED = :PREPED,'
      '  DPEPED = :DPEPED,'
      '  CODTMO = :CODTMO,'
      '  VALTMO = :VALTMO,'
      '  CODFIL = :CODFIL,'
      '  UFEPED = :UFEPED,'
      '  CODCLP = :CODCLP,'
      '  NOMCON = :NOMCON,'
      '  NOMVEN = :NOMVEN,'
      '  CEPENT = :CEPENT,'
      '  TENENT = :TENENT,'
      '  ENDENT = :ENDENT,'
      '  REFENT = :REFENT,'
      '  NUMENT = :NUMENT,'
      '  BAIENT = :BAIENT,'
      '  CIDENT = :CIDENT,'
      '  UFEENT = :UFEENT,'
      '  MODPFA = :MODPFA,'
      '  OBSCND = :OBSCND,'
      '  OBSPED = :OBSPED,'
      '  LANEST = :LANEST,'
      '  ATUEST = :ATUEST,'
      '  CODUSU = :CODUSU,'
      '  FLGOCO = :FLGOCO,'
      '  FLGATU = :FLGATU,'
      '  SEQPED = :SEQPED,'
      '  SITPED = :SITPED,'
      '  PERACR = :PERACR,'
      '  TOTACC = :TOTACC,'
      '  TOTACI = :TOTACI,'
      '  PERACI = :PERACI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED')
    InsertSQL.Strings = (
      'insert into CmpPed'
      
        '  (CODEMP, DTEPED, NUMPED, HREPED, CODFOR, CONPLC, SUBPLC, CODPF' +
        'A, '
      'TIPPFA, '
      
        '   PREPED, DPEPED, CODTMO, VALTMO, CODFIL, UFEPED, CODCLP, NOMCO' +
        'N, '
      'NOMVEN, '
      
        '   CEPENT, TENENT, ENDENT, REFENT, NUMENT, BAIENT, CIDENT, UFEEN' +
        'T, '
      'FLGCTB, '
      
        '   FLGTAB, MODPFA, OBSCND, OBSPED, QTPPED, SQPPED, QTIPED, SEQIT' +
        'E, '
      'BASIMP, '
      
        '   TOTIMP, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTPE' +
        'D, '
      'MEDDSC, '
      
        '   TOTDSC, MEDACR, TOTACR, TOTGER, LANGER, SLDGER, TOTVEN, TOTRE' +
        'N, '
      'LANEST, '
      
        '   ATUEST, INTFIN, CONSUM, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, CODICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, TXFIPI, TXFIC' +
        'M, '
      'CODUSU, '
      
        '   FLGOCO, FLGATU, SEQPED, DTEFPE, HREFPE, OBSFPE, USUFPE, SITPE' +
        'D, '
      'FLGRES, '
      
        '   PERACR, TOTACC, TOTACP, PERACI, TOTACI, TOTAIP, TOTLIQ, TOTBR' +
        'T, '
      'TOTCUB, '
      '   TOTCXA)'
      'values'
      
        '  (:CODEMP, :DTEPED, :NUMPED, :HREPED, :CODFOR, :CONPLC, :SUBPLC' +
        ', '
      ':CODPFA, '
      
        '   :TIPPFA, :PREPED, :DPEPED, :CODTMO, :VALTMO, :CODFIL, :UFEPED' +
        ', '
      ':CODCLP, '
      
        '   :NOMCON, :NOMVEN, :CEPENT, :TENENT, :ENDENT, :REFENT, :NUMENT' +
        ', '
      ':BAIENT, '
      
        '   :CIDENT, :UFEENT, :FLGCTB, :FLGTAB, :MODPFA, :OBSCND, :OBSPED' +
        ', '
      ':QTPPED, '
      
        '   :SQPPED, :QTIPED, :SEQITE, :BASIMP, :TOTIMP, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTPED, :MEDDSC, :TOTDSC, :MEDACR' +
        ', '
      ':TOTACR, '
      
        '   :TOTGER, :LANGER, :SLDGER, :TOTVEN, :TOTREN, :LANEST, :ATUEST' +
        ', '
      ':INTFIN, '
      
        '   :CONSUM, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :TXFIPI, :TXFICM' +
        ', :CODUSU, '
      
        '   :FLGOCO, :FLGATU, :SEQPED, :DTEFPE, :HREFPE, :OBSFPE, :USUFPE' +
        ', '
      ':SITPED, '
      
        '   :FLGRES, :PERACR, :TOTACC, :TOTACP, :PERACI, :TOTACI, :TOTAIP' +
        ', :TOTLIQ, '
      '   :TOTBRT, :TOTCUB, :TOTCXA)')
    DeleteSQL.Strings = (
      'delete from CmpPed'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED')
    Left = 5
    Top = 288
  end
  object UpPe2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPe2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESPE2 = :DESPE2,'
      '  OBSPE2 = :OBSPE2,'
      '  OBSPE3 = :OBSPE3,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  CLSIPI = :CLSIPI,'
      '  CODPFO = :CODPFO,'
      '  SEQPE3 = :SEQPE3,'
      '  QTPPE2 = :QTPPE2,'
      '  VLUPE2 = :VLUPE2,'
      '  VLQPE2 = :VLQPE2,'
      '  VALVEN = :VALVEN,'
      '  VLQITE = :VLQITE,'
      '  DSCPE2 = :DSCPE2,'
      '  VDSPE2 = :VDSPE2,'
      '  PACPE2 = :PACPE2,'
      '  VACPE2 = :VACPE2,'
      '  IPIPE2 = :IPIPE2,'
      '  IMPPE2 = :IMPPE2,'
      '  ICMPE2 = :ICMPE2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  FLGLAN = :FLGLAN,'
      '  FLASEQ = :FLASEQ,'
      '  FLGDUP = :FLGDUP,'
      '  LIQPE2 = :LIQPE2,'
      '  BRTPE2 = :BRTPE2,'
      '  CUBPE2 = :CUBPE2,'
      '  CXAPE2 = :CXAPE2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED and'
      '  SEQPE2 = :OLD_SEQPE2')
    InsertSQL.Strings = (
      'insert into CmpPe2'
      
        '  (CODEMP, DTEPED, NUMPED, SEQPE2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      
        '   CODTAM, CODCOR, DESPE2, OBSPE2, OBSPE3, CODST1, CODST2, CODUN' +
        'D, CLSIPI, '
      
        '   CODPFO, QTIPE3, SEQPE3, QTPPE2, QTEPE2, QTRPE2, QTNPE2, SLDPE' +
        '2, VLUPE2, '
      
        '   VLQPE2, VALVEN, VLQITE, DSCPE2, VDSPE2, PACPE2, VACPE2, IPIPE' +
        '2, IMPPE2, '
      
        '   ICMPE2, BASIMP, TOTIMP, BASIPI, TOTIPI, BASICM, TOTICM, BASSU' +
        'B, TOTSUB, '
      
        '   TOTPE2, TOTGE2, TOTDSC, TOTACR, TOTVEN, TOTREN, CODSTR, TIPST' +
        'R, REGIPI, '
      
        '   TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDIC' +
        'M, BSCICM, '
      
        '   INCREV, INCFIN, FLGLAN, FLASEQ, FLGDUP, FLGRES, FLGENT, FLGVA' +
        'L, NROPE2, '
      
        '   LIQPE2, BRTPE2, CUBPE2, CXAPE2, TOTLIQ, TOTBRT, TOTCUB, TOTCX' +
        'A)'
      'values'
      
        '  (:CODEMP, :DTEPED, :NUMPED, :SEQPE2, :CODEIT, :CODCLP, :CODGRU' +
        ', :CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESPE2, :OBSPE2, :OBSPE3, :CODST1' +
        ', :CODST2, '
      
        '   :CODUND, :CLSIPI, :CODPFO, :QTIPE3, :SEQPE3, :QTPPE2, :QTEPE2' +
        ', :QTRPE2, '
      
        '   :QTNPE2, :SLDPE2, :VLUPE2, :VLQPE2, :VALVEN, :VLQITE, :DSCPE2' +
        ', :VDSPE2, '
      
        '   :PACPE2, :VACPE2, :IPIPE2, :IMPPE2, :ICMPE2, :BASIMP, :TOTIMP' +
        ', :BASIPI, '
      
        '   :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTPE2, :TOTGE2' +
        ', :TOTDSC, '
      
        '   :TOTACR, :TOTVEN, :TOTREN, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI' +
        ', :TRBIPI, '
      
        '   :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM' +
        ', :INCREV, '
      
        '   :INCFIN, :FLGLAN, :FLASEQ, :FLGDUP, :FLGRES, :FLGENT, :FLGVAL' +
        ', :NROPE2, '
      
        '   :LIQPE2, :BRTPE2, :CUBPE2, :CXAPE2, :TOTLIQ, :TOTBRT, :TOTCUB' +
        ', :TOTCXA)')
    DeleteSQL.Strings = (
      'delete from CmpPe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED and'
      '  SEQPE2 = :OLD_SEQPE2')
    Left = 33
    Top = 288
  end
  object DsPe2: TDataSource
    DataSet = CmpPe2
    OnDataChange = DsPe2DataChange
    Left = 33
    Top = 260
  end
  object DsPed: TDataSource
    DataSet = CmpPed
    Left = 33
    Top = 232
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 5
    Top = 316
  end
  object CmpPar: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 316
    object CmpParFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.CMPPAR.FLGTAB'
      FixedChar = True
      Size = 25
    end
  end
end
