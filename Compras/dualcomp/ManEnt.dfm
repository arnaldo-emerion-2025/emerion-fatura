inherited fmManEnt: TfmManEnt
  Left = 0
  Caption = 'Entradas'
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
    Left = 4
    Top = 462
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
    Left = 635
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
  object Panel2: TPanel
    Left = 2
    Top = 359
    Width = 786
    Height = 98
    BevelOuter = bvNone
    TabOrder = 6
    OnExit = Panel2Exit
    object Label3: TLabel
      Left = 399
      Top = 52
      Width = 35
      Height = 14
      Caption = 'Valor '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 438
      Top = 52
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
    object Label56: TLabel
      Left = 399
      Top = 27
      Width = 32
      Height = 14
      Caption = '% CF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label57: TLabel
      Left = 438
      Top = 27
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
      DataSource = DsEn2
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
      DataSource = DsEn2
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
      DataSource = DsEn2
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
      DataSource = DsEn2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpEn2: TdxDBColorCurrencyEdit
      Left = 187
      Top = -1
      Width = 89
      Hint = 'Quantidade de Entrada do Item'
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
      OnEnter = EdQtpEn2Enter
      OnExit = EdQtpEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPEN2'
      DataSource = DsEn2
      DecimalPlaces = 4
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluEn2: TdxDBColorCurrencyEdit
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
      OnEnter = EdQtpEn2Enter
      OnExit = EdVluEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUEN2'
      DataSource = DsEn2
      DecimalPlaces = 6
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmEn2: TdxDBColorCurrencyEdit
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
      OnEnter = EdQtpEn2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMEN2'
      DataSource = DsEn2
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiEn2: TdxDBColorCurrencyEdit
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
      OnEnter = EdQtpEn2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIEN2'
      DataSource = DsEn2
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdImpEn2: TdxDBColorCurrencyEdit
      Left = 509
      Top = -1
      Width = 53
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
      TabOrder = 9
      OnEnter = EdQtpEn2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IMPEN2'
      DataSource = DsEn2
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscEn2: TdxDBColorCurrencyEdit
      Left = 561
      Top = -1
      Width = 54
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
      TabOrder = 10
      OnEnter = EdQtpEn2Enter
      OnExit = EdDscEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCEN2'
      DataSource = DsEn2
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqEn2: TdxDBColorCurrencyEdit
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
      TabOrder = 13
      OnEnter = EdQtpEn2Enter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQEN2'
      DataSource = DsEn2
      DecimalPlaces = 6
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotEn2: TdxDBColorCurrencyEdit
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
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTEN2'
      DataSource = DsEn2
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVacEn2: TdxDBColorCurrencyEdit
      Left = 455
      Top = 47
      Width = 106
      Hint = 'Valor do Custo Financeiro'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      OnEnter = EdQtpEn2Enter
      OnExit = EdVacEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VACEN2'
      DataSource = DsEn2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsEn2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesEn2: TdxDBColorEdit
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
      TabOrder = 15
      OnEnter = EdQtpEn2Enter
      OnExit = EdDesEn2Exit
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESEN2'
      DataSource = DsEn2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesEn2: TPanel
      Left = 1
      Top = 27
      Width = 392
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
    object EdObsEn2: TdxDBColorEdit
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
      TabOrder = 17
      OnEnter = EdQtpEn2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSEN2'
      DataSource = DsEn2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsEn2: TPanel
      Left = 1
      Top = 51
      Width = 392
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
    object EdPacEn2: TdxDBColorCurrencyEdit
      Left = 455
      Top = 23
      Width = 106
      Hint = 'Percentual de Custo Financeiro'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      OnEnter = EdQtpEn2Enter
      OnExit = EdPacEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACEN2'
      DataSource = DsEn2
      DisplayFormat = '##0.00'
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object grEn21: TdxDBGraphicEdit
    Left = 1
    Top = 205
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
    Height = 154
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 1
    Top = 171
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
    Height = 35
  end
  object grLabel2: TPanel
    Left = 3
    Top = 173
    Width = 780
    Height = 29
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
    object Label10: TLabel
      Left = 200
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
      Left = 295
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
    object Label21: TLabel
      Left = 372
      Top = 8
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
    object Label22: TLabel
      Left = 418
      Top = 8
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
      Left = 485
      Top = 8
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
    object Label24: TLabel
      Left = 545
      Top = 8
      Width = 10
      Height = 14
      Caption = 'II'
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
      Left = 566
      Top = 8
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
    object Label26: TLabel
      Left = 636
      Top = 8
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
    object Label35: TLabel
      Left = 715
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
  end
  object grEn2: ThGrid
    Left = 3
    Top = 207
    Width = 780
    Height = 148
    Selected.Strings = (
      'CODCLP'#9'3'#9' '
      'CODGRU'#9'6'#9' '
      'CODSUB'#9'7'#9' '
      'CODPRO'#9'9'#9' '
      'QTPEN2'#9'11'#9' '
      'VLUEN2'#9'12'#9' '
      'CODUND'#9'5'#9'CODUND'
      'ICMEN2'#9'7'#9' '
      'IPIEN2'#9'7'#9' '
      'IMPEN2'#9'7'#9' '
      'DSCEN2'#9'7'#9' '
      'VLQEN2'#9'11'#9' '
      'TOTGE2'#9'12'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsEn2
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
    OnEnter = grEn2Enter
    OnKeyDown = grEn2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 169
    BevelOuter = bvNone
    TabOrder = 5
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
    object Label29: TLabel
      Left = 4
      Top = 6
      Width = 106
      Height = 14
      Caption = 'Número da Entrada'
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
      Left = 253
      Top = 6
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
    object Label19: TLabel
      Left = 306
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
    object bpsqEmp: TSpeedButton
      Left = 385
      Top = 3
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
    object Label34: TLabel
      Left = 422
      Top = 6
      Width = 78
      Height = 14
      Caption = 'No. do Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 507
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
    object Label12: TLabel
      Left = 602
      Top = 30
      Width = 40
      Height = 14
      Caption = 'Doc/NF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 677
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
      Top = 30
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
    object bpsqFor: TSpeedButton
      Left = 225
      Top = 27
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
    object Label33: TLabel
      Left = 523
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
      Left = 547
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
    object Label5: TLabel
      Left = 4
      Top = 54
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
    object bpsqPfa: TSpeedButton
      Left = 225
      Top = 51
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
    object Label52: TLabel
      Left = 553
      Top = 78
      Width = 117
      Height = 14
      Caption = 'Região Operacional'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 4
      Top = 126
      Width = 63
      Height = 14
      Caption = 'Dt. Entrada'
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
    object Label36: TLabel
      Left = 253
      Top = 126
      Width = 85
      Height = 14
      Caption = 'Dt. Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label48: TLabel
      Left = 346
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
    object Label37: TLabel
      Left = 614
      Top = 126
      Width = 60
      Height = 14
      Caption = 'Dt. Crédito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 677
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
    object Label38: TLabel
      Left = 4
      Top = 150
      Width = 53
      Height = 14
      Caption = '(%) ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
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
    object Label40: TLabel
      Left = 253
      Top = 150
      Width = 41
      Height = 14
      Caption = '(%) IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 346
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
    object Label46: TLabel
      Left = 458
      Top = 150
      Width = 52
      Height = 14
      Caption = '(%) Desc'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 512
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
    object Label50: TLabel
      Left = 614
      Top = 150
      Width = 39
      Height = 14
      Caption = '(%) CF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label51: TLabel
      Left = 677
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
    object Label11: TLabel
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
    object Label28: TLabel
      Left = 614
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
      Left = 677
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
    object Label31: TLabel
      Left = 602
      Top = 6
      Width = 61
      Height = 14
      Caption = 'Emitido Em'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label55: TLabel
      Left = 677
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
    object Label20: TLabel
      Left = 677
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label59: TLabel
      Left = 458
      Top = 126
      Width = 62
      Height = 14
      Caption = 'No. Serie :'
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
      Width = 362
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
      TabOrder = 19
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumEnt: TdxDBColorEdit
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
      DataField = 'NUMENT'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumEnt: TPanel
      Left = 127
      Top = 6
      Width = 93
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
      Left = 311
      Top = 2
      Width = 74
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
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNumPed: TdxDBColorEdit
      Left = 513
      Top = 2
      Width = 85
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
      TabOrder = 3
      OnEnter = EdNumPedEnter
      OnExit = EdNumPedExit
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'NUMPED'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNumDoc: TdxDBColorEdit
      Left = 682
      Top = 26
      Width = 105
      Hint = 'Nro. do Documento de Entrada'
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
      OnEnter = EdNumPedEnter
      OnExit = EdNumDocExit
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'NUMDOC'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodFor: TdxDBColorEdit
      Left = 125
      Top = 26
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
      TabOrder = 5
      OnEnter = EdCodForEnter
      OnExit = EdCodForExit
      OnKeyDown = EdCodForKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODFOR'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomFor: TdxDBColorEdit
      Left = 250
      Top = 26
      Width = 268
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
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomFor: TPanel
      Left = 254
      Top = 29
      Width = 260
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdUfeEnt: TdxDBColorEdit
      Left = 554
      Top = 26
      Width = 44
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
      TabOrder = 8
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEENT'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnUfeEnt: TPanel
      Left = 556
      Top = 29
      Width = 38
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 125
      Top = 50
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
      TabOrder = 11
      OnEnter = EdCodForEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsEnt
      MaxLength = 15
      CorDeFoco = clInfoBk
      StoredValues = 3
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 250
      Top = 50
      Width = 537
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
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 255
      Top = 53
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
      TabOrder = 13
    end
    object EdClpEnt: TdxDBColorEdit
      Left = 125
      Top = 74
      Width = 100
      Hint = 'Classificação dos Itens a Serem Informados na Entrada'
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
      OnEnter = EdCodForEnter
      OnExit = EdClpEntExit
      OnKeyDown = EdClpEntKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomClp: TdxDBColorEdit
      Left = 250
      Top = 74
      Width = 300
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
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomClp: TPanel
      Left = 254
      Top = 77
      Width = 292
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object EdDteOpe: TdxDBColorDateEdit
      Left = 125
      Top = 122
      Width = 100
      Hint = 'Data da Entrada'
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
      OnEnter = EdNumPedEnter
      Alignment = taCenter
      DataField = 'DTEOPE'
      DataSource = DsEnt
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDteDoc: TdxDBColorDateEdit
      Left = 352
      Top = 122
      Width = 103
      Hint = 'Data de Emissão do Documento'
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
      OnEnter = EdNumPedEnter
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTEDOC'
      DataSource = DsEnt
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 5
    end
    object EdDteCre: TdxDBColorDateEdit
      Left = 682
      Top = 122
      Width = 105
      Hint = 'Data para Credito dos Impostos'
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
      OnEnter = EdNumPedEnter
      OnExit = EdDteCreExit
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTECRE'
      DataSource = DsEnt
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 5
    end
    object EdIcmEnt: TdxDBColorCurrencyEdit
      Left = 125
      Top = 146
      Width = 100
      Hint = 'Aliquota de ICMS Padrão para a Entrada'
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
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMENT'
      DataSource = DsEnt
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiEnt: TdxDBColorCurrencyEdit
      Left = 352
      Top = 146
      Width = 103
      Hint = 'Aliquota de IPI Padrão para a Entrada'
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
      TabOrder = 27
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIENT'
      DataSource = DsEnt
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscEnt: TdxDBColorCurrencyEdit
      Left = 523
      Top = 146
      Width = 89
      Hint = 'Percentual de Desconto Padrão para a Entrada'
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
      TabOrder = 28
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCENT'
      DataSource = DsEnt
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPacEnt: TdxDBColorCurrencyEdit
      Left = 682
      Top = 146
      Width = 105
      Hint = 'Percentual de Custo Financeiro Padrão para a Entrada'
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
      TabOrder = 29
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACENT'
      DataSource = DsEnt
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
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
      TabOrder = 18
      OnEnter = EdCodForEnter
      OnExit = EdCodTmoExit
      OnKeyDown = EdCodTmoKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODTMO'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomTmo: TPanel
      Left = 254
      Top = 101
      Width = 354
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 682
      Top = 98
      Width = 105
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
      TabOrder = 21
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALTMO'
      DataSource = DsEnt
      DecimalPlaces = 4
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDtePed: TdxDBColorDateEdit
      Left = 682
      Top = 2
      Width = 105
      Hint = 'Data de Emissão do Pedido de Compra'
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
      OnEnter = EdNumPedEnter
      OnExit = EdDtePedExit
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTEPED'
      DataSource = DsEnt
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 5
    end
    object EdCodTip: TdxDBColorCurrencyEdit
      Left = 682
      Top = 74
      Width = 105
      Hint = 'Região Operacional do Fornecedor (1,2,3)'
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
      OnEnter = EdNumPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'CODTIP'
      DataSource = DsEnt
      MaxLength = 1
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxValue = 3
      MinValue = 1
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 51
    end
    object EdFlgOco: TdxDBColorEdit
      Left = 224
      Top = 1
      Width = 27
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
      TabOrder = 30
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FLGOCO'
      CorDeFoco = clInfoBk
      Height = 25
      StoredValues = 1
    end
    object pnFlgOco: TPanel
      Left = 225
      Top = 3
      Width = 22
      Height = 19
      BevelOuter = bvNone
      Color = clLime
      TabOrder = 31
    end
    object EdSerNot: TdxDBColorEdit
      Left = 523
      Top = 122
      Width = 79
      Hint = 'No. de Serie do Documento Fiscal'
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
      OnEnter = EdNumPedEnter
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'SERNOT'
      DataSource = DsEnt
      MaxLength = 3
      CorDeFoco = clInfoBk
      StoredValues = 3
    end
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 563
    Top = 382
    Width = 224
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
    TabOrder = 7
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 78
  end
  object Panel4: TPanel
    Left = 565
    Top = 384
    Width = 218
    Height = 72
    BevelOuter = bvNone
    TabOrder = 3
    object Label41: TLabel
      Left = 3
      Top = 2
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
    object Label42: TLabel
      Left = 111
      Top = 2
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
    object Label27: TLabel
      Left = 3
      Top = 51
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
    object Label43: TLabel
      Left = 111
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
    object Label58: TLabel
      Left = 3
      Top = 26
      Width = 102
      Height = 14
      Caption = 'Total da Entrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label60: TLabel
      Left = 111
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
    object pnTotEnt: TPanel
      Left = 114
      Top = 2
      Width = 102
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
      TabOrder = 0
    end
    object pnNroEn2: TPanel
      Left = 139
      Top = 51
      Width = 77
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
      TabOrder = 1
    end
    object pnTotGer: TPanel
      Left = 114
      Top = 26
      Width = 102
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
      TabOrder = 2
    end
  end
  object CmpEnt: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpEntNewRecord
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
      '           EstPfa.DscPfa,'
      '           FinFor.CodTmo as ModFor'
      'From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'
      
        '                     LEFT JOIN EstPfa ON (CmpEnt.CodPfa = EstPfa' +
        '.CodPfa)'
      
        '                                                 AND (CmpEnt.Tip' +
        'Pfa = EstPfa.TipPfa)'
      'Where CmpEnt.CodEmp = :CodEmp'
      '     and CmpEnt.DteEnt = :DteEnt'
      '     and CmpEnt.NumEnt = :NumEnt')
    UpdateObject = UpEnt
    ValidateWithMask = True
    Left = 5
    Top = 241
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteEnt'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumEnt'
        ParamType = ptInput
      end>
    object CmpEntCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.CMPENT.CODEMP'
    end
    object CmpEntNUMENT: TIntegerField
      FieldName = 'NUMENT'
      Origin = 'ISADE.CMPENT.NUMENT'
    end
    object CmpEntCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = 'ISADE.CMPENT.CODFOR'
    end
    object CmpEntCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Origin = 'ISADE.CMPENT.CONPLC'
    end
    object CmpEntSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Origin = 'ISADE.CMPENT.SUBPLC'
    end
    object CmpEntDTEENT: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEENT'
      Origin = 'ISADE.CMPENT.DTEENT'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.CMPENT.CODPFA'
      FixedChar = True
      Size = 15
    end
    object CmpEntTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.CMPENT.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object CmpEntCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.CMPENT.CODCFO'
      FixedChar = True
      Size = 8
    end
    object CmpEntCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'ISADE.CMPENT.CODTIP'
    end
    object CmpEntNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
      Origin = 'ISADE.CMPENT.NUMDOC'
    end
    object CmpEntDTEDOC: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEDOC'
      Origin = 'ISADE.CMPENT.DTEDOC'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntDTECRE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECRE'
      Origin = 'ISADE.CMPENT.DTECRE'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'ISADE.CMPENT.NUMPED'
    end
    object CmpEntICMENT: TFloatField
      FieldName = 'ICMENT'
      Origin = 'ISADE.CMPENT.ICMENT'
      DisplayFormat = '###0'
      Precision = 2
    end
    object CmpEntIPIENT: TFloatField
      FieldName = 'IPIENT'
      Origin = 'ISADE.CMPENT.IPIENT'
      DisplayFormat = '###0'
      Precision = 2
    end
    object CmpEntCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.CMPENT.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpEntOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.CMPENT.OBSENT'
      FixedChar = True
      Size = 40
    end
    object CmpEntQTIENT: TIntegerField
      FieldName = 'QTIENT'
      Origin = 'ISADE.CMPENT.QTIENT'
    end
    object CmpEntSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.CMPENT.SEQITE'
    end
    object CmpEntQTPENT: TIntegerField
      FieldName = 'QTPENT'
      Origin = 'ISADE.CMPENT.QTPENT'
    end
    object CmpEntLINENT: TIntegerField
      FieldName = 'LINENT'
      Origin = 'ISADE.CMPENT.LINENT'
    end
    object CmpEntBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPENT.BASIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPENT.TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPENT.BASICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPENT.TOTICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPENT.BASSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPENT.TOTSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTENT: TFloatField
      FieldName = 'TOTENT'
      Origin = 'ISADE.CMPENT.TOTENT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.CMPENT.TOTFRT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.CMPENT.TOTSEG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.CMPENT.TOTDES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.CMPENT.ICMFRT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.CMPENT.BAICMF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.CMPENT.TOICMF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.CMPENT.ICMSEG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.CMPENT.BAICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.CMPENT.TOICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.CMPENT.ICMDES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.CMPENT.BAICMD'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.CMPENT.TOICMD'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.CMPENT.IPIFRT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.CMPENT.BAIPIF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.CMPENT.TOIPIF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.CMPENT.IPISEG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.CMPENT.BAIPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.CMPENT.TOIPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.CMPENT.IPIDES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.CMPENT.BAIPID'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.CMPENT.TOIPID'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPENT.TOTLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPENT.TOTBRT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBASICC: TFloatField
      FieldName = 'BASICC'
      Origin = 'ISADE.CMPENT.BASICC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTICC: TFloatField
      FieldName = 'TOTICC'
      Origin = 'ISADE.CMPENT.TOTICC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASSUC: TFloatField
      FieldName = 'BASSUC'
      Origin = 'ISADE.CMPENT.BASSUC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTSUC: TFloatField
      FieldName = 'TOTSUC'
      Origin = 'ISADE.CMPENT.TOTSUC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTENC: TFloatField
      FieldName = 'TOTENC'
      Origin = 'ISADE.CMPENT.TOTENC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTIPC: TFloatField
      FieldName = 'TOTIPC'
      Origin = 'ISADE.CMPENT.TOTIPC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntSITENT: TStringField
      FieldName = 'SITENT'
      Origin = 'ISADE.CMPENT.SITENT'
      FixedChar = True
      Size = 10
    end
    object CmpEntUFEENT: TStringField
      FieldName = 'UFEENT'
      Origin = 'ISADE.CMPENT.CODEMP'
      FixedChar = True
      Size = 2
    end
    object CmpEntHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.CMPENT.HREENT'
      FixedChar = True
      Size = 8
    end
    object CmpEntFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.CMPENT.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object CmpEntTOTPED: TFloatField
      FieldName = 'TOTPED'
      Origin = 'ISADE.CMPENT.TOTPED'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.CMPENT.TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTGEC: TFloatField
      FieldName = 'TOTGEC'
      Origin = 'ISADE.CMPENT.TOTGEC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.CMPENT.CODUSU'
    end
    object CmpEntCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.CMPENT.CODFIL'
    end
    object CmpEntCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Origin = 'ISADE.CMPENT.CODTMO'
    end
    object CmpEntVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.CMPENT.VALTMO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEntEMPPED: TIntegerField
      FieldName = 'EMPPED'
      Origin = 'ISADE.CMPENT.EMPPED'
    end
    object CmpEntDTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Origin = 'ISADE.CMPENT.DTEPED'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntQTLENT: TIntegerField
      FieldName = 'QTLENT'
      Origin = 'ISADE.CMPENT.QTLENT'
    end
    object CmpEntMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.CMPENT.MEDDSC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPENT.TOTDSC'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntPACENT: TFloatField
      FieldName = 'PACENT'
      Origin = 'ISADE.CMPENT.PACENT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.CMPENT.MEDACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.CMPENT.TOTACR'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.CMPENT.LANEST'
      FixedChar = True
      Size = 3
    end
    object CmpEntATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.CMPENT.ATUEST'
      FixedChar = True
      Size = 3
    end
    object CmpEntINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.CMPENT.INTFIN'
      FixedChar = True
      Size = 3
    end
    object CmpEntCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.CMPENT.CONSUM'
      FixedChar = True
      Size = 3
    end
    object CmpEntCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.CMPENT.CODIPI'
      FixedChar = True
      Size = 30
    end
    object CmpEntTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPENT.TIPIPI'
      FixedChar = True
      Size = 7
    end
    object CmpEntTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPENT.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object CmpEntREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPENT.REDIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPENT.BSCIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.CMPENT.CODICM'
      FixedChar = True
    end
    object CmpEntTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPENT.TIPICM'
      FixedChar = True
      Size = 7
    end
    object CmpEntTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPENT.TRBICM'
      FixedChar = True
      Size = 3
    end
    object CmpEntREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPENT.REDICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPENT.BSCICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPENT.INCREV'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPENT.INCFIN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.CMPENT.TXFIPI'
      FixedChar = True
      Size = 160
    end
    object CmpEntTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.CMPENT.TXFICM'
      FixedChar = True
      Size = 160
    end
    object CmpEntSEQENT: TStringField
      FieldName = 'SEQENT'
      Origin = 'ISADE.CMPENT.SEQENT'
      FixedChar = True
      Size = 22
    end
    object CmpEntDSCENT: TFloatField
      FieldName = 'DSCENT'
      Origin = 'ISADE.CMPENT.DSCENT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.CMPENT.BSICMF'
    end
    object CmpEntBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.CMPENT.BSICMS'
    end
    object CmpEntBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.CMPENT.BSICMD'
    end
    object CmpEntBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.CMPENT.BSIPIF'
    end
    object CmpEntBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.CMPENT.BSIPIS'
    end
    object CmpEntBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.CMPENT.BSIPID'
    end
    object CmpEntINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.CMPENT.INFLIQ'
    end
    object CmpEntINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.CMPENT.INFBRT'
    end
    object CmpEntLANENT: TFloatField
      FieldName = 'LANENT'
      Origin = 'ISADE.CMPENT.LANENT'
    end
    object CmpEntSLDENT: TFloatField
      FieldName = 'SLDENT'
      Origin = 'ISADE.CMPENT.SLDENT'
    end
    object CmpEntDTEOPE: TDateTimeField
      FieldName = 'DTEOPE'
      Origin = 'ISADE.CMPENT.DTEOPE'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.CMPENT.TOTDSR'
    end
    object CmpEntFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.CMPENT.FLGATU'
      FixedChar = True
      Size = 1
    end
    object CmpEntFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Origin = 'ISADE.CMPENT.FLGOCO'
      FixedChar = True
      Size = 1
    end
    object CmpEntEMPOEN: TIntegerField
      FieldName = 'EMPOEN'
      Origin = 'ISADE.CMPENT.EMPOEN'
    end
    object CmpEntDTEOEN: TDateTimeField
      FieldName = 'DTEOEN'
      Origin = 'ISADE.CMPENT.DTEOEN'
      EditMask = '!99/99/9999;1; '
    end
    object CmpEntNUMOEN: TIntegerField
      FieldName = 'NUMOEN'
      Origin = 'ISADE.CMPENT.NUMOEN'
    end
    object CmpEntTOTDCC: TFloatField
      FieldName = 'TOTDCC'
      Origin = 'ISADE.CMPENT.TOTDCC'
    end
    object CmpEntTOTACC: TFloatField
      FieldName = 'TOTACC'
      Origin = 'ISADE.CMPENT.TOTACC'
    end
    object CmpEntBAICMA: TFloatField
      FieldName = 'BAICMA'
    end
    object CmpEntTOICMA: TFloatField
      FieldName = 'TOICMA'
    end
    object CmpEntBAIPIA: TFloatField
      FieldName = 'BAIPIA'
    end
    object CmpEntTOIPIA: TFloatField
      FieldName = 'TOIPIA'
    end
    object CmpEntMODFOR: TIntegerField
      FieldName = 'MODFOR'
    end
    object CmpEntTOTOEN: TFloatField
      FieldName = 'TOTOEN'
    end
    object CmpEntMESENT: TStringField
      FieldName = 'MESENT'
      FixedChar = True
      Size = 3
    end
    object CmpEntANOENT: TIntegerField
      FieldName = 'ANOENT'
    end
    object CmpEntMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object CmpEntAPEFOR: TStringField
      FieldName = 'APEFOR'
      FixedChar = True
    end
    object CmpEntTENFOR: TStringField
      FieldName = 'TENFOR'
      FixedChar = True
      Size = 10
    end
    object CmpEntENDFOR: TStringField
      FieldName = 'ENDFOR'
      FixedChar = True
      Size = 40
    end
    object CmpEntNUMFOR: TStringField
      FieldName = 'NUMFOR'
      FixedChar = True
      Size = 10
    end
    object CmpEntBAIFOR: TStringField
      FieldName = 'BAIFOR'
      FixedChar = True
    end
    object CmpEntCIDFOR: TStringField
      FieldName = 'CIDFOR'
      FixedChar = True
    end
    object CmpEntSIGUFE: TStringField
      FieldName = 'SIGUFE'
      FixedChar = True
      Size = 2
    end
    object CmpEntPRTFOR: TStringField
      FieldName = 'PRTFOR'
      FixedChar = True
      Size = 4
    end
    object CmpEntFONFOR: TStringField
      FieldName = 'FONFOR'
      FixedChar = True
    end
    object CmpEntPRFFOR: TStringField
      FieldName = 'PRFFOR'
      FixedChar = True
      Size = 4
    end
    object CmpEntFAXFOR: TStringField
      FieldName = 'FAXFOR'
      FixedChar = True
    end
    object CmpEntNOMFOR: TStringField
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 40
    end
    object CmpEntFLGENT: TStringField
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 3
    end
    object CmpEntQTDOEN: TIntegerField
      FieldName = 'QTDOEN'
    end
    object CmpEntSEQOEN: TIntegerField
      FieldName = 'SEQOEN'
    end
    object CmpEntDSCPFA: TStringField
      FieldName = 'DSCPFA'
      FixedChar = True
      Size = 100
    end
    object CmpEntEMPCNO: TIntegerField
      FieldName = 'EMPCNO'
    end
    object CmpEntDTECNO: TDateTimeField
      FieldName = 'DTECNO'
    end
    object CmpEntNUMCNO: TIntegerField
      FieldName = 'NUMCNO'
    end
    object CmpEntPERACR: TFloatField
      FieldName = 'PERACR'
    end
    object CmpEntTOTACP: TFloatField
      FieldName = 'TOTACP'
    end
    object CmpEntBASIMP: TFloatField
      FieldName = 'BASIMP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTFOR: TFloatField
      FieldName = 'TOTFOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntVCOFOR: TFloatField
      FieldName = 'VCOFOR'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEntVCOEMP: TFloatField
      FieldName = 'VCOEMP'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEntVDOFSC: TFloatField
      FieldName = 'VDOFSC'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEntDESFOR: TFloatField
      FieldName = 'DESFOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntFLGENV: TStringField
      FieldName = 'FLGENV'
      FixedChar = True
      Size = 3
    end
    object CmpEntFLGSIN: TStringField
      FieldName = 'FLGSIN'
      FixedChar = True
      Size = 3
    end
    object CmpEntSERNOT: TStringField
      FieldName = 'SERNOT'
      FixedChar = True
      Size = 3
    end
    object CmpEntLANCST: TStringField
      FieldName = 'LANCST'
      FixedChar = True
      Size = 3
    end
    object CmpEntHRCENT: TStringField
      FieldName = 'HRCENT'
      FixedChar = True
      Size = 8
    end
    object CmpEntDTCENT: TDateTimeField
      FieldName = 'DTCENT'
    end
    object CmpEntUSCENT: TIntegerField
      FieldName = 'USCENT'
    end
    object CmpEntOBCENT: TStringField
      FieldName = 'OBCENT'
      Size = 200
    end
    object CmpEntTRBPIS: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object CmpEntTRBCOF: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object CmpEntPERPIS: TFloatField
      FieldName = 'PERPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntPERCOF: TFloatField
      FieldName = 'PERCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASPIS: TFloatField
      FieldName = 'BASPIS'
    end
    object CmpEntBASCOF: TFloatField
      FieldName = 'BASCOF'
    end
    object CmpEntTOTPIC: TFloatField
      FieldName = 'TOTPIC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEntTOTCOC: TFloatField
      FieldName = 'TOTCOC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object CmpEn2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpEn2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpEn2.*,'
      
        '           TextoOcor(CmpEn2.CodGru,'#39'.'#39',CmpEn2.CodSub,'#39'.'#39',CmpEn2.' +
        'CodPro,'#39#39','#39#39') as CodIte From CmpEn2'
      'Where CmpEn2.CodEmp = :CodEmp'
      '     and CmpEn2.DteEnt = :DteEnt'
      '     and CmpEn2.NumEnt = :NumEnt'
      'Order by CmpEn2.NroEn2')
    UpdateObject = UpEn2
    ValidateWithMask = True
    Left = 5
    Top = 269
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteEnt'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumEnt'
        ParamType = ptInput
      end>
    object CmpEn2CODCLP: TStringField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.CMPEN2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpEn2CODGRU: TStringField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODGRU'
      Origin = 'ISADE.CMPEN2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpEn2CODSUB: TStringField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODSUB'
      Origin = 'ISADE.CMPEN2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpEn2CODPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 9
      FieldName = 'CODPRO'
      Origin = 'ISADE.CMPEN2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpEn2QTPEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTPEN2'
      Origin = 'ISADE.CMPEN2.QTPEN2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2VLUEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLUEN2'
      Origin = 'ISADE.CMPEN2.VLUEN2'
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpEn2CODUND: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.CMPEN2.CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpEn2ICMEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'ICMEN2'
      Origin = 'ISADE.CMPEN2.CLSIPI'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpEn2IPIEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPIEN2'
      Origin = 'ISADE.CMPEN2.VACEN2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpEn2IMPEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IMPEN2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpEn2DSCEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'DSCEN2'
      Origin = 'ISADE.CMPEN2.DIFEN2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2VLQEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLQEN2'
      Origin = 'ISADE.CMPEN2.VLQEN2'
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpEn2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTGE2'
      Origin = 'ISADE.CMPEN2.TOTEN2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2PACEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'PACEN2'
      Origin = 'ISADE.CMPEN2.VDSEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTEN2: TFloatField
      DisplayLabel = '                      '
      DisplayWidth = 13
      FieldName = 'TOTEN2'
      Origin = 'ISADE.CMPEN2.TOTPE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2CODTAM: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODTAM'
      Origin = 'ISADE.CMPEN2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEn2CODCOR: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCOR'
      Origin = 'ISADE.CMPEN2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEn2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.CMPEN2.CODEMP'
      Visible = False
    end
    object CmpEn2NUMENT: TIntegerField
      FieldName = 'NUMENT'
      Origin = 'ISADE.CMPEN2.NUMENT'
      Visible = False
    end
    object CmpEn2SEQEN2: TIntegerField
      FieldName = 'SEQEN2'
      Origin = 'ISADE.CMPEN2.SEQEN2'
      Visible = False
    end
    object CmpEn2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.CMPEN2.CODEIT'
      Visible = False
    end
    object CmpEn2DESEN2: TStringField
      FieldName = 'DESEN2'
      Origin = 'ISADE.CMPEN2.DESEN2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpEn2OBSEN2: TStringField
      FieldName = 'OBSEN2'
      Origin = 'ISADE.CMPEN2.OBSEN2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpEn2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.CMPEN2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPEN2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.CMPEN2.REGICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPEN2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.CMPEN2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.CMPEN2.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpEn2LIQEN2: TFloatField
      FieldName = 'LIQEN2'
      Origin = 'ISADE.CMPEN2.LIQEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2BRTEN2: TFloatField
      FieldName = 'BRTEN2'
      Origin = 'ISADE.CMPEN2.BRTEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpEn2LINEN2: TIntegerField
      FieldName = 'LINEN2'
      Origin = 'ISADE.CMPEN2.LINEN2'
      Visible = False
    end
    object CmpEn2VDSEN2: TFloatField
      FieldName = 'VDSEN2'
      Origin = 'ISADE.CMPEN2.DSCEN2'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpEn2VACEN2: TFloatField
      FieldName = 'VACEN2'
      Origin = 'ISADE.CMPEN2.PACEN2'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpEn2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPEN2.IPIEN2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpEn2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPEN2.ICMEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPEN2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPEN2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPEN2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPEN2.TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPEN2.TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpEn2NROEN2: TIntegerField
      FieldName = 'NROEN2'
      Origin = 'ISADE.CMPEN2.TOTBRT'
      Visible = False
    end
    object CmpEn2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.CMPEN2.NROEN2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2DTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.CMPEN2.DTEENT'
      Visible = False
    end
    object CmpEn2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPEN2.BASSUB'
      Visible = False
    end
    object CmpEn2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPEN2.TOTSUB'
      Visible = False
    end
    object CmpEn2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPEN2.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpEn2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.CMPEN2.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpEn2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.CMPEN2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpEn2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.CMPEN2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpEn2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPEN2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPEN2.REDIPI'
      Visible = False
    end
    object CmpEn2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPEN2.BSCIPI'
      Visible = False
    end
    object CmpEn2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPEN2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPEN2.REDICM'
      Visible = False
    end
    object CmpEn2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPEN2.BSCICM'
      Visible = False
    end
    object CmpEn2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPEN2.INCREV'
      Visible = False
    end
    object CmpEn2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPEN2.INCFIN'
      Visible = False
    end
    object CmpEn2EMPPED: TIntegerField
      FieldName = 'EMPPED'
      Origin = 'ISADE.CMPEN2.EMPPED'
      Visible = False
    end
    object CmpEn2DTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Origin = 'ISADE.CMPEN2.DTEPED'
      Visible = False
    end
    object CmpEn2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'ISADE.CMPEN2.NUMPED'
      Visible = False
    end
    object CmpEn2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Origin = 'ISADE.CMPEN2.SEQPE2'
      Visible = False
    end
    object CmpEn2FLGDUP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDUP'
      Origin = 'ISADE.CMPEN2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2CODITE: TStringField
      FieldName = 'CODITE'
      Visible = False
      FixedChar = True
      Size = 100
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
    object CmpEn2QTDNFS: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDNFS'
      Visible = False
    end
    object CmpEn2VLQNFS: TFloatField
      DisplayWidth = 10
      FieldName = 'VLQNFS'
      Visible = False
    end
    object CmpEn2EMPNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPNFS'
      Visible = False
    end
    object CmpEn2DTENFS: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTENFS'
      Visible = False
    end
    object CmpEn2SEQNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNFS'
      Visible = False
    end
    object CmpEn2SEQNF2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNF2'
      Visible = False
    end
    object CmpEn2SEQNFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNFE'
      Visible = False
    end
    object CmpEn2BASIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIMP'
      Visible = False
    end
    object CmpEn2TOTIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIMP'
      Visible = False
    end
    object CmpEn2TOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Visible = False
    end
    object CmpEn2TOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Visible = False
    end
    object CmpEn2BASPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASPIS'
      Visible = False
    end
    object CmpEn2BASCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'BASCOF'
      Visible = False
    end
    object CmpEn2CODCFO: TStringField
      DisplayWidth = 10
      FieldName = 'CODCFO'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpEn2TRBSUB: TStringField
      DisplayWidth = 3
      FieldName = 'TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2ICMSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      Visible = False
      DisplayFormat = '##0.00'
    end
    object CmpEn2MRGSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASESB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASESB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
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
      '  CODTIP = :CODTIP,'
      '  CODTMO = :CODTMO,'
      '  VALTMO = :VALTMO,'
      '  NUMDOC = :NUMDOC,'
      '  DTEDOC = :DTEDOC,'
      '  DTECRE = :DTECRE,'
      '  EMPPED = :EMPPED,'
      '  NUMPED = :NUMPED,'
      '  DTEPED = :DTEPED,'
      '  UFEENT = :UFEENT,'
      '  CODCLP = :CODCLP,'
      '  OBSENT = :OBSENT,'
      '  ICMENT = :ICMENT,'
      '  IPIENT = :IPIENT,'
      '  DSCENT = :DSCENT,'
      '  PACENT = :PACENT,'
      '  TOTDCC = :TOTDCC,'
      '  TOTACC = :TOTACC,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  BASICC = :BASICC,'
      '  TOTICC = :TOTICC,'
      '  BASSUC = :BASSUC,'
      '  TOTSUC = :TOTSUC,'
      '  TOTENC = :TOTENC,'
      '  TOTIPC = :TOTIPC,'
      '  TOTGEC = :TOTGEC,'
      '  CODUSU = :CODUSU,'
      '  FLGATU = :FLGATU,'
      '  SEQENT = :SEQENT,'
      '  SITENT = :SITENT,'
      '  PERACR = :PERACR,'
      '  VDOFSC = :VDOFSC,'
      '  VCOFOR = :VCOFOR,'
      '  VCOEMP = :VCOEMP,'
      '  TOTFOR = :TOTFOR,'
      '  DESFOR = :DESFOR,'
      '  TOTACP = :TOTACP,'
      '  SERNOT = :SERNOT,'
      '  TOTPIC = :TOTPIC,'
      '  TOTCOC = :TOTCOC,'
      '  LANCST = :LANCST'
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
      
        '   DESFOR, VCOFOR, VCOEMP, VDOFSC, FLGENV, FLGSIN, SERNOT, LANCS' +
        'T, '
      'HRCENT, '
      
        '   DTCENT, USCENT, OBCENT, TRBPIS, TRBCOF, PERPIS, PERCOF, TOTPI' +
        'S, '
      'TOTCOF, '
      '   BASPIS, BASCOF, TOTPIC, TOTCOC)'
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
      
        '   :VCOFOR, :VCOEMP, :VDOFSC, :FLGENV, :FLGSIN, :SERNOT, :LANCST' +
        ', '
      ':HRCENT, '
      
        '   :DTCENT, :USCENT, :OBCENT, :TRBPIS, :TRBCOF, :PERPIS, :PERCOF' +
        ', '
      ':TOTPIS, '
      '   :TOTCOF, :BASPIS, :BASCOF, :TOTPIC, :TOTCOC)')
    DeleteSQL.Strings = (
      'delete from CmpEnt'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEENT = :OLD_DTEENT and'
      '  NUMENT = :OLD_NUMENT')
    Left = 5
    Top = 297
  end
  object UpEn2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpEn2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESEN2 = :DESEN2,'
      '  OBSEN2 = :OBSEN2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  CLSIPI = :CLSIPI,'
      '  LINEN2 = :LINEN2,'
      '  LIQEN2 = :LIQEN2,'
      '  BRTEN2 = :BRTEN2,'
      '  QTPEN2 = :QTPEN2,'
      '  QTDPED = :QTDPED,'
      '  QTDNFS = :QTDNFS,'
      '  VLUEN2 = :VLUEN2,'
      '  VLQEN2 = :VLQEN2,'
      '  VLQPED = :VLQPED,'
      '  VLQNFS = :VLQNFS,'
      '  DSCEN2 = :DSCEN2,'
      '  VDSEN2 = :VDSEN2,'
      '  PACEN2 = :PACEN2,'
      '  VACEN2 = :VACEN2,'
      '  IMPEN2 = :IMPEN2,'
      '  IPIEN2 = :IPIEN2,'
      '  ICMEN2 = :ICMEN2,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  BASIMP = :BASIMP,'
      '  TOTIMP = :TOTIMP,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTEN2 = :TOTEN2,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTDSC = :TOTDSC,'
      '  TOTACR = :TOTACR,'
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
      '  EMPPED = :EMPPED,'
      '  DTEPED = :DTEPED,'
      '  NUMPED = :NUMPED,'
      '  SEQPE2 = :SEQPE2,'
      '  SEQPE3 = :SEQPE3,'
      '  EMPNFS = :EMPNFS,'
      '  DTENFS = :DTENFS,'
      '  SEQNFS = :SEQNFS,'
      '  SEQNF2 = :SEQNF2,'
      '  SEQNFE = :SEQNFE,'
      '  FLASEQ = :FLASEQ,'
      '  FLGDUP = :FLGDUP,'
      '  FLGQTD = :FLGQTD,'
      '  FLGVAL = :FLGVAL,'
      '  NROEN2 = :NROEN2,'
      '  MESENT = :MESENT,'
      '  ANOENT = :ANOENT,'
      '  VPFEN2 = :VPFEN2,'
      '  VPFOUT = :VPFOUT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  BASPIS = :BASPIS,'
      '  BASCOF = :BASCOF,'
      '  CODCFO = :CODCFO,'
      '  TRBSUB = :TRBSUB,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEENT = :OLD_DTEENT and'
      '  NUMENT = :OLD_NUMENT and'
      '  SEQEN2 = :OLD_SEQEN2')
    InsertSQL.Strings = (
      'insert into CmpEn2'
      
        '  (CODEMP, DTEENT, NUMENT, SEQEN2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, '
      'CODPRO, '
      
        '   CODTAM, CODCOR, DESEN2, OBSEN2, CODST1, CODST2, CODUND, CLSIP' +
        'I, '
      'LINEN2, '
      
        '   LIQEN2, BRTEN2, QTPEN2, QTDPED, QTDNFS, VLUEN2, VLQEN2, VLQPE' +
        'D, '
      'VLQNFS, '
      
        '   DSCEN2, VDSEN2, PACEN2, VACEN2, IMPEN2, IPIEN2, ICMEN2, TOTLI' +
        'Q, '
      'TOTBRT, '
      
        '   BASIMP, TOTIMP, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, '
      'TOTEN2, '
      
        '   TOTGE2, TOTDSC, TOTACR, CODSTR, TIPSTR, REGIPI, TIPIPI, TRBIP' +
        'I, '
      'REDIPI, '
      
        '   BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFI' +
        'N, '
      'EMPPED, '
      
        '   DTEPED, NUMPED, SEQPE2, SEQPE3, EMPNFS, DTENFS, SEQNFS, SEQNF' +
        '2, '
      'SEQNFE, '
      
        '   FLASEQ, FLGDUP, FLGQTD, FLGVAL, NROEN2, MESENT, ANOENT, VPFEN' +
        '2, '
      'VPFOUT, '
      
        '   TOTPIS, TOTCOF, BASPIS, BASCOF, CODCFO, TRBSUB, ICMSUB, MRGSU' +
        'B, '
      'BASESB)'
      'values'
      
        '  (:CODEMP, :DTEENT, :NUMENT, :SEQEN2, :CODEIT, :CODCLP, :CODGRU' +
        ', '
      ':CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESEN2, :OBSEN2, :CODST1, :CODST2' +
        ', '
      ':CODUND, '
      
        '   :CLSIPI, :LINEN2, :LIQEN2, :BRTEN2, :QTPEN2, :QTDPED, :QTDNFS' +
        ', :VLUEN2, '
      
        '   :VLQEN2, :VLQPED, :VLQNFS, :DSCEN2, :VDSEN2, :PACEN2, :VACEN2' +
        ', '
      ':IMPEN2, '
      
        '   :IPIEN2, :ICMEN2, :TOTLIQ, :TOTBRT, :BASIMP, :TOTIMP, :BASIPI' +
        ', :TOTIPI, '
      
        '   :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTEN2, :TOTGE2, :TOTDSC' +
        ', '
      ':TOTACR, '
      
        '   :CODSTR, :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI' +
        ', :REGICM, '
      
        '   :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :EMPPED' +
        ', :DTEPED, '
      
        '   :NUMPED, :SEQPE2, :SEQPE3, :EMPNFS, :DTENFS, :SEQNFS, :SEQNF2' +
        ', '
      ':SEQNFE, '
      
        '   :FLASEQ, :FLGDUP, :FLGQTD, :FLGVAL, :NROEN2, :MESENT, :ANOENT' +
        ', '
      ':VPFEN2, '
      
        '   :VPFOUT, :TOTPIS, :TOTCOF, :BASPIS, :BASCOF, :CODCFO, :TRBSUB' +
        ', '
      ':ICMSUB, '
      '   :MRGSUB, :BASESB)')
    DeleteSQL.Strings = (
      'delete from CmpEn2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEENT = :OLD_DTEENT and'
      '  NUMENT = :OLD_NUMENT and'
      '  SEQEN2 = :OLD_SEQEN2')
    Left = 33
    Top = 297
  end
  object DsEn2: TDataSource
    DataSet = CmpEn2
    OnDataChange = DsEn2DataChange
    Left = 33
    Top = 269
  end
  object DsEnt: TDataSource
    DataSet = CmpEnt
    Left = 33
    Top = 241
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 5
    Top = 325
  end
  object quSQL1: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 325
  end
end
