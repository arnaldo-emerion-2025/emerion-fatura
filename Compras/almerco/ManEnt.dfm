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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdQtpEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPEN2'
      DataSource = DsEn2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdVluEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUEN2'
      DataSource = DsEn2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMEN2'
      DataSource = DsEn2
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIEN2'
      DataSource = DsEn2
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IMPEN2'
      DataSource = DsEn2
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdDscEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCEN2'
      DataSource = DsEn2
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQEN2'
      DataSource = DsEn2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTITE'
      DataSource = DsEn2
      Nullable = False
      UseThousandSeparator = True
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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdVacEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VACEN2'
      DataSource = DsEn2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
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
      OnEnter = EdId_CmpPedEnter
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
      OnEnter = EdId_CmpPedEnter
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
      OnEnter = EdId_CmpPedEnter
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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdPacEn2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACEN2'
      DataSource = DsEn2
      DisplayFormat = '##0.00'
      Nullable = False
      UseThousandSeparator = True
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
      Left = 483
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
      Left = 543
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
      Left = 595
      Top = 6
      Width = 86
      Height = 14
      Caption = 'No. do Pedido :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 595
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
      Left = 532
      Top = 30
      Width = 22
      Height = 14
      Caption = 'UF :'
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
      TabOrder = 18
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdId_CmpEnt: TdxDBColorEdit
      Left = 125
      Top = 2
      Width = 100
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
      DataField = 'ID_CMPENT'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_CmpEnt: TPanel
      Left = 127
      Top = 5
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
      Left = 308
      Top = 2
      Width = 76
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
    object EdId_CmpPed: TdxDBColorEdit
      Left = 682
      Top = 2
      Width = 105
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
      OnEnter = EdId_CmpPedEnter
      OnExit = EdId_CmpPedExit
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'ID_CMPPED'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNumDoc: TdxDBColorEdit
      Left = 682
      Top = 26
      Width = 105
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
      Width = 279
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
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomFor: TPanel
      Left = 254
      Top = 29
      Width = 271
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object EdUfeEnt: TdxDBColorEdit
      Left = 556
      Top = 26
      Width = 37
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
      DataField = 'UFEENT'
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnUfeEnt: TPanel
      Left = 558
      Top = 29
      Width = 31
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 125
      Top = 50
      Width = 100
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
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 254
      Top = 53
      Width = 529
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
    object EdClpEnt: TdxDBColorEdit
      Left = 125
      Top = 74
      Width = 100
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
      TabOrder = 13
      OnEnter = EdCodEmpEnter
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
      TabOrder = 14
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
      TabOrder = 15
    end
    object EdDteOpe: TdxDBColorDateEdit
      Left = 125
      Top = 122
      Width = 100
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
      DataField = 'ICMENT'
      DataSource = DsEnt
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiEnt: TdxDBColorCurrencyEdit
      Left = 352
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 26
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIENT'
      DataSource = DsEnt
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscEnt: TdxDBColorCurrencyEdit
      Left = 523
      Top = 146
      Width = 89
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCENT'
      DataSource = DsEnt
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPacEnt: TdxDBColorCurrencyEdit
      Left = 682
      Top = 146
      Width = 105
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACENT'
      DataSource = DsEnt
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodTmo: TdxDBColorEdit
      Left = 125
      Top = 98
      Width = 100
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
      TabOrder = 19
    end
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 682
      Top = 98
      Width = 105
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
      DataField = 'VALTMO'
      DataSource = DsEnt
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodTip: TdxDBColorCurrencyEdit
      Left = 682
      Top = 74
      Width = 105
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
      TabOrder = 29
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
      TabOrder = 30
    end
    object EdSerNot: TdxDBColorEdit
      Left = 523
      Top = 122
      Width = 89
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'SERNOT'
      DataSource = DsEnt
      MaxLength = 3
      CorDeFoco = clInfoBk
      StoredValues = 3
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 411
      Top = 2
      Width = 182
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
      TabOrder = 31
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsEnt
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 415
      Top = 5
      Width = 174
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
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
      Caption = '000/000'
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
      '           FinFor.CodTmo as ModFor'
      'From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'
      'Where CmpEnt.Id_CmpEnt = :Id_CmpEnt')
    UpdateObject = UpEnt
    ValidateWithMask = True
    Left = 5
    Top = 241
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpEnt'
        ParamType = ptInput
      end>
    object CmpEntID_CMPENT: TIntegerField
      FieldName = 'ID_CMPENT'
    end
    object CmpEntCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CmpEntDTEENT: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEENT'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntDTEOPE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEOPE'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CmpEntCONPLC: TIntegerField
      FieldName = 'CONPLC'
    end
    object CmpEntSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
    end
    object CmpEntHREENT: TStringField
      FieldName = 'HREENT'
      FixedChar = True
      Size = 8
    end
    object CmpEntCODPFA: TStringField
      FieldName = 'CODPFA'
      Size = 15
    end
    object CmpEntTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Size = 7
    end
    object CmpEntMODPFA: TStringField
      FieldName = 'MODPFA'
    end
    object CmpEntCODCFO: TStringField
      FieldName = 'CODCFO'
      Size = 15
    end
    object CmpEntCODTIP: TIntegerField
      FieldName = 'CODTIP'
    end
    object CmpEntCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CmpEntCODTFO: TIntegerField
      FieldName = 'CODTFO'
    end
    object CmpEntCODTMO: TIntegerField
      FieldName = 'CODTMO'
    end
    object CmpEntVALTMO: TFloatField
      FieldName = 'VALTMO'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object CmpEntDTEDOC: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEDOC'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntDTECRE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECRE'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntID_CMPPED: TIntegerField
      FieldName = 'ID_CMPPED'
    end
    object CmpEntFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object CmpEntUFEENT: TStringField
      FieldName = 'UFEENT'
      FixedChar = True
      Size = 2
    end
    object CmpEntSERNOT: TStringField
      FieldName = 'SERNOT'
      FixedChar = True
      Size = 3
    end
    object CmpEntCODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpEntOB1ENT: TStringField
      FieldName = 'OB1ENT'
      Size = 80
    end
    object CmpEntOB2ENT: TStringField
      FieldName = 'OB2ENT'
      Size = 80
    end
    object CmpEntOB3ENT: TStringField
      FieldName = 'OB3ENT'
      Size = 80
    end
    object CmpEntOB4ENT: TStringField
      FieldName = 'OB4ENT'
      Size = 80
    end
    object CmpEntOB5ENT: TStringField
      FieldName = 'OB5ENT'
      Size = 80
    end
    object CmpEntOB6ENT: TStringField
      FieldName = 'OB6ENT'
      Size = 80
    end
    object CmpEntOB7ENT: TStringField
      FieldName = 'OB7ENT'
      Size = 80
    end
    object CmpEntOB8ENT: TStringField
      FieldName = 'OB8ENT'
      Size = 80
    end
    object CmpEntQTIENT: TIntegerField
      FieldName = 'QTIENT'
    end
    object CmpEntQTPENT: TIntegerField
      FieldName = 'QTPENT'
    end
    object CmpEntICMENT: TFloatField
      FieldName = 'ICMENT'
      DisplayFormat = '##0.00'
    end
    object CmpEntIPIENT: TFloatField
      FieldName = 'IPIENT'
      DisplayFormat = '##0.00'
    end
    object CmpEntDSCENT: TFloatField
      FieldName = 'DSCENT'
      DisplayFormat = '##0.00'
    end
    object CmpEntMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      DisplayFormat = '##0.00'
    end
    object CmpEntTOTDSC: TFloatField
      FieldName = 'TOTDSC'
    end
    object CmpEntTOTDCC: TFloatField
      FieldName = 'TOTDCC'
    end
    object CmpEntPACENT: TFloatField
      FieldName = 'PACENT'
      DisplayFormat = '##0.00'
    end
    object CmpEntMEDACR: TFloatField
      FieldName = 'MEDACR'
      DisplayFormat = '##0.00'
    end
    object CmpEntTOTACR: TFloatField
      FieldName = 'TOTACR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTACC: TFloatField
      FieldName = 'TOTACC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASIMP: TFloatField
      FieldName = 'BASIMP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASIPI: TFloatField
      FieldName = 'BASIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASICM: TFloatField
      FieldName = 'BASICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTICM: TFloatField
      FieldName = 'TOTICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASSUB: TFloatField
      FieldName = 'BASSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTPED: TFloatField
      FieldName = 'TOTPED'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTENT: TFloatField
      FieldName = 'TOTENT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTDES: TFloatField
      FieldName = 'TOTDES'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTGER: TFloatField
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASICC: TFloatField
      FieldName = 'BASICC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTICC: TFloatField
      FieldName = 'TOTICC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASSUC: TFloatField
      FieldName = 'BASSUC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTSUC: TFloatField
      FieldName = 'TOTSUC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTENC: TFloatField
      FieldName = 'TOTENC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTIPC: TFloatField
      FieldName = 'TOTIPC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTGEC: TFloatField
      FieldName = 'TOTGEC'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntLANENT: TFloatField
      FieldName = 'LANENT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntSLDENT: TFloatField
      FieldName = 'SLDENT'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntPERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object CmpEntPERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object CmpEntBASPIS: TFloatField
      FieldName = 'BASPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBASCOF: TFloatField
      FieldName = 'BASCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntINFBRT: TFloatField
      FieldName = 'INFBRT'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object CmpEntATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object CmpEntINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object CmpEntCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object CmpEntCODIPI: TStringField
      FieldName = 'CODIPI'
      Size = 30
    end
    object CmpEntTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Size = 7
    end
    object CmpEntTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object CmpEntREDIPI: TFloatField
      FieldName = 'REDIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntCODICM: TStringField
      FieldName = 'CODICM'
    end
    object CmpEntTIPICM: TStringField
      FieldName = 'TIPICM'
      Size = 7
    end
    object CmpEntTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object CmpEntREDICM: TFloatField
      FieldName = 'REDICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntBSCICM: TFloatField
      FieldName = 'BSCICM'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntINCREV: TFloatField
      FieldName = 'INCREV'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntINCFIN: TFloatField
      FieldName = 'INCFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object CmpEntFLGOCO: TStringField
      FieldName = 'FLGOCO'
      FixedChar = True
      Size = 3
    end
    object CmpEntTOTOEN: TFloatField
      FieldName = 'TOTOEN'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntFLGENT: TStringField
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 3
    end
    object CmpEntPERACR: TFloatField
      FieldName = 'PERACR'
      DisplayFormat = '##0.00'
    end
    object CmpEntTOTACP: TFloatField
      FieldName = 'TOTACP'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntTOTFOR: TFloatField
      FieldName = 'TOTFOR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntDESFOR: TFloatField
      FieldName = 'DESFOR'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEntVCOFOR: TFloatField
      FieldName = 'VCOFOR'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntVCOEMP: TFloatField
      FieldName = 'VCOEMP'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEntVDOFSC: TFloatField
      FieldName = 'VDOFSC'
      DisplayFormat = '###,###,##0.0000'
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
      EditMask = '!99/99/9999;1;_'
    end
    object CmpEntUSCENT: TIntegerField
      FieldName = 'USCENT'
    end
    object CmpEntOBCEN1: TStringField
      FieldName = 'OBCEN1'
      Size = 80
    end
    object CmpEntOBCEN2: TStringField
      FieldName = 'OBCEN2'
      Size = 80
    end
    object CmpEntOBCEN3: TStringField
      FieldName = 'OBCEN3'
      Size = 80
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
    object CmpEntID_CMPOEN: TIntegerField
      FieldName = 'ID_CMPOEN'
    end
    object CmpEntID_CMPCNO: TIntegerField
      FieldName = 'ID_CMPCNO'
    end
    object CmpEntSEQENT: TStringField
      FieldName = 'SEQENT'
      FixedChar = True
      Size = 22
    end
    object CmpEntFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object CmpEntSITENT: TStringField
      FieldName = 'SITENT'
      Size = 45
    end
    object CmpEntMODFOR: TIntegerField
      FieldName = 'MODFOR'
    end
    object CmpEntQTDOEN: TIntegerField
      FieldName = 'QTDOEN'
    end
    object CmpEntBSICMF: TFloatField
      FieldName = 'BSICMF'
    end
    object CmpEntBSICMS: TFloatField
      FieldName = 'BSICMS'
    end
    object CmpEntBSICMD: TFloatField
      FieldName = 'BSICMD'
    end
    object CmpEntBSIPIF: TFloatField
      FieldName = 'BSIPIF'
    end
    object CmpEntBSIPIS: TFloatField
      FieldName = 'BSIPIS'
    end
    object CmpEntBSIPID: TFloatField
      FieldName = 'BSIPID'
    end
    object CmpEntTOTITE: TFloatField
      FieldName = 'TOTITE'
    end
  end
  object CmpEn2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpEn2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsEnt
    SQL.Strings = (
      'Select * From CmpEn2'
      'Where CmpEn2.Id_CmpEnt = :Id_CmpEnt'
      'Order by CmpEn2.NroEn2')
    UpdateObject = UpEn2
    ValidateWithMask = True
    Left = 5
    Top = 269
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPENT'
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
    end
    object CmpEn2VLUEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLUEN2'
      Origin = 'ISADE.CMPEN2.VLUEN2'
      DisplayFormat = '###,###,##0.0000'
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
      Origin = 'ISADE.CMPEN2.ICMEN2'
      DisplayFormat = '##0.00'
    end
    object CmpEn2IPIEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPIEN2'
      Origin = 'ISADE.CMPEN2.IPIEN2'
      DisplayFormat = '##0.00'
    end
    object CmpEn2IMPEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IMPEN2'
      Origin = 'ISADE.CMPEN2.IMPEN2'
      DisplayFormat = '##0.00'
    end
    object CmpEn2DSCEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'DSCEN2'
      Origin = 'ISADE.CMPEN2.DSCEN2'
      DisplayFormat = '##0.00'
    end
    object CmpEn2VLQEN2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLQEN2'
      Origin = 'ISADE.CMPEN2.VLQEN2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTGE2'
      Origin = 'ISADE.CMPEN2.TOTGE2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2ID_CMPEN2: TIntegerField
      FieldName = 'ID_CMPEN2'
      Origin = 'ISADE.CMPEN2.ID_CMPEN2'
      Visible = False
    end
    object CmpEn2ID_CMPENT: TIntegerField
      FieldName = 'ID_CMPENT'
      Origin = 'ISADE.CMPEN2.ID_CMPENT'
      Visible = False
    end
    object CmpEn2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.CMPEN2.CODEIT'
      Visible = False
    end
    object CmpEn2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.CMPEN2.CODTAM'
      Visible = False
      Size = 10
    end
    object CmpEn2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.CMPEN2.CODCOR'
      Visible = False
      Size = 10
    end
    object CmpEn2DESEN2: TStringField
      FieldName = 'DESEN2'
      Origin = 'ISADE.CMPEN2.DESEN2'
      Visible = False
      Size = 70
    end
    object CmpEn2OBSEN2: TStringField
      FieldName = 'OBSEN2'
      Origin = 'ISADE.CMPEN2.OBSEN2'
      Visible = False
      Size = 70
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
    object CmpEn2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPEN2.CLSIPI'
      Visible = False
      Size = 30
    end
    object CmpEn2CODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.CMPEN2.CODCFO'
      Visible = False
      Size = 10
    end
    object CmpEn2ID_CMPPFO: TIntegerField
      FieldName = 'ID_CMPPFO'
      Origin = 'ISADE.CMPEN2.ID_CMPPFO'
      Visible = False
    end
    object CmpEn2LIQEN2: TFloatField
      FieldName = 'LIQEN2'
      Origin = 'ISADE.CMPEN2.LIQEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2BRTEN2: TFloatField
      FieldName = 'BRTEN2'
      Origin = 'ISADE.CMPEN2.BRTEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2QTDPED: TFloatField
      FieldName = 'QTDPED'
      Origin = 'ISADE.CMPEN2.QTDPED'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2QTDNFS: TFloatField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.CMPEN2.QTDNFS'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2VLQPED: TFloatField
      FieldName = 'VLQPED'
      Origin = 'ISADE.CMPEN2.VLQPED'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2VLQNFS: TFloatField
      FieldName = 'VLQNFS'
      Origin = 'ISADE.CMPEN2.VLQNFS'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2VPFEN2: TFloatField
      FieldName = 'VPFEN2'
      Origin = 'ISADE.CMPEN2.VPFEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2VPFOUT: TFloatField
      FieldName = 'VPFOUT'
      Origin = 'ISADE.CMPEN2.VPFOUT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2TIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.CMPEN2.TIPDSC'
      Visible = False
      Size = 10
    end
    object CmpEn2VDSEN2: TFloatField
      FieldName = 'VDSEN2'
      Origin = 'ISADE.CMPEN2.VDSEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2TIPACR: TStringField
      FieldName = 'TIPACR'
      Origin = 'ISADE.CMPEN2.TIPACR'
      Visible = False
      Size = 10
    end
    object CmpEn2PACEN2: TFloatField
      FieldName = 'PACEN2'
      Origin = 'ISADE.CMPEN2.PACEN2'
      Visible = False
      DisplayFormat = '##0.00'
    end
    object CmpEn2VACEN2: TFloatField
      FieldName = 'VACEN2'
      Origin = 'ISADE.CMPEN2.VACEN2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2BASIMP: TFloatField
      FieldName = 'BASIMP'
      Origin = 'ISADE.CMPEN2.BASIMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTIMP: TFloatField
      FieldName = 'TOTIMP'
      Origin = 'ISADE.CMPEN2.TOTIMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPEN2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPEN2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPEN2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPEN2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPEN2.BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPEN2.TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTEN2: TFloatField
      FieldName = 'TOTEN2'
      Origin = 'ISADE.CMPEN2.TOTEN2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.CMPEN2.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.CMPEN2.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASPIS: TFloatField
      FieldName = 'BASPIS'
      Origin = 'ISADE.CMPEN2.BASPIS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.CMPEN2.TOTPIS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASCOF: TFloatField
      FieldName = 'BASCOF'
      Origin = 'ISADE.CMPEN2.BASCOF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.CMPEN2.TOTCOF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPEN2.TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPEN2.TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpEn2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.CMPEN2.CODSTR'
      Visible = False
    end
    object CmpEn2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.CMPEN2.TIPSTR'
      Visible = False
      Size = 7
    end
    object CmpEn2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.CMPEN2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.CMPEN2.ICMSUB'
      Visible = False
      DisplayFormat = '##0.00'
    end
    object CmpEn2MRGSUB: TFloatField
      FieldName = 'MRGSUB'
      Origin = 'ISADE.CMPEN2.MRGSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.CMPEN2.BASESB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.CMPEN2.REGIPI'
      Visible = False
      Size = 30
    end
    object CmpEn2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPEN2.TIPIPI'
      Visible = False
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
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPEN2.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.CMPEN2.REGICM'
      Visible = False
    end
    object CmpEn2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPEN2.TIPICM'
      Visible = False
      Size = 7
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
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPEN2.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPEN2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPEN2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2ID_CMPPE3: TIntegerField
      FieldName = 'ID_CMPPE3'
      Origin = 'ISADE.CMPEN2.ID_CMPPE3'
      Visible = False
    end
    object CmpEn2ID_CMPNFE: TIntegerField
      FieldName = 'ID_CMPNFE'
      Origin = 'ISADE.CMPEN2.ID_CMPNFE'
      Visible = False
    end
    object CmpEn2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.CMPEN2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2FLGQTD: TStringField
      FieldName = 'FLGQTD'
      Origin = 'ISADE.CMPEN2.FLGQTD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2FLGVAL: TStringField
      FieldName = 'FLGVAL'
      Origin = 'ISADE.CMPEN2.FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpEn2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.CMPEN2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpEn2NROEN2: TIntegerField
      FieldName = 'NROEN2'
      Origin = 'ISADE.CMPEN2.NROEN2'
      Visible = False
    end
    object CmpEn2PRODEP: TStringField
      DisplayWidth = 18
      FieldName = 'PRODEP'
      Origin = 'ISADE.CMPEN2.PRODEP'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpEn2TOTITE: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTITE'
      Origin = 'ISADE.CMPEN2.TOTITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Origin = 'ISADE.CMPEN2.TOTFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Origin = 'ISADE.CMPEN2.TOTSEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Origin = 'ISADE.CMPEN2.TOTDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTACC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTACC'
      Origin = 'ISADE.CMPEN2.TOTACC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpEn2TOTDCC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDCC'
      Origin = 'ISADE.CMPEN2.TOTDCC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object UpEnt: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpEnt'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTEENT = :DTEENT,'
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
      '  CODTFO = :CODTFO,'
      '  CODTMO = :CODTMO,'
      '  VALTMO = :VALTMO,'
      '  NUMDOC = :NUMDOC,'
      '  DTEDOC = :DTEDOC,'
      '  DTECRE = :DTECRE,'
      '  ID_CMPPED = :ID_CMPPED,'
      '  FLGCTB = :FLGCTB,'
      '  UFEENT = :UFEENT,'
      '  SERNOT = :SERNOT,'
      '  CODCLP = :CODCLP,'
      '  OB1ENT = :OB1ENT,'
      '  OB2ENT = :OB2ENT,'
      '  OB3ENT = :OB3ENT,'
      '  OB4ENT = :OB4ENT,'
      '  OB5ENT = :OB5ENT,'
      '  OB6ENT = :OB6ENT,'
      '  OB7ENT = :OB7ENT,'
      '  OB8ENT = :OB8ENT,'
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
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  BASICC = :BASICC,'
      '  TOTICC = :TOTICC,'
      '  BASSUC = :BASSUC,'
      '  TOTSUC = :TOTSUC,'
      '  TOTENC = :TOTENC,'
      '  TOTIPC = :TOTIPC,'
      '  TOTGEC = :TOTGEC,'
      '  BASPIS = :BASPIS,'
      '  TOTPIS = :TOTPIS,'
      '  BASCOF = :BASCOF,'
      '  TOTCOF = :TOTCOF,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  PERACR = :PERACR,'
      '  TOTACP = :TOTACP,'
      '  TOTFOR = :TOTFOR,'
      '  DESFOR = :DESFOR,'
      '  VCOFOR = :VCOFOR,'
      '  VCOEMP = :VCOEMP,'
      '  VDOFSC = :VDOFSC,'
      '  LANCST = :LANCST,'
      '  SEQENT = :SEQENT,'
      '  FLGATU = :FLGATU,'
      '  SITENT = :SITENT'
      'where'
      '  ID_CMPENT = :OLD_ID_CMPENT')
    InsertSQL.Strings = (
      'insert into CmpEnt'
      '  (ID_CMPENT, CODEMP, DTEENT, DTEOPE, CODFOR, CONPLC, SUBPLC, '
      'HREENT, CODPFA, '
      
        '   TIPPFA, MODPFA, CODCFO, CODTIP, CODFIL, CODTFO, CODTMO, VALTM' +
        'O, '
      'NUMDOC, '
      '   DTEDOC, DTECRE, ID_CMPPED, FLGCTB, UFEENT, SERNOT, CODCLP, '
      'OB1ENT, OB2ENT, '
      
        '   OB3ENT, OB4ENT, OB5ENT, OB6ENT, OB7ENT, OB8ENT, QTIENT, QTPEN' +
        'T, '
      'QTDOEN, '
      
        '   ICMENT, IPIENT, DSCENT, MEDDSC, TOTDSC, TOTDCC, PACENT, MEDAC' +
        'R, '
      'TOTACR, '
      
        '   TOTACC, BASIMP, TOTIMP, BASIPI, TOTIPI, BASICM, TOTICM, BASSU' +
        'B, '
      'TOTSUB, '
      
        '   TOTPED, TOTENT, TOTFRT, TOTSEG, TOTDES, BSICMF, BSICMS, BSICM' +
        'D, '
      'BSIPIF, '
      
        '   BSIPIS, BSIPID, TOTDSR, TOTGER, BASICC, TOTICC, BASSUC, TOTSU' +
        'C, '
      'TOTENC, '
      
        '   TOTIPC, TOTGEC, LANENT, SLDENT, PERPIS, PERCOF, BASPIS, TOTPI' +
        'S, '
      'BASCOF, '
      
        '   TOTCOF, INFLIQ, TOTLIQ, INFBRT, TOTBRT, LANEST, ATUEST, INTFI' +
        'N, '
      'CONSUM, '
      
        '   CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, CODUSU, FLGOCO, TOTOEN, FLGENT, PERAC' +
        'R, '
      'TOTACP, '
      
        '   TOTFOR, DESFOR, VCOFOR, VCOEMP, VDOFSC, FLGENV, FLGSIN, LANCS' +
        'T, '
      'HRCENT, '
      '   DTCENT, USCENT, OBCEN1, OBCEN2, OBCEN3, TRBPIS, TRBCOF, '
      'ID_CMPOEN, ID_CMPCNO, '
      '   SEQENT, FLGATU, SITENT, TOTITE)'
      'values'
      
        '  (:ID_CMPENT, :CODEMP, :DTEENT, :DTEOPE, :CODFOR, :CONPLC, :SUB' +
        'PLC, '
      ':HREENT, '
      
        '   :CODPFA, :TIPPFA, :MODPFA, :CODCFO, :CODTIP, :CODFIL, :CODTFO' +
        ', '
      ':CODTMO, '
      
        '   :VALTMO, :NUMDOC, :DTEDOC, :DTECRE, :ID_CMPPED, :FLGCTB, :UFE' +
        'ENT, '
      ':SERNOT, '
      
        '   :CODCLP, :OB1ENT, :OB2ENT, :OB3ENT, :OB4ENT, :OB5ENT, :OB6ENT' +
        ', '
      ':OB7ENT, '
      
        '   :OB8ENT, :QTIENT, :QTPENT, :QTDOEN, :ICMENT, :IPIENT, :DSCENT' +
        ', '
      ':MEDDSC, '
      
        '   :TOTDSC, :TOTDCC, :PACENT, :MEDACR, :TOTACR, :TOTACC, :BASIMP' +
        ', '
      ':TOTIMP, '
      
        '   :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTPED' +
        ', :TOTENT, '
      
        '   :TOTFRT, :TOTSEG, :TOTDES, :BSICMF, :BSICMS, :BSICMD, :BSIPIF' +
        ', :BSIPIS, '
      
        '   :BSIPID, :TOTDSR, :TOTGER, :BASICC, :TOTICC, :BASSUC, :TOTSUC' +
        ', :TOTENC, '
      
        '   :TOTIPC, :TOTGEC, :LANENT, :SLDENT, :PERPIS, :PERCOF, :BASPIS' +
        ', :TOTPIS, '
      
        '   :BASCOF, :TOTCOF, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :LANEST' +
        ', :ATUEST, '
      
        '   :INTFIN, :CONSUM, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI' +
        ', :CODICM, '
      
        '   :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :CODUSU' +
        ', :FLGOCO, '
      
        '   :TOTOEN, :FLGENT, :PERACR, :TOTACP, :TOTFOR, :DESFOR, :VCOFOR' +
        ', '
      ':VCOEMP, '
      
        '   :VDOFSC, :FLGENV, :FLGSIN, :LANCST, :HRCENT, :DTCENT, :USCENT' +
        ', '
      ':OBCEN1, '
      
        '   :OBCEN2, :OBCEN3, :TRBPIS, :TRBCOF, :ID_CMPOEN, :ID_CMPCNO, :' +
        'SEQENT, '
      '   :FLGATU, :SITENT, :TOTITE)')
    DeleteSQL.Strings = (
      'delete from CmpEnt'
      'where'
      '  ID_CMPENT = :OLD_ID_CMPENT')
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
      '  LIQEN2 = :LIQEN2,'
      '  BRTEN2 = :BRTEN2,'
      '  QTPEN2 = :QTPEN2,'
      '  VLUEN2 = :VLUEN2,'
      '  VLQEN2 = :VLQEN2,'
      '  VLQPED = :VLQPED,'
      '  VLQNFS = :VLQNFS,'
      '  VPFEN2 = :VPFEN2,'
      '  VPFOUT = :VPFOUT,'
      '  TIPDSC = :TIPDSC,'
      '  DSCEN2 = :DSCEN2,'
      '  VDSEN2 = :VDSEN2,'
      '  TIPACR = :TIPACR,'
      '  PACEN2 = :PACEN2,'
      '  VACEN2 = :VACEN2,'
      '  IMPEN2 = :IMPEN2,'
      '  IPIEN2 = :IPIEN2,'
      '  ICMEN2 = :ICMEN2,'
      '  FLGDUP = :FLGDUP,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_CMPEN2 = :OLD_ID_CMPEN2')
    InsertSQL.Strings = (
      'insert into CmpEn2'
      
        '  (ID_CMPEN2, ID_CMPENT, CODEIT, CODCLP, CODGRU, CODSUB, CODPRO,' +
        ' '
      'CODTAM, '
      
        '   CODCOR, DESEN2, OBSEN2, CODST1, CODST2, CODUND, CLSIPI, CODCF' +
        'O, '
      'ID_CMPPFO, '
      
        '   LIQEN2, BRTEN2, QTPEN2, QTDPED, QTDNFS, VLUEN2, VLQEN2, VLQPE' +
        'D, '
      'VLQNFS, '
      
        '   VPFEN2, VPFOUT, TIPDSC, DSCEN2, VDSEN2, TIPACR, PACEN2, VACEN' +
        '2, '
      'IMPEN2, '
      
        '   IPIEN2, ICMEN2, BASIMP, TOTIMP, BASIPI, TOTIPI, BASICM, TOTIC' +
        'M, BASSUB, '
      
        '   TOTSUB, TOTEN2, TOTGE2, TOTDSC, TOTACR, BASPIS, TOTPIS, BASCO' +
        'F, '
      'TOTCOF, '
      
        '   TOTLIQ, TOTBRT, CODSTR, TIPSTR, TRBSUB, ICMSUB, MRGSUB, BASES' +
        'B, '
      'REGIPI, '
      
        '   TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDIC' +
        'M, BSCICM, '
      
        '   INCREV, INCFIN, ID_CMPPE3, ID_CMPNFE, FLGDUP, FLGQTD, FLGVAL,' +
        ' '
      'FLGATU, '
      
        '   NROEN2, PRODEP, TOTITE, TOTFRT, TOTSEG, TOTDES, TOTACC, TOTDC' +
        'C)'
      'values'
      '  (:ID_CMPEN2, :ID_CMPENT, :CODEIT, :CODCLP, :CODGRU, :CODSUB, '
      ':CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESEN2, :OBSEN2, :CODST1, :CODST2, :CODUND' +
        ', '
      ':CLSIPI, '
      
        '   :CODCFO, :ID_CMPPFO, :LIQEN2, :BRTEN2, :QTPEN2, :QTDPED, :QTD' +
        'NFS, '
      ':VLUEN2, '
      
        '   :VLQEN2, :VLQPED, :VLQNFS, :VPFEN2, :VPFOUT, :TIPDSC, :DSCEN2' +
        ', '
      ':VDSEN2, '
      
        '   :TIPACR, :PACEN2, :VACEN2, :IMPEN2, :IPIEN2, :ICMEN2, :BASIMP' +
        ', :TOTIMP, '
      
        '   :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTEN2' +
        ', :TOTGE2, '
      
        '   :TOTDSC, :TOTACR, :BASPIS, :TOTPIS, :BASCOF, :TOTCOF, :TOTLIQ' +
        ', :TOTBRT, '
      
        '   :CODSTR, :TIPSTR, :TRBSUB, :ICMSUB, :MRGSUB, :BASESB, :REGIPI' +
        ', :TIPIPI, '
      
        '   :TRBIPI, :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM, :REDICM' +
        ', :BSCICM, '
      
        '   :INCREV, :INCFIN, :ID_CMPPE3, :ID_CMPNFE, :FLGDUP, :FLGQTD, :' +
        'FLGVAL, '
      
        '   :FLGATU, :NROEN2, :PRODEP, :TOTITE, :TOTFRT, :TOTSEG, :TOTDES' +
        ', '
      ':TOTACC, '
      '   :TOTDCC)')
    DeleteSQL.Strings = (
      'delete from CmpEn2'
      'where'
      '  ID_CMPEN2 = :OLD_ID_CMPEN2')
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
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 5
    Top = 325
  end
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 325
  end
end
