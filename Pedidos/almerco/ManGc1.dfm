inherited fmManGc1: TfmManGc1
  Left = 0
  Caption = 'Gerenciamento de contratos'
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
    Left = 2
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
    Left = 635
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
  object grGr21: TdxDBGraphicEdit
    Left = 0
    Top = 180
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 126
  end
  object grGr2: ThGrid
    Left = 2
    Top = 182
    Width = 780
    Height = 120
    Selected.Strings = (
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'7'#9' '
      'QTPGR2'#9'12'#9' '
      'VLUGR2'#9'12'#9' '
      'CODUND'#9'5'#9' '
      'IPIGR2'#9'5'#9' '
      'ICMGR2'#9'5'#9' '
      'MRGSUB'#9'6'#9' '
      'PACGR2'#9'8'#9' '
      'DSCGR2'#9'8'#9' '
      'VLQGR2'#9'12'#9' '
      'TOTGR2'#9'13'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsGr2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
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
    OnEnter = grGr2Enter
    OnKeyDown = grGr2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
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
    TabOrder = 1
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
      Width = 786
      Height = 482
      OnPaint = PaintBox1Paint
    end
    object Label29: TLabel
      Left = 2
      Top = 6
      Width = 114
      Height = 14
      Caption = 'Número de controle:'
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
      Left = 240
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
      Left = 240
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
      Left = 240
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
      Left = 575
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
      Left = 575
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
      Left = 575
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
    object Label33: TLabel
      Left = 748
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
      Left = 575
      Top = 102
      Width = 153
      Height = 14
      Caption = '(%) Desconto ICMS Região:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 267
      Top = 6
      Width = 138
      Height = 14
      Caption = 'Nro. do pedido/contrato:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqVen: TSpeedButton
      Left = 240
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
      Left = 240
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
      Left = 575
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
    object EdApeAtd: TdxDBColorEdit
      Left = 266
      Top = 98
      Width = 305
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
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdRenPed: TdxDBColorCurrencyEdit
      Left = 641
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
      TabOrder = 24
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsGer
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeGer: TdxDBColorEdit
      Left = 641
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEGER'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 266
      Top = 26
      Width = 305
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
      TabOrder = 4
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 266
      Top = 50
      Width = 305
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
      TabOrder = 8
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeVen: TdxDBColorEdit
      Left = 266
      Top = 74
      Width = 305
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
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 266
      Top = 122
      Width = 519
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
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdId_PedGer: TdxDBColorEdit
      Left = 136
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
      DataField = 'ID_PEDGER'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_PedGer: TPanel
      Left = 138
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
      Left = 136
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
      TabOrder = 3
      OnEnter = EdCodEmpEnter
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 136
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
      TabOrder = 7
      OnEnter = EdCodCliEnter
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodVen: TdxDBColorEdit
      Left = 136
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
      TabOrder = 12
      OnEnter = EdCodCliEnter
      OnExit = EdCodVenExit
      OnKeyDown = EdCodVenKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 136
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
      TabOrder = 20
      OnEnter = EdCodCliEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsGer
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
      TabOrder = 22
    end
    object pnApeVen: TPanel
      Left = 270
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
      TabOrder = 14
    end
    object pnNomCli: TPanel
      Left = 270
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
      TabOrder = 9
    end
    object pnApeEmp: TPanel
      Left = 270
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
      TabOrder = 5
    end
    object pnUfeGer: TPanel
      Left = 643
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
      TabOrder = 11
    end
    object EdDteGer: TdxDBColorDateEdit
      Left = 641
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      OnEnter = EdPedCliEnter
      Alignment = taCenter
      DataField = 'DTEGER'
      DataSource = DsGer
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnTotRen: TPanel
      Left = 643
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
      TabOrder = 23
    end
    object EdDscReg: TdxDBColorCurrencyEdit
      Left = 732
      Top = 98
      Width = 53
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
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPedCli: TdxDBColorEdit
      Left = 413
      Top = 2
      Width = 158
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
      TabOrder = 2
      OnEnter = EdPedCliEnter
      OnExit = EdPedCliExit
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'PEDCLI'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodAtd: TdxDBColorEdit
      Left = 136
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
      TabOrder = 16
      OnEnter = EdCodCliEnter
      OnExit = EdCodAtdExit
      OnKeyDown = EdCodAtdKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeAtd: TPanel
      Left = 270
      Top = 101
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
      TabOrder = 18
    end
    object EdComCli: TdxDBColorCurrencyEdit
      Left = 732
      Top = 74
      Width = 53
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
      TabOrder = 15
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'COMCLI'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      MaxValue = 100
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 307
    Width = 784
    Height = 142
    BevelOuter = bvNone
    TabOrder = 2
    OnExit = Panel2Exit
    object Label04: TLabel
      Left = 192
      Top = 27
      Width = 73
      Height = 14
      Caption = 'Custo Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 543
      Top = 27
      Width = 32
      Height = 14
      Caption = 'Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 543
      Top = 51
      Width = 91
      Height = 14
      Caption = 'Total dos itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 684
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
    object Label28: TLabel
      Left = 543
      Top = 75
      Width = 136
      Height = 14
      Caption = 'Total ICMS substituto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 543
      Top = 99
      Width = 109
      Height = 14
      Caption = 'Total do contrato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 684
      Top = 75
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
    object Label8: TLabel
      Left = 684
      Top = 99
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
    object Label57: TLabel
      Left = 361
      Top = 27
      Width = 118
      Height = 14
      Caption = '(%) Margem Item: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 684
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
    object Label34: TLabel
      Left = 1
      Top = 99
      Width = 277
      Height = 14
      Caption = 'Informações adicionais (Grupo, Op, Posição) :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 361
      Top = 99
      Width = 4
      Height = 14
      Caption = '.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 450
      Top = 99
      Width = 4
      Height = 14
      Caption = '.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 1
      Top = 123
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
    object Label31: TLabel
      Left = 255
      Top = 123
      Width = 111
      Height = 14
      Caption = 'Código do cliente:'
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
      Top = 27
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
    object EdTrbSub: TdxDBColorEdit
      Left = 214
      Top = 119
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
      TabOrder = 32
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'TRBSUB'
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNroGr2: TdxDBColorCurrencyEdit
      Left = 689
      Top = 23
      Width = 96
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
      DataField = 'NROGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesGr2: TdxDBColorEdit
      Left = -1
      Top = 47
      Width = 543
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
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESGR2'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdObsGr2: TdxDBColorEdit
      Left = -1
      Top = 71
      Width = 543
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
      TabOrder = 23
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSGR2'
      DataSource = DsGr2
      MaxLength = 70
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 3
    end
    object EdCodGru: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 44
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
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 42
      Top = -1
      Width = 44
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
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 85
      Top = -1
      Width = 58
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
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpGr2: TdxDBColorCurrencyEdit
      Left = 142
      Top = -1
      Width = 88
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
      OnEnter = EdQtpGr2Enter
      OnExit = EdQtpGr2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluGr2: TdxDBColorCurrencyEdit
      Left = 229
      Top = -1
      Width = 90
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
      OnEnter = EdVluGr2Enter
      OnExit = EdVluGr2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmGr2: TdxDBColorCurrencyEdit
      Left = 396
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
      OnEnter = EdVluGr2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMGR2'
      DataSource = DsGr2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscGr2: TdxDBColorCurrencyEdit
      Left = 541
      Top = -1
      Width = 62
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
      OnEnter = EdVluGr2Enter
      OnExit = EdDscGr2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCGR2'
      DataSource = DsGr2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 318
      Top = -1
      Width = 33
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqGr2: TdxDBColorCurrencyEdit
      Left = 602
      Top = -1
      Width = 88
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
      DataField = 'VLQGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGr2: TdxDBColorCurrencyEdit
      Left = 689
      Top = -1
      Width = 96
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
      DataField = 'TOTGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVcsGr2: TdxDBColorCurrencyEdit
      Left = 267
      Top = 23
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
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VCSGR2'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesGr2: TPanel
      Left = 2
      Top = 50
      Width = 536
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
    object pnObsGr2: TPanel
      Left = 2
      Top = 74
      Width = 536
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
    object pnNroGr2: TPanel
      Left = 691
      Top = 26
      Width = 88
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
    object EdTotIte: TdxDBColorCurrencyEdit
      Left = 689
      Top = 47
      Width = 96
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
      DataSource = DsGer
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIte: TPanel
      Left = 692
      Top = 51
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
      TabOrder = 26
    end
    object EdTotSub: TdxDBColorCurrencyEdit
      Left = 689
      Top = 71
      Width = 96
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
      DataSource = DsGer
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSub: TPanel
      Left = 692
      Top = 75
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
      TabOrder = 28
    end
    object EdTotGer: TdxDBColorCurrencyEdit
      Left = 689
      Top = 95
      Width = 96
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
      DataField = 'TOTGER'
      DataSource = DsGer
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotGer: TPanel
      Left = 692
      Top = 99
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
      TabOrder = 30
    end
    object pnVcsGr2: TPanel
      Left = 270
      Top = 26
      Width = 83
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
      TabOrder = 14
    end
    object EdPacGr2: TdxDBColorCurrencyEdit
      Left = 481
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 9
      OnEnter = EdVluGr2Enter
      OnExit = EdPacGr2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACGR2'
      DataSource = DsGr2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotRen: TdxDBColorCurrencyEdit
      Left = 481
      Top = 23
      Width = 61
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
      TabOrder = 15
      OnEnter = EdVluGr2Enter
      OnExit = EdTotRenExit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsGr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiGr2: TdxDBColorCurrencyEdit
      Left = 350
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
      TabOrder = 6
      OnEnter = EdVluGr2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIGR2'
      DataSource = DsGr2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCl1Gr2: TdxDBColorEdit
      Left = 281
      Top = 95
      Width = 77
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
      TabOrder = 18
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CL1GR2'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCl2Gr2: TdxDBColorEdit
      Left = 367
      Top = 95
      Width = 81
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
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CL2GR2'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCl3Gr2: TdxDBColorEdit
      Left = 456
      Top = 95
      Width = 86
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
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CL3GR2'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdMrgSub: TdxDBColorCurrencyEdit
      Left = 435
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'MRGSUB'
      DataSource = DsGr2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTrbSub: TPanel
      Left = 216
      Top = 122
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
      TabOrder = 31
    end
    object EdCodICl: TdxDBColorEdit
      Left = 367
      Top = 119
      Width = 175
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
      TabOrder = 33
      OnEnter = EdVluGr2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICL'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdRefCt2: TdxDBColorEdit
      Left = 71
      Top = 23
      Width = 119
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
      TabOrder = 34
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'REFGR2'
      DataSource = DsGr2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnRefGr2: TPanel
      Left = 74
      Top = 26
      Width = 112
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
      TabOrder = 35
    end
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
    TabOrder = 6
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
      Left = 153
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
      Left = 325
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
      Left = 553
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
    object Label58: TLabel
      Left = 438
      Top = 6
      Width = 36
      Height = 14
      Alignment = taRightJustify
      Caption = '%IVA'
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
  object pnEstoque: TPanel
    Left = 144
    Top = 108
    Width = 320
    Height = 193
    TabOrder = 5
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
        object Label6: TLabel
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
        object Label26: TLabel
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
  object DsGer: TwwDataSource
    DataSet = PedGer
    Left = 31
    Top = 189
  end
  object DsGr2: TwwDataSource
    DataSet = PedGr2
    OnDataChange = DsGr2DataChange
    Left = 31
    Top = 217
  end
  object UpGer: TUpdateSQL
    ModifySQL.Strings = (
      'update PedGer'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTEGER = :DTEGER,'
      '  HREGER = :HREGER,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODATD = :CODATD,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  PEDCLI = :PEDCLI,'
      '  UFEGER = :UFEGER,'
      '  DSCREG = :DSCREG,'
      '  COMCLI = :COMCLI,'
      '  CODUSU = :CODUSU,'
      '  CODFIL = :CODFIL,'
      '  CODTCL = :CODTCL,'
      '  OB1GER = :OB1GER,'
      '  OB2GER = :OB2GER,'
      '  OB3GER = :OB3GER,'
      '  OB4GER = :OB4GER,'
      '  OB5GER = :OB5GER,'
      '  OB6GER = :OB6GER,'
      '  OB7GER = :OB7GER,'
      '  OB8GER = :OB8GER,'
      '  PRCCTA = :PRCCTA,'
      '  SEQGER = :SEQGER,'
      '  SITGER = :SITGER,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_PEDGER = :OLD_ID_PEDGER')
    InsertSQL.Strings = (
      'insert into PedGer'
      
        '  (ID_PEDGER, CODEMP, DTEGER, HREGER, CODCLI, CODVEN, CODATD, CO' +
        'DPFA, TIPPFA, '
      
        '   PEDCLI, UFEGER, QTIGR2, QTIGR4, BASIPI, TOTIPI, BASICM, TOTIC' +
        'M, BASSUB, '
      
        '   TOTSUB, TOTCST, TOTVEN, TOTITE, TOTREN, TOTGER, DSCREG, MEDDS' +
        'C, MEDACR, '
      
        '   TOTDSC, TOTDSR, TOTACR, COMCLI, TOTCLI, CODUSU, CODFIL, CODTC' +
        'L, LANEST, '
      
        '   FLGTAB, FLGCTB, CONSUM, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, CODICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, OB1GER, OB2GE' +
        'R, OB3GER, '
      
        '   OB4GER, OB5GER, OB6GER, OB7GER, OB8GER, DTEDEL, HREDEL, OB1DE' +
        'L, OB2DEL, '
      
        '   OB3DEL, USUDEL, CODCFO, ID_PEDCTA, PRCCTA, SEQGER, SITGER, TR' +
        'BPIS, TRBCOF, '
      '   PERPIS, TOTPIS, PERCOF, TOTCOF, FLGATU)'
      'values'
      
        '  (:ID_PEDGER, :CODEMP, :DTEGER, :HREGER, :CODCLI, :CODVEN, :COD' +
        'ATD, :CODPFA, '
      
        '   :TIPPFA, :PEDCLI, :UFEGER, :QTIGR2, :QTIGR4, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTCST, :TOTVEN, :TOTITE, :TOTREN' +
        ', :TOTGER, '
      
        '   :DSCREG, :MEDDSC, :MEDACR, :TOTDSC, :TOTDSR, :TOTACR, :COMCLI' +
        ', :TOTCLI, '
      
        '   :CODUSU, :CODFIL, :CODTCL, :LANEST, :FLGTAB, :FLGCTB, :CONSUM' +
        ', :CODIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :OB1GER, :OB2GER, :OB3GER, :OB4GER' +
        ', :OB5GER, '
      
        '   :OB6GER, :OB7GER, :OB8GER, :DTEDEL, :HREDEL, :OB1DEL, :OB2DEL' +
        ', :OB3DEL, '
      
        '   :USUDEL, :CODCFO, :ID_PEDCTA, :PRCCTA, :SEQGER, :SITGER, :TRB' +
        'PIS, :TRBCOF, '
      '   :PERPIS, :TOTPIS, :PERCOF, :TOTCOF, :FLGATU)')
    DeleteSQL.Strings = (
      'delete from PedGer'
      'where'
      '  ID_PEDGER = :OLD_ID_PEDGER')
    Left = 3
    Top = 245
  end
  object UpGr2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedGr2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESGR2 = :DESGR2,'
      '  OBSGR2 = :OBSGR2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  TABPRC = :TABPRC,'
      '  QTPGR2 = :QTPGR2,'
      '  VLUGR2 = :VLUGR2,'
      '  VLQGR2 = :VLQGR2,'
      '  CSTGR2 = :CSTGR2,'
      '  VCHGR2 = :VCHGR2,'
      '  VREGR2 = :VREGR2,'
      '  VCPGR2 = :VCPGR2,'
      '  VPRGR2 = :VPRGR2,'
      '  VCRGR2 = :VCRGR2,'
      '  VMEGR2 = :VMEGR2,'
      '  VPFGR2 = :VPFGR2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VCRCST = :VCRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  VCSGR2 = :VCSGR2,'
      '  CSTLAN = :CSTLAN,'
      '  TIPDSC = :TIPDSC,'
      '  DSCGR2 = :DSCGR2,'
      '  VDSGR2 = :VDSGR2,'
      '  TIPACR = :TIPACR,'
      '  PACGR2 = :PACGR2,'
      '  VACGR2 = :VACGR2,'
      '  DSRGR2 = :DSRGR2,'
      '  VDRGR2 = :VDRGR2,'
      '  IPIGR2 = :IPIGR2,'
      '  CLSIPI = :CLSIPI,'
      '  ICMGR2 = :ICMGR2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
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
      '  FLGRES = :FLGRES,'
      '  FLGDUP = :FLGDUP,'
      '  TRBSUB = :TRBSUB,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CL1GR2 = :CL1GR2,'
      '  CL2GR2 = :CL2GR2,'
      '  CL3GR2 = :CL3GR2,'
      '  FLGREN = :FLGREN,'
      '  FLGATU = :FLGATU,'
      '  CODICL = :CODICL,'
      '  REFGR2 = :REFGR2'
      'where'
      '  ID_PEDGR2 = :OLD_ID_PEDGR2')
    InsertSQL.Strings = (
      'insert into PedGr2'
      
        '  (ID_PEDGR2, ID_PEDGER, CODEIT, CODCLP, CODGRU, CODSUB, CODPRO,' +
        ' '
      'CODTAM, '
      
        '   CODCOR, DESGR2, OBSGR2, CODST1, CODST2, CODUND, TABPRC, QTIGR' +
        '3, '
      'QTIGR4, '
      
        '   QTPGR2, QTSGR2, QTLGR2, SLDGR2, VLUGR2, VLQGR2, CSTGR2, VCHGR' +
        '2, '
      'VREGR2, '
      
        '   VCPGR2, VPRGR2, VCRGR2, VMEGR2, VPFGR2, CSTCST, VCHCST, VRECS' +
        'T, '
      'VCPCST, '
      
        '   VPRCST, VCRCST, VMECST, VPFCST, VCSGR2, CSTLAN, TIPDSC, DSCGR' +
        '2, '
      'VDSGR2, '
      
        '   TIPACR, PACGR2, VACGR2, DSRGR2, VDRGR2, IPIGR2, CLSIPI, ICMGR' +
        '2, '
      'TOTVEN, '
      
        '   TOTCST, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTGR' +
        '2, '
      'TOTGE2, '
      
        '   TOTREN, TOTDSC, TOTDSR, TOTACR, COMCLI, VALCLI, TOTCLI, CODST' +
        'R, '
      'TIPSTR, '
      
        '   REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, FLGRES, FLGDUP, CODCFO, TRBSUB, ICMSU' +
        'B, '
      'MRGSUB, '
      
        '   BASESB, ID_PEDICL, ID_PEDCT2, CL1GR2, CL2GR2, CL3GR2, FLGREN,' +
        ' '
      'FLGATU, '
      '   NROGR2, TOTPIS, TOTCOF, CODICL, REFGR2)'
      'values'
      '  (:ID_PEDGR2, :ID_PEDGER, :CODEIT, :CODCLP, :CODGRU, :CODSUB, '
      ':CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESGR2, :OBSGR2, :CODST1, :CODST2, :CODUND' +
        ', '
      ':TABPRC, '
      
        '   :QTIGR3, :QTIGR4, :QTPGR2, :QTSGR2, :QTLGR2, :SLDGR2, :VLUGR2' +
        ', '
      ':VLQGR2, '
      
        '   :CSTGR2, :VCHGR2, :VREGR2, :VCPGR2, :VPRGR2, :VCRGR2, :VMEGR2' +
        ', '
      ':VPFGR2, '
      
        '   :CSTCST, :VCHCST, :VRECST, :VCPCST, :VPRCST, :VCRCST, :VMECST' +
        ', '
      ':VPFCST, '
      
        '   :VCSGR2, :CSTLAN, :TIPDSC, :DSCGR2, :VDSGR2, :TIPACR, :PACGR2' +
        ', '
      ':VACGR2, '
      
        '   :DSRGR2, :VDRGR2, :IPIGR2, :CLSIPI, :ICMGR2, :TOTVEN, :TOTCST' +
        ', :BASIPI, '
      
        '   :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTGR2, :TOTGE2' +
        ', '
      ':TOTREN, '
      
        '   :TOTDSC, :TOTDSR, :TOTACR, :COMCLI, :VALCLI, :TOTCLI, :CODSTR' +
        ', :TIPSTR, '
      
        '   :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM, :TIPICM' +
        ', :TRBICM, '
      
        '   :REDICM, :BSCICM, :INCREV, :INCFIN, :FLGRES, :FLGDUP, :CODCFO' +
        ', :TRBSUB, '
      
        '   :ICMSUB, :MRGSUB, :BASESB, :ID_PEDICL, :ID_PEDCT2, :CL1GR2, :' +
        'CL2GR2, '
      
        '   :CL3GR2, :FLGREN, :FLGATU, :NROGR2, :TOTPIS, :TOTCOF, :CODICL' +
        ', '
      ':REFGR2)')
    DeleteSQL.Strings = (
      'delete from PedGr2'
      'where'
      '  ID_PEDGR2 = :OLD_ID_PEDGR2')
    Left = 31
    Top = 245
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 3
    Top = 273
  end
  object PedGer: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedGerNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedGer.*,           '
      '           FinCli.CliTab,'
      '           FinCli.NomCli,'
      '           FinVen.ApeVen'
      'From PedGer LEFT JOIN FinCli ON (PedGer.CodCli = FinCli.CodCli)'
      
        '                     LEFT JOIN FinVen ON (PedGer.CodVen = FinVen' +
        '.CodVen)'
      'Where PedGer.Id_PedGer = :Id_PedGer')
    UpdateObject = UpGer
    ValidateWithMask = True
    Left = 3
    Top = 189
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedGer'
        ParamType = ptInput
      end>
    object PedGerID_PEDGER: TIntegerField
      FieldName = 'ID_PEDGER'
    end
    object PedGerCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedGerDTEGER: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEGER'
      EditMask = '!99/99/9999;1;_'
    end
    object PedGerHREGER: TStringField
      FieldName = 'HREGER'
      FixedChar = True
      Size = 8
    end
    object PedGerCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedGerCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedGerCODPFA: TStringField
      FieldName = 'CODPFA'
      Size = 15
    end
    object PedGerTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Size = 7
    end
    object PedGerPEDCLI: TStringField
      FieldName = 'PEDCLI'
    end
    object PedGerUFEGER: TStringField
      FieldName = 'UFEGER'
      FixedChar = True
      Size = 2
    end
    object PedGerBASIPI: TFloatField
      FieldName = 'BASIPI'
    end
    object PedGerTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object PedGerBASICM: TFloatField
      FieldName = 'BASICM'
    end
    object PedGerTOTICM: TFloatField
      FieldName = 'TOTICM'
    end
    object PedGerBASSUB: TFloatField
      FieldName = 'BASSUB'
    end
    object PedGerTOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object PedGerTOTCST: TFloatField
      FieldName = 'TOTCST'
    end
    object PedGerTOTVEN: TFloatField
      FieldName = 'TOTVEN'
    end
    object PedGerTOTITE: TFloatField
      FieldName = 'TOTITE'
    end
    object PedGerTOTREN: TFloatField
      FieldName = 'TOTREN'
    end
    object PedGerTOTGER: TFloatField
      FieldName = 'TOTGER'
    end
    object PedGerDSCREG: TFloatField
      FieldName = 'DSCREG'
    end
    object PedGerMEDDSC: TFloatField
      FieldName = 'MEDDSC'
    end
    object PedGerMEDACR: TFloatField
      FieldName = 'MEDACR'
    end
    object PedGerTOTDSC: TFloatField
      FieldName = 'TOTDSC'
    end
    object PedGerTOTDSR: TFloatField
      FieldName = 'TOTDSR'
    end
    object PedGerTOTACR: TFloatField
      FieldName = 'TOTACR'
    end
    object PedGerCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object PedGerCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object PedGerCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object PedGerLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object PedGerFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Size = 25
    end
    object PedGerFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedGerCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedGerCODIPI: TStringField
      FieldName = 'CODIPI'
      Size = 30
    end
    object PedGerTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Size = 7
    end
    object PedGerTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedGerREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object PedGerBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object PedGerCODICM: TStringField
      FieldName = 'CODICM'
    end
    object PedGerTIPICM: TStringField
      FieldName = 'TIPICM'
      Size = 7
    end
    object PedGerTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedGerREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object PedGerBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object PedGerINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object PedGerINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object PedGerDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
    end
    object PedGerHREDEL: TStringField
      FieldName = 'HREDEL'
      FixedChar = True
      Size = 8
    end
    object PedGerUSUDEL: TIntegerField
      FieldName = 'USUDEL'
    end
    object PedGerCODCFO: TStringField
      FieldName = 'CODCFO'
      Size = 15
    end
    object PedGerSEQGER: TStringField
      FieldName = 'SEQGER'
      FixedChar = True
      Size = 22
    end
    object PedGerSITGER: TStringField
      FieldName = 'SITGER'
      Size = 45
    end
    object PedGerCLITAB: TStringField
      FieldName = 'CLITAB'
      Size = 23
    end
    object PedGerNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 70
    end
    object PedGerAPEVEN: TStringField
      FieldName = 'APEVEN'
    end
    object PedGerOB1GER: TStringField
      FieldName = 'OB1GER'
      Size = 80
    end
    object PedGerOB2GER: TStringField
      FieldName = 'OB2GER'
      Size = 80
    end
    object PedGerOB3GER: TStringField
      FieldName = 'OB3GER'
      Size = 80
    end
    object PedGerOB4GER: TStringField
      FieldName = 'OB4GER'
      Size = 80
    end
    object PedGerOB5GER: TStringField
      FieldName = 'OB5GER'
      Size = 80
    end
    object PedGerOB6GER: TStringField
      FieldName = 'OB6GER'
      Size = 80
    end
    object PedGerOB7GER: TStringField
      FieldName = 'OB7GER'
      Size = 80
    end
    object PedGerOB8GER: TStringField
      FieldName = 'OB8GER'
      Size = 80
    end
    object PedGerOB1DEL: TStringField
      FieldName = 'OB1DEL'
      Size = 80
    end
    object PedGerOB2DEL: TStringField
      FieldName = 'OB2DEL'
      Size = 80
    end
    object PedGerOB3DEL: TStringField
      FieldName = 'OB3DEL'
      Size = 80
    end
    object PedGerQTIGR2: TIntegerField
      FieldName = 'QTIGR2'
    end
    object PedGerCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedGerQTIGR4: TIntegerField
      FieldName = 'QTIGR4'
    end
    object PedGerCOMCLI: TFloatField
      FieldName = 'COMCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedGerTOTCLI: TFloatField
      FieldName = 'TOTCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedGerID_PEDCTA: TIntegerField
      FieldName = 'ID_PEDCTA'
    end
    object PedGerPRCCTA: TStringField
      FieldName = 'PRCCTA'
      FixedChar = True
      Size = 3
    end
    object PedGerTRBPIS: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object PedGerTRBCOF: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object PedGerPERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object PedGerTOTPIS: TFloatField
      FieldName = 'TOTPIS'
    end
    object PedGerPERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object PedGerTOTCOF: TFloatField
      FieldName = 'TOTCOF'
    end
    object PedGerFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
  end
  object PedGr2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedGr2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsGer
    SQL.Strings = (
      'Select * From PedGr2'
      'Where PedGr2.Id_PedGer = :Id_PedGer'
      'Order by PedGr2.NroGr2')
    UpdateObject = UpGr2
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 3
    Top = 217
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDGER'
        ParamType = ptInput
      end>
    object PedGr2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDRE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedGr2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDRE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedGr2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDRE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedGr2QTPGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTPGR2'
      Origin = 'ISADE.PEDGR2.QTPGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VLUGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLUGR2'
      Origin = 'ISADE.PEDGR2.VLUGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDRE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedGr2IPIGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'IPIGR2'
      Origin = 'ISADE.PEDGR2.IPIGR2'
      DisplayFormat = '##0'
    end
    object PedGr2ICMGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMGR2'
      Origin = 'ISADE.PEDGR2.ICMGR2'
      DisplayFormat = '##0'
      Precision = 4
    end
    object PedGr2MRGSUB: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'MRGSUB'
      Origin = 'ISADE.PEDGR2.MRGSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedGr2PACGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'PACGR2'
      Origin = 'ISADE.PEDGR2.PACGR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedGr2DSCGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'DSCGR2'
      Origin = 'ISADE.PEDGR2.DSCGR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2VLQGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLQGR2'
      Origin = 'ISADE.PEDGR2.VLQGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2TOTGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTGR2'
      Origin = 'ISADE.PEDGR2.TOTGR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTREN: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDGR2.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedGr2ID_PEDGR2: TIntegerField
      FieldName = 'ID_PEDGR2'
      Origin = 'ISADE.PEDGR2.ID_PEDGR2'
      Visible = False
    end
    object PedGr2ID_PEDGER: TIntegerField
      FieldName = 'ID_PEDGER'
      Origin = 'ISADE.PEDGR2.ID_PEDGER'
      Visible = False
    end
    object PedGr2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.PEDGR2.CODEIT'
      Visible = False
    end
    object PedGr2CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.PEDGR2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedGr2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.PEDGR2.CODTAM'
      Visible = False
      Size = 10
    end
    object PedGr2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDGR2.CODCOR'
      Visible = False
      Size = 10
    end
    object PedGr2DESGR2: TStringField
      FieldName = 'DESGR2'
      Origin = 'ISADE.PEDGR2.DESGR2'
      Visible = False
      Size = 70
    end
    object PedGr2OBSGR2: TStringField
      FieldName = 'OBSGR2'
      Origin = 'ISADE.PEDGR2.OBSGR2'
      Visible = False
      Size = 100
    end
    object PedGr2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.PEDGR2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedGr2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.PEDGR2.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedGr2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Origin = 'ISADE.PEDGR2.TABPRC'
      Visible = False
    end
    object PedGr2QTIGR3: TIntegerField
      FieldName = 'QTIGR3'
      Origin = 'ISADE.PEDGR2.QTIGR3'
      Visible = False
    end
    object PedGr2QTSGR2: TFloatField
      FieldName = 'QTSGR2'
      Origin = 'ISADE.PEDGR2.QTSGR2'
      Visible = False
    end
    object PedGr2QTLGR2: TFloatField
      FieldName = 'QTLGR2'
      Origin = 'ISADE.PEDGR2.QTLGR2'
      Visible = False
    end
    object PedGr2SLDGR2: TFloatField
      FieldName = 'SLDGR2'
      Origin = 'ISADE.PEDGR2.SLDGR2'
      Visible = False
    end
    object PedGr2VCHGR2: TFloatField
      FieldName = 'VCHGR2'
      Origin = 'ISADE.PEDGR2.VCHGR2'
      Visible = False
    end
    object PedGr2VREGR2: TFloatField
      FieldName = 'VREGR2'
      Origin = 'ISADE.PEDGR2.VREGR2'
      Visible = False
    end
    object PedGr2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.PEDGR2.VCHCST'
      Visible = False
    end
    object PedGr2VRECST: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.PEDGR2.VRECST'
      Visible = False
    end
    object PedGr2VCSGR2: TFloatField
      FieldName = 'VCSGR2'
      Origin = 'ISADE.PEDGR2.VCSGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedGr2VDSGR2: TFloatField
      FieldName = 'VDSGR2'
      Origin = 'ISADE.PEDGR2.VDSGR2'
      Visible = False
    end
    object PedGr2DSRGR2: TFloatField
      FieldName = 'DSRGR2'
      Origin = 'ISADE.PEDGR2.DSRGR2'
      Visible = False
    end
    object PedGr2VDRGR2: TFloatField
      FieldName = 'VDRGR2'
      Origin = 'ISADE.PEDGR2.VDRGR2'
      Visible = False
    end
    object PedGr2VACGR2: TFloatField
      FieldName = 'VACGR2'
      Origin = 'ISADE.PEDGR2.VACGR2'
      Visible = False
    end
    object PedGr2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDGR2.CLSIPI'
      Visible = False
      Size = 30
    end
    object PedGr2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDGR2.TOTVEN'
      Visible = False
    end
    object PedGr2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDGR2.TOTCST'
      Visible = False
    end
    object PedGr2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDGR2.BASIPI'
      Visible = False
    end
    object PedGr2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDGR2.TOTIPI'
      Visible = False
    end
    object PedGr2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDGR2.BASICM'
      Visible = False
    end
    object PedGr2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDGR2.TOTICM'
      Visible = False
    end
    object PedGr2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDGR2.BASSUB'
      Visible = False
    end
    object PedGr2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDGR2.TOTSUB'
      Visible = False
    end
    object PedGr2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDGR2.TOTGE2'
      Visible = False
    end
    object PedGr2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDGR2.TOTDSC'
      Visible = False
    end
    object PedGr2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDGR2.TOTDSR'
      Visible = False
    end
    object PedGr2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDGR2.TOTACR'
      Visible = False
    end
    object PedGr2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDGR2.CODSTR'
      Visible = False
    end
    object PedGr2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDGR2.TIPSTR'
      Visible = False
      Size = 7
    end
    object PedGr2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDGR2.REGIPI'
      Visible = False
      Size = 30
    end
    object PedGr2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDGR2.TIPIPI'
      Visible = False
      Size = 7
    end
    object PedGr2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDGR2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDGR2.REDIPI'
      Visible = False
    end
    object PedGr2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDGR2.BSCIPI'
      Visible = False
    end
    object PedGr2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDGR2.REGICM'
      Visible = False
    end
    object PedGr2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDGR2.TIPICM'
      Visible = False
      Size = 7
    end
    object PedGr2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDGR2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDGR2.REDICM'
      Visible = False
    end
    object PedGr2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDGR2.BSCICM'
      Visible = False
    end
    object PedGr2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDGR2.INCREV'
      Visible = False
    end
    object PedGr2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDGR2.INCFIN'
      Visible = False
    end
    object PedGr2FLGRES: TStringField
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDGR2.FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDGR2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2CODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDGR2.CODCFO'
      Visible = False
      Size = 10
    end
    object PedGr2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.PEDGR2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.PEDGR2.ICMSUB'
      Visible = False
    end
    object PedGr2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.PEDGR2.BASESB'
      Visible = False
    end
    object PedGr2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDGR2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedGr2NROGR2: TIntegerField
      FieldName = 'NROGR2'
      Origin = 'ISADE.PEDGR2.NROGR2'
      Visible = False
    end
    object PedGr2TIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.PEDGR2.TIPDSC'
      Visible = False
      Size = 10
    end
    object PedGr2TIPACR: TStringField
      FieldName = 'TIPACR'
      Origin = 'ISADE.PEDGR2.TIPACR'
      Visible = False
      Size = 10
    end
    object PedGr2QTIGR4: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTIGR4'
      Origin = 'ISADE.PEDGR2.QTIGR4'
      Visible = False
    end
    object PedGr2ID_PEDICL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDICL'
      Origin = 'ISADE.PEDGR2.ID_PEDICL'
      Visible = False
    end
    object PedGr2FLGREN: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREN'
      Origin = 'ISADE.PEDGR2.FLGREN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2CSTLAN: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTLAN'
      Origin = 'ISADE.PEDGR2.CSTLAN'
      Visible = False
    end
    object PedGr2CL1GR2: TStringField
      DisplayWidth = 10
      FieldName = 'CL1GR2'
      Origin = 'ISADE.PEDGR2.CL1GR2'
      Visible = False
      Size = 10
    end
    object PedGr2CL2GR2: TStringField
      DisplayWidth = 10
      FieldName = 'CL2GR2'
      Origin = 'ISADE.PEDGR2.CL2GR2'
      Visible = False
      Size = 10
    end
    object PedGr2CL3GR2: TStringField
      DisplayWidth = 10
      FieldName = 'CL3GR2'
      Origin = 'ISADE.PEDGR2.CL3GR2'
      Visible = False
      Size = 10
    end
    object PedGr2COMCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'COMCLI'
      Origin = 'ISADE.PEDGR2.COMCLI'
      Visible = False
    end
    object PedGr2VALCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALCLI'
      Origin = 'ISADE.PEDGR2.VALCLI'
      Visible = False
    end
    object PedGr2TOTCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCLI'
      Origin = 'ISADE.PEDGR2.TOTCLI'
      Visible = False
    end
    object PedGr2CSTGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTGR2'
      Origin = 'ISADE.PEDGR2.CSTGR2'
      Visible = False
    end
    object PedGr2VCPGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPGR2'
      Origin = 'ISADE.PEDGR2.VCPGR2'
      Visible = False
    end
    object PedGr2VPRGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRGR2'
      Origin = 'ISADE.PEDGR2.VPRGR2'
      Visible = False
    end
    object PedGr2VCRGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRGR2'
      Origin = 'ISADE.PEDGR2.VCRGR2'
      Visible = False
    end
    object PedGr2VMEGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'VMEGR2'
      Origin = 'ISADE.PEDGR2.VMEGR2'
      Visible = False
    end
    object PedGr2VPFGR2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFGR2'
      Origin = 'ISADE.PEDGR2.VPFGR2'
      Visible = False
    end
    object PedGr2CSTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCST'
      Origin = 'ISADE.PEDGR2.CSTCST'
      Visible = False
    end
    object PedGr2VCPCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPCST'
      Origin = 'ISADE.PEDGR2.VCPCST'
      Visible = False
    end
    object PedGr2VPRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRCST'
      Origin = 'ISADE.PEDGR2.VPRCST'
      Visible = False
    end
    object PedGr2VCRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCST'
      Origin = 'ISADE.PEDGR2.VCRCST'
      Visible = False
    end
    object PedGr2VMECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VMECST'
      Origin = 'ISADE.PEDGR2.VMECST'
      Visible = False
    end
    object PedGr2VPFCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFCST'
      Origin = 'ISADE.PEDGR2.VPFCST'
      Visible = False
    end
    object PedGr2ID_PEDCT2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDCT2'
      Origin = 'ISADE.PEDGR2.ID_PEDCT2'
      Visible = False
    end
    object PedGr2TOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDGR2.TOTPIS'
      Visible = False
    end
    object PedGr2TOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDGR2.TOTCOF'
      Visible = False
    end
    object PedGr2CODICL: TStringField
      DisplayWidth = 30
      FieldName = 'CODICL'
      Origin = 'ISADE.PEDGR2.CODICL'
      Visible = False
      Size = 30
    end
    object PedGr2REFGR2: TStringField
      FieldName = 'REFGR2'
      Origin = 'ISADE.PEDGR2.ID_PEDGR2'
      Visible = False
    end
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.ExiRen,'
      '           PedPar.TipAtd,'
      '           PedPar.UsaDec,'
      '           PedPar.FlgDup,'
      '           PedPar.FlgCot'
      'From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 31
    Top = 273
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
    object PedParFLGCOT: TStringField
      FieldName = 'FLGCOT'
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
