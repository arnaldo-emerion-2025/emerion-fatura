inherited fmManLn2: TfmManLn2
  Left = 555
  Top = 188
  Caption = 'Reimpressão de Nota Fiscal'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
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
  object Label16: TLabel
    Left = 4
    Top = 17
    Width = 87
    Height = 13
    Caption = 'Número do Pedido'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 4
    Top = 110
    Width = 51
    Height = 13
    Caption = 'Emitido Em'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 208
    Top = 110
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label28: TLabel
    Left = 4
    Top = 134
    Width = 61
    Height = 13
    Caption = 'Faturado Em'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel
    Left = 208
    Top = 134
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel
    Left = 4
    Top = 39
    Width = 41
    Height = 13
    Caption = 'Empresa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 4
    Top = 63
    Width = 33
    Height = 13
    Caption = 'Cliente'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 4
    Top = 86
    Width = 46
    Height = 13
    Caption = 'Vendedor'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object BbPsqEmp: TSpeedButton
    Left = 200
    Top = 37
    Width = 23
    Height = 21
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
    OnClick = BbPsqEmpClick
  end
  object BbPsqCli: TSpeedButton
    Left = 200
    Top = 60
    Width = 23
    Height = 21
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
    OnClick = BbPsqCliClick
  end
  object BbPsqVen: TSpeedButton
    Left = 200
    Top = 83
    Width = 23
    Height = 21
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
    OnClick = BbPsqVenClick
  end
  object Label1: TLabel
    Left = 224
    Top = 17
    Width = 55
    Height = 13
    Caption = 'Estado de :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 4
    Top = 0
    Width = 154
    Height = 13
    Caption = 'Informações para Pesquisa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 160
    Top = 6
    Width = 622
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 103
    Top = 17
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 103
    Top = 40
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 103
    Top = 63
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 103
    Top = 86
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 103
    Top = 110
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 103
    Top = 134
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 430
    Top = 17
    Width = 94
    Height = 13
    Caption = 'No. da Nota Fiscal :'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 2
    Top = 345
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
    TabOrder = 23
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 138
  end
  object dbRes: TdxDBGraphicEdit
    Left = 2
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
    TabOrder = 22
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 142
  end
  object EdPsqDteres1: TdxColorDateEdit
    Left = 112
    Top = 106
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqNumRes: TdxColorEdit
    Left = 112
    Top = 13
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnExit = EdPsqNumResExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqDteres2: TdxColorDateEdit
    Left = 223
    Top = 106
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDtfRes1: TdxColorDateEdit
    Left = 112
    Top = 130
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDtfRes2: TdxColorDateEdit
    Left = 223
    Top = 130
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqCodVen: TdxColorEdit
    Left = 112
    Top = 82
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnExit = EdPsqCodVenExit
    OnKeyDown = EdPsqCodVenKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodCli: TdxColorEdit
    Left = 112
    Top = 59
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnExit = EdPsqCodCliExit
    OnKeyDown = EdPsqCodCliKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 112
    Top = 36
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnExit = EdPsqCodEmpExit
    OnKeyDown = EdPsqCodEmpKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomVen: TdxColorEdit
    Left = 223
    Top = 82
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomCli: TdxColorEdit
    Left = 223
    Top = 59
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomEmp: TdxColorEdit
    Left = 223
    Top = 36
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bSelecionar: TBitBtn
    Left = 313
    Top = 107
    Width = 151
    Height = 45
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = bSelecionarClick
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
      FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
      FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
      FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
      FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
      CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
      CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
      CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
      CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
      990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
      990000CC9900FF999900CC99990099999900669999003399990000999900FF66
      9900CC66990099669900666699003366990000669900FF339900CC3399009933
      9900663399003333990000339900FF009900CC00990099009900660099003300
      990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
      6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
      6600669966003399660000996600FF666600CC66660099666600666666003366
      660000666600FF336600CC33660099336600663366003333660000336600FF00
      6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
      330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
      330000CC3300FF993300CC99330099993300669933003399330000993300FF66
      3300CC66330099663300666633003366330000663300FF333300CC3333009933
      3300663333003333330000333300FF003300CC00330099003300660033003300
      330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
      000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
      000000990000FF660000CC66000099660000666600000066000033660000FF33
      0000CC33000099330000663300003333000000330000CC000000990000006600
      0000330000000000DD000000BB000000AA000000880000007700000055000000
      44000000220000DD000000BB000000AA00000088000000770000005500000044
      000000220000DDDDDD0055555500777777007777770044444400222222001111
      110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
      323232000000000000000000EDEDED3232323232323232323232323232323232
      00000031313131FF5CFF5C5C000000EDEDED3232323232323232323232320000
      31313131313131FF5CFF5C5C5C5C5C0000EDEDED323232323232323232005C5C
      31313131313131FF5CFF5C5C5C5C5C5C5C00EDEDED32323232323232005C5C5C
      31313131313131FF5CFF5C5C5C5C5C5C5C5C00EDEDED3232323232005C5C5C5C
      3131310000000000000000005C5C5C5C5C5C5C00EDEDED323232005C5C5C5C5C
      000000FFFFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED323232005C5C5C0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED3232005C5C00FFFF
      FFFF00000000000000000000FFFFFFFFFF005C5C00EDEDED3232005C00FFFFFF
      00005B5B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED320000FFFFFF00
      5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED3200FFFFFF0087
      5B5B5B5B5B5B5B5B5BFFFFFF5B5B5B5B00FFFFFF00EDEDEDED3200FFFF005C5B
      875B5B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED323200FFFF005C5C
      5B8787315B5B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED323200FFFF005C5C
      5C5B31FF3187878787878787875B5C5C5C00FFFF00EDED32323200FFFFFF005C
      5C5C5C315B5B5B5B5B5B5B5B5B5CF75B00FFFFFF00ED323232323200FFFFFF00
      5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF00323232323232323200FFFFFF
      0000005C5C5C5C5C5C5C5C5C5C0000FFFFFF003232323232323232323200FFFF
      FFFFFF00000000000000000000FFFFFFFF00EDED323232323232323232320000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED3232323232323232323232
      000000FFFFFFFFFFFFFFFFFFFF00000707075D00EDED32323232323232323232
      3232320000000000000000000007FFFF0707070000EDED323232323232323232
      323232323232323232323232320007FFFF0700000000EDED3232323232323232
      323232323232323232323232323200000000F100000000EDED32323232323232
      32323232323232323232323232323200F0EDF0F100000000EDED323232323232
      3232323232323232323232323232323200F0EDF0F100000000ED323232323232
      323232323232323232323232323232323200F0EDF0F100000000323232323232
      32323232323232323232323232323232323200F0EDF0F1000000323232323232
      3232323232323232323232323232323232323200F0EDF0F10000323232323232
      323232323232323232323232323232323232323200F0EDF0F100323232323232
      3232323232323232323232323232323232323232320000000032323232323232
      3232323232323232323232323232323232323232323232323232}
  end
  object rgOrdem: TRadioGroup
    Left = 617
    Top = 8
    Width = 169
    Height = 74
    Caption = ' Exibido por '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 3
    Items.Strings = (
      'Cliente'
      'Vendedor'
      'Data de Faturamento'
      'Número da Nota Fiscal')
    ParentFont = False
    TabOrder = 13
  end
  object EdPsqUfeFat: TdxColorPickEdit
    Left = 283
    Top = 13
    Width = 53
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    HideSelection = False
    DropDownListStyle = True
    Items.Strings = (
      ''
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    CorDeFoco = clInfoBk
  end
  object grPed: ThGrid
    Tag = 1
    Left = 4
    Top = 181
    Width = 780
    Height = 136
    Selected.Strings = (
      'NUMRES'#9'10'#9'Pedido'
      'DTEFAT'#9'10'#9'Emissão'
      'NRONFS'#9'10'#9'Nota Fiscal'
      'CODCLI'#9'10'#9'Cliente'
      'CODVEN'#9'10'#9'Vendedor'
      'CODCF1'#9'17'#9'Padrão Fat.'
      'TOTFAT'#9'10'#9' Total Itens'
      'TOTIPI'#9'12'#9'        Total IPI'
      'TOTGER'#9'12'#9'      Total Pedido')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPed
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 17
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    OnKeyDown = grPedKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grPe2: ThGrid
    Tag = 1
    Left = 4
    Top = 347
    Width = 780
    Height = 132
    Selected.Strings = (
      'CODITE'#9'14'#9'Item'
      'DESPE2'#9'49'#9' '
      'QTPPE2'#9'10'#9'        Quant'
      'VLQPE2'#9'10'#9'        Unitario'
      'ICMPE2'#9'4'#9'  ICMS'
      'TOTPE2'#9'10'#9'           Total Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 18
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    OnKeyDown = grPe2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnHreFat: TPanel
    Left = 417
    Top = 322
    Width = 96
    Height = 22
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object pnNomCli: TPanel
    Left = 3
    Top = 156
    Width = 430
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Cliente :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object bImprimir: TBitBtn
    Left = 466
    Top = 107
    Width = 149
    Height = 45
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = bImprimirClick
    Glyph.Data = {
      7E0D0000424D7E0D000000000000360000002800000021000000220000000100
      180000000000480D0000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0D0D050505050505050505020202020202020202020202020202020
      2020404040404040404040404040404040404040404040404040404040202020
      202020202020202020202020202020505050505050505050C0D0D0C0CFD0C0CF
      D000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0404040404040404040404040
      404040404040404040D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D04040
      40404040404040404040404040404040404040E0D8E0E0D8E0E0D8E0505050C0
      CFD0C0CFD000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0A0A0A070787070787070787070787070787070787070
      7870A0A0A0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      505050C0CFD0C0CFD000C0CFD0C0CFD0505050C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0505050C0CFD0C0CFD000C0CFD0C0CFD0505050A0A0A0A0A0A0A0A0A0
      A0A0A00000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000A0A0A0A0
      A0A0A0A0A0A0A0A0505050C0CFD0C0CFD000C0CFD05050507078707078707078
      7070787070787040404040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      707870707870707870707870707870505050C0CFD000C0CFD0505050E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0707870C0C0C070787FC0C0C0707870E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD050505070787070
      78707078707078707F7870707870707870707870707870707870707870707870
      7F78707078707078707078707078707078707078707078707F78707078707078
      707078707078707078707078707078707F7870505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E03068FFE0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0A0A0A0E0D8E0E0D8E0E0D8E000B800E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0A0A0A0505050505050505050A0A0A0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0C0CFD05050505050505050505050505050505050505058
      50505050505050505050505050505050505050E0D8E0505850E0D8E050505050
      5050505050505050505050505050505850505050505050505050505050505050
      505050C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040505050C0
      C0C0404040E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0404040909890404040C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040
      707870C0C0C0404040F0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8
      FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FF404040C0C0C040
      4040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0404040707870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD04040407F7870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0404040C0C0C040404FFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FF404040404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040404040FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF404040C0D0D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD04048
      40FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD040404F4040404040404040404040
      4040404040404040404040404F40404040404040404040404040404040404040
      404040404F404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000}
  end
  object pnApeVen: TPanel
    Left = 435
    Top = 156
    Width = 350
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Vendedor : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
  end
  object EdPsqNroNfs: TdxColorEdit
    Left = 529
    Top = 13
    Width = 88
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnExit = EdPsqNroNfsExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object pnImpostos: TPanel
    Left = 245
    Top = 409
    Width = 297
    Height = 65
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 24
    Visible = False
    OnExit = pnImpostosExit
    object Label14: TLabel
      Left = 34
      Top = 26
      Width = 115
      Height = 14
      Caption = 'Aliquota de ICMS :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdIcmPe2: TdxDBColorCurrencyEdit
      Left = 157
      Top = 22
      Width = 108
      Hint = 'Aliquota de ICMS'
      Color = 16577773
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMPE2'
      DataSource = DsPe2
      DecimalPlaces = 0
      DisplayFormat = '####0'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object pnDadosNota: TPanel
    Left = 183
    Top = 215
    Width = 420
    Height = 100
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 25
    Visible = False
    OnExit = pnDadosNotaExit
    object Label15: TLabel
      Left = 80
      Top = 70
      Width = 51
      Height = 14
      Caption = 'C.F.O.P :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 80
      Top = 38
      Width = 22
      Height = 14
      Caption = 'UF :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 80
      Top = 10
      Width = 146
      Height = 14
      Caption = 'Documento Conferido ?'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 232
      Top = 66
      Width = 108
      Hint = 'CFOP'
      Color = 16577773
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
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCF1'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeFat: TdxDBColorEdit
      Left = 232
      Top = 34
      Width = 52
      Hint = 'CFOP'
      Color = 16577773
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
      TabOrder = 1
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEFAT'
      DataSource = DsPed
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdFlgSin: TdxDBCheckEdit
      Left = 232
      Top = 11
      Width = 17
      Color = 16644596
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clRed
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      DataField = 'FLGSIN'
      DataSource = DsPed
      ValueChecked = 'Sim'
      ValueGrayed = 'Nao'
      ValueUnchecked = 'Nao'
      NullStyle = nsInactive
      Height = 17
      StoredValues = 1
    end
  end
  object pnSitFat: TPanel
    Left = 195
    Top = 322
    Width = 220
    Height = 22
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
  end
  object rgStatus: TRadioGroup
    Left = 617
    Top = 83
    Width = 169
    Height = 69
    Caption = ' Impressão Confirmada ? '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Sim'
      'Nao'
      'Todos')
    ParentFont = False
    TabOrder = 14
  end
  object pnSitImp: TPanel
    Left = 515
    Top = 322
    Width = 270
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Impressão Confirmada (Sim/Nao) :'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 27
  end
  object FatPed: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatPed.*,'
      '           FinCli.NomCli,'
      '           FinVen.ApeVen'
      'From FatPed,FinCli,FinVen'
      'Where FatPed.CodCli = FinCli.CodCli'
      '     and FatPed.CodVen = FinVen.CodVen'
      '     and FatPed.DteFat = :DteFat'
      '     and FatPed.SitFat = '#39'Faturado'#39
      'Order by FatPed.DteFat,FatPed.NroNfs')
    UpdateObject = UpFat
    ValidateWithMask = True
    Left = 6
    Top = 394
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteFat'
        ParamType = ptInput
      end>
    object FatPedNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object FatPedDTEFAT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEFAT'
      EditMask = '!99/99/9999;1; '
    end
    object FatPedNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object FatPedCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object FatPedCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vendedor'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object FatPedCODCF1: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 17
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATPED.CODCF1'
      FixedChar = True
      Size = 15
    end
    object FatPedTOTFAT: TFloatField
      DisplayLabel = ' Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTFAT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedTOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedTOTGER: TFloatField
      DisplayLabel = '      Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 17
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATPED.CODEMP'
      Visible = False
    end
    object FatPedDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATPED.DTERES'
      Visible = False
    end
    object FatPedSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATPED.SEQLIB'
      Visible = False
    end
    object FatPedSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATPED.SEQFAT'
      Visible = False
    end
    object FatPedHREFAT: TStringField
      FieldName = 'HREFAT'
      Origin = 'ISADE.FATPED.HREFAT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedUFEFAT: TStringField
      FieldName = 'UFEFAT'
      Origin = 'ISADE.FATPED.UFEFAT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatPedFLGTMO: TStringField
      FieldName = 'FLGTMO'
      Origin = 'ISADE.FATPED.FLGTMO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Origin = 'ISADE.FATPED.CODTMO'
      Visible = False
    end
    object FatPedTIPTMO: TStringField
      FieldName = 'TIPTMO'
      Origin = 'ISADE.FATPED.TIPTMO'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FatPedDTCTMO: TDateTimeField
      FieldName = 'DTCTMO'
      Origin = 'ISADE.FATPED.DTCTMO'
      Visible = False
    end
    object FatPedVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.FATPED.VALTMO'
      Visible = False
    end
    object FatPedDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATPED.DSCREG'
      Visible = False
    end
    object FatPedPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATPED.PERPIS'
      Visible = False
    end
    object FatPedPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATPED.PERCOF'
      Visible = False
    end
    object FatPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATPED.CODFIL'
      Visible = False
    end
    object FatPedQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATPED.QTDNFS'
      Visible = False
    end
    object FatPedNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATPED.NROSUF'
      Visible = False
      FixedChar = True
    end
    object FatPedFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATPED.FLGAVI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATPED.CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATPED.INSCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATPED.CODCF2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedFRTFAT: TStringField
      FieldName = 'FRTFAT'
      Origin = 'ISADE.FATPED.FRTFAT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATPED.FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATPED.FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATPED.DESNAT'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatPedINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATPED.INSSUB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATPED.TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedMARFAT: TStringField
      FieldName = 'MARFAT'
      Origin = 'ISADE.FATPED.MARFAT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedNROFAT: TStringField
      FieldName = 'NROFAT'
      Origin = 'ISADE.FATPED.NROFAT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedESPFAT: TStringField
      FieldName = 'ESPFAT'
      Origin = 'ISADE.FATPED.ESPFAT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATPED.NOMTRA'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatPedCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATPED.CGCTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATPED.INSTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATPED.CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATPED.TENTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatPedENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATPED.ENDTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatPedREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATPED.REFTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatPedNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATPED.NUMTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatPedBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATPED.BAITRA'
      Visible = False
      FixedChar = True
    end
    object FatPedCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATPED.CIDTRA'
      Visible = False
      FixedChar = True
    end
    object FatPedUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATPED.UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatPedPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATPED.PLCTRA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatPedUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATPED.UFEPLC'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatPedCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATPED.CEPCLI'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATPED.TENCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatPedENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATPED.ENDCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatPedREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATPED.REFCLI'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatPedNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATPED.NUMCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatPedBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATPED.BAICLI'
      Visible = False
      FixedChar = True
    end
    object FatPedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATPED.CIDCLI'
      Visible = False
      FixedChar = True
    end
    object FatPedUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATPED.UFECLI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatPedINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATPED.INECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATPED.CGECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatPedTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATPED.TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatPedTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATPED.TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatPedOBSFAT: TStringField
      FieldName = 'OBSFAT'
      Origin = 'ISADE.FATPED.OBSFAT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATPED.SEQITE'
      Visible = False
    end
    object FatPedQTIFAT: TIntegerField
      FieldName = 'QTIFAT'
      Origin = 'ISADE.FATPED.QTIFAT'
      Visible = False
    end
    object FatPedLINFAT: TIntegerField
      FieldName = 'LINFAT'
      Origin = 'ISADE.FATPED.LINFAT'
      Visible = False
    end
    object FatPedQTPNOT: TIntegerField
      FieldName = 'QTPNOT'
      Origin = 'ISADE.FATPED.QTPNOT'
      Visible = False
    end
    object FatPedSTPNOT: TIntegerField
      FieldName = 'STPNOT'
      Origin = 'ISADE.FATPED.STPNOT'
      Visible = False
    end
    object FatPedQTPDUP: TIntegerField
      FieldName = 'QTPDUP'
      Origin = 'ISADE.FATPED.QTPDUP'
      Visible = False
    end
    object FatPedSTPDUP: TIntegerField
      FieldName = 'STPDUP'
      Origin = 'ISADE.FATPED.STPDUP'
      Visible = False
    end
    object FatPedQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATPED.QTDVOL'
      Visible = False
    end
    object FatPedALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Origin = 'ISADE.FATPED.ALTVOL'
      Visible = False
    end
    object FatPedINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATPED.INFLIQ'
      Visible = False
    end
    object FatPedTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATPED.TOTLIQ'
      Visible = False
    end
    object FatPedINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATPED.INFBRT'
      Visible = False
    end
    object FatPedTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATPED.TOTBRT'
      Visible = False
    end
    object FatPedBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATPED.BASIPI'
      Visible = False
    end
    object FatPedBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATPED.BASICM'
      Visible = False
    end
    object FatPedTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATPED.TOTICM'
      Visible = False
    end
    object FatPedBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATPED.BASSUB'
      Visible = False
    end
    object FatPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATPED.TOTSUB'
      Visible = False
    end
    object FatPedTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATPED.TOTPIS'
      Visible = False
    end
    object FatPedTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATPED.TOTCOF'
      Visible = False
    end
    object FatPedTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATPED.TOTFRT'
      Visible = False
    end
    object FatPedTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATPED.TOTSEG'
      Visible = False
    end
    object FatPedTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATPED.TOTDES'
      Visible = False
    end
    object FatPedICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.FATPED.ICMFRT'
      Visible = False
    end
    object FatPedBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATPED.BSICMF'
      Visible = False
    end
    object FatPedBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATPED.BAICMF'
      Visible = False
    end
    object FatPedTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATPED.TOICMF'
      Visible = False
    end
    object FatPedICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.FATPED.ICMSEG'
      Visible = False
    end
    object FatPedBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATPED.BSICMS'
      Visible = False
    end
    object FatPedBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATPED.BAICMS'
      Visible = False
    end
    object FatPedTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATPED.TOICMS'
      Visible = False
    end
    object FatPedICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.FATPED.ICMDES'
      Visible = False
    end
    object FatPedBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATPED.BSICMD'
      Visible = False
    end
    object FatPedBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATPED.BAICMD'
      Visible = False
    end
    object FatPedTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATPED.TOICMD'
      Visible = False
    end
    object FatPedIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.FATPED.IPIFRT'
      Visible = False
    end
    object FatPedBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATPED.BSIPIF'
      Visible = False
    end
    object FatPedBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATPED.BAIPIF'
      Visible = False
    end
    object FatPedTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATPED.TOIPIF'
      Visible = False
    end
    object FatPedIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.FATPED.IPISEG'
      Visible = False
    end
    object FatPedBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATPED.BSIPIS'
      Visible = False
    end
    object FatPedBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATPED.BAIPIS'
      Visible = False
    end
    object FatPedTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATPED.TOIPIS'
      Visible = False
    end
    object FatPedIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.FATPED.IPIDES'
      Visible = False
    end
    object FatPedBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATPED.BSIPID'
      Visible = False
    end
    object FatPedBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATPED.BAIPID'
      Visible = False
    end
    object FatPedTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATPED.TOIPID'
      Visible = False
    end
    object FatPedTOTDUP: TFloatField
      FieldName = 'TOTDUP'
      Origin = 'ISADE.FATPED.TOTDUP'
      Visible = False
    end
    object FatPedLANNOT: TFloatField
      FieldName = 'LANNOT'
      Origin = 'ISADE.FATPED.LANNOT'
      Visible = False
    end
    object FatPedLANDUP: TFloatField
      FieldName = 'LANDUP'
      Origin = 'ISADE.FATPED.LANDUP'
      Visible = False
    end
    object FatPedSLDNOT: TFloatField
      FieldName = 'SLDNOT'
      Origin = 'ISADE.FATPED.SLDNOT'
      Visible = False
    end
    object FatPedSLDDUP: TFloatField
      FieldName = 'SLDDUP'
      Origin = 'ISADE.FATPED.SLDDUP'
      Visible = False
    end
    object FatPedTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATPED.TOTDSR'
      Visible = False
    end
    object FatPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATPED.CODUSU'
      Visible = False
    end
    object FatPedHRCFAT: TStringField
      FieldName = 'HRCFAT'
      Origin = 'ISADE.FATPED.HRCFAT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedDTCFAT: TDateTimeField
      FieldName = 'DTCFAT'
      Origin = 'ISADE.FATPED.DTCFAT'
      Visible = False
    end
    object FatPedUSUCFT: TIntegerField
      FieldName = 'USUCFT'
      Origin = 'ISADE.FATPED.USUCFT'
      Visible = False
    end
    object FatPedOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      Origin = 'ISADE.FATPED.OBSCFT'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatPedATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATPED.ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATPED.LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATPED.INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATPED.CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATPED.FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATPED.CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatPedTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATPED.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatPedTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATPED.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATPED.REDIPI'
      Visible = False
    end
    object FatPedBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATPED.BSCIPI'
      Visible = False
    end
    object FatPedCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATPED.CODICM'
      Visible = False
      FixedChar = True
    end
    object FatPedTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATPED.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatPedTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATPED.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATPED.REDICM'
      Visible = False
    end
    object FatPedBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATPED.BSCICM'
      Visible = False
    end
    object FatPedINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATPED.INCREV'
      Visible = False
    end
    object FatPedINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATPED.INCFIN'
      Visible = False
    end
    object FatPedFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATPED.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.FATPED.DTEATU'
      Visible = False
    end
    object FatPedHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.FATPED.HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.FATPED.USUATU'
      Visible = False
    end
    object FatPedTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.FATPED.TRASDA'
      Visible = False
    end
    object FatPedDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.FATPED.DTESDA'
      Visible = False
    end
    object FatPedHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.FATPED.HRESDA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.FATPED.USUSDA'
      Visible = False
    end
    object FatPedOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.FATPED.OBSSDA'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatPedCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.FATPED.CODVEI'
      Visible = False
    end
    object FatPedDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.FATPED.DTEENT'
      Visible = False
    end
    object FatPedHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.FATPED.HREENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.FATPED.USUENT'
      Visible = False
    end
    object FatPedOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.FATPED.OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatPedDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATPED.DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatPedFLGREQ: TStringField
      FieldName = 'FLGREQ'
      Origin = 'ISADE.FATPED.FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedENVRAE: TStringField
      FieldName = 'ENVRAE'
      Origin = 'ISADE.FATPED.ENVRAE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.FATPED.FLGDIF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedSITFAT: TStringField
      FieldName = 'SITFAT'
      Origin = 'ISADE.FATPED.SITFAT'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object FatPedNROCOL: TStringField
      FieldName = 'NROCOL'
      Origin = 'ISADE.FATPED.NROCOL'
      Visible = False
      FixedChar = True
    end
    object FatPedDSCNOT: TFloatField
      FieldName = 'DSCNOT'
      Origin = 'ISADE.FATPED.DSCNOT'
      Visible = False
    end
    object FatPedSEQDES: TIntegerField
      FieldName = 'SEQDES'
      Origin = 'ISADE.FATPED.SEQDES'
      Visible = False
    end
    object FatPedQTIDES: TIntegerField
      FieldName = 'QTIDES'
      Origin = 'ISADE.FATPED.QTIDES'
      Visible = False
    end
    object FatPedFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATPED.FLGNFS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPedTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      Origin = 'ISADE.FATPED.TOTLIB'
      Visible = False
    end
    object FatPedCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATPED.CODTCL'
      Visible = False
    end
    object FatPedFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATPED.FLGENV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedFLGSER: TStringField
      FieldName = 'FLGSER'
      Origin = 'ISADE.FATPED.FLGSER'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedQTISER: TIntegerField
      FieldName = 'QTISER'
      Origin = 'ISADE.FATPED.QTISER'
      Visible = False
    end
    object FatPedSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = 'ISADE.FATPED.SEQSER'
      Visible = False
    end
    object FatPedBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATPED.BASISS'
      Visible = False
    end
    object FatPedTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATPED.TOTISS'
      Visible = False
    end
    object FatPedTOTSER: TFloatField
      FieldName = 'TOTSER'
      Origin = 'ISADE.FATPED.TOTSER'
      Visible = False
    end
    object FatPedTIPPFA: TStringField
      DisplayWidth = 7
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatPedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatPedAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
      FixedChar = True
    end
    object FatPedFLGFEC: TStringField
      DisplayWidth = 3
      FieldName = 'FLGFEC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedFLGSIN: TStringField
      DisplayWidth = 3
      FieldName = 'FLGSIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedMODPFA: TStringField
      DisplayWidth = 20
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object FatPedOB1FAT: TMemoField
      FieldName = 'OB1FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB2FAT: TMemoField
      FieldName = 'OB2FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB3FAT: TMemoField
      FieldName = 'OB3FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB4FAT: TMemoField
      FieldName = 'OB4FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB5FAT: TMemoField
      FieldName = 'OB5FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB6FAT: TMemoField
      FieldName = 'OB6FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB7FAT: TMemoField
      FieldName = 'OB7FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB8FAT: TMemoField
      FieldName = 'OB8FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedFLGIMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPedNOMENT: TStringField
      DisplayWidth = 70
      FieldName = 'NOMENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
  end
  object FatPe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPed
    SQL.Strings = (
      'Select FatPe2.CodEmp,'
      '           FatPe2.DteRes,'
      '           FatPe2.NumRes,'
      '           FatPe2.SeqLib,'
      '           FatPe2.SeqFat,'
      '           FatPe2.SeqPe2,'
      '           FatPe2.CodGru,'
      '           FatPe2.CodSub,'
      '           FatPe2.CodPro,'
      '           FatPe2.DesPe2,'
      '           FatPe2.QtpPe2,'
      '           FatPe2.VlqPe2,'
      '           FatPe2.IcmPe2,'
      '           FatPe2.TotPe2 From FatPe2'
      'Where FatPe2.CodEmp = :CodEmp'
      '     and FatPe2.DteRes = :DteRes'
      '     and FatPe2.NumRes = :NumRes'
      '     and FatPe2.SeqLib = :SeqLib'
      '     and FatPe2.SeqFat = :SeqFat'
      'Order by FatPe2.NroPe2')
    UpdateObject = UpPe2
    ValidateWithMask = True
    Left = 70
    Top = 394
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQLIB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQFAT'
        ParamType = ptInput
      end>
    object FatPe2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = FatPe2CODITEGetText
      Calculated = True
    end
    object FatPe2DESPE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 49
      FieldName = 'DESPE2'
      FixedChar = True
      Size = 70
    end
    object FatPe2QTPPE2: TFloatField
      DisplayLabel = '        Quant'
      DisplayWidth = 10
      FieldName = 'QTPPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatPe2VLQPE2: TFloatField
      DisplayLabel = '        Unitario'
      DisplayWidth = 10
      FieldName = 'VLQPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatPe2ICMPE2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 4
      FieldName = 'ICMPE2'
      DisplayFormat = '##0'
      Precision = 2
    end
    object FatPe2TOTPE2: TFloatField
      DisplayLabel = '           Total Item'
      DisplayWidth = 10
      FieldName = 'TOTPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatPe2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatPe2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatPe2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatPe2SEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatPe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FatPe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object FatPe2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
  end
  object DsPe2: TwwDataSource
    DataSet = FatPe2
    Left = 98
    Top = 394
  end
  object DsPed: TwwDataSource
    DataSet = FatPed
    OnDataChange = DsPedDataChange
    Left = 34
    Top = 394
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 6
    Top = 450
  end
  object UpFat: TUpdateSQL
    ModifySQL.Strings = (
      'update FatPed'
      'set'
      '  DTEFAT = :DTEFAT,'
      '  HREFAT = :HREFAT,'
      '  UFEFAT = :UFEFAT,'
      '  FLGTMO = :FLGTMO,'
      '  CODTMO = :CODTMO,'
      '  TIPTMO = :TIPTMO,'
      '  DTCTMO = :DTCTMO,'
      '  VALTMO = :VALTMO,'
      '  DSCREG = :DSCREG,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CODFIL = :CODFIL,'
      '  QTDNFS = :QTDNFS,'
      '  NRONFS = :NRONFS,'
      '  NROSUF = :NROSUF,'
      '  FLGAVI = :FLGAVI,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTFAT = :FRTFAT,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARFAT = :MARFAT,'
      '  NROFAT = :NROFAT,'
      '  ESPFAT = :ESPFAT,'
      '  NOMTRA = :NOMTRA,'
      '  CGCTRA = :CGCTRA,'
      '  INSTRA = :INSTRA,'
      '  CEPTRA = :CEPTRA,'
      '  TENTRA = :TENTRA,'
      '  ENDTRA = :ENDTRA,'
      '  REFTRA = :REFTRA,'
      '  NUMTRA = :NUMTRA,'
      '  BAITRA = :BAITRA,'
      '  CIDTRA = :CIDTRA,'
      '  UFETRA = :UFETRA,'
      '  PLCTRA = :PLCTRA,'
      '  UFEPLC = :UFEPLC,'
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
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSFAT = :OBSFAT,'
      '  SEQITE = :SEQITE,'
      '  QTIFAT = :QTIFAT,'
      '  LINFAT = :LINFAT,'
      '  QTPNOT = :QTPNOT,'
      '  STPNOT = :STPNOT,'
      '  QTPDUP = :QTPDUP,'
      '  STPDUP = :STPDUP,'
      '  QTDVOL = :QTDVOL,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTFAT = :TOTFAT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ICMFRT = :ICMFRT,'
      '  BSICMF = :BSICMF,'
      '  BAICMF = :BAICMF,'
      '  TOICMF = :TOICMF,'
      '  ICMSEG = :ICMSEG,'
      '  BSICMS = :BSICMS,'
      '  BAICMS = :BAICMS,'
      '  TOICMS = :TOICMS,'
      '  ICMDES = :ICMDES,'
      '  BSICMD = :BSICMD,'
      '  BAICMD = :BAICMD,'
      '  TOICMD = :TOICMD,'
      '  IPIFRT = :IPIFRT,'
      '  BSIPIF = :BSIPIF,'
      '  BAIPIF = :BAIPIF,'
      '  TOIPIF = :TOIPIF,'
      '  IPISEG = :IPISEG,'
      '  BSIPIS = :BSIPIS,'
      '  BAIPIS = :BAIPIS,'
      '  TOIPIS = :TOIPIS,'
      '  IPIDES = :IPIDES,'
      '  BSIPID = :BSIPID,'
      '  BAIPID = :BAIPID,'
      '  TOIPID = :TOIPID,'
      '  TOTGER = :TOTGER,'
      '  TOTDUP = :TOTDUP,'
      '  LANNOT = :LANNOT,'
      '  LANDUP = :LANDUP,'
      '  SLDNOT = :SLDNOT,'
      '  SLDDUP = :SLDDUP,'
      '  TOTDSR = :TOTDSR,'
      '  CODUSU = :CODUSU,'
      '  HRCFAT = :HRCFAT,'
      '  DTCFAT = :DTCFAT,'
      '  USUCFT = :USUCFT,'
      '  OBSCFT = :OBSCFT,'
      '  ATUEST = :ATUEST,'
      '  LANEST = :LANEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
      '  FLGCTB = :FLGCTB,'
      '  CODIPI = :CODIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  CODICM = :CODICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  FLGATU = :FLGATU,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  TRASDA = :TRASDA,'
      '  DTESDA = :DTESDA,'
      '  HRESDA = :HRESDA,'
      '  USUSDA = :USUSDA,'
      '  OBSSDA = :OBSSDA,'
      '  CODVEI = :CODVEI,'
      '  DTEENT = :DTEENT,'
      '  HREENT = :HREENT,'
      '  USUENT = :USUENT,'
      '  OBSENT = :OBSENT,'
      '  DESREG = :DESREG,'
      '  FLGREQ = :FLGREQ,'
      '  ENVRAE = :ENVRAE,'
      '  FLGDIF = :FLGDIF,'
      '  SITFAT = :SITFAT,'
      '  NROCOL = :NROCOL,'
      '  DSCNOT = :DSCNOT,'
      '  SEQDES = :SEQDES,'
      '  QTIDES = :QTIDES,'
      '  FLGNFS = :FLGNFS,'
      '  TOTLIB = :TOTLIB,'
      '  CODTCL = :CODTCL,'
      '  FLGENV = :FLGENV,'
      '  FLGSER = :FLGSER,'
      '  QTISER = :QTISER,'
      '  SEQSER = :SEQSER,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  TOTSER = :TOTSER,'
      '  FLGFEC = :FLGFEC,'
      '  FLGSIN = :FLGSIN,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  MODPFA = :MODPFA,'
      '  OB1FAT = :OB1FAT,'
      '  OB2FAT = :OB2FAT,'
      '  OB3FAT = :OB3FAT,'
      '  OB4FAT = :OB4FAT,'
      '  OB5FAT = :OB5FAT,'
      '  OB6FAT = :OB6FAT,'
      '  OB7FAT = :OB7FAT,'
      '  OB8FAT = :OB8FAT,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT')
    InsertSQL.Strings = (
      'insert into FatPed'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, DTEFAT, HREFAT, UFEFA' +
        'T, '
      'FLGTMO, '
      
        '   CODTMO, TIPTMO, DTCTMO, VALTMO, DSCREG, PERPIS, PERCOF, CODFI' +
        'L, '
      'QTDNFS, '
      
        '   NRONFS, NROSUF, FLGAVI, CGCCLI, INSCLI, CODCF1, CODCF2, FRTFA' +
        'T, '
      'FLGENT, '
      
        '   FLGSAI, DESNAT, INSSUB, TIPFRT, MARFAT, NROFAT, ESPFAT, NOMTR' +
        'A, '
      'CGCTRA, '
      
        '   INSTRA, CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTR' +
        'A, '
      'UFETRA, '
      
        '   PLCTRA, UFEPLC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICL' +
        'I, CIDCLI, '
      
        '   UFECLI, INECLI, CGECLI, TXFIPI, TXFICM, OBSFAT, SEQITE, QTIFA' +
        'T, LINFAT, '
      
        '   QTPNOT, STPNOT, QTPDUP, STPDUP, QTDVOL, ALTVOL, INFLIQ, TOTLI' +
        'Q, '
      'INFBRT, '
      
        '   TOTBRT, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTFA' +
        'T, '
      'TOTPIS, '
      
        '   TOTCOF, TOTFRT, TOTSEG, TOTDES, ICMFRT, BSICMF, BAICMF, TOICM' +
        'F, '
      'ICMSEG, '
      
        '   BSICMS, BAICMS, TOICMS, ICMDES, BSICMD, BAICMD, TOICMD, IPIFR' +
        'T, '
      'BSIPIF, '
      
        '   BAIPIF, TOIPIF, IPISEG, BSIPIS, BAIPIS, TOIPIS, IPIDES, BSIPI' +
        'D, BAIPID, '
      
        '   TOIPID, TOTGER, TOTDUP, LANNOT, LANDUP, SLDNOT, SLDDUP, TOTDS' +
        'R, '
      'CODUSU, '
      
        '   HRCFAT, DTCFAT, USUCFT, OBSCFT, ATUEST, LANEST, INTFIN, CONSU' +
        'M, '
      'FLGCTB, '
      
        '   CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, FLGATU, DTEATU, HREATU, USUATU, TRASD' +
        'A, '
      'DTESDA, '
      
        '   HRESDA, USUSDA, OBSSDA, CODVEI, DTEENT, HREENT, USUENT, OBSEN' +
        'T, '
      'DESREG, '
      
        '   FLGREQ, ENVRAE, FLGDIF, SITFAT, NROCOL, DSCNOT, SEQDES, QTIDE' +
        'S, '
      'FLGNFS, '
      
        '   TOTLIB, CODTCL, FLGENV, FLGSER, QTISER, SEQSER, BASISS, TOTIS' +
        'S, '
      'TOTSER, '
      
        '   FLGFEC, FLGSIN, CODCLI, CODVEN, CODPFA, TIPPFA, MODPFA, OB1FA' +
        'T, '
      'OB2FAT, '
      
        '   OB3FAT, OB4FAT, OB5FAT, OB6FAT, OB7FAT, OB8FAT, FLGIMP, NOMEN' +
        'T)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :DTEFAT, :HREFAT' +
        ', '
      ':UFEFAT, '
      
        '   :FLGTMO, :CODTMO, :TIPTMO, :DTCTMO, :VALTMO, :DSCREG, :PERPIS' +
        ', '
      ':PERCOF, '
      
        '   :CODFIL, :QTDNFS, :NRONFS, :NROSUF, :FLGAVI, :CGCCLI, :INSCLI' +
        ', :CODCF1, '
      
        '   :CODCF2, :FRTFAT, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT' +
        ', :MARFAT, '
      
        '   :NROFAT, :ESPFAT, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA' +
        ', '
      ':ENDTRA, '
      
        '   :REFTRA, :NUMTRA, :BAITRA, :CIDTRA, :UFETRA, :PLCTRA, :UFEPLC' +
        ', :CEPCLI, '
      
        '   :TENCLI, :ENDCLI, :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI' +
        ', :INECLI, '
      
        '   :CGECLI, :TXFIPI, :TXFICM, :OBSFAT, :SEQITE, :QTIFAT, :LINFAT' +
        ', :QTPNOT, '
      
        '   :STPNOT, :QTPDUP, :STPDUP, :QTDVOL, :ALTVOL, :INFLIQ, :TOTLIQ' +
        ', :INFBRT, '
      
        '   :TOTBRT, :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB' +
        ', :TOTFAT, '
      
        '   :TOTPIS, :TOTCOF, :TOTFRT, :TOTSEG, :TOTDES, :ICMFRT, :BSICMF' +
        ', :BAICMF, '
      
        '   :TOICMF, :ICMSEG, :BSICMS, :BAICMS, :TOICMS, :ICMDES, :BSICMD' +
        ', :BAICMD, '
      
        '   :TOICMD, :IPIFRT, :BSIPIF, :BAIPIF, :TOIPIF, :IPISEG, :BSIPIS' +
        ', :BAIPIS, '
      
        '   :TOIPIS, :IPIDES, :BSIPID, :BAIPID, :TOIPID, :TOTGER, :TOTDUP' +
        ', :LANNOT, '
      
        '   :LANDUP, :SLDNOT, :SLDDUP, :TOTDSR, :CODUSU, :HRCFAT, :DTCFAT' +
        ', '
      ':USUCFT, '
      
        '   :OBSCFT, :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGCTB, :CODIPI' +
        ', :TIPIPI, '
      
        '   :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM, :REDICM' +
        ', :BSCICM, '
      
        '   :INCREV, :INCFIN, :FLGATU, :DTEATU, :HREATU, :USUATU, :TRASDA' +
        ', '
      ':DTESDA, '
      
        '   :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT, :USUENT' +
        ', '
      ':OBSENT, '
      
        '   :DESREG, :FLGREQ, :ENVRAE, :FLGDIF, :SITFAT, :NROCOL, :DSCNOT' +
        ', '
      ':SEQDES, '
      
        '   :QTIDES, :FLGNFS, :TOTLIB, :CODTCL, :FLGENV, :FLGSER, :QTISER' +
        ', :SEQSER, '
      
        '   :BASISS, :TOTISS, :TOTSER, :FLGFEC, :FLGSIN, :CODCLI, :CODVEN' +
        ', :CODPFA, '
      
        '   :TIPPFA, :MODPFA, :OB1FAT, :OB2FAT, :OB3FAT, :OB4FAT, :OB5FAT' +
        ', :OB6FAT, '
      '   :OB7FAT, :OB8FAT, :FLGIMP, :NOMENT)')
    DeleteSQL.Strings = (
      'delete from FatPed'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT')
    Left = 6
    Top = 422
  end
  object UpPe2: TUpdateSQL
    ModifySQL.Strings = (
      'update FatPe2'
      'set'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DESPE2 = :DESPE2,'
      '  QTPPE2 = :QTPPE2,'
      '  VLQPE2 = :VLQPE2,'
      '  ICMPE2 = :ICMPE2,'
      '  TOTPE2 = :TOTPE2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQPE2 = :OLD_SEQPE2')
    InsertSQL.Strings = (
      'insert into FatPe2'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, SEQPE2, CODGRU, CODSU' +
        'B, CODPRO, '
      '   DESPE2, QTPPE2, VLQPE2, ICMPE2, TOTPE2)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQPE2, :CODGRU' +
        ', :CODSUB, '
      '   :CODPRO, :DESPE2, :QTPPE2, :VLQPE2, :ICMPE2, :TOTPE2)')
    DeleteSQL.Strings = (
      'delete from FatPe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQPE2 = :OLD_SEQPE2')
    Left = 34
    Top = 422
  end
end
