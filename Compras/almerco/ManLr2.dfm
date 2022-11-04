inherited fmManLr2: TfmManLr2
  Left = 0
  Caption = 'Notas fiscais/Romaneios (Fornecedores) - Reimpressão'
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
    Top = 9
    Width = 84
    Height = 13
    Caption = 'No. da operação:'
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
    Top = 101
    Width = 107
    Height = 13
    Caption = 'Emitido no periodo de:'
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
    Top = 101
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
  object Label25: TLabel
    Left = 4
    Top = 124
    Width = 91
    Height = 13
    Caption = 'Total da operação:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 254
    Top = 124
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
    Top = 31
    Width = 45
    Height = 13
    Caption = 'Empresa:'
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
    Top = 55
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
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
    Top = 78
    Width = 116
    Height = 13
    Caption = 'Padrão de faturamento:'
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
  object bPsqEmp: TSpeedButton
    Left = 246
    Top = 29
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
    OnClick = bPsqEmpClick
  end
  object bPsqFor: TSpeedButton
    Left = 246
    Top = 52
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
    OnClick = bPsqForClick
  end
  object bPsqPfa: TSpeedButton
    Left = 246
    Top = 75
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
    OnClick = bPsqPfaClick
  end
  object Label11: TLabel
    Left = 271
    Top = 9
    Width = 73
    Height = 13
    Caption = 'No. nota fiscal:'
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
  object grCmpNf21: TdxDBGraphicEdit
    Left = 2
    Top = 299
    Width = 783
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
    Height = 159
  end
  object grCmpNfs1: TdxDBGraphicEdit
    Left = 1
    Top = 144
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
    TabOrder = 18
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 131
  end
  object EdPsqDteFat1: TdxColorDateEdit
    Left = 158
    Top = 97
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
    TabOrder = 8
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqId_CmpNfs: TdxColorEdit
    Left = 158
    Top = 5
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
    OnExit = EdPsqId_CmpNfsExit
    OnKeyPress = EdPsqId_CmpNfsKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqDteFat2: TdxColorDateEdit
    Left = 270
    Top = 97
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
  object EdPsqTotGer1: TdxColorCurrencyEdit
    Left = 158
    Top = 120
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
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqTotGer2: TdxColorCurrencyEdit
    Left = 270
    Top = 120
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
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqCodPfa: TdxColorEdit
    Left = 158
    Top = 74
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
    TabOrder = 6
    OnExit = EdPsqCodPfaExit
    OnKeyDown = EdPsqCodPfaKeyDown
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodFor: TdxColorEdit
    Left = 158
    Top = 51
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
    TabOrder = 4
    OnExit = EdPsqCodForExit
    OnKeyDown = EdPsqCodForKeyDown
    OnKeyPress = EdPsqId_CmpNfsKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 158
    Top = 28
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
    OnExit = EdPsqCodEmpExit
    OnKeyDown = EdPsqCodEmpKeyDown
    OnKeyPress = EdPsqId_CmpNfsKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomPfa: TdxColorEdit
    Left = 270
    Top = 74
    Width = 377
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
    TabOrder = 7
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomFor: TdxColorEdit
    Left = 270
    Top = 51
    Width = 377
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
    TabOrder = 5
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqApeEmp: TdxColorEdit
    Left = 270
    Top = 28
    Width = 377
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
    TabOrder = 3
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bSelecionar: TBitBtn
    Left = 360
    Top = 98
    Width = 142
    Height = 44
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
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
  object grCmpNfs: ThGrid
    Tag = 1
    Left = 3
    Top = 146
    Width = 780
    Height = 125
    Selected.Strings = (
      'ID_CMPNFS'#9'10'#9'No. Operação'
      'DTEFAT'#9'10'#9'Emissão'
      'NRONFS'#9'10'#9'Nota Fiscal'
      'CODPFA'#9'20'#9'Padrão Fat.'
      'FORNECEDOR'#9'39'#9'Fornecedor'
      'TOTGE1'#9'12'#9'   Total da operação'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCmpNfs
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
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grCmpNfsKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnSitNfs: TPanel
    Left = 505
    Top = 275
    Width = 280
    Height = 23
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object EdPsqNroNfs: TdxColorEdit
    Left = 346
    Top = 5
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
    OnExit = EdPsqNroNfsExit
    OnKeyPress = EdPsqId_CmpNfsKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object pnSitImp: TPanel
    Left = 245
    Top = 275
    Width = 258
    Height = 23
    BevelOuter = bvNone
    Caption = 'Impressão confirmada'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object rgOrdem: TRadioGroup
    Left = 648
    Top = 1
    Width = 138
    Height = 72
    Caption = ' Exibido por '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Fornecedor'
      'Dt. Emissão'
      'No. Nota Fiscal')
    ParentFont = False
    TabOrder = 12
  end
  object rgImpresso: TRadioGroup
    Left = 648
    Top = 74
    Width = 138
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
    TabOrder = 13
  end
  object bImprimir: TBitBtn
    Left = 504
    Top = 98
    Width = 142
    Height = 44
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
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
  object pnDadosNota: TPanel
    Left = 232
    Top = 206
    Width = 322
    Height = 43
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 21
    Visible = False
    OnExit = pnDadosNotaExit
    object Label1: TLabel
      Left = 19
      Top = 14
      Width = 218
      Height = 14
      Caption = 'Nota fiscal impressa corretamente ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdFlgImp: TdxDBColorPickEdit
      Left = 244
      Top = 10
      Width = 60
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taCenter
      AutoSize = False
      DataField = 'FLGIMP'
      DataSource = DsCmpNfs
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'Sim'
        'Nao')
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
  end
  object pnDesNf2: TPanel
    Left = 2
    Top = 458
    Width = 783
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
  end
  object grCmpNf2: ThGrid
    Tag = 1
    Left = 4
    Top = 301
    Width = 777
    Height = 153
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'CODCFO'#9'5'#9'CFOP'
      'CLSIPI'#9'10'#9'     NCM'
      'CODSIT'#9'4'#9'CST'
      'CODUND'#9'6'#9'   UN'
      'QTPNF2'#9'10'#9'                Qtde'
      'VLUNF2'#9'10'#9'         Unitario'
      'TOTITE'#9'10'#9'          Total Item'
      'ICMNF2'#9'4'#9'   ICMS'
      'IPINF2'#9'3'#9'   IPI'
      'TOTIPI'#9'10'#9'           Total IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsNf2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 23
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object CmpNfs: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.Id_CmpNfs,'
      '           CmpNfs.DteFat,'
      '           CmpNfs.NroNfs,'
      '           CmpNfs.CodFor,'
      '           CmpNfs.CodPfa,'
      '           CmpNfs.TotGe1,'
      '           CmpNfs.FlgImp,'
      '           CmpNfs.FlgAtu,'
      '           CmpNfs.SitNfs,'
      '           FinFor.NomFor'
      'From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)'
      'Where CmpNfs.DteFat = :DteFat'
      '    and CmpNfs.NroNfs > 0'
      '    and CmpNfs.FlgNfe = '#39'Nao'#39
      'Order by CmpNfs.NroNfs')
    UpdateObject = UpCmpNfs
    ValidateWithMask = True
    Left = 4
    Top = 214
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteFat'
        ParamType = ptInput
      end>
    object CmpNfsID_CMPNFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Operação'
      DisplayWidth = 10
      FieldName = 'ID_CMPNFS'
    end
    object CmpNfsDTEFAT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEFAT'
    end
    object CmpNfsNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object CmpNfsCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 20
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object CmpNfsFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 39
      FieldKind = fkCalculated
      FieldName = 'FORNECEDOR'
      OnGetText = CmpNfsFORNECEDORGetText
      Size = 60
      Calculated = True
    end
    object CmpNfsTOTGE1: TFloatField
      DisplayLabel = '   Total da operação'
      DisplayWidth = 12
      FieldName = 'TOTGE1'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsSITNFS: TStringField
      FieldName = 'SITNFS'
      Visible = False
      Size = 45
    end
    object CmpNfsNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
  end
  object CmpNf2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpNfs
    SQL.Strings = (
      'Select CmpNf2.DesNf2,'
      '           CmpNf2.ObsNf2,'
      '           CmpNf2.QtpNf2,'
      '           CmpNf2.VluNf2,'
      '           CmpNf2.IpiNf2,'
      '           CmpNf2.IcmNf2,'
      '           CmpNf2.TotIte,'
      '           CmpNf2.TotIpi,'
      '           CmpNf2.CodCfo,'
      '           CmpNf2.ClsIpi,'
      '           CmpNf2.CodUnd,'
      
        '           CmpNf2.CodSt1 || _UNICODE_FSS '#39' '#39' || CmpNf2.CodSt2 as' +
        ' CodSit,'
      
        '           CmpNf2.CodClp || _UNICODE_FSS '#39'-'#39' || CmpNf2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || CmpNf2.CodSub || _UNICODE_FSS '#39'.'#39' || CmpNf2' +
        '.CodPro as CodIte'
      'From CmpNf2'
      'Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'
      'Order by CmpNf2.NroNfs')
    ValidateWithMask = True
    Left = 4
    Top = 425
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPNFS'
        ParamType = ptUnknown
      end>
    object CmpNf2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object CmpNf2CODCFO: TStringField
      Alignment = taCenter
      DisplayLabel = 'CFOP'
      DisplayWidth = 5
      FieldName = 'CODCFO'
      Size = 10
    end
    object CmpNf2CLSIPI: TStringField
      Alignment = taCenter
      DisplayLabel = '     NCM'
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      Size = 30
    end
    object CmpNf2CODSIT: TStringField
      Alignment = taCenter
      DisplayLabel = 'CST'
      DisplayWidth = 4
      FieldName = 'CODSIT'
      Size = 4
    end
    object CmpNf2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = '   UN'
      DisplayWidth = 6
      FieldName = 'CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = '                Qtde'
      DisplayWidth = 10
      FieldName = 'QTPNF2'
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = '         Unitario'
      DisplayWidth = 10
      FieldName = 'VLUNF2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = '          Total Item'
      DisplayWidth = 10
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = '   ICMS'
      DisplayWidth = 4
      FieldName = 'ICMNF2'
      DisplayFormat = '##0'
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPINF2'
      DisplayFormat = '##0'
    end
    object CmpNf2TOTIPI: TFloatField
      DisplayLabel = '           Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Visible = False
      Size = 70
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Visible = False
      Size = 70
    end
  end
  object DsNf2: TwwDataSource
    DataSet = CmpNf2
    OnDataChange = DsNf2DataChange
    Left = 32
    Top = 425
  end
  object DsCmpNfs: TwwDataSource
    DataSet = CmpNfs
    OnDataChange = DsCmpNfsDataChange
    Left = 32
    Top = 214
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 32
    Top = 242
  end
  object UpCmpNfs: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  FLGIMP = :FLGIMP,'
      '  FLGATU = :FLGATU,'
      '  SITNFS = :SITNFS'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      '  (ID_CMPNFS, DTEFAT, NRONFS, CODFOR, CODPFA, TOTGE1, FLGIMP, '
      'FLGATU, SITNFS)'
      'values'
      
        '  (:ID_CMPNFS, :DTEFAT, :NRONFS, :CODFOR, :CODPFA, :TOTGE1, :FLG' +
        'IMP, '
      ':FLGATU, :SITNFS)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 4
    Top = 242
  end
end
