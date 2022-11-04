inherited fmManCen: TfmManCen
  Left = 0
  Caption = 'Cancelamento de Entrada'
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
    OnPaint = PaintBoxPaint
  end
  object Label16: TLabel
    Left = 4
    Top = 17
    Width = 93
    Height = 13
    Caption = 'Número da Entrada'
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
    Top = 109
    Width = 68
    Height = 13
    Caption = 'Recebido Em :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 254
    Top = 109
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
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
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
  object Label21: TLabel
    Left = 4
    Top = 86
    Width = 99
    Height = 13
    Caption = 'Padrão Faturamento'
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
    Left = 246
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
  object BbPsqFor: TSpeedButton
    Left = 246
    Top = 60
    Width = 23
    Height = 21
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
    OnClick = BbPsqForClick
  end
  object BbPsqPfa: TSpeedButton
    Left = 246
    Top = 83
    Width = 23
    Height = 21
    Hint = 'Pesquisar Padrões de Faturamentos Existentes'
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
    OnClick = BbPsqPfaClick
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
    Width = 623
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 4
    Top = 152
    Width = 127
    Height = 13
    Caption = 'Entradas Selecionadas'
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
  object Bevel2: TBevel
    Left = 160
    Top = 159
    Width = 623
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 313
    Width = 94
    Height = 13
    Caption = 'Itens da Entrada'
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
  object Bevel3: TBevel
    Left = 160
    Top = 319
    Width = 37
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 150
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
    Left = 150
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
    Left = 150
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
  object Label8: TLabel
    Left = 150
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
    Left = 150
    Top = 109
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
    Left = 4
    Top = 132
    Width = 95
    Height = 13
    Caption = 'Data do Documento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 150
    Top = 132
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
  object Label14: TLabel
    Left = 254
    Top = 132
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
  object Label1: TLabel
    Left = 271
    Top = 17
    Width = 97
    Height = 13
    Caption = 'Número do Pedido  :'
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
  object Label15: TLabel
    Left = 464
    Top = 17
    Width = 42
    Height = 13
    Caption = 'Doc/NF :'
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
  object dbRe2: TdxDBGraphicEdit
    Left = 0
    Top = 331
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
    TabOrder = 20
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 151
  end
  object dbRes: TdxDBGraphicEdit
    Left = 0
    Top = 165
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
    TabOrder = 19
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 145
  end
  object EdPsqDteEnt1: TdxColorDateEdit
    Left = 158
    Top = 105
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
  object EdPsqNumEnt: TdxColorEdit
    Left = 158
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
    OnExit = EdPsqNumEntExit
    OnKeyPress = EdPsqNumEntKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqDteEnt2: TdxColorDateEdit
    Left = 269
    Top = 105
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
  object EdPsqCodPfa: TdxColorEdit
    Left = 158
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
    OnExit = EdPsqCodPfaExit
    OnKeyDown = EdPsqCodPfaKeyDown
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodFor: TdxColorEdit
    Left = 158
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
    OnExit = EdPsqCodForExit
    OnKeyDown = EdPsqCodForKeyDown
    OnKeyPress = EdPsqNumEntKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 158
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
    OnKeyPress = EdPsqNumEntKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomPfa: TdxColorEdit
    Left = 269
    Top = 82
    Width = 327
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
  object EdPsqNomFor: TdxColorEdit
    Left = 269
    Top = 59
    Width = 327
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
    Left = 269
    Top = 36
    Width = 327
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
  object bPesquisa: TBitBtn
    Left = 407
    Top = 106
    Width = 188
    Height = 44
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = bPesquisaClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFA074709E706E9D706D9D6E6B9C6D6A9A6C69996B68996A679869669667
      6595666395666293656093635F92625E91605D91605D915F5C905E5BFF00FFFF
      00FFFF00FFFF00FFFF00FFA17572FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FE915F5CFF00FFFF00FFFF00FFFF00FFFF00FFA17673FEFEFCFEFEFCFEFEFCFE
      FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFC
      FEFEFCFEFEFCFEFEFC91605DFF00FFFF00FFFF00FFFF00FFFF00FFA47975FEFB
      FAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFE
      FBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFA93635EFF00FFFF00FFFF00FFFF00FF
      FF00FFA57A77FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFA
      F6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF693645FFF00FFFF
      00FFFF00FFFF00FFFF00FFA67B79FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3
      FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8
      F3956562FF00FFFF00FFFF00FFFF00FFFF00FFA97F7AFEF7F0FEF7F0FEF7F0FE
      F7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0
      FEF7F0FEF7F0FEF7F0956663FF00FFFF00FFFF00FFFF00FFFF00FFA9807DFEF6
      EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFE
      F6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6ED966865FF00FFFF00FFFF00FF483D49
      49363FAB817EFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3
      EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EA986966FF00FFFF
      00FF4A3F4B6BE5FE3DA0D745303AFEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7
      FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E6FCF0
      E6986A67FF00FFFF00FF4B37424CB2EE6BE5FE3DA0D749353FFEF0E3FEF0E3FE
      F0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3
      FEF0E3FCEFE2FCEFE29A6B68FF00FFFF00FFFF00FF4B37424CB2EE6BE5FE3DA0
      D749353FFEEFE1FEEFE1FEEFE1FEEFE1FEEFE1FEEFE1FEEFE1FEEFE1FEEFE1FE
      EFE1FEEFE1FEEFE1FCEEE0FCEEE0FCEDDE9A6D6AFF00FFFF00FFFF00FFFF00FF
      4B37424CB2EE6BE5FE446883956D68F2DED0CEB1A6CEB1A6E6CFC2FFEEDEFFEE
      DEFFEEDEFFEEDEFFEEDEFFEDDDFEEDDDFEEDDDFEEBDCF7E6D49D6E6CFF00FFFF
      00FFFF00FFFF00FFFF00FF4A36414D72904C1E1E4C1E1E5C2B2B5F2D2D633030
      502121794C49F2DCCCFFEBDAFFEBDAFFEBDAFEEAD9FEEAD9FCEAD8F7E3D0EBD9
      C49E706DFF00FFFF00FFFF00FFFF00FFFF00FFA57D78C1A0955628275F2E2DAB
      8275FFE0B5FFD9A1CEA37D64342E6A3C3AFFEAD8FFEAD8FEE9D7FEE9D7FCE7D5
      F6E1CCEAD7C0DDCAB09F736FFF00FFFF00FFFF00FFFF00FFFF00FFB48E8AE6CB
      BA5A2929B68973FFDAAAFFD9A1FFD9A1FFD9A1DAB086552525B69287FEE7D4FE
      E7D4FCE6D1F4DEC9E9D4BCDCC7ACCEBA9DA17572FF00FFFF00FFFF00FFFF00FF
      FF00FFB58F8BAA83796F3A35FFCE9EFBD095FFD9A1FFD9A1FFD9A1FFD9A18F5E
      507E524DFEE6D0FCE3CEF3DDC5E7D1B7DAC5A9CCB899BDAB8AA37673FF00FFFF
      00FFFF00FFFF00FFFF00FFB6918C9F766C784132FFD099FACC90FFD9A1FFD9A1
      FFD9A1FFD9A1A47562744642FBE2CBF3DAC1E7CFB4D9C2A5CBB696CEBCA0DDC7
      B0A9807BFF00FFFF00FFFF00FFFF00FFFF00FFB7928EC19D8E6A3937F3E5D7FB
      EBD3FBD196FFD89FFFD9A1FFDEB282524F92685FF2D8BDF4E9DCFEFEFEFEFEFC
      FEF6EEEED7CAB58F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB7928FFFE2
      C96A3B3895695EF3C595FEC58BFBCA90FFD7A9AA7D6E5E2D2DD9BAA3E5CBACF0
      E7DAFEFCFBFEF4EBE3C9BDAD8480FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFB89591FFE1C6D9B6A1693B387F4D479F68509F6A538C5750622F2FAC86
      76E3C9A9D5BB9AF8F3EDFEF3E9D5B6ACC5A7A4FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFBA9692FFE0C4FFE0C4E6C2AB95685D93655D9E6B66
      875A51C29D88E2C6A5D4BA97DDCAB1F8EBE0C7A59DCEB5B4FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB9692FFDEC1FFDEC1FFDEC1FE
      DDC0FEDDC0F8D8BAEDCFAFE1C4A3D3B795C9B08CEBD8CBBF9A96D4BFBDFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB9793BA96
      92BA9692BA9591BA9390B8928FB7928FB6918EB5908CB58F8BB48E8AC1A09EE0
      CFCEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object rgOrdem: TRadioGroup
    Left = 597
    Top = 8
    Width = 188
    Height = 96
    Caption = ' Exibido por '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'No. Pedido'
      'No. Entrada'
      'Fornecedor'
      'Data de Entrada'
      'Data do Documento')
    ParentFont = False
    TabOrder = 14
  end
  object grEnt: ThGrid
    Tag = 1
    Left = 2
    Top = 167
    Width = 780
    Height = 139
    Selected.Strings = (
      'NUMENT'#9'10'#9'No. Entrada'
      'NUMPED'#9'10'#9'Pedido'
      'DTEOPE'#9'10'#9'Emissão'
      'NUMDOC'#9'10'#9'Doc/NF'
      'HREENT'#9'8'#9'Hora'
      'CODPFA'#9'19'#9'Padrão Fat.'
      'TOTENC'#9'12'#9'        Total Itens'
      'TOTIPC'#9'12'#9'            Total IPI'
      'TOTGEC'#9'12'#9'    Total Entrada')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsEnt
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 16
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grEn2: ThGrid
    Tag = 1
    Left = 2
    Top = 333
    Width = 779
    Height = 145
    Selected.Strings = (
      'CODITE'#9'18'#9'Item'
      'DESEN2'#9'36'#9'Descrição'
      'QTPEN2'#9'10'#9' Quantidade'
      'IPIEN2'#9'3'#9'IPI'
      'ICMEN2'#9'4'#9'ICMS'
      'VLQEN2'#9'10'#9'   Valor Item'
      'TOTEN2'#9'10'#9'    Total do Item'
      'TOTIPI'#9'10'#9'        Total IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsEn2
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
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnNomFor: TPanel
    Left = 375
    Top = 310
    Width = 410
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Fornecedor :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object EdPsqDteDoc2: TdxColorDateEdit
    Left = 269
    Top = 128
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
  object EdPsqDteDoc1: TdxColorDateEdit
    Left = 158
    Top = 128
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
  object EdPsqNumPed: TdxColorEdit
    Left = 371
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
    TabOrder = 1
    OnKeyPress = EdPsqNumEntKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object pnSitEnt: TPanel
    Left = 199
    Top = 310
    Width = 175
    Height = 20
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object EdPsqNumDoc: TdxColorEdit
    Left = 509
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
    TabOrder = 2
    OnExit = EdPsqNumDocExit
    OnKeyPress = EdPsqNumEntKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bCancelar: TBitBtn
    Left = 598
    Top = 106
    Width = 187
    Height = 44
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = bCancelarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFA074709E706E9D706D9D6E6B9C6D6A9A6C69996B68996A679869669667
      6595666395666293656093635F92625E91605D91605D915F5C905E5BFF00FFFF
      00FFFF00FFFF00FFFF00FFA17572FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FE915F5CFF00FFFF00FFFF00FFFF00FFFF00FFA17673FEFEFCFEFEFCFEFEFCFE
      FEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFC
      FEFEFCFEFEFCFEFEFC91605DFF00FFFF00FFFF00FFFF00FFFF00FFA47975FEFB
      FAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAFE
      FBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFA93635EFF00FFFF00FFFF00FFFF00FF
      FF00FFA57A77FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFA
      F6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF6FEFAF693645FFF00FFFF
      00FFFF00FFFF00FFFF00FFA67B79FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3
      FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8
      F3956562FF00FFFF00FFFF00FFFF00FFFF00FFA97F7AFEF7F0FEF7F0FEF7F0FE
      F7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0
      FEF7F0FEF7F0FEF7F0956663FF00FFFF00FFFF00FFFF00FFFF00FFA9807DFEF6
      EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6EDFE
      F6EDFEF6EDFEF6EDFEF6EDFEF6EDFEF6ED966865FF00FFFF00FFFF00FFFF00FF
      FF00FFAB817EFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3
      EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EAFEF3EA986966FF00FFFF
      00FFFF00FFFF00FFFF00FFAB8380FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7
      FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E6FCF0
      E6986A67FF00FFFF00FFFF00FFFF00FFFF00FF836581E9DDDDFEF0E3FEF0E3FE
      F0E3FEF0E3FEF0E3ACA4C9FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3
      FEF0E3FCEFE2FCEFE29A6B68FF00FFFF00FFFF00FFFF00FFFF00FF03058E1C1A
      90E9DCDAFEEFE1FEEFE1E9DCDA1C1A900001874541A1FEEFE1FEEFE1FEEFE1FE
      EFE1FEEFE1FEEFE1FCEEE0FCEEE0FCEDDE9A6D6AFF00FFFF00FFFF00FFFF00FF
      080C963856F71C2DCC1C1A90EADAD8EADAD81C1A90030CAC0523F7010596655E
      ACFFEEDEFFEEDEFFEEDEFFEDDDFEEDDDFEEDDDFEEBDCF7E6D49D6E6CFF00FFFF
      00FFFF00FFFF00FF080C96435FF73D5DFF1C2DCC1C198F1C198F0610AC1135FF
      0E32FF030CAC655DABFFEBDAFFEBDAFFEBDAFEEAD9FEEAD9FCEAD8F7E3D0EBD9
      C49E706DFF00FFFF00FFFF00FFFF00FFFF00FF090C964562F74160FF2337D51A
      2AC6284BFF2245FF0711AC45409FFFEAD8FFEAD8FFEAD8FEE9D7FEE9D7FCE7D5
      F6E1CCEAD7C0DDCAB09F736FFF00FFFF00FFFF00FFFF00FFFF00FF5F4B86090D
      96506FFF4C6CFF4364FF3C5DFF0D17AC45409EFFE9D5FFE9D5FFE9D4FEE7D4FE
      E7D4FCE6D1F4DEC9E9D4BCDCC7ACCEBA9DA17572FF00FFFF00FFFF00FFFF00FF
      FF00FFA6838A100F894357DD637FFF5977FF425AE7060683EAD4CCFFE7D1FFE7
      D1FEE6D0FEE6D0FCE3CEF3DDC5E7D1B7DAC5A9CCB899BDAB8AA37673FF00FFFF
      00FFFF00FFFF00FFFF00FF130F81282DAC869CFF7A93FF708BFF6883FF3544CC
      1C188EEAD1CAFEE5CEFEE5CEFBE2CBF3DAC1E7CFB4D9C2A5CBB696CEBCA0DDC7
      B0A9807BFF00FFFF00FFFF00FFFF00FFFF00FF3235ACA9BAFF9DB0FF2F36B517
      1DA5738AF77791FF3E4CCC1C188CE9CFC6FBE0C7F2D8BDF4E9DCFEFEFEFEFEFC
      FEF6EEEED7CAB58F88FF00FFFF00FFFF00FFFF00FFFF00FF080C96CED8FFBFCC
      FF3034AC453E998878AC0F11968196F7879EFF3138B56358A0F0D5BAE5CBACF0
      E7DAFEFCFBFEF4EBE3C9BDAD8480FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      080C96767ACC393BAC453D99FFE1C6FFE1C68877AA111396535CCA090984C9B0
      AFE3C9A9D5BB9AF8F3EDFEF3E9D5B6ACC5A7A4FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0C0981554A9CFFE0C4FFE0C4FFDEC2FEDEC28776A7
      28238EB59EA9E2C6A5D4BA97DDCAB1F8EBE0C7A59DCEB5B4FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB9692FFDEC1FFDEC1FFDEC1FE
      DDC0FEDDC0F8D8BAEDCFAFE1C4A3D3B795C9B08CEBD8CBBF9A96D4BFBDFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB9793BA96
      92BA9692BA9591BA9390B8928FB7928FB6918EB5908CB58F8BB48E8AC1A09EE0
      CFCEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object CmpEnt: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpEnt.*,'
      '           FinFor.ApeFor,'
      '           FinFor.TEnFor,'
      '           FinFor.EndFor,'
      '           FinFor.NumFor,'
      '           FinFor.BaiFor,'
      '           FinFor.CidFor,'
      '           FinFor.SigUfe,'
      '           FinFor.PrtFor,'
      '           FinFor.FonFor,'
      '           FinFor.PrfFor,'
      '           FinFor.FaxFor,'
      '           FinFor.NomFor,'
      '           EstPfa.DscPfa'
      'From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'
      
        '                     LEFT JOIN EstPfa ON (CmpEnt.CodPfa = EstPfa' +
        '.CodPfa)'
      
        '                                                 AND (CmpEnt.Tip' +
        'Pfa = EstPfa.TipPfa)'
      'Where CmpEnt.DteEnt = :DteEnt'
      'Order by CmpEnt.CodEmp,CmpEnt.NumEnt,CmpEnt.SeqEnt')
    UpdateObject = UpEnt
    ValidateWithMask = True
    Left = 4
    Top = 221
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteEnt'
        ParamType = ptInput
      end>
    object CmpEntNUMENT: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Entrada'
      DisplayWidth = 10
      FieldName = 'NUMENT'
    end
    object CmpEntNUMPED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMPED'
    end
    object CmpEntDTEOPE: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEOPE'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntNUMDOC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Doc/NF'
      DisplayWidth = 10
      FieldName = 'NUMDOC'
    end
    object CmpEntHREENT: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREENT'
      FixedChar = True
      Size = 8
    end
    object CmpEntCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 19
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 7
    end
    object CmpEntTOTENC: TFloatField
      DisplayLabel = '        Total Itens'
      DisplayWidth = 12
      FieldName = 'TOTENC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTIPC: TFloatField
      DisplayLabel = '            Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTGEC: TFloatField
      DisplayLabel = '    Total Entrada'
      DisplayWidth = 12
      FieldName = 'TOTGEC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTENT: TFloatField
      DisplayLabel = '        Total Itens'
      DisplayWidth = 12
      FieldName = 'TOTENT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTIPI: TFloatField
      DisplayLabel = '            Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTGER: TFloatField
      DisplayLabel = '   Total Entrada'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntDTEENT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEENT'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntSEQENT: TStringField
      DisplayLabel = 'Seq'
      DisplayWidth = 3
      FieldName = 'SEQENT'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object CmpEntCODFOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 10
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpEntNOMFOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 24
      FieldName = 'NOMFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpEntCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpEntCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Visible = False
    end
    object CmpEntSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Visible = False
    end
    object CmpEntTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEntCODCFO: TStringField
      FieldName = 'CODCFO'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpEntCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Visible = False
    end
    object CmpEntDTEDOC: TDateTimeField
      FieldName = 'DTEDOC'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntDTECRE: TDateTimeField
      FieldName = 'DTECRE'
      Visible = False
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntUFEENT: TStringField
      FieldName = 'UFEENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpEntCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEntOBSENT: TStringField
      FieldName = 'OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpEntQTIENT: TIntegerField
      FieldName = 'QTIENT'
      Visible = False
    end
    object CmpEntSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object CmpEntQTPENT: TIntegerField
      FieldName = 'QTPENT'
      Visible = False
    end
    object CmpEntLINENT: TIntegerField
      FieldName = 'LINENT'
      Visible = False
    end
    object CmpEntICMENT: TFloatField
      FieldName = 'ICMENT'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object CmpEntIPIENT: TFloatField
      FieldName = 'IPIENT'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object CmpEntDSCENT: TFloatField
      FieldName = 'DSCENT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTPED: TFloatField
      FieldName = 'TOTPED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTDES: TFloatField
      FieldName = 'TOTDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMF: TFloatField
      FieldName = 'BAICMF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOICMF: TFloatField
      FieldName = 'TOICMF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMS: TFloatField
      FieldName = 'BAICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOICMS: TFloatField
      FieldName = 'TOICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntICMDES: TFloatField
      FieldName = 'ICMDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMD: TFloatField
      FieldName = 'BAICMD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOICMD: TFloatField
      FieldName = 'TOICMD'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntIPISEG: TFloatField
      FieldName = 'IPISEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntIPIDES: TFloatField
      FieldName = 'IPIDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPID: TFloatField
      FieldName = 'BAIPID'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOIPID: TFloatField
      FieldName = 'TOIPID'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASICC: TFloatField
      FieldName = 'BASICC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTICC: TFloatField
      FieldName = 'TOTICC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASSUC: TFloatField
      FieldName = 'BASSUC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTSUC: TFloatField
      FieldName = 'TOTSUC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object CmpEntSITENT: TStringField
      FieldName = 'SITENT'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEntCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object CmpEntCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Visible = False
    end
    object CmpEntVALTMO: TFloatField
      FieldName = 'VALTMO'
      Visible = False
    end
    object CmpEntEMPPED: TIntegerField
      FieldName = 'EMPPED'
      Visible = False
    end
    object CmpEntDTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Visible = False
    end
    object CmpEntQTLENT: TIntegerField
      FieldName = 'QTLENT'
      Visible = False
    end
    object CmpEntMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
    end
    object CmpEntTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object CmpEntPACENT: TFloatField
      FieldName = 'PACENT'
      Visible = False
    end
    object CmpEntMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
    end
    object CmpEntTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object CmpEntBSICMF: TFloatField
      FieldName = 'BSICMF'
      Visible = False
    end
    object CmpEntBSICMS: TFloatField
      FieldName = 'BSICMS'
      Visible = False
    end
    object CmpEntBSICMD: TFloatField
      FieldName = 'BSICMD'
      Visible = False
    end
    object CmpEntBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Visible = False
    end
    object CmpEntBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Visible = False
    end
    object CmpEntBSIPID: TFloatField
      FieldName = 'BSIPID'
      Visible = False
    end
    object CmpEntINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Visible = False
    end
    object CmpEntINFBRT: TFloatField
      FieldName = 'INFBRT'
      Visible = False
    end
    object CmpEntLANENT: TFloatField
      FieldName = 'LANENT'
      Visible = False
    end
    object CmpEntSLDENT: TFloatField
      FieldName = 'SLDENT'
      Visible = False
    end
    object CmpEntLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpEntTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEntTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpEntBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpEntCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object CmpEntTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEntTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpEntBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpEntINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpEntINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpEntTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpEntTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpEntTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object CmpEntFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEntFLGOCO: TStringField
      DisplayWidth = 1
      FieldName = 'FLGOCO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEntEMPOEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPOEN'
      Visible = False
    end
    object CmpEntDTEOEN: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEOEN'
      Visible = False
    end
    object CmpEntNUMOEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMOEN'
      Visible = False
    end
    object CmpEntTOTDCC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDCC'
      Visible = False
    end
    object CmpEntTOTACC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTACC'
      Visible = False
    end
    object CmpEntBAICMA: TFloatField
      FieldName = 'BAICMA'
      Visible = False
    end
    object CmpEntTOICMA: TFloatField
      FieldName = 'TOICMA'
      Visible = False
    end
    object CmpEntBAIPIA: TFloatField
      FieldName = 'BAIPIA'
      Visible = False
    end
    object CmpEntTOIPIA: TFloatField
      FieldName = 'TOIPIA'
      Visible = False
    end
    object CmpEntTOTOEN: TFloatField
      FieldName = 'TOTOEN'
      Visible = False
    end
    object CmpEntMESENT: TStringField
      FieldName = 'MESENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntANOENT: TIntegerField
      FieldName = 'ANOENT'
      Visible = False
    end
    object CmpEntMODPFA: TStringField
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object CmpEntFLGENT: TStringField
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntQTDOEN: TIntegerField
      FieldName = 'QTDOEN'
      Visible = False
    end
    object CmpEntSEQOEN: TIntegerField
      FieldName = 'SEQOEN'
      Visible = False
    end
    object CmpEntAPEFOR: TStringField
      FieldName = 'APEFOR'
      Visible = False
      FixedChar = True
    end
    object CmpEntTENFOR: TStringField
      FieldName = 'TENFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEntENDFOR: TStringField
      FieldName = 'ENDFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpEntNUMFOR: TStringField
      FieldName = 'NUMFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEntBAIFOR: TStringField
      FieldName = 'BAIFOR'
      Visible = False
      FixedChar = True
    end
    object CmpEntCIDFOR: TStringField
      FieldName = 'CIDFOR'
      Visible = False
      FixedChar = True
    end
    object CmpEntSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpEntPRTFOR: TStringField
      FieldName = 'PRTFOR'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpEntFONFOR: TStringField
      FieldName = 'FONFOR'
      Visible = False
      FixedChar = True
    end
    object CmpEntPRFFOR: TStringField
      FieldName = 'PRFFOR'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpEntFAXFOR: TStringField
      FieldName = 'FAXFOR'
      Visible = False
      FixedChar = True
    end
    object CmpEntDSCPFA: TStringField
      FieldName = 'DSCPFA'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpEntPERACR: TFloatField
      FieldName = 'PERACR'
      Visible = False
    end
    object CmpEntTOTACP: TFloatField
      FieldName = 'TOTACP'
      Visible = False
    end
    object CmpEntEMPCNO: TIntegerField
      FieldName = 'EMPCNO'
      Visible = False
    end
    object CmpEntDTECNO: TDateTimeField
      FieldName = 'DTECNO'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntNUMCNO: TIntegerField
      FieldName = 'NUMCNO'
      Visible = False
    end
    object CmpEntHRCENT: TStringField
      DisplayWidth = 8
      FieldName = 'HRCENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpEntDTCENT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCENT'
      Visible = False
    end
    object CmpEntUSCENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'USCENT'
      Visible = False
    end
    object CmpEntOBCENT: TStringField
      DisplayWidth = 200
      FieldName = 'OBCENT'
      Visible = False
      Size = 200
    end
    object CmpEntBASIMP: TFloatField
      FieldName = 'BASIMP'
      Visible = False
    end
    object CmpEntTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      Visible = False
    end
    object CmpEntTOTFOR: TFloatField
      FieldName = 'TOTFOR'
      Visible = False
    end
    object CmpEntDESFOR: TFloatField
      FieldName = 'DESFOR'
      Visible = False
    end
    object CmpEntVCOFOR: TFloatField
      FieldName = 'VCOFOR'
      Visible = False
    end
    object CmpEntVCOEMP: TFloatField
      FieldName = 'VCOEMP'
      Visible = False
    end
    object CmpEntVDOFSC: TFloatField
      FieldName = 'VDOFSC'
      Visible = False
    end
    object CmpEntFLGENV: TStringField
      FieldName = 'FLGENV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntLANCST: TStringField
      FieldName = 'LANCST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEntSERNOT: TStringField
      FieldName = 'SERNOT'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object CmpEn2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsEnt
    SQL.Strings = (
      'Select CmpEn2.*,'
      
        '           TextoOcor(CmpEn2.CodGru,'#39'.'#39',CmpEn2.CodSub,'#39'.'#39',CmpEn2.' +
        'CodPro,'#39#39','#39#39') as CodIte From CmpEn2'
      'Where CmpEn2.CodEmp = :CodEmp'
      '     and CmpEn2.DteEnt = :DteEnt'
      '     and CmpEn2.NumEnt = :NumEnt'
      'Order by CmpEn2.CodEmp,CmpEn2.DteEnt,CmpEn2.NumEnt,CmpEn2.NroEn2')
    ValidateWithMask = True
    Left = 66
    Top = 221
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMENT'
        ParamType = ptInput
      end>
    object CmpEn2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 18
      FieldName = 'CODITE'
      FixedChar = True
      Size = 100
    end
    object CmpEn2DESEN2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 36
      FieldName = 'DESEN2'
      FixedChar = True
      Size = 70
    end
    object CmpEn2QTPEN2: TFloatField
      DisplayLabel = ' Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPEN2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2IPIEN2: TFloatField
      DisplayLabel = 'IPI'
      DisplayWidth = 3
      FieldName = 'IPIEN2'
      DisplayFormat = '##0'
      Precision = 2
    end
    object CmpEn2ICMEN2: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 4
      FieldName = 'ICMEN2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object CmpEn2VLQEN2: TFloatField
      DisplayLabel = '   Valor Item'
      DisplayWidth = 10
      FieldName = 'VLQEN2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2TOTEN2: TFloatField
      DisplayLabel = '    Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTEN2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpEn2NUMENT: TIntegerField
      FieldName = 'NUMENT'
      Visible = False
    end
    object CmpEn2SEQEN2: TIntegerField
      FieldName = 'SEQEN2'
      Visible = False
    end
    object CmpEn2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object CmpEn2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpEn2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpEn2OBSEN2: TStringField
      FieldName = 'OBSEN2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpEn2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpEn2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2LIQEN2: TFloatField
      FieldName = 'LIQEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2BRTEN2: TFloatField
      FieldName = 'BRTEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2LINEN2: TIntegerField
      FieldName = 'LINEN2'
      Visible = False
    end
    object CmpEn2VLUEN2: TFloatField
      FieldName = 'VLUEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2DSCEN2: TFloatField
      FieldName = 'DSCEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2VDSEN2: TFloatField
      FieldName = 'VDSEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2PACEN2: TFloatField
      FieldName = 'PACEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2VACEN2: TFloatField
      FieldName = 'VACEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpEn2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2NROEN2: TIntegerField
      FieldName = 'NROEN2'
      Visible = False
    end
    object CmpEn2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEn2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEn2DTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Visible = False
    end
    object CmpEn2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpEn2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object CmpEn2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object CmpEn2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object CmpEn2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpEn2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpEn2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpEn2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpEn2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpEn2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpEn2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpEn2EMPPED: TIntegerField
      FieldName = 'EMPPED'
      Visible = False
    end
    object CmpEn2DTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Visible = False
    end
    object CmpEn2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Visible = False
    end
    object CmpEn2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
    object CmpEn2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2SEQPE3: TIntegerField
      FieldName = 'SEQPE3'
      Visible = False
    end
    object CmpEn2QTDPED: TFloatField
      FieldName = 'QTDPED'
      Visible = False
    end
    object CmpEn2VLQPED: TFloatField
      FieldName = 'VLQPED'
      Visible = False
    end
    object CmpEn2FLGQTD: TStringField
      FieldName = 'FLGQTD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2FLGVAL: TStringField
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2MESENT: TStringField
      FieldName = 'MESENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2ANOENT: TIntegerField
      FieldName = 'ANOENT'
      Visible = False
    end
    object CmpEn2VPFEN2: TFloatField
      FieldName = 'VPFEN2'
      Visible = False
    end
    object CmpEn2VPFOUT: TFloatField
      FieldName = 'VPFOUT'
      Visible = False
    end
  end
  object DsEn2: TwwDataSource
    DataSet = CmpEn2
    Left = 94
    Top = 221
  end
  object DsEnt: TwwDataSource
    DataSet = CmpEnt
    OnDataChange = DsEntDataChange
    Left = 32
    Top = 221
  end
  object quSql: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 4
    Top = 249
  end
  object UpEnt: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpEnt'
      'set'
      '  DTEOPE = :DTEOPE,'
      '  CODFOR = :CODFOR,'
      '  CONPLC = :CONPLC,'
      '  SUBPLC = :SUBPLC,'
      '  HREENT = :HREENT,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  MODPFA = :MODPFA,'
      '  CODCFO = :CODCFO,'
      '  CODTIP = :CODTIP,'
      '  CODFIL = :CODFIL,'
      '  CODTMO = :CODTMO,'
      '  VALTMO = :VALTMO,'
      '  NUMDOC = :NUMDOC,'
      '  DTEDOC = :DTEDOC,'
      '  DTECRE = :DTECRE,'
      '  EMPPED = :EMPPED,'
      '  NUMPED = :NUMPED,'
      '  DTEPED = :DTEPED,'
      '  FLGCTB = :FLGCTB,'
      '  UFEENT = :UFEENT,'
      '  CODCLP = :CODCLP,'
      '  OBSENT = :OBSENT,'
      '  QTIENT = :QTIENT,'
      '  SEQITE = :SEQITE,'
      '  QTDOEN = :QTDOEN,'
      '  SEQOEN = :SEQOEN,'
      '  QTPENT = :QTPENT,'
      '  QTLENT = :QTLENT,'
      '  LINENT = :LINENT,'
      '  ICMENT = :ICMENT,'
      '  IPIENT = :IPIENT,'
      '  DSCENT = :DSCENT,'
      '  MEDDSC = :MEDDSC,'
      '  TOTDSC = :TOTDSC,'
      '  TOTDCC = :TOTDCC,'
      '  PACENT = :PACENT,'
      '  MEDACR = :MEDACR,'
      '  TOTACR = :TOTACR,'
      '  TOTACC = :TOTACC,'
      '  BASIMP = :BASIMP,'
      '  TOTIMP = :TOTIMP,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTPED = :TOTPED,'
      '  TOTENT = :TOTENT,'
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
      '  TOTDSR = :TOTDSR,'
      '  TOTGER = :TOTGER,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  BASICC = :BASICC,'
      '  TOTICC = :TOTICC,'
      '  BASSUC = :BASSUC,'
      '  TOTSUC = :TOTSUC,'
      '  TOTENC = :TOTENC,'
      '  TOTIPC = :TOTIPC,'
      '  TOTGEC = :TOTGEC,'
      '  LANENT = :LANENT,'
      '  SLDENT = :SLDENT,'
      '  BAICMA = :BAICMA,'
      '  TOICMA = :TOICMA,'
      '  BAIPIA = :BAIPIA,'
      '  TOIPIA = :TOIPIA,'
      '  LANEST = :LANEST,'
      '  ATUEST = :ATUEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
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
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  CODUSU = :CODUSU,'
      '  FLGATU = :FLGATU,'
      '  FLGOCO = :FLGOCO,'
      '  SEQENT = :SEQENT,'
      '  EMPOEN = :EMPOEN,'
      '  DTEOEN = :DTEOEN,'
      '  NUMOEN = :NUMOEN,'
      '  SITENT = :SITENT,'
      '  TOTOEN = :TOTOEN,'
      '  MESENT = :MESENT,'
      '  ANOENT = :ANOENT,'
      '  FLGENT = :FLGENT,'
      '  EMPCNO = :EMPCNO,'
      '  DTECNO = :DTECNO,'
      '  NUMCNO = :NUMCNO,'
      '  PERACR = :PERACR,'
      '  TOTACP = :TOTACP,'
      '  TOTFOR = :TOTFOR,'
      '  DESFOR = :DESFOR,'
      '  VCOFOR = :VCOFOR,'
      '  VCOEMP = :VCOEMP,'
      '  VDOFSC = :VDOFSC,'
      '  FLGENV = :FLGENV,'
      '  FLGSIN = :FLGSIN,'
      '  LANCST = :LANCST,'
      '  SERNOT = :SERNOT,'
      '  HRCENT = :HRCENT,'
      '  DTCENT = :DTCENT,'
      '  USCENT = :USCENT,'
      '  OBCENT = :OBCENT'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEENT = :OLD_DTEENT and'
      '  NUMENT = :OLD_NUMENT')
    InsertSQL.Strings = (
      'insert into CmpEnt'
      
        '  (CODEMP, DTEENT, NUMENT, DTEOPE, CODFOR, CONPLC, SUBPLC, HREEN' +
        'T, '
      'CODPFA, '
      
        '   TIPPFA, MODPFA, CODCFO, CODTIP, CODFIL, CODTMO, VALTMO, NUMDO' +
        'C, '
      'DTEDOC, '
      
        '   DTECRE, EMPPED, NUMPED, DTEPED, FLGCTB, UFEENT, CODCLP, OBSEN' +
        'T, '
      'QTIENT, '
      
        '   SEQITE, QTDOEN, SEQOEN, QTPENT, QTLENT, LINENT, ICMENT, IPIEN' +
        'T, '
      'DSCENT, '
      
        '   MEDDSC, TOTDSC, TOTDCC, PACENT, MEDACR, TOTACR, TOTACC, BASIM' +
        'P, '
      'TOTIMP, '
      
        '   BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTPED, TOTEN' +
        'T, '
      'TOTFRT, '
      
        '   TOTSEG, TOTDES, ICMFRT, BSICMF, BAICMF, TOICMF, ICMSEG, BSICM' +
        'S, '
      'BAICMS, '
      
        '   TOICMS, ICMDES, BSICMD, BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPI' +
        'F, TOIPIF, '
      
        '   IPISEG, BSIPIS, BAIPIS, TOIPIS, IPIDES, BSIPID, BAIPID, TOIPI' +
        'D, TOTDSR, '
      
        '   TOTGER, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASICC, TOTICC, BASSU' +
        'C, '
      'TOTSUC, '
      
        '   TOTENC, TOTIPC, TOTGEC, LANENT, SLDENT, BAICMA, TOICMA, BAIPI' +
        'A, '
      'TOIPIA, '
      
        '   LANEST, ATUEST, INTFIN, CONSUM, CODIPI, TIPIPI, TRBIPI, REDIP' +
        'I, BSCIPI, '
      
        '   CODICM, TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, TXFIP' +
        'I, TXFICM, '
      
        '   CODUSU, FLGATU, FLGOCO, SEQENT, EMPOEN, DTEOEN, NUMOEN, SITEN' +
        'T, '
      'TOTOEN, '
      '   MESENT, ANOENT, FLGENT, EMPCNO, DTECNO, NUMCNO, PERACR, '
      'TOTACP, TOTFOR, '
      
        '   DESFOR, VCOFOR, VCOEMP, VDOFSC, FLGENV, FLGSIN, LANCST, SERNO' +
        'T, '
      'HRCENT, '
      '   DTCENT, USCENT, OBCENT)'
      'values'
      
        '  (:CODEMP, :DTEENT, :NUMENT, :DTEOPE, :CODFOR, :CONPLC, :SUBPLC' +
        ', '
      ':HREENT, '
      
        '   :CODPFA, :TIPPFA, :MODPFA, :CODCFO, :CODTIP, :CODFIL, :CODTMO' +
        ', '
      ':VALTMO, '
      
        '   :NUMDOC, :DTEDOC, :DTECRE, :EMPPED, :NUMPED, :DTEPED, :FLGCTB' +
        ', '
      ':UFEENT, '
      
        '   :CODCLP, :OBSENT, :QTIENT, :SEQITE, :QTDOEN, :SEQOEN, :QTPENT' +
        ', '
      ':QTLENT, '
      
        '   :LINENT, :ICMENT, :IPIENT, :DSCENT, :MEDDSC, :TOTDSC, :TOTDCC' +
        ', '
      ':PACENT, '
      
        '   :MEDACR, :TOTACR, :TOTACC, :BASIMP, :TOTIMP, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTPED, :TOTENT, :TOTFRT, :TOTSEG' +
        ', '
      ':TOTDES, '
      
        '   :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS, :BAICMS' +
        ', :TOICMS, '
      
        '   :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF, :BAIPIF' +
        ', :TOIPIF, '
      
        '   :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID, :BAIPID' +
        ', :TOIPID, '
      
        '   :TOTDSR, :TOTGER, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASICC' +
        ', :TOTICC, '
      
        '   :BASSUC, :TOTSUC, :TOTENC, :TOTIPC, :TOTGEC, :LANENT, :SLDENT' +
        ', '
      ':BAICMA, '
      
        '   :TOICMA, :BAIPIA, :TOIPIA, :LANEST, :ATUEST, :INTFIN, :CONSUM' +
        ', :CODIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :TXFIPI, :TXFICM, :CODUSU, :FLGATU' +
        ', :FLGOCO, '
      
        '   :SEQENT, :EMPOEN, :DTEOEN, :NUMOEN, :SITENT, :TOTOEN, :MESENT' +
        ', '
      ':ANOENT, '
      
        '   :FLGENT, :EMPCNO, :DTECNO, :NUMCNO, :PERACR, :TOTACP, :TOTFOR' +
        ', '
      ':DESFOR, '
      
        '   :VCOFOR, :VCOEMP, :VDOFSC, :FLGENV, :FLGSIN, :LANCST, :SERNOT' +
        ', '
      ':HRCENT, '
      '   :DTCENT, :USCENT, :OBCENT)')
    DeleteSQL.Strings = (
      'delete from CmpEnt'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEENT = :OLD_DTEENT and'
      '  NUMENT = :OLD_NUMENT')
    Left = 32
    Top = 249
  end
end
