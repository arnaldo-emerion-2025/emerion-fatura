inherited fmManPed: TfmManPed
  Left = 350
  Top = 172
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
  object Panel2: TPanel
    Left = 1
    Top = 307
    Width = 784
    Height = 142
    BevelOuter = bvNone
    TabOrder = 4
    OnExit = Panel2Exit
    object Label06: TLabel
      Left = 385
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
    object Label12: TLabel
      Left = 385
      Top = 76
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
    object Label5: TLabel
      Left = 566
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
      Left = 566
      Top = 77
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
      Left = 566
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
    object Label63: TLabel
      Left = 566
      Top = 123
      Width = 101
      Height = 14
      Caption = 'Total do pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label05: TLabel
      Left = 385
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
    object Label52: TLabel
      Left = 1
      Top = 100
      Width = 78
      Height = 14
      Caption = 'Peso liquído:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label69: TLabel
      Left = 213
      Top = 100
      Width = 72
      Height = 14
      Caption = 'Peso bruto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label71: TLabel
      Left = 385
      Top = 99
      Width = 61
      Height = 14
      Caption = 'Cubagem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label73: TLabel
      Left = 254
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
    object Label6: TLabel
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
    object Label7: TLabel
      Left = 261
      Top = 123
      Width = 143
      Height = 14
      Caption = 'Código/Ref. do cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 566
      Top = 99
      Width = 106
      Height = 14
      Caption = 'Total desc. ICMS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdTotBrt: TdxDBColorCurrencyEdit
      Left = 288
      Top = 96
      Width = 93
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
      TabOrder = 26
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTBRT'
      DataSource = DsRes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotLiq: TdxDBColorCurrencyEdit
      Left = 86
      Top = 96
      Width = 93
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTLIQ'
      DataSource = DsRes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVcsRe2: TdxDBColorCurrencyEdit
      Left = 471
      Top = 24
      Width = 91
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VCSRE2'
      DataSource = DsRe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdObsRe2: TdxDBColorEdit
      Left = -1
      Top = 48
      Width = 382
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
      OnEnter = EdPacRe2Enter
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
      Width = 382
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
      OnEnter = EdPacRe2Enter
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
      TabOrder = 30
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
      Left = 471
      Top = 72
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
      TabOrder = 22
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
      DataSource = DsRe2
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
      DataSource = DsRe2
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
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpRe2: TdxDBColorCurrencyEdit
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
      OnEnter = EdQtpRe2Enter
      OnExit = EdQtpRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluRe2: TdxDBColorCurrencyEdit
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
    object EdPacRe2: TdxDBColorCurrencyEdit
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
      OnEnter = EdPacRe2Enter
      OnExit = EdPacRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACRE2'
      DataSource = DsRe2
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
      DataField = 'TOTRE2'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscRe2: TdxDBColorCurrencyEdit
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
      OnEnter = EdPacRe2Enter
      OnExit = EdDscRe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCRE2'
      DataSource = DsRe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
    object pnNroRe2: TPanel
      Left = 473
      Top = 75
      Width = 62
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
      TabOrder = 23
    end
    object pnTotRes: TPanel
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
      TabOrder = 31
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
      TabOrder = 34
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
      TabOrder = 35
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
      TabOrder = 32
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
      TabOrder = 33
    end
    object EdIpiRe2: TdxDBColorCurrencyEdit
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
      Left = 687
      Top = 119
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
      TabOrder = 36
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
      Left = 689
      Top = 122
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
      TabOrder = 37
    end
    object pnVcsRe2: TPanel
      Left = 473
      Top = 27
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
      TabOrder = 16
    end
    object pnTotLiq: TPanel
      Left = 89
      Top = 99
      Width = 84
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
      TabOrder = 25
    end
    object pnTotBrt: TPanel
      Left = 291
      Top = 99
      Width = 84
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
      TabOrder = 27
    end
    object EdTotCub: TdxDBColorCurrencyEdit
      Left = 471
      Top = 96
      Width = 91
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
      TabOrder = 28
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTCUB'
      DataSource = DsRes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotCub: TPanel
      Left = 473
      Top = 99
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
      TabOrder = 29
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 288
      Top = 72
      Width = 93
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
      TabOrder = 21
      OnEnter = EdCodUndEnter
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdRefPe2: TdxDBColorEdit
      Left = 86
      Top = 72
      Width = 160
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
      DataField = 'REFRE2'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesRe2: TPanel
      Left = 3
      Top = 28
      Width = 374
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
    object pnObsRe2: TPanel
      Left = 3
      Top = 52
      Width = 374
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'MRGSUB'
      DataSource = DsRe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotRen: TdxDBColorCurrencyEdit
      Left = 471
      Top = 48
      Width = 70
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
      OnEnter = EdPacRe2Enter
      OnExit = EdTotRenExit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTREN'
      DataSource = DsRe2
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnClsIpi: TPanel
      Left = 291
      Top = 75
      Width = 86
      Height = 14
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
    end
    object pnRefRe2: TPanel
      Left = 90
      Top = 75
      Width = 152
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
      TabOrder = 39
    end
    object pnTotRen: TPanel
      Left = 473
      Top = 51
      Width = 62
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
      TabOrder = 40
    end
    object EdCodICl: TdxDBColorEdit
      Left = 408
      Top = 119
      Width = 154
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
      TabOrder = 41
      OnEnter = EdCodUndEnter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICL'
      DataSource = DsRe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTrbSub: TdxDBColorEdit
      Left = 216
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
      TabOrder = 42
      OnEnter = EdCodUndEnter
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'TRBSUB'
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTrbSub: TPanel
      Left = 218
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
      TabOrder = 43
    end
    object EdTotDsr: TdxDBColorCurrencyEdit
      Left = 687
      Top = 95
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
      TabOrder = 44
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
      Left = 689
      Top = 99
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
      TabOrder = 45
    end
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 0
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
    Left = 2
    Top = 173
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
    object Label24: TLabel
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
      Width = 106
      Height = 14
      Caption = 'Número do pedido:'
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
      Left = 4
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
      Left = 4
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
      Left = 3
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
    object Label41: TLabel
      Left = 3
      Top = 150
      Width = 135
      Height = 14
      Caption = 'Previsto para faturar em:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqPfa: TSpeedButton
      Left = 245
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
      Left = 245
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
      Left = 245
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
      Left = 379
      Top = 150
      Width = 41
      Height = 14
      Caption = 'Limite:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label55: TLabel
      Left = 574
      Top = 54
      Width = 56
      Height = 14
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label56: TLabel
      Left = 574
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
      Left = 574
      Top = 6
      Width = 69
      Height = 14
      Caption = 'Margem(%):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 574
      Top = 101
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
    object Label1: TLabel
      Left = 574
      Top = 125
      Width = 136
      Height = 14
      Caption = 'Pagamento antecipado ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqVen: TSpeedButton
      Left = 245
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
    object Label4: TLabel
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
      Left = 245
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
    object Label65: TLabel
      Left = 525
      Top = 150
      Width = 35
      Height = 14
      Caption = 'Frete:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 574
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
      Left = 272
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
    object Image1: TImage
      Left = 748
      Top = 3
      Width = 32
      Height = 45
      Center = True
      Picture.Data = {
        055449636F6E0000010008001010000001000800680500008600000010100000
        0100200068040000EE0500001818000001000800C8060000560A000018180000
        01002000880900001E1100002020000001000800A8080000A61A000020200000
        01002000A81000004E2300003030000001000800A80E0000F633000030300000
        01002000A82500009E4200002800000010000000200000000100080000000000
        400100000000000000000000000000000000000000000000FFFFFF0042EE6400
        2B31B2008585850046463D00379644000F106E001B78A600004D77005E6C6100
        25241900497C8D0030446700326C410056FF850033D54B003E51AC0040B55600
        25403100192C7A003785770075757200150E0D0027273C003B574F0057554B00
        164968001A22AF001F1E670004087E00353437001E302700295236002D556100
        22427300151B17004B4B4B002D2D24006A6A6A005958590034503F007D7D7D00
        839289003BD15500214C63006060600044554C00201C1A000F16120033342E00
        223829002E2C2D00413F40003275420029232100656565001D73A00070707000
        191310004746480013101300292920002C4F3200888888006D6D6D004B504C00
        1E2D2300241E1C002A2A25001C1B1900686867001F1F1C002D2A220063636300
        203129003CD35400141111004D4C4A00484847004A494A001E1B18004C494B00
        878787006C6C6C00666666006464640067676700616160004C4C4B0068686800
        4B4A4B0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000283D422B00000000000000000000002A35312136290A00
        00000000000000003A3C4B100212330000000000000000005450202C0F4C1300
        00000000000000005A52243F060E430000000000000000005A5B172215194D00
        000000000000000055254439091B3700000000000000000055253B0C082D3000
        0000000000000000382551322F494600000000000000000056593414230D4500
        0000000000000000574E18031E071F0000000000000000004A4F0B111C1D3E00
        00000000000000002704161A052648400000000000000000532A41472E584100
        0000000000000000000000000000000000000000FFFF0000F87F0000F01F0000
        F01F0000F01F0000F01F0000F01F0000F01F0000F01F0000F01F0000F01F0000
        F01F0000F01F0000F00F0000F01F0000FFFF0000280000001000000020000000
        0100200000000000400400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000021E1D1E950B080BF1111913A029563A51
        70FFA81A71FFBF08000000000000000000000000000000000000000000000000
        0000000000000000000000001B1B1B54413F40FF0F1612FF295236FF327542FF
        274734E61F38258F62FFA5090000000000000000000000000000000000000000
        0000000000000000000000001D1D1D6D474648FF203129FF33D54BFF42EE64FF
        40B556FF1F3627F872FFAB190000000000000000000000000000000000000000
        0000000000000000000000002424247A4A494AFF1E3027FF3BD155FF56FF85FF
        3CD354FF254031FD65FE971C0000000000000000000000000000000000000000
        0000000000000000000000002C2C2C884C494BFF151B17FF2C4F32FF379644FF
        326C41FF1F2E24FE3B9C5C120000000000000000000000000000000000000000
        000000000000000000000000383838954B4A4BFF150E0DFF2D5561FF378577FF
        3B574FFF141111FF170C13130000000000000000000000000000000000000000
        0000000000000000000000003E3E3EA34B4B4BFF241E1CFF1D73A0FF004D77FF
        164968FF292321FF1919191D0000000000000000000000000000000000000000
        000000000000000000000000464646B04B4B4BFF191310FF497C8DFF1B78A6FF
        214C63FF201C1AFF212121260000000000000000000000000000000000000000
        0000000000000000000000004E4E4EBE4B4B4BFF1E1B18FF33342EFF44554CFF
        2D2A22FF1C1B19FF252525300000000000000000000000000000000000000000
        000000000000000000000000535353CB4C4C4BFF2E2C2DFF192C7AFF224273FF
        304467FF2A2A25FF2D2D2C390000000000000000000000000000000000000000
        0000000000000000000000005B5B5BD94D4C4AFF27273CFF2B31B2FF04087EFF
        0F106EFF353437FF2E2E2E420000000000000000000000000000000000000000
        0000000000000000000000005C5C5CE6484847FF252419FF3E51ACFF1A22AFFF
        1F1E67FF292920FF3737364C0000000000000000000000000000000000000000
        000000000000000000000000686868F3858585FF767673FD58564CFE47473EFE
        2E2E25FE20201DFE3F3F3F550000000000000000000000000000000000000000
        0000000000000000000000006969698F777777DE6C6C6CF6666665F65A5A5AEA
        50504FCE474747A03F3F3F280000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFF0000
        F87F0000F01F0000F01F0000F01F0000F01F0000F01F0000F01F0000F01F0000
        F01F0000F01F0000F01F0000F01F0000F00F0000F01F0000FFFF000028000000
        18000000300000000100080000000000A0020000000000000000000000000000
        0000000000000000FFFFFF003FDF6000232BA8008D8D8D00327240006377E700
        2E82A50029295C0001537E0066666600182E2000040782005FABC8002E827100
        5AF3870041AF54004A4A4A0029CF3E002E338200244F32003F45A300224D6400
        738277004973580032934200131367003A6578003535350013131300385A4300
        162477007995830057575700333C600035BE4A003F535A0028696E0034D44E00
        105571005B7665001D3572002C2C270045686900201D1C002C3B44003E413F00
        838383000E167C003B6D4D003C8F4E00283D30001C2160006F6F6F003D806E00
        134D650025446F00407D5300334C5A002A583A0027303300354F3C0026495800
        0F0D73002C356800767676005F5F5F001A266C001F352600758C7C0035C94B00
        26242100505050002928660036443A00131C160043585300044F760055F08000
        3783A6000B4E6F001A17160019261D0021412D0048484200242C5600252A2B00
        2642670008577F003A3A39000E1911003D784E003A5241000E0F0F0031303100
        368F47003BE15A007E817E0015157B0031302A00878787007A7A7A006A6A6A00
        5B5B5B0043434300264931003A744A007E9486002D2D2D0008077E001B1B1B00
        7177740026423100404E5C003EB3520026262600181412006363630054545400
        292820001C2F2300367143004646460041E06400222222007373730031C84A00
        16191600192A1F005E5E5B00252EA6001B3426006D6C6C002F32340037373200
        3C3C3C00231F1D00201F1F001C2C2100234B3100858585008181810078787800
        6161610041414100525252004C4C4C004E4E4E0015161500302F27003F3E3F00
        1D1D1C00373736003EDD5F00191514007F7F7F0027272100282725002E2F2C00
        38383800344D5C001F1F1D00151313002A563A0084848400777777006E6E6E00
        696969006464640062626200606060005E5E5E005C5C5C004040400042424200
        565656005555550044444400535353004B4B4B0019171500262522006D6D6D00
        30302B00234D63003E3F3F003F403F001C1B1B001D1C1C001C2E23006C6C6C00
        3131310000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000B01D906100000000000000000000000000000000000000AF5E5D5A
        0B332800000000000000000000000000000000006C964B836A32318B5C000000
        000000000000000000000000BFB9807912264639146B00000000000000000000
        000000009F2E7819020F7B103B20000000000000000000000000000087BABD05
        604E9972A3450000000000000000000000000000AE9652705F7E235B69170000
        0000000000000000000000007AAD948A3D181E53446F00000000000000000000
        0000002F11ADA285250E364A7F84000000000000000000000000009B939074B8
        4D2737A051A70000000000000000000000000065B2AD9A1B4F095016470A0000
        0000000000000000000000A521ADBC3C0D07583AB4A900000000000000000000
        0000007DAC90892C563E2D886EAA0000000000000000000000000035ABAD7C9E
        242B4C9DBB4200000000000000000000000000BEA990B52229385771A1670000
        0000000000000000000000B675AE6362301F43341C2100000000000000000000
        000000BE75689515820C3F1A98AF00000000000000000000000000B6A8AE2A40
        06036D499C7600000000000000000000000000668FB35977551308B797910000
        00000000000000000000003564048C41815486736E4800000000000000000000
        000000658D648D8EA68F2192B10A000000000000000000000000000000A48EA5
        A5658D0000000000000000000000000000000000000000000000000000000000
        00000000FFFFFF00FF87FF00FF01FF00FF007F00FF003F00FF003F00FF003F00
        FF003F00FF003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FF81FF00
        FFFFFF0028000000180000003000000001002000000000006009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000415151592101010F9100F10AF161D1550
        5EF4951562FF9C1371FF9D0C5AFF520300000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000001C1C1C98313031FF0E0F0FFF0E1911FF182E20FF
        1C3325E82653379B42A5654970FFB11C65FF9506000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001C1C1C0A2C2C2CFC3F3E3FFF131C16FF1B3426FF3A744AFF
        3C8F4EFF3B6D4DFF234B31FD1C3A25C83C7E4E3200FF97020000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000024242417323232FE3E3F3FFF192A1FFF367143FF29CF3EFF
        34D44EFF35C94BFF407D53FF244F32FF306B456166FFA1090000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000025252524383838FF3E413FFF1C2F23FF329342FF3FDF60FF
        5AF387FF41E064FF41AF54FF2A583AFF33744A6D71FFB40D0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000272727303C3C3CFF3F403FFF1C2E23FF327240FF3BE15AFF
        55F080FF3EDD5FFF3EB352FF2A563AFF3065417276FFAE0A0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002C2C2C3D424242FF3F3E3FFF19261DFF264231FF368F47FF
        31C84AFF35BE4AFF3D784EFF264931FF294B347167FFD2030000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002F2F2F4A464646FF404040FF151615FF1C2C21FF354F3CFF
        497358FF385A43FF21412DFF1F3526FF1F2E266D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000303030574A4A4AFF404040FF151313FF2F3234FF28696EFF
        2E8271FF3D806EFF36443AFF161916FF1D1B1C73000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000363636644E4E4EFF414141FF181412FF234D63FF044F76FF
        105571FF134D65FF344D5CFF1A1716FF2020207B000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000039393970535353FF404040FF191514FF3A6578FF3783A6FF
        01537EFF0B4E6FFF224D64FF262421FF23232384000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000003F3F3F7D575757FF404040FF1D1C1CFF273033FF5FABC8FF
        2E82A5FF08577FFF334C5AFF191715FF2626268D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000004141418A5C5C5CFF414141FF201F1FFF201D1CFF252A2BFF
        264958FF2C3B44FF231F1DFF1B1B1BFF29292996000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000454545975E5E5EFF404040FF222222FF2E2F2CFF3F535AFF
        456869FF435853FF282725FF1C1B1BFF2F2F2F9F000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000494949A4626262FF414141FF262522FF333C60FF1D3572FF
        25446FFF264267FF404E5CFF1F1F1DFF323232A8000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000515151B0636363FF424242FF31302AFF15157BFF0E167CFF
        162477FF1A266CFF1C2160FF353535FF323232B1000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000565656BD636363FF434343FF302F27FF3F45A3FF252EA6FF
        040782FF0F0D73FF131367FF373736FF363636BA000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000005D5D5DCA646464FF424242FF2C2C27FF2C3568FF6377E7FF
        232BA8FF08077EFF292866FF272721FF393939C3000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000005F5F5FD7616161FF4B4B4BFF3A3A39FD2A2921FE242C56FF
        2E3382FF29295CFF30302BFF1D1D1CFF3C3C3CCC000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000696969E4878787FF8D8D8DFF858585FF777777FD5F5F5CFD
        484842FD383833FE272727FE1C1C1CFE3F3F3FD5000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000006B6B6BC2818181FF878787FF818181FF787878FF6E6E6EFF
        616161FF575757FF4D4D4DFE454545FE4C4C4CBA000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000004B4B4B075D5D5D4F5A5A5A7F555555985555559C53535399
        4F4F4F8A4C4C4C724747474E4E4E4E1C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFF00FF87FF00FF01FF00FF007F00FF003F00
        FF003F00FF003F00FF003F00FF003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FF81FF00FFFFFF002800000020000000400000000100080000000000
        800400000000000000000000000000000000000000000000FFFFFF0043DE6500
        2E47C6004A4A4A006FB9D40006057E0084848400005B8400389349003A8BAB00
        193523007381DB002034680025C438005EF78C0040706E001A28A80027593700
        686868004F5ECD008AA7940043B457001C606C0033333B00151414005698B500
        3A758D0041754E002A4B55003437A80041556300141E760033D14D0031877100
        595959000A4E700051EA7A003838600028211F00444CBC0016168D0048935B00
        28789C00272C530013445D0056746100757875009090900021462E0035A84700
        1C5E8100294B6A003A53400032694600171A62007D9685000E0E6F0033322900
        132519003F4040009A9A9A0074887A004D66610039BD4E0045594B0040373300
        38819F0046A55A0040846E00457E5A00388446002EC644002A7A70001B307500
        253129001C506A0029656C0003088B002E4F3B002A424B000F5D84000A130D00
        1D1D1D00315D4100333348000C108100374464003443390038DA540042424F00
        1E2C5F006F6F6F006161610051515100377847002A3CA400114A670006557C00
        3B666E0084A08E00203C2A0059F284007C7C7C00274E34001C2B21003DD95E00
        459B55008A8A8A00418352002C2A27002F505C001C57630039384200171F6D00
        10197D000C0C780026285C00050605002BCE410012126800165B700039393900
        45454500465C6200343531001E3670003C483F00427756007680780020547000
        26446D00232A2500798C7F002E2E2E0049775B0027466400161E17003C6F4F00
        47E16B00243F2F0047495100172576002121210018251E005D5D5D0055555500
        37594100285167001A181800085177003A332F003F434700809C8B003E3E3A00
        10171200221E1C001730200026483100295E3A004F4E4C001016780025242400
        0B608700656564004FE875001F412C000A097E00393D3D001F3627004A7C5D00
        34302F008D8D8D0088888800808080006D6D6D00373737002752360042715100
        35D3510042424200313AAA00282827003B3A5D000507870026352B0036A54400
        353561002C272400787878002E5D3E0036D851001F1F1F00212522002E2D2500
        447A5800191D190032A74500242E27002D2D2900223A2C002949330010476500
        45DE680085858500241F1D007E7E7E007A7A7A00065379000C5072005F5F5F00
        5B5B5B004848480057575700535353004C4C4C001B1A1A000F0F72002D2D2C00
        233E2C00254B32003D3D3C003D3D3F001818170030333A004F4F4F0037D65300
        25211F002E2F2C0021402A0033333300636363003F3E3E003DDB5C0021442C00
        2FC443001D1B1A001E1E1D002322200023232300767676002B2B2A0024342A00
        0D4E7100414344002BCD43002CCC4100181A190013271A002A2A2700223C2B00
        203570002C2C27001F382700404040008E8E8E00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        BDD8EF91000000000000000000000000000000000000000000000000000000AF
        D853769B907F3E0000000000000000000000000000000000000000000000008F
        DDC052F80BA631C92E150000000000000000000000000000000000000000A47A
        DDC13B65B26B2A8A12EA580000000000000000000000000000000000000091DD
        DDC69D1C0EF6F540469FEA0000000000000000000000000000000000000023B4
        DDF2C8BA21CB8BB316366864000000000000000000000000000000000000D67B
        E8B98CC5E9660F0248C3B199000000000000000000000000000000000000D704
        DE4B654759A5256AEB806838000000000000000000000000000000000000D4D7
        E884A94F32BFE27744BE9E85000000000000000000000000000000000000B45E
        FEC069DB4F5F096D54DCFA81000000000000000000000000000000000000E892
        3C53C4693587AA93E5FD692F000000000000000000000000000000000000DD23
        FEC019A84D4922454189F75C000000000000000000000000000000000000B023
        B4C09C94247917706F6EDFAF000000000000000000000000000000000000B023
        B4C0BC3351D0D1612DF4DF13000000000000000000000000000000000000DDD3
        B48FE31B1A0862F3CA9895E7000000000000000000000000000000000000B423
        B48FEC50050AA3964CABD85D0000000000000000000000000000000000007BD3
        7BEF8FCD1D432B823CDF53910000000000000000000000000000000000000423
        7BA2EF8F9C9742279553C0D3000000000000000000000000000000000000E1D3
        7BA2A27D7C63103F7DD88FD50000000000000000000000000000000000FF5E91
        7BB6C7577E8334881FE4C0D60000000000000000000000000000000000AC9291
        D4B6DDA18E4AFB0D5B8DED5E0000000000000000000000000000000000AD2391
        7BB655295673207237B7EEE1000000000000000000000000000000000007D391
        D4F11828B54EA7D97826EEE10000000000000000000000000000000000AED291
        D4863A600C11B874395AED040000000000000000000000000000000000CE5DD2
        D4DAE4E003141E06BBFCC0040000000000000000000000000000000000675D91
        925EDDF9C22C7571F98F8F040000000000000000000000000000000000675C6C
        6CCCAEF0A4A09ADA8FC053D40000000000000000000000000000000000CFCC3D
        30ADAEBD5C135D235EFEE6B40000000000000000000000000000000000005CE7
        AF5CAF135D2392E1049213AD0000000000000000000000000000000000000000
        006C070707ADAC00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFF0FFFFFFE01FFF
        FFE003FFFFC001FFFFC001FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FF
        FFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FF
        FFC000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FF
        FF8000FFFF8000FFFFC000FFFFF81FFFFFFFFFFF280000002000000040000000
        0100200000000000801000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000001414145B121212F0121212E10F0C0F810F1D1423
        75FFAF0A5EFF980E5BFF920E69FF990A59FFBC03000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001B1B1B731B1B1BFE1D1D1DFF050605FF101712FF17241DFC
        18291DC12957376F5CEE922F6DFFA3236DFFA0196AFF9F0B0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001C1C1C3B202020FD3C3C3CFF1F1F1FFF0A130DFF13271AFF193523FF
        1F412CFF21462EFF21432CEE275638A63D995C516EFFAE1F64FFAF0C00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001E1E1E83393939FF3C3C3CFF212522FF132519FF1F3C2AFF427151FF
        459B55FF48935BFF3C6F4FFF275937FF22452DFE182B1ECF42A5642B65FF9406
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001F1F1F903D3D3DFF3D3D3CFF242E27FF173020FF41754EFF25C438FF
        2CCC41FF2BCD43FF39BD4EFF457E5AFF295E3AFF20432BFF3683524E5FFFB10F
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002323239C414141FF3D3C3CFF24342AFF223A2CFF36A544FF33D14DFF
        45DE68FF47E16BFF35D351FF43B457FF326946FF264E33FF3A89555B70FFA415
        00FF000100000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000252525A9464646FF3F3E3DFF26352BFF243F2FFF32A745FF3DDB5CFF
        59F284FF5EF78CFF43DE65FF2EC644FF447A58FF275236FF377F546368FFAC16
        00FF000100000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000252525B6494949FF3D3D3FFF253129FF203B29FF388446FF38DA54FF
        4FE875FF51EA7AFF3DD95EFF2FC443FF427756FF274E34FF357449676AFFA713
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000292929C34C4C4CFF3F3E3EFF232A25FF1F3627FF2E4E3BFF35A847FF
        36D851FF37D653FF2BCE41FF46A55AFF2E5D3EFF264831FF2E5B3B696AFFBB0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002B2B2BD0515151FF404040FF1E201FFF1C2B21FF233E2CFF2E4F3BFF
        377847FF389349FF418352FF315D41FF254B32FF223C2BFF253E2A6767FFD303
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002E2E2EDD545454FF3F3F3FFF1D1D1DFF191D19FF1B2B21FF3A5340FF
        49775BFF4A7C5DFF375941FF21402AFF1F3827FF1D2C22FF2028206600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000323232E9585858FF404040FF1E1E1EFF151414FF393D3DFF29656CFF
        2A7A70FF318771FF40846EFF45594BFF161E17FF181A19FF1B1A1B6D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000333333F6585858FF424242FF1F1F1FFF211E1CFF285167FF0A4E70FF
        165B70FF1C606CFF1C5763FF2F505CFF2C2A27FF171717FF1F1F1F7600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        3C3C3C05363636FD595959FF414141FF1F1F1FFF2C2724FF1C5E81FF0F5D84FF
        065379FF0C5072FF114A67FF13445DFF414344FF181817FF2222227F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        313131103C3C3CFF5B5B5BFF424242FF212121FF25211FFF3A758DFF5698B5FF
        005B84FF06557CFF0D4E71FF104765FF3F4347FF191818FF2222228800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4141411E414141FF5A5A5AFF434343FF222222FF1D1B1AFF2A424BFF6FB9D4FF
        3A8BABFF0B6087FF085177FF1C506AFF34302FFF1B1A1AFF2828289100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4141412A454545FF5B5B5BFF444444FF232323FF212121FF241F1DFF2A4B55FF
        38819FFF28789CFF205470FF3E4040FF181817FF1D1D1DFF2828289A00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        464646374A4A4AFF5A5A5AFF464646FF242424FF232323FF212020FF221D1BFF
        3A332FFF403733FF28211FFF1A1817FF1C1C1CFF1F1F1FFF2C2C2CA300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        494949444E4E4EFF5B5B5BFF454545FF252525FF252424FF343531FF465C62FF
        3B666EFF40706EFF4D6661FF333430FF1A1A1AFF202020FF2E2E2EAC00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4B4B4B51515151FF5C5C5CFF464646FF272727FF2D2D29FF374464FF1E3670FF
        26446DFF294B6AFF274664FF415563FF2E2F2BFF1E1E1EFF303030B500000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5050505D565656FF5C5C5CFF474747FF272727FF3D3C3CFF101678FF172576FF
        1B3075FF203570FF203468FF1E2C5FFF474951FF1E1E1DFF333333BD00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5252526A5A5A5AFF5C5C5CFF464646FF282827FF333348FF16168DFF0C1081FF
        10197DFF141E76FF171F6DFF171A62FF3B3A5DFF232220FF353535C600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        565656775B5B5BFF5D5D5DFF484848FF2B2B2AFF33333BFF444CBCFF313AAAFF
        03088BFF0A097EFF0F0F72FF121268FF383860FF22221FFF383838CF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        575757845F5F5FFF5E5E5EFF474747FF2E2E2EFF333229FF2A3CA4FF7381DBFF
        1A28A8FF050787FF0C0C78FF0E0E6FFF42424FFF1E1E1CFF393939D800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5B5B5B91606060FF5F5F5FFF484848FF2C2C2CFF2E2E2CFF30333AFF2E47C6FF
        4F5ECDFF3437A8FF06057EFF353561FF2C2C27FF1F1F1EFF3F3F3FE100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5E5E5E9D616161FF5C5C5CFF555555FF515151FE3C3C3CFC2A2A27FD2E2D25FF
        272C53FF26285CFF393842FF2A2A26FF222221FF202020FF414141EA00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        626262AA6E6E6EFF898989FF8B8B8BFF858585FF7F7F7FFF777777FE656564FC
        4F4E4CFD3E3E3AFD2D2D2BFD222222FE1F1F1FFF1D1D1DFF444444F200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        646464AE858585FF9A9A9AFF909090FF878787FF808080FF787878FF707070FF
        686868FF616161FF595959FF525252FE414141FE343434FE414141F84E4E4E04
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        6C6C6C2F636363D0646464FE6D6D6DFF6E6E6EFF6D6D6DFF686868FF616161FF
        5A5A5AFF545454FF4F4F4FFF4B4B4BFE4E4E4EE94C4C4CB44E4E4E6400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000616161225A5A5A4F5A5A5A6B565656785555557853535377
        505050694F4F4F574C4C4C3C4D4D4D1900000001000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFF0FFFFFFE01FFFFFE003FFFFC001FFFFC001FFFFC000FFFFC000FFFFC000FF
        FFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FF
        FFC000FFFFC000FFFFC000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FF
        FF8000FFFF8000FFFF8000FFFF8000FFFFC000FFFFF81FFFFFFFFFFF28000000
        30000000600000000100080000000000800A0000000000000000000000000000
        0000000000000000FFFFFF0043DC63002E47C600494D490074B3C90007078100
        83838300045B8500389A49004C8BA8001B3423007280D6002335650026C03900
        61FA910040706E001431BA0028583800696969005967CA008AA7940041AF5400
        1D646E0033333B0013131300599DB9003A758D003E744F002C4755003437A800
        3E525D00131E780033CE4C0033846E00595959000A4E700052EB7A0038386000
        28211F00484DAE00151B930055966A001D729600272C530017455C0055736300
        757875009292920022462F0035A847001B658B002A4E6B0036513E0035664600
        181A61007D96850010106F0033322900142619003F3F3F00999999006B867400
        5064560039BD4E00415F4B00403733003983A4004CA75E00488B6E00467E5A00
        388446002FCA47002D7B6E001C2D760025312900174E6A0029676900080F9300
        30523B002A424B00155E81000C0E0D001D1D1D00315D4100353947000B108200
        3A496300363F3A0038DA54003A4B5400202C5D006F6F6F006161610051525000
        36714A002534AE00104B690007577E003965670083A58D001E3C280058F18400
        7D7D7D00294E36001C2C21003FD85E00409952008A8A8A003F8450002D2A2900
        30565E001954660039384200171E6E0011187D000C0C78002728650008080800
        2BCE41001313680014596F00393A390046454400496064003435310020387100
        394A3D003F785200768078001E5B720026416C00232A2500798C7F002F2E2E00
        4B73590028436300151C18003C6D4D0048E16C0026422F00494B580017257400
        2121210019251D005C5E5D0055555500355841002B5267001A18180009527700
        393831003F434700809C8B003D3D38000F181200221E1C00172F1F0026483100
        2A603C004F4E4C0011147800252524000B608700656565004FE876001F412C00
        090A7E00373E3A00203527004C835D0033302F008C8C8C008888880080808000
        6C6C6C00373836002753360046674F0037D15400424342002935AD0028282800
        3B3B5B00080B890026352B0035A34500353561002C272400787878002D623F00
        36D851001F1F1F00212522002E2D2500447A580019201C002FB341001F2F2500
        2D2D2900233A2B00294934001347630045DE680086868600241F1D007E7E7E00
        7A7A7A0008547A000C5072005F5F5F005B5B5B00484747005657580053535300
        4C4D4C001B1A1A000F0F71002E2D2D00223F2C00244B31003C3C3C003D3D3F00
        1718170030333A004F4F4F0038D4550025211F002F2F2C00213F2B0034333300
        636363003E3E3E003DDB5C0020432C002BC13F001C1B1B001E1E1E0023222000
        23232300757575002B2A2A0024342A000E4E6F00414344002DCB450029C84000
        191A1A0015271B002A2A2800223C2B001F336D002C2C27001E3A270040404000
        8E8E8E0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000F08FDD67000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000D7DF5276528F91000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000B48FB01976529BF8697F3E00000000000000000000000000000000
        00000000000000000000000000000000000000005EEFDDB09B529B3B9D0BE531
        9E2E640000000000000000000000000000000000000000000000000000000000
        00000000EDD47AE6199BF80B65DC12121212DC933E0000000000000000000000
        0000000000000000000000000000000000000000B6D7DDE6893B0BEA872A4444
        2A8A9F12DCE52E00000000000000000000000000000000000000000000000000
        00000000DAD7DDB0909D6587C50E0E0EEB44469F12DC35000000000000000000
        00000000000000000000000000000000000000CE8604DDB0900B93BA0E48B3B3
        21F6441C9FB13500000000000000000000000000000000000000000000000000
        000000F0E6D7DD5869FD410E486A8B8B02B3EB2A36124F000000000000000000
        000000000000000000000000000000000000005C7AD7DDA869FD8A0EB38B6666
        A56AF5445F9F4F00000000000000000000000000000000000000000000000000
        00000013DDD7E8A86965410EE28B660F25024816809F4F000000000000000000
        00000000000000000000000000000000000000A4FED7E87A69FD4F092102A525
        8B6A48168A12C900000000000000000000000000000000000000000000000000
        000000917BD7E8B090A9318AEBE26A026A210E2ABEB18C000000000000000000
        00000000000000000000000000000000000000D5D4D73CE6900BDB681CC5F521
        F50E448A12DCC800000000000000000000000000000000000000000000000000
        000000D6D7E1FEE6DF69A98C68366D096BAA36B1DCE5A9000000000000000000
        00000000000000000000000000000000000000D7E1E1FEE619C469A9DBC94F93
        4FB1689EE5A96900000000000000000000000000000000000000000000000000
        000000D4D6E1FEE619DF9069412E452A2AB2DB650B9090000000000000000000
        00000000000000000000000000000000000000B492E1B4E6DFDFDF044D4D4922
        22452EC69089F700000000000000000000000000000000000000000000000000
        000000E823E1B4E6DFDFAB946117174D4D4D6F5E1919D8000000000000000000
        000000000000000000000000000000000000007AD3E1B4E6F7DFD4D1D1D17979
        70702D1FF119D800000000000000000000000000000000000000000000000000
        0000007AD2E1B486D8D85A6262D096D1F3612D1D7B1953000000000000000000
        00000000000000000000000000000000000000B05D5E7B8653EC1D430A0862D0
        D161CA2DD7195300000000000000000000000000000000000000000000000000
        0000007A5D5EB4E653537A43052B086296F3612DD419ED670000000000000000
        000000000000000000000000000000000000003C5D5E7BE6EDC06E82051A2B08
        62D1616FABDF8FCF000000000000000000000000000000000000000000000000
        0000007B5D5E7BE6C08FC0E62B051A4333964C04D8F7C0F00000000000000000
        00000000000000000000000000000000000000D45D5E7BE68F8F8F8FE6942B2B
        5194D4C0D8D88F5C000000000000000000000000000000000000000000000000
        00000004E75E7BE6EFEF8F8F8FA2ABB0B0DAEC53D8D88FAF0000000000000000
        0000000000000000000000000000000000006CE15D5ED4E6A2A2EF8F86043F3F
        04F1EC5353D88F13000000000000000000000000000000000000000000000000
        0000075E5DD6D4E6A2A2EFB47C94944D632ED7ED53538FA40000000000000000
        000000000000000000000000000000000000AED6E7D67BE6A2A29A570D833434
        94881F5E53538F5D000000000000000000000000000000000000000000000000
        00006792E792D4E6B6F18D724A7E7E8383880D1F7AD8EF910000000000000000
        000000000000000000000000000000000000BD235D9204E6B6B075208E4A4A7E
        FB0D5B5BD553EF23000000000000000000000000000000000000000000000000
        0000F091A49204E6B69AA1A77373208E8E723737B7F98F230000000000000000
        0000000000000000000000000000000000005C91E792D4E6F19A7428295656A1
        A1723737B7E68F92000000000000000000000000000000000000000000000000
        00005C5DA49204B0F1B07314284E4EA774D97837B7868F5E0000000000000000
        000000000000000000000000000000000000AF5DA49204B086AB0D140C604EB8
        A77439788DEF8FE1000000000000000000000000000000000000000000000000
        000013E7A49204B08686B0110C14B529067439757BC0EFD70000000000000000
        000000000000000000000000000000000000A4A4A4D504B08686E45511141428
        297472D7A28F8F04000000000000000000000000000000000000000000000000
        0000E7A4A42304E6DADADAE47A4A294EA175D4B68F8F8F040000000000000000
        0000000000000000000000000000000000005DA4A423A4F013927BE6B6E4979A
        9AABA2EF8F8F8FD4000000000000000000000000000000000000000000000000
        00009113676CAD07AE67BDF0AF23D47AB68F8F8F8F8FC0B40000000000000000
        000000000000000000000000000000000000913030306CADAE67BDF0AF13A45D
        D3D67BB0F18F53B4000000000000000000000000000000000000000000000000
        0000A46C3D30FF6C07CEBDF05CAFA4D2D3925E04D4D4FE7B0000000000000000
        00000000000000000000000000000000000000A413BDAE0707AECFF05C135DD3
        D5D65ED704D6AFAC000000000000000000000000000000000000000000000000
        0000000000CCBDAFE7919191D3915DA4AFBD0700000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFF0000FFFFE1FFFFFF0000FFFFC07FFFFF0000FFFF800F
        FFFF0000FFFF0001FFFF0000FFFF00007FFF0000FFFF00001FFF0000FFFF0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        0FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFE00000FFF0000FFFF8001FFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF000028000000300000006000000001002000000000008025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000001313135E101010E4
        0F0F0FB41010105100000005000000005DFF560355FFB30655FF8B094BFF9A0A
        56FF8C0946FF90075BFFB7030000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000009161616A3181818FE0F0F0FFF
        0A0A0AFF0F0E0FFE111312E71521198D27513A3767FF9F1862FF9D1B5CFF9D1C
        5FFF981B60FF94185EFF931359FF9E0C43FF8C04000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000023232308171717B5202020FF353535FF111111FF
        050505FF090D0AFF0F1912FF15261BFF1A2B1FFD1C3222CB295A387957E08737
        67FF9D2C65FF982967FF9A2369FF971B65FF9F127BFFA1070000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000002A2A2AB0232323FF3C3C3CFF353535FF101110FF
        0A0F0BFF0E1B13FF132619FF16301FFF1A3924FF1F402AFF21462EFF20432CF2
        285839AE41995B6268FFA23467FF982B69FF9A2061FF91156AFFB20800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001A1A1A1F1B1B1BF9474747FF3A3A3AFF353435FF121413FF
        0F1A13FF14271AFF193422FF1C3D27FF234B31FF2C573BFF295839FF245635FF
        265636FF254E32FE244B30DA2C65408B51C5783D6AFFA3215EFF941374FFAC05
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001D1D1D3F292929FF4C4C4CFF3B3B3BFF343434FF141C17FF
        142519FF193321FF20432CFF4A7058FF4D9A5EFF47A859FF50A563FF568F6AFF
        38714CFF28603BFF275938FF244D31FF1D3B26F61D40299364FF9B1D5FFF990E
        00FF000100000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001F1F1F4B2D2D2DFF4C4C4CFF3C3C3CFF363737FF17231BFF
        172E1FFF1D3C28FF4C765AFF2EB13EFF23C238FF27C43CFF28C53DFF2AC13EFF
        4FA862FF467E5AFF2A653DFF265937FF224B2FFF1E3B28D26DFF9F2562FF9115
        73FFAC0500000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000021212157303030FF4B4B4BFF3C3C3CFF353B37FF19291EFF
        1B3522FF345540FF35A345FF24C138FF31CA49FF37D054FF38D154FF34CE4EFF
        29C840FF4DA861FF3C7650FF2B633EFF255435FF22452DDB66FF9D2C5DFF971B
        6EFFA40A00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000021212165343434FF4D4D4DFF3C3C3CFF363F3AFF1A2C20FF
        1C3926FF42644FFF24BB33FF30CA49FF3ED75DFF47E06AFF49E26DFF43DC64FF
        37D153FF2BC440FF58956CFF2D6740FF285A39FF244930E268FFA13067FF991E
        69FFA80D00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000022222271383838FF4C4C4CFF3D3D3DFF383E39FF1A2D21FF
        1E3B27FF426750FF23C036FF38D154FF47E06BFF56EF80FF59F285FF4EE775FF
        40D95FFF2DCA45FF49AA5BFF36714AFF295D3BFF254A30E964FFA0325FFF9720
        61FF9A0E00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002525257E3D3D3DFF4D4D4DFF3E3E3EFF363E3AFF1B2D21FF
        203C29FF3C5F49FF2AB73CFF39D456FF4AE36EFF5AF386FF61FA91FF51EA79FF
        41DA62FF2FCA48FF3FB151FF3F7852FF2A5D3BFF254830EF63FF973363FF9E1F
        61FF990E00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002727278B404040FF4D4D4DFF3E3E3EFF363C38FF1A2B20FF
        1F3A28FF2F523CFF359A44FF34D14EFF44DD65FF4FE876FF52EB7BFF4AE36EFF
        3DD65BFF2BC842FF42AC57FF3A724DFF295939FF24452FF35EF38D3266FF9B1C
        63FFB00B00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000027272797454545FF4C4C4CFF3E3E3EFF353936FF19271EFF
        1F3627FF234530FF3D6A4CFF2DBD40FF37D354FF41DA60FF42DB62FF3DD65BFF
        32CC4CFF27C43CFF539566FF2D623FFF275336FF24402DF759E7872F60FF9518
        48FF9B0700000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000292929A5484848FF4D4D4DFF3F3F3FFF343434FF18221BFF
        1D3124FF223E2CFF2A4D36FF40724EFF2FB443FF2ECD46FF30CD49FF2DCA44FF
        28C43CFF49A15CFF3C6F4EFF295739FF244A31FF213929FA54C3762C5AFF9C11
        94FF8C0200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002C2C2CB14C4C4CFF4F4F4FFF404040FF333333FF161A16FF
        1B2920FF203627FF24422EFF2A4F36FF3B6349FF3F8450FF3B9A4DFF409952FF
        4C835DFF386849FF295538FF254C32FF21402BFF203126FC40A15F2860FF9309
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002D2D2DBE4E4E4EFF4E4E4EFF404040FF333333FF151414FF
        19201CFF1D2C22FF213728FF223F2CFF284933FF32553DFF355A42FF2D533AFF
        285036FF284F35FF254831FF213F2BFF1D3425FF1F2C23FE34643E2500FFFF01
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002E2E2ECC535353FF4E4E4EFF404040FF323232FF151515FF
        171818FF1A221DFF1F2C23FF455A4AFF548069FF4E9371FF539C75FF5A936FFF
        46674FFF23402CFF203A29FF1D3224FF1A281EFF1C241FFF1C29222500000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000303030D7565656FF4F4F4FFF424242FF323232FF171717FF
        171717FF181817FF494E4AFF2E6166FF246E6CFF2D7B6EFF32856FFF33836DFF
        41826BFF57705FFF1F2F25FF19241DFF161C18FF191B1AFF1817182B00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001323232E4595959FF4E4E4EFF414141FF323232FF181818FF
        181818FF343131FF284D62FF114F6BFF1A5E6DFF20696EFF266E6DFF286C69FF
        256463FF315D5DFF515550FF131413FF141314FF1B1A1BFF1919193400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000004333333EE5B5B5BFF4E4E4EFF434343FF323232FF191919FF
        181818FF454748FF0A5074FF0C4F72FF0E5271FF125770FF165A6EFF195769FF
        195062FF174358FF41515AFF2A2A29FF131313FF1B1B1BFF1F1F1F3D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000020202008353535F55F5F5FFF4F4F4FFF424242FF303030FF1A1A1AFF
        1B1A1AFF3A4B54FF095880FF08567CFF07547AFF095277FF0C5172FF0F4D6CFF
        124965FF15455DFF224558FF464544FF131212FF1C1C1CFF1F1F1F4600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000003737370F363636FB616161FF505050FF444444FF303030FF1D1D1DFF
        1C1B1AFF364852FF3D84A5FF4C8BA8FF025883FF06577FFF085379FF0B5072FF
        0F4C6BFF134763FF17445BFF4D4C4BFF131313FF1D1D1DFF1F1F1F4F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000363636193B3B3BFE616161FF505050FF434343FF313131FF1D1D1DFF
        1D1D1DFF3A3A3AFF3383A5FF71AAC1FF1F7499FF045E86FF065880FF095378FF
        0D4E71FF114A68FF1A475FFF494645FF141414FF1E1E1EFF2121215800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000383838263F3F3FFF616161FF505050FF454545FF313131FF1E1E1EFF
        1F1F1FFF2D2A29FF1E5B72FF81BCD1FF539AB6FF1A7297FF055C85FF06557CFF
        0B5073FF0F4B6BFF2F4F5FFF333131FF171717FF202020FF2525256100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000040404033444444FF626262FF515151FF444444FF313131FF1F1F1FFF
        202020FF1F1F1EFF363434FF217897FF6AB2CAFF5FA0BBFF3B81A2FF1B658BFF
        095176FF174E6AFF4B4B4BFF1A1A19FF191919FF1F1F1FFF2727276A00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000003F3F3F3F474747FF616161FF525252FF464646FF313131FF202020FF
        212121FF212121FF212020FF353332FF225568FF1B6E90FF1B7098FF155E81FF
        295164FF494848FF20201FFF1B1B1BFF1A1A1AFF202020FF2525257300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004242424C4B4B4BFF636363FF525252FF454545FF313131FF232323FF
        232323FF222222FF222222FF212020FF282423FF342E2FFF3A3735FF3A3735FF
        2F2D2CFF1C1C1BFF1C1C1CFF1B1B1BFF1B1B1BFF222222FF2828287C00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000464646584E4E4EFF626262FF525252FF474747FF323232FF242424FF
        242424FF232323FF222121FF2E2D2DFF485048FF506256FF4F6556FF464F47FF
        2C292AFF1C1B1BFF1D1D1DFF1C1C1CFF1B1B1BFF212121FF2B2B2B8500000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000046464666515151FF626262FF535353FF474747FF323232FF252525FF
        252525FF232323FF434640FF496064FF325368FF2E566AFF315E6AFF396567FF
        517069FF4A5049FF1E1E1EFF1D1D1DFF1C1C1CFF222222FF2C2C2C8E00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000048484872535353FF636363FF535353FF464646FF323232FF262626FF
        252525FF3C3D3AFF3A4963FF20386BFF26426BFF294C6CFF2B4F6AFF2C4F67FF
        294861FF3B5560FF50544FFF1C1C1CFF1D1D1DFF222222FF2D2D2D9600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004C4C4C7F565656FF636363FF545454FF484848FF333333FF282828FF
        2B2A29FF464A56FF172470FF1D2E70FF203871FF223D70FF24416EFF27416AFF
        263E64FF23385EFF3F4F5EFF3B3B39FF1B1B1BFF232323FF2E2E2E9F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004E4E4E8C5A5A5AFF626262FF545454FF494949FF333333FF282828FF
        383835FF272966FF121A76FF162476FF192B76FF1B2F74FF1E3472FF1F336DFF
        203368FF202F61FF1F2959FF555758FF1C1C1CFF232323FF303030A800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004F4F4F985C5C5CFF646464FF555555FF494949FF343434FF292929FF
        3E3E38FF141474FF090C7CFF0F147DFF111B7CFF14227AFF162476FF182571FF
        1A256BFF1B2364FF1A1E5BFF41425BFF2A2A28FF222222FF333333B100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000505050A65E5E5EFF636363FF555555FF484848FF343434FF2A2A2AFF
        3E3E38FF0C0D7CFF4849A6FF14188DFF090D84FF0D1280FF0F157BFF111775FF
        14186EFF151766FF17175EFF37375AFF333332FF222222FF333333BA00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000535353B3606060FF656565FF565656FF4A4A4AFF353535FF2B2B2BFF
        393833FF131A7EFF656BC2FF444CB2FF060F94FF080C8AFF090980FF0C0C79FF
        0F0F71FF12126AFF151563FF38385CFF2E2E2DFF222222FF353535C300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000555555BF616161FF646464FF565656FF494949FF353535FF2E2E2EFF
        31302EFF292F64FF4B5AC8FF6772CBFF2534AEFF061198FF080B89FF09097DFF
        0D0D75FF11116DFF131366FF4B4B59FF232322FF222222FF373737CC00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000575757CD636363FF646464FF565656FF4B4B4BFF363636FF2F2F2FFF
        2E2E2DFF3A3834FF142DB0FF7D8DE1FF5766CAFF2935ADFF0D1394FF070781FF
        0C0C77FF0F0F70FF212165FF474742FF1F1F1EFF232323FF3A3A3AD500000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000005A5A5AD8646464FF656565FF575757FF4A4A4AFF363636FF303030FF
        2F2F2FFF2F2F2DFF353947FF1434C4FF5669D5FF626DC8FF4D53B3FF262692FF
        090879FF17176EFF4C4C50FF252524FF202020FF212121FF3C3C3CDE00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000015B5B5BE4656565FF656565FF585858FF4A4A4AFF333333FF2D2D2DFF
        2D2D2DFF2D2D2DFF2F2F2CFF38393BFF1F2D7CFF0C1A97FF0A1194FF11107BFF
        2D2D63FF484847FF282827FF212121FF202020FF222222FF3F3F3FE600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        434343045C5C5CEE666666FF646464FF595959FF666666FF767676FF6B6B6BFD
        565656FA444444FA323232FC292927FE302F2AFF393831FF3D3E38FF3D3C37FF
        31312EFF242423FF232323FF212121FF202020FF202020FF414141ED00000002
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        686868085A5A5AF5686868FF7C7C7CFF8B8B8BFF888888FF848484FF7F7F7FFF
        7C7C7CFF787878FF747474FE6B6B6BFC585858FC474747FC373737FC292929FD
        232323FE222222FF222222FF212121FF202020FF1F1F1FFF3E3E3EF32D2D2D06
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        666666105D5D5DFB939393FF929292FF8F8F8FFF8A8A8AFF878787FF818181FF
        7C7C7CFF787878FF747474FF6D6D6DFF696969FF656565FF606060FF5C5C5CFE
        535353FD444444FD373737FD2C2C2CFE232323FE1D1D1DFE3F3F3FF73636360A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        6767670B606060F08B8B8BFF999999FF949494FF8E8E8EFF898989FF848484FF
        7E7E7EFF797979FF747474FF6F6F6FFF6B6B6BFF646464FF5F5F5FFF5B5B5BFF
        565656FF515151FF4B4B4BFE464646FA434343F33D3D3DF5424242F93C3C3C0E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000006B6B6B4D5D5D5DE5696969FE777777FF808080FF828282FF838383FF
        808080FE7B7B7BFE767676FE707070FE686868FE626262FD5B5B5BFA565656F8
        515151F74D4D4DF4494949F3484848F44A4A4AE4494949A54949495600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000006B6B6B086666664A63636387606060B35F5F5FD45D5D5DEA
        5C5C5CF65C5C5CF65A5A5AF6595959F6575757EC555555DF555555CC525252B6
        535353984F4F4F744D4D4D4D5151511C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000100000001000000010000000100000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFF0000FFFFE1FFFFFF0000FFFFC07F
        FFFF0000FFFF800FFFFF0000FFFF0001FFFF0000FFFF00007FFF0000FFFF0000
        1FFF0000FFFF00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE0000
        0FFF0000FFFE00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFE00000FFF0000FFFF8001FFFF0000FFFFFFFF
        FFFF0000FFFFFFFFFFFF0000}
      Transparent = True
      Visible = False
    end
    object Image2: TImage
      Left = 748
      Top = 3
      Width = 32
      Height = 45
      Center = True
      Picture.Data = {
        055449636F6E0000010008001010000001000800680500008600000010100000
        0100200068040000EE0500001818000001000800C8060000560A000018180000
        01002000880900001E1100002020000001000800A8080000A61A000020200000
        01002000A81000004E2300003030000001000800A80E0000F633000030300000
        01002000A82500009E4200002800000010000000200000000100080000000000
        400100000000000000000000000000000000000000000000FFFFFF00135FFF00
        686664000B4E8000265623002053C100348DFF0086868600231F20002C709500
        4949490018305B0043745A0063708B00274F9A00264D5D00243E78002E374A00
        120E11002A69CF00375A8600212739003F4B6500135A68007875710016511100
        5558600017523400144BA600175BD40030313100174B710032502D0039464A00
        233B68002882FF00272C2700676B71007C7C7C00414141001B150D002F465000
        61605D001D223000221B16004F4F4F007173780070706F00161416001B1C1E00
        24437F002A4F93006A6A6A00273D6E001258FF000D0B0D00787878001F2A3400
        63636300161210002554C300223D7300737373004D4B47006D6D6D002A86FF00
        165AFF00696867005E5E5E00100B0F0065728D004B4B4B004D4D4D0050504C00
        201E2000666666000F0C0C0085858400656464000F0A0D00120F0F004F4E4C00
        135DFF0017131100151515007474720069696900125EFF00130F100023201F00
        68686800424142004F4F4D0068666500666665004F4F4E000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000045555C00000000000000000000000000283831254B4800
        00000000000000003F0B46051A21130000000000000000004149500D181C0900
        000000000000000057495159363A4D000000000000000000572E3C2A10225427
        00000000000000005B2E2D0A04201F3900000000000000004C6029151E1D5A56
        00000000000000005F4A2C333D340C2F00000000000000004C52233758530F47
        00000000000000004F5D11240702060E00000000000000003B40161442433E26
        0000000000000000354E191B1712320300000000000000000827305E2B2B4400
        0000000000000000000000000000000000000000FFFF0000F8FF0000F81F0000
        F01F0000F01F0000F01F0000F00F0000F00F0000F00F0000F00F0000F00F0000
        F00F0000F00F0000F00F0000F01F0000FFFF0000280000001000000020000000
        0100200000000000400400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000011B1B1B8A0F0F0FF40D0C0DAA0C0B0C4F
        0000000600000000000000000000000000000000000000000000000000000000
        0000000000000000000000001A1A1A4E414141FF0D0B0DFF161416FF272C27FF
        161416ED0A0A0A98000000110000000000000000000000000000000000000000
        0000000000000000000000001D1D1D67494949FF100B0FFF265623FF165111FF
        32502DFF120E11FF0E0E0E380000000000000000000000000000000000000000
        000000000000000000000000222222754D4D4DFF0F0A0DFF43745AFF135A68FF
        175234FF231F20FF0F0E0F420000000000000000000000000000000000000000
        000000000000000000000000292929834D4D4DFF120F0FFF130F10FF273D6EFF
        1F2A34FF0F0C0CFF1414144B0000000000000000000000000000000000000000
        000000000000000000000000353535914F4F4FFF161210FF2F4650FF264D5DFF
        39464AFF171311FF1B1B1B550000000000000000000000000000000000000000
        0000000000000000000000003E3E3E9F4F4F4FFF221B16FF2C7095FF0B4E80FF
        174B71FF303131FF1D1C1B5F0000000000000000000000000000000000000000
        000000000000000000000000454545AD4F4F4EFF1B150DFF375A86FF175BD4FF
        144BA6FF23201FFF22221D680000000000000000000000000000000000000000
        0000000000000000000000004D4D4CBB50504CFF1D2230FF24437FFF2554C3FF
        2A4F93FF18305BFF272B37730000000000000000000000000000000000000000
        000000000000000000000000545353C94F4E4CFF233B68FF1258FFFF125EFFFF
        135DFFFF274F9AFF243C70860000000000000000000000000000000000000000
        000000000000000000000000595858D74F4F4DFF243E78FF2882FFFF348DFFFF
        135FFFFF2053C1FF2840708F0000000000000000000000000000000000000000
        0000000000000000000000005C5C5CE54D4B47FF212739FF2A69CFFF2A86FFFF
        165AFFFF223D73FF313843900000000000000000000000000000000000000000
        000000000000000000000000686868F3858584FF797672FE565961FE404C66FE
        2F384BFE1C1D1FFE393733990000000000000000000000000000000000000000
        0000000000000000000000006767678D757575DC6F6F6EF5676564F75C5B57EC
        53524FD5494846AD4040404C0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFF0000
        F8FF0000F81F0000F01F0000F01F0000F01F0000F00F0000F00F0000F00F0000
        F00F0000F00F0000F00F0000F00F0000F00F0000F01F0000FFFF000028000000
        18000000300000000100080000000000A0020000000000000000000000000000
        0000000000000000FFFFFF001863FF0064636300094C8F00303234008D8D8D00
        3676AB003896FF002B682D002C4E6000528E8A002350C3004280D6000F494100
        1A1816001A4A19004C4C4B00787878004A5B79002B519200203C78000C49AF00
        235CE3000B4F5D00344F360024304D001B2437002A58AF001C2D1E003F3F3F00
        1D4F6F00414B60002048A1000C0B0C001F34600057575700333C50002E487300
        4F5567006F6E6D00838383000E55FF001249810022405200256BF80026292A00
        3C607600234222002157D50027221D003189FF001D475E00585F6D002B4D2B00
        194BB400283F6A001B5BC600295CC100244A890010507100202942003B373200
        1E56B0001C58EC002760D90040444900262F380039515B00274F9C0012121200
        1F438000274D6C002B342B002171FF002559CC0027437800060606004A587000
        5E5E5E00165AFF00383A3C00124E1A00213B6E00696969005061770073737300
        2550640052535200283B630021212200313931001C356700324E5B002D2D2D00
        164D6D001C1B1C003A4C380046464600878787007F7F7F0023365B001C68FF00
        252A3500353535001A48630043434200358DFF00263F6F00171513003891FF00
        115AFF0062615E0009080900100F0F006666660027334B0050504F00235ED800
        26242100747677001F6DFF00383838003C3C3C0040424500161111002E312E00
        1C28410027272700313031006C6C6C00585D6A00818181007A7A7A0071717100
        5C5C5C00595959005555550014141400194D18001760FF001C1A190061616100
        85858400414140004A4A4A004E4E4E00191713000D0D0D001D1C1A0023222300
        75757500444444002A4F9300414347000E0B0D00110F11001C4A1A006F6F6F00
        60615F00585755001158FF00080708000A090A000E0E0E001313130077777700
        6D6D6D006A6A6A00626262003E3E3E0056565600125BFF000E0C0C0013121100
        1916140084848400202A43006363620040403F0042424200535353004B4B4A00
        0E56FF0008080800090709000D0C0D0013131200151414007878770027221E00
        3131310064636200626161004040400041414100434343000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000089A5C40000000000000000000000000000000000000000ABBFA44D
        A3608800000000000000000000000000000000005E1E94B97E5B96A268000000
        000000000000000000000000BFC222498B9D3680B80000000000000000000000
        000000007AAA9B3009521061710000000000000000000000000000007B1E9C1D
        0B180E19BA120000000000000000000000000000B41E467D2C3F1F2E72970000
        00000000000000000000000062C28AAEBE3E32ADA58600000000000000000000
        0000002991C2BC0557345D81BBA7000000000000000000000000006492C36D0A
        3C5F69440F540000000000000000000000000085B5C2AF2F07042B4877730000
        0000000000000000000000A624C295430D39162693A900000000000000000000
        0000005687905A3D153721231B9F000000000000000000000000009E4FB3B14C
        4B173A3B5C350000000000000000000000000082C17C6531B7AC6F4147550000
        0000000000000000000000A7C0423850794A8CA1141300000000000000000000
        00000082B29A592D6E6B662A994E00000000000000000000000000A7036A741C
        08330240532700000000000000000000000000A88EB6511A45760C6C7F580000
        00000000000000000000009E63068F78832025678D7500000000000000000000
        00000085846384BD2870A0119873000000000000000000000000000000B012A6
        A685840000000000000000000000000000000000000000000000000000000000
        00000000FFFFFF00FF8FFF00FF01FF00FF007F00FF007F00FF007F00FF003F00
        FF003F00FF003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FF81FF00
        FFFFFF0028000000180000003000000001002000000000006009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000415151592101010F9121212AF0F0F0F4C
        0000000400000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000001C1C1C98313131FF0E0E0EFF060606FF0A090AFF
        0C0B0CE40B0B0B84070707230000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001C1C1C0A2C2C2CFC3F3F3FFF0D0D0DFF090709FF2E312EFF
        313931FF232223FF080708FD0B0B0BBD0909091D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000024242417323232FE404040FF0C0B0CFF2B342BFF194D18FF
        1C4A1AFF2B4D2BFF272727FF080808FF0B0B0B46000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000025252524383838FF3E3E3EFF0E0B0DFF234222FF2B682DFF
        124E1AFF1A4A19FF3A4C38FF090809FF0D0D0D4F000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000272727303C3C3CFF3F3F3FFF110F11FF1C2D1EFF528E8AFF
        0B4F5DFF0F4941FF344F36FF0D0C0DFF14141458000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002C2C2C3D424242FF3F3F3FFF121212FF161111FF224052FF
        1E56B0FF1D4F6FFF26292AFF100F0FFF18181861000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002F2F2F4A464646FF404040FF141414FF131211FF27221EFF
        3B3732FF27221DFF0E0C0CFF131313FF1B1B1B6A000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000303030574A4A4AFF404040FF151414FF303234FF255064FF
        1D475EFF324E5BFF313031FF131312FF1D1D1D73000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000363636644E4E4EFF414141FF171513FF2C4E60FF105071FF
        164D6DFF1A4863FF39515BFF1A1816FF2020207B000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000039393970535353FF404040FF191614FF3C6076FF3676ABFF
        094C8FFF124981FF274D6CFF262421FF23232384000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000003F3F3F7D575757FF404040FF1D1C1AFF262F38FF4280D6FF
        1B5BC6FF0C49AFFF2E4873FF191713FF2625258D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000004141418A5C5C5CFF414140FF212122FF202942FF203C78FF
        194BB4FF2048A1FF1F3460FF1B2437FF2A2B2896000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000454545975E5E5EFF40403FFF202A43FF274378FF2559CCFF
        235CE3FF295CC1FF244A89FF1C3567FF29344AA2000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000494949A4626161FF404245FF23365BFF2157D5FF0E56FFFF
        125BFFFF115AFFFF2760D9FF1F4380FF294261B20000FF020000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000515151B0646362FF404449FF283F6AFF165AFFFF1F6DFFFF
        2171FFFF1760FFFF1158FFFF2B5192FF283F68BD0039FF050000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000565656BD636362FF414347FF283B63FF256BF8FF3891FFFF
        358DFFFF1C68FFFF0E55FFFF2A4F93FF2C3F5FC20068FF030000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000005D5D5DCA646363FF434342FF27334BFF2A58AFFF3896FFFF
        3189FFFF1863FFFF1C58ECFF213B6EFF343C54C5000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000005F5F5FD7616161FF4B4B4AFF383A3CFD25314EFE274F9CFF
        235ED8FF2350C3FF263F6FFF1C2841FF3C3D3CCC000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000696969E4878787FF8D8D8DFF858584FF757778FE595E6BFD
        424C61FE343D51FE262B36FE1D1B1AFE3F3F3ED5000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000006B6B6BC2818181FF878787FF818181FF787877FF6F6E6DFF
        62615EFF585755FF4D4D4CFE454545FE4C4C4CBA000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000004B4B4B075D5D5D4F5A5A5A7F555555985555559C53535399
        4F4F4F8A4C4C4C724747474E4E4E4E1C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFF00FF8FFF00FF01FF00FF007F00FF007F00
        FF007F00FF003F00FF003F00FF003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00FE003F00
        FE003F00FF81FF00FFFFFF002800000020000000400000000100080000000000
        800400000000000000000000000000000000000000000000FFFFFF001A64FF00
        55895A00064F95009A9A9A00373737004E86BA003F9CFF0042516E00114E1000
        094A55002565C2007B7B7B001E1C1A005F968E001E3C75003A6C8B0064646400
        2A4FA1004C4C4C001752DC001D2E50002B80FF00538FD9001549BF00265E7900
        203B240022535C00296EEB008B8B8B0036435C002D4F2D0010507C001F263800
        1E448C000F0D0F0011493F00134D2A002752B5000D54FF00314576002B272500
        5858580070706F00535A6B00275FDF000C4EAF00384B4B00263A64002D4F8D00
        306CB5001D5CEF002A36480041414100144D6C002658D0001F4E1F00368CFF00
        1E445900405240002374FF000D48A100195C64002C2E3200225BA300444E5800
        2E5164001B315E0083838300283C5400374E37001F2125000A4E2100114E5E00
        175A7F003160B80007070700161515002E61C9001E4180002B4780005B617000
        1820310012498500354E5C001E59D80073757800174774005F5F5F001A4B6200
        1C3B65002C78F9000E4C90004A566B003E434A00224D2800434E65002A3F6B00
        155DFF00194C18001D451D001D2841002C50970026324F00254173002D5AB300
        909090003D3D3D00464646005151510025211F003D473D00253557003B95FF00
        2346830068686900274F62002C292C001C2C4900252936008787870033333300
        144C7800295ECF0021345D001B161900232F4A00312D2D00130F1300184A1E00
        1F1F1F00252525001C4A8C0020417A001D232F00244A23003C4045001E366800
        7F7F7D006D6D6D0029314500494B510078787700555554001D475F0046526800
        0B0B0B0018496D00235ADA0045474B00184C6700203B70000F58FF001A151300
        7373730004040400606061005B5B5B004A494900293654002C4B9000284F8D00
        212A3F00222733002B5290001861FF0022222200323030003E3F3F0045546F00
        2660E3001B1A1A00282522002A2629003E433E002A7CFF001B59F10013121200
        18181700233255001C471A001F345F00204481002576FF000F0F0D0041434400
        263452001B3F80001B3A75002B4983000A090A008E8E8E008989890085858500
        1D1D1D00393A39004F4F4F0028344D00808080003A92FF002270FF002C2A2900
        444444002E80FF001259FF0011101100211E1D00174D16003636360053535300
        47474A001D465B000D0D0D00255DDF00211F21006E6E6E002F2D2F001F2E4E00
        060506003A3B3A003E3D3B005D5D5C0040403F0056565600484847001C455E00
        253B66002D82FF001B66FF00135AFF00100F0F001A1717001D1F20005A595900
        595B5C00515050002C4C8E001762FF001C471C0070707000303030000C0C0C00
        8D8D8D008C8C8C008A8A8A008888880014141400161616008484840019191900
        7E7E7E001E1E1E007C7C7C00202020007A7A7A00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        8FACA7590000000000000000000000000000000000000000000000000000008C
        ACC3DB93CEDC8F000000000000000000000000000000000000000000000000FE
        6CFEDB4D9CDBBFFAD200000000000000000000000000000000000000000012C4
        6CFC4DBFD170AFD74D93F100000000000000000000000000000000000000DE6C
        6CFC4DC439EF6547D9DB9300000000000000000000000000000000000000EA36
        6CFC24200AD064B53CCED500000000000000000000000000000000000000D26D
        DFC38139034926828876F200000000000000000000000000000000000000149F
        A9C3241B0F3F0B2560AEE700000000000000000000000000000000000000E114
        DF83CE7E1C33414A30E7B2FD000000000000000000000000000000000000366E
        36FCF7B29A775B35E8E74E8F000000000000000000000000000000000000A990
        DFFCF8B280A9DDADB9B24E9B0000000000000000000000000000000000006C2B
        DF834EDC75913B5536E7B32C000000000000000000000000000000000000062B
        3683CF4337975AD455CAB38C000000000000000000000000000000000000D1EA
        36832A1A4B217B94E2BAB3740000000000000000000000000000000000006C9E
        36A76F1107045D54585FB312000000000000000000000000000000000000369E
        CBA70E46180C2F3E85A8AC9D0000000000000000000000000000000000006D9E
        CBA7A7A4235615192953E9DE0000000000000000000000000000000000009F9E
        6D84A3B698326773BD4466EB000000000000000000000000000000000000C59E
        CB787DBE7CB1344FA5BCB62D0000000000000000000000000000000000C06EDE
        6D7F699528CDE699ABA2105E0000000000000000000000000000000000F4E09E
        96B4322863A6A663994C50AA0000000000000000000000000000000000799EDE
        967113EEB8B03DA6CD2EB7090000000000000000000000000000000000F99EDE
        D3BBED3D3AC8E4E599D686610000000000000000000000000000000000C75959
        E18D621D7208CC02286A8A420000000000000000000000000000000000FB9D59
        E140A0515C17C9CD3869168E0000000000000000000000000000000000FD9DDE
        90EC8968311327A1E3DA879F00000000000000000000000000000000000DD8C1
        1EC28B5752921FC622480EE10000000000000000000000000000000000FFC205
        6B79C78F2C749DEAECDF7A36000000000000000000000000000000000000F012
        8CD88C749D9E90C59F9074F60000000000000000000000000000000000000000
        00F5F9454579F300000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFF0FFFFFFE01FFF
        FFE007FFFFC001FFFFC001FFFFC001FFFFC001FFFFC001FFFFC000FFFFC000FF
        FFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FF
        FFC000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FF
        FF8000FFFF8000FFFFC000FFFFF81FFFFFFFFFFF280000002000000040000000
        0100200000000000801000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000001414145B121212F0121212E11010108107070720
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001B1B1B731B1B1BFE1D1D1DFF050505FF0B0B0BFF101010FC
        0F0F0FB90D0D0D56000000070000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001C1C1C3B202020FD3C3C3CFF202020FF050505FF070707FF040404FF
        060506FF090909FF0D0D0DEA0B0B0B8E0505052B000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001E1E1E83393939FF3D3D3DFF1E1E1EFF070707FF0A090AFF353635FF
        3D473DFF3E433EFF211F21FF070707FF0C0C0CFE0C0C0CC60000001200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000001F1F1F903D3D3DFF3D3D3DFF1E1E1EFF070607FF383A38FF1F4D1FFF
        1C471CFF1D451DFF374E37FF2F2D2FFF050505FF0B0B0BFF0B0B0B2F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002323239C414141FF3D3D3DFF1E1E1EFF0F0C0FFF2D4F2DFF114E10FF
        174D16FF194C18FF1C471AFF405240FF110F11FF0D0D0DFF0F0F0F3700000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000252525A9464646FF3F3F3FFF1D1D1DFF130F13FF1F4E1FFF55895AFF
        0A4E21FF134D2AFF184A1EFF244A23FF2C292CFF0C0C0CFF1111114100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000252525B6494949FF3E3E3EFF1D1D1DFF0F0D0EFF203B24FF5F968EFF
        195C64FF094A55FF11493FFF224D28FF2A2629FF0F0F0FFF1414144900000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000292929C34C4C4CFF3F3F3FFF1F1F1FFF111011FF1B1619FF22535CFF
        306CB5FF225BA3FF114E5EFF384B4BFF100F0FFF121212FF1414145200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002B2B2BD0515151FF414141FF1E1E1EFF141414FF131312FF1A1513FF
        1C2C49FF1C3B65FF2A3648FF1A1717FF100F0FFF151515FF1919195B00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000002E2E2EDD545454FF3F3F3FFF1E1E1EFF161616FF131212FF312D2DFF
        3D3F3FFF3E3D3BFF282522FF0F0F0DFF121212FF151515FF1818186400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000323232E9585858FF404040FF1F1F1FFF161515FF3A3B3AFF274F62FF
        1D475FFF1E4459FF354E5BFF414040FF100F0FFF171717FF1C1C1C6D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000333333F6585858FF424242FF1F1F1FFF211E1DFF2E5164FF144D6CFF
        184C67FF1A4B62FF1D465BFF344E5CFF2C2A29FF171717FF1F1F1F7600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        3C3C3C05363636FD595959FF414141FF1F1F1FFF2B2725FF265E79FF175A7FFF
        10507CFF144C78FF18496DFF1C455EFF414344FF181817FF2222227F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        313131103C3C3CFF5B5B5BFF424242FF212121FF25211FFF3A6C8BFF4E86BAFF
        064F95FF0E4C90FF124985FF174774FF3E434AFF191818FF2222228800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4141411E414141FF5A5A5AFF434343FF222222FF1E1C19FF283C54FF538FD9FF
        2565C2FF0C4EAFFF0D48A1FF1C4A8CFF323030FF1B1A19FF2828289100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4141412A454545FF5B5B5BFF444444FF232322FF212222FF222733FF1E448CFF
        1E59D8FF1752DCFF1549BFFF314576FF182031FF1D1F20FF2828279A00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        464646374A4A4AFF5A5A5AFF464645FF252525FF212A3FFF1F345EFF203B70FF
        2D4E8CFF2C5097FF234683FF1B3A75FF1B315EFF1D2841FF2A2C2EA300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        494949444E4E4EFF5B5B5BFF454444FF252936FF21345DFF2B4983FF295ECFFF
        1B59F1FF1D5CEFFF2E61C9FF2B5290FF1B3F80FF1E335FFF29344DAF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        4B4B4B51515151FF5C5C5CFF454546FF232F4AFF254173FF235ADAFF0D54FFFF
        1258FFFF135AFFFF0F58FFFF2660E3FF284F8DFF1E3C75FF293955BE0039FF05
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5050505D565656FF5C5C5BFF45464AFF233255FF2D4F8DFF0E54FFFF155CFFFF
        1861FFFF1760FFFF155DFFFF0F58FFFF3160B8FF1E4180FF2A3D5FC80063FF0C
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5252526A5A5A5AFF5D5C5CFF44474BFF253557FF2A4FA0FF1762FFFF2576FFFF
        2A7CFFFF2374FFFF1760FFFF1159FFFF275FDFFF204481FF2A3D61D01657FF0D
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        565656775B5B5BFF5D5D5DFF47474AFF263452FF2C4C8EFF2373FFFF368CFFFF
        3A92FFFF2D82FFFF1B66FFFF0F57FFFF255DDFFF20417AFF2F3D58D60066FF09
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        575757845F5F5FFF5E5E5EFF474747FF293145FF2A3F6BFF296EEBFF3B95FFFF
        3F9CFFFF2E80FFFF1A64FFFF0D53FFFF2D5AB3FF1E3668FF34404BDB0000FF02
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5B5B5B91606060FF5F5F5FFF484847FF2C2E32FF293654FF2B4780FF2C78F9FF
        2B80FFFF2270FFFF1159FFFF2658D0FF254073FF1D2E50FF3D3F46E100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        5E5E5E9D616161FF5C5C5CFF555554FF515151FE3B3F45FC26324FFD263A64FF
        294FA1FF2752B5FF2C4B90FF253B66FF1F2E4EFF1D232FFF424040EA00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        626262AA6E6E6EFF898989FF8B8B8BFF858585FF7F7F7DFF747679FE5C6271FD
        465269FD36435DFD29354EFE202739FE1F2125FF1D1C1AFF444443F200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        646464AE858585FF9A9A9AFF909090FF878787FF808080FF787877FF70706EFF
        686869FF606062FF5A5859FF525150FE414140FE343434FE414141F84E4E4E04
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        6C6C6C2F636363D0646464FE6D6D6DFF6E6E6EFF6D6D6DFF686868FF616161FF
        5A5A5AFF545454FF4F4F4FFF4B4B4BFE4E4E4EE94C4C4CB44E4E4E6400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000616161225A5A5A4F5A5A5A6B565656785555557853535377
        505050694F4F4F574C4C4C3C4D4D4D1900000001000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFF0FFFFFFE01FFFFFE007FFFFC001FFFFC001FFFFC001FFFFC001FFFFC001FF
        FFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FFFFC000FF
        FFC000FFFFC000FFFFC000FFFF8000FFFF8000FFFF8000FFFF8000FFFF8000FF
        FF8000FFFF8000FFFF8000FFFF8000FFFFC000FFFFF81FFFFFFFFFFF28000000
        30000000600000000100080000000000800A0000000000000000000000000000
        0000000000000000FFFFFF001A64FF00497B47000B4E98009999990035373A00
        5688B20043A0FF0042516E00105110000D4951002565C2007B7B7B001E1C1A00
        5F9386001F3D75003F729400656464002A4FA2004B4D4C00124FD6001A2E5700
        2C7EFF00548AD800174DBD00265E7900203B240025644400266DF3008B8B8B00
        30435A002C4B2C00125378001D263A001D4589000E0E0E00114B380018492800
        2259B2000F53FE002F4977002B272500575758006F6F6F00525B6C002760DB00
        1150AF0037485000273A6200304E8B003876B400205DE8003037490042424200
        144E6C002258CD001F4E1F00348AFF001F435600415140002574FF001148A100
        165E51002B3035002461A400444F58002D4E5F001E325C00838383002C415600
        394E38001D2129000A4E2100114E5B00165284003662B6000808080016151400
        2F64CC001D4182002D497E005B63740018203100114A8700374C57001E59D800
        6F717800174774005F5F5F001A4963001C3B65002A76FA000D4D8F004A566B00
        383E5100224D2800414C670029406C00155EFF00194D19001E451E001E294300
        355A990023314F0024407500335DAD00929292003D3C3D004646470052525200
        24211D003D473D00233559003C97FF0026488800696969002D4D5D002D2A2D00
        1F2C4900252936008787870033333400174B7A002C60D00022355D001B161900
        212D4800312D2D00130F1300174B20001F201F00242424001C4A8C0022407800
        1F243100244524003C4045001D3669007F7F7D006B6C6D002C323F00474A5200
        78777700555454001D465F00465268000B0B0B001A486F00245CD80045474B00
        194A6600213B71001156FF001A1513007474740004040400616161005B5B5B00
        494A4A002937550024489500264C8E00222B4100212632002D5592001861FF00
        22222200323131003F3F3F00485777002261E6001B1B1B002825220029282A00
        3E433E002A7CFF001857F4001312120018171700213256001B491A0020346000
        204481002676FF00100F0D0043424300263452001C3F7E001C3A72002E4C8300
        0A0A0A008E8E8E0089898900858585001D1D1D00393A39004E514D0028344D00
        808080003891FF002270FF002B2A2A00444443002E80FF001258FF0011101100
        201E1B00154F1800363535005053570048484B001D475B000D0D0D00255DDF00
        212021006E6E6F002D2E2E001F2E4C00060606003A3B3B003E3C3B005D5D5D00
        4040400055565700484748001C455E00223969002E83FF001C68FF00145BFF00
        10100F001A1717001D1F20005A5A5A00595B5C00505050002C4C8E001762FF00
        1C471C0070707000303030000C0C0C007BA488008C8C8C008A8A8A0088888800
        151414001716160084848400191919007E7E7E001E1E1E007D7C7C0021202000
        7A7A7A0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000009BFE6CFD000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000014B3E7BF24FCEA000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000036FED1CEDBDB4DD5E77A9B00000000000000000000000000000000
        00000000000000000000000000000000000000006EA76CD1CE4D4D4DDB4DBFF2
        B3C5000000000000000000000000000000000000000000000000000000000000
        00000000FCE1DCD1CE4D4D4DDB93B2D59CBFBFCA740000000000000000000000
        0000000000000000000000000000000000000000AE14DCD1CEBFBFF26C143CC5
        14AC9C4D93CEDE00000000000000000000000000000000000000000000000000
        00000000D9146CD1CEBFBFBA20EF656588C5A8DB4D4DD9000000000000000000
        00000000000000000000000000000000000000FBF1146CD1CE93A7206464B5EF
        6565C5D74DBFAE00000000000000000000000000000000000000000000000000
        0000008F7A146CD1CE937A640AD0D064B56588C54DBF84000000000000000000
        00000000000000000000000000000000000000F006146CD1CEF27A0A030AD082
        82B5653CB3BFFE00000000000000000000000000000000000000000000000000
        000000746C14A9D1E724760AF31C25252526EF478493C3000000000000000000
        0000000000000000000000000000000000000012DF14A9D1CECEC3820F114A0B
        0B25263CFCF2C300000000000000000000000000000000000000000000000000
        000000596D14A97ACECECE403F07414B370B2514D524B3000000000000000000
        000000000000000000000000000000000000002BE114A97AB2B2B24E40374127
        A54A55842424B300000000000000000000000000000000000000000000000000
        000000D214C5DF7AB2F7F7F74EAE7D10625FA7E7CEE7B3000000000000000000
        0000000000000000000000000000000000000014C5C5DF7AF74E4E4EB2F7CF6F
        4EB9CEB2CECEB300000000000000000000000000000000000000000000000000
        000000E1D2C5DF7A4EF8F8B3DDD24242E0DDF7B2B2CEFA000000000000000000
        00000000000000000000000000000000000000CBE0C5367AB3B3F8E175D4D43B
        3B5590B3B2B2AC00000000000000000000000000000000000000000000000000
        000000A9EAC5367AB3B3A843975A5A91D43B1FC5B2B2AC000000000000000000
        00000000000000000000000000000000000000DC9EC5CB7AFAB36D3737373797
        5AD43B42CAB2AC00000000000000000000000000000000000000000000000000
        0000000659C536F1ACAC42212121217B94979146CBB2C3000000000000000000
        00000000000000000000000000000000000000D19DECCBF1C3AC3011075D5D54
        547B949114B2C300000000000000000000000000000000000000000000000000
        000000DC9DECCBA8C3C3DC33074104045D547B946DF7FCFB0000000000000000
        00000000000000000000000000000000000000A99DEC6DA8FC83CA7B18332F2F
        3E5D5429A8F8FEFF000000000000000000000000000000000000000000000000
        000000CB9D6ECBA883FE83352F184F38192F3E61ACFA838F0000000000000000
        00000000000000000000000000000000000000E19D6E6DA8FEA7A4A3622F1515
        151932DA2248FEF0000000000000000000000000000000000000000000000000
        00000014126E6DA8A7A4777D8A86A1131373BD8A1666A48C0000000000000000
        000000000000000000000000000000000000F5C59D6EE1A8A47FB69873676A6A
        67A223BC8A16668C000000000000000000000000000000000000000000000000
        0000F96E9DD26D7AA37D98A54FB12828B14F6723508AB4520000000000000000
        000000000000000000000000000000000000C7D212D26D0668E332952899CDCD
        CD99341123BC8A52000000000000000000000000000000000000000000000000
        0000FBE01290E13571696A2899CDE66363E6CD2EA55098520000000000000000
        000000000000000000000000000000000000FFEA9D909F357DBE1528E6A6A6A6
        6363CD284C2310AA000000000000000000000000000000000000000000000000
        00009BDE1290D33531BEB1A6E5C93DC9E563E6997CA286AA0000000000000000
        000000000000000000000000000000000000F0591290D33531BEB1C9B0E4E4B0
        C9A6E69995A510AA000000000000000000000000000000000000000000000000
        0000D89D12E09F353151ABB83AC8C8E4B802CD2895A298AA0000000000000000
        0000000000000000000000000000000000008C9D12E09F35A0626AB03A08723A
        B80299284C508A61000000000000000000000000000000000000000000000000
        0000741212E014063531511D3A72C8E4C9A628B1678AB4420000000000000000
        0000000000000000000000000000000000001212122B9FD18DA062325CE4173D
        E5CD28131044778E000000000000000000000000000000000000000000000000
        00001212122B9F7AD98DA031514F1D02B138A5984477A4E10000000000000000
        0000000000000000000000000000000000009D1212EA128F742B4246B4316229
        2962B6B46687A7E1000000000000000000000000000000000000000000000000
        0000DE74FD1EF6F9C7FD8F57522D611FB477662248FE83360000000000000000
        000000000000000000000000000000000000DE6B6B6BF579C7FD8F9BD8745252
        2DD26D06CAA7C336000000000000000000000000000000000000000000000000
        0000121E056BC0C1F9FBFF9B2C8C12599EE06E9FE1E1DFCB0000000000000000
        0000000000000000000000000000000000000012748FC74545C7FF9B2C749D9E
        2BD2EC1414D28CF4000000000000000000000000000000000000000000000000
        0000000000798F8C125959DE9EDE9D128C8F4500000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFF0000FFFFE1FFFFFF0000FFFFC07FFFFF0000FFFF800F
        FFFF0000FFFF0003FFFF0000FFFF00007FFF0000FFFF00001FFF0000FFFF0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        0FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFE00000FFF0000FFFF8001FFFF0000FFFFFFFFFFFF0000FFFFFFFF
        FFFF000028000000300000006000000001002000000000008025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000001313135E101010E4
        0F0F0FB410101051000000050000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000009161616A3181818FE0F0F0FFF
        0A0A0AFF0F0F0FFE101010E70F0F0F890E0E0E28000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000023232308171717B5202020FF353535FF111111FF
        060606FF060606FF080808FF0D0D0DFF0F0F0FFD0E0E0EC20B0B0B5F0000000B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000002A2A2AB0232323FF3C3C3CFF353535FF101010FF
        070707FF070707FF070707FF060606FF070707FF0A0A0AFF0C0C0CFF0D0D0DEF
        0C0C0C970A0A0A35000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001A1A1A1F1B1B1BF9474747FF3A3A3AFF353535FF101010FF
        080808FF080808FF080808FF060606FF0B0A0BFF131313FF0D0C0DFF040404FF
        090909FF0B0B0BFE0C0C0CCE0A0A0A6C00000013000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001D1D1D3F292929FF4C4C4CFF3B3B3BFF353535FF101010FF
        090909FF090909FF0C0C0CFF3E3B3EFF4A534AFF425142FF4C554CFF4C4B4CFF
        1C1B1CFF040404FF080808FF0B0B0BFF0B0B0BF40909097F0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000001F1F1F4B2D2D2DFF4C4C4CFF3C3C3CFF353535FF101010FF
        0A0A0AFF090909FF434243FF294A29FF1C461CFF1E451EFF1E441EFF254425FF
        4D554DFF312F31FF050505FF070707FF080808FF0B0B0BC80000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000021212157303030FF4B4B4BFF3C3C3CFF353535FF101010FF
        0B0B0BFF232223FF2F4C2FFF184B18FF194A19FF1A491AFF1C481CFF1E461EFF
        1E441EFF4A554AFF212021FF070707FF090909FF0D0D0DD10000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000021212165343434FF4D4D4DFF3C3C3CFF353535FF101010FF
        0B0B0BFF353235FF195019FF134E13FF164F16FF174D17FF194D19FF1B491BFF
        1E461EFF224522FF504F50FF080808FF0A0A0AFF0D0D0DDA0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000022222271383838FF4C4C4CFF3D3D3DFF353535FF101010FF
        0C0C0CFF353235FF0E520EFF497B47FF0E5112FF12501BFF144E1FFF174D1CFF
        1B491AFF1D461DFF445344FF181818FF0A0A0AFF0F0F0FE20000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002525257E3D3D3DFF4D4D4DFF3E3E3EFF353535FF0F0F0FFF
        0E0E0EFF2D2A2DFF10540EFF7BA488FF256444FF0B4E36FF0F4D3AFF124B35FF
        174A28FF1B481CFF394E38FF242324FF0B0B0BFF111111EA0000000200000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002727278B404040FF4D4D4DFF3E3E3EFF353535FF111111FF
        101010FF1E1C1DFF1B4725FF5F9386FF40787DFF11545CFF0A4A57FF0E4A4FFF
        13493EFF184827FF3C503BFF1E1D1EFF0C0C0CFF141414F00000000400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000027272797454545FF4C4C4CFF3E3E3EFF333333FF111111FF
        111111FF111011FF2B2D30FF165E51FF5384AAFF2D649AFF165284FF0E4A69FF
        10484EFF164935FF484C4BFF0E0D0DFF0E0E0EFF131313F50000000800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000292929A5484848FF4D4D4DFF3F3F3FFF333333FF121212FF
        131313FF131313FF171515FF2A323AFF114E71FF215DADFF2259B2FF245B91FF
        10485AFF374B58FF242324FF0E0E0EFF0E0E0EFF151515F91616160D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002C2C2CB14C4C4CFF4F4F4FFF404040FF333333FF131313FF
        141414FF141414FF141414FF161413FF28262AFF25385EFF1D3F74FF274368FF
        383E51FF212121FF10100FFF101010FF0F0F0FFF161616FC0D0D0D1300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002D2D2DBE4E4E4EFF4E4E4EFF404040FF333333FF141414FF
        151515FF151515FF151515FF121212FF151413FF201E1BFF24211DFF171512FF
        100F0DFF111111FF121212FF111111FF101010FF181818FE1414141A00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002E2E2ECC535353FF4E4E4EFF404040FF323232FF151515FF
        161616FF161616FF181717FF3F3D3CFF4E5459FF44535AFF47545AFF545659FF
        3D3B3AFF141413FF131313FF121212FF111111FF191919FF1616162300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000303030D7565656FF4F4F4FFF424242FF323232FF171717FF
        171717FF171616FF484848FF2D4D5DFF1B475CFF1D465AFF1F4357FF204254FF
        374C56FF555454FF181818FF131313FF121212FF1A1A1AFF1919192B00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001323232E4595959FF4E4E4EFF414141FF323232FF181818FF
        181818FF343131FF2D4E5FFF184B65FF194A64FF1A4962FF1C485FFF1E465BFF
        1F4456FF304755FF504F4DFF121212FF131313FF1B1B1BFF1919193400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000004333333EE5B5B5BFF4E4E4EFF434343FF323232FF191919FF
        181818FF454747FF15506EFF154F6CFF164E6CFF174E6AFF194B66FF1B4962FF
        1D475CFF1E4457FF46535BFF2A2A29FF131313FF1B1B1BFF1F1F1F3D00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000020202008353535F55F5F5FFF4F4F4FFF424242FF303030FF1A1A1AFF
        1B1A1AFF3D4B54FF135678FF125477FF115178FF124F79FF144D76FF164B71FF
        194868FF1D465EFF2A4857FF464543FF131212FF1C1C1CFF1F1F1F4600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000003737370F363636FB616161FF505050FF444444FF303030FF1D1D1DFF
        1C1B1AFF374850FF427E9FFF4C80A8FF095189FF0D508BFF0F4E88FF124B82FF
        15497AFF19476EFF1E4560FF4D4C4CFF131313FF1D1D1DFF1F1F1F4F00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000363636193B3B3BFE616161FF505050FF434343FF313131FF1D1D1DFF
        1D1D1CFF393B3CFF3174A5FF6495C3FF1D61A4FF094F99FF0C4D96FF0F4B90FF
        124987FF16477AFF1F466DFF474648FF151414FF1E1E1EFF2121215800000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000383838263F3F3FFF616161FF505050FF454545FF313131FF1E1E1EFF
        1F1F1FFF2C2B2AFF1B4E7DFF6799D4FF3E78C2FF1559B2FF094DA9FF0C49A3FF
        0F4897FF124689FF2D4B76FF323130FF171716FF202020FF2525256100000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000040404033444444FF626262FF515151FF444444FF313131FF1F1F1FFF
        202020FF1F201EFF323645FF1459B1FF417ADBFF346CD6FF215CCCFF1450BFFF
        0D48AEFF15479FFF414968FF191A1EFF191918FF1F1F1FFF2727276A00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000003F3F3F3F474747FF616161FF525252FF464646FF313131FF212020FF
        212222FF202531FF202A40FF2A3D6AFF1448B1FF0F4FD1FF0F4ED9FF0E4AD0FF
        1949BAFF354C88FF1F2E4CFF1A243BFF191E27FF212020FF2525257300000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004242424C4B4B4BFF636363FF525252FF454545FF313131FF232222FF
        212734FF202C4AFF1F325BFF1E3769FF234178FF244895FF2349A5FF264B9EFF
        264787FF1C3A72FF1B3466FF1A2D56FF1A2640FF212530FF282A297C00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000464646584E4E4EFF626262FF525252FF474747FF323231FF232630FF
        212D48FF203460FF1F3B72FF264988FF34599AFF385FA4FF3960A3FF355C99FF
        264D8EFF1D4488FF1C4080FF1B366DFF1A2E57FF1F2B44FF282E3B8700000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000046464666515151FF626262FF535353FF474646FF313335FF232C41FF
        21345AFF213B72FF315492FF2D5EC7FF1556F6FF0F54FFFF0F55FFFF1858F5FF
        3064CBFF375D9BFF1E478AFF1C4183FF1B366AFF1F3156FF283549970000FF02
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000048484872535353FF636363FF535353FF474646FF31353EFF23314FFF
        223969FF2E508AFF235AD6FF0D53FFFF1155FFFF1257FFFF1258FFFF1258FFFF
        1057FFFF205DE8FF3A61A0FF1D458AFF1C3D7BFF1F3664FF28365BA5006AFF0B
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004C4C4C7F565656FF636363FF545454FF484748FF303747FF233559FF
        244075FF305BB3FF0D52FFFF1155FFFF1258FFFF135AFFFF145CFFFF145CFFFF
        135AFFFF1158FFFF2760DBFF2F5694FF1C4284FF203A6FFF263C66B00B57FF16
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004E4E4E8C5A5A5AFF626262FF545454FF48494AFF30394DFF233660FF
        2C4A81FF1D55DEFF0F54FFFF145BFFFF1760FFFF1862FFFF1761FFFF165FFFFF
        145DFFFF1359FFFF1055FFFF3A64AEFF1D4488FF203D76FF273E6BBA1364FF1C
        0000FF0100000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000004F4F4F985C5C5CFF646464FF555555FF48484BFF30394EFF243962FF
        2F4D85FF1654F4FF185FFFFF1E6AFFFF2272FFFF2474FFFF2071FFFF1A66FFFF
        155EFFFF135AFFFF1056FFFF2C60D0FF244B8EFF203E78FF283E6BC1115CFF1E
        0000FF0200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000505050A65E5E5EFF636363FF555555FF48484BFF30394EFF253862FF
        2F4D83FF1A5CF6FF206DFFFF297AFFFF2D82FFFF2E83FFFF2A7DFFFF2270FFFF
        1760FFFF135AFFFF1156FFFF245CDCFF295090FF203D76FF293F68C8115FFF1D
        0000FF0200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000535353B3606060FF656565FF565656FF494A4AFF31394AFF27395EFF
        2C477BFF2261E6FF2676FFFF3287FFFF3992FFFF3790FFFF2F85FFFF2576FFFF
        1964FFFF1258FFFF0F55FFFF265DD7FF274B8DFF203B70FF2D3E61CD0B61FF17
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000555555BF616161FF646464FF565656FF4A4949FF333742FF293756FF
        29416FFF2B5BBAFF297AFFFF378EFFFF43A0FFFF3D98FFFF3287FFFF2576FFFF
        1A64FFFF1156FFFF0D53FFFF325FBDFF20417FFF203766FF2F3C54D3004EFF0E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000575757CD636363FF646464FF565656FF4B4B4BFF35363AFF2B354BFF
        283B63FF2D497FFF2971F3FF3289FFFF3B95FFFF3891FFFF2D81FFFF2471FFFF
        185FFFFF0E53FFFF1754F0FF325695FF1C386DFF203258FF343C4AD80046FF04
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000005A5A5AD8646464FF656565FF575757FF4A4A4AFF363535FF2E333EFF
        2A3754FF283E68FF2E4F8EFF2A76FAFF2D81FFFF2C7EFFFF2574FFFF1C67FFFF
        1257FFFF1252F8FF355AA2FF213C74FF1D325CFF1F2B47FF393D46DE00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000015B5B5BE4656565FF656565FF585858FF4A4A4AFF333333FF2D2E2FFF
        2A3140FF283654FF283B65FF2E4A80FF2A60C7FF2368F3FF1B63FFFF1958F4FF
        2354CDFF355592FF233D70FF1E325CFF1E2B48FF212533FF3E3E3EE600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        434343045C5C5CEE666666FF646464FF595959FF666666FF767676FF6B6B6AFD
        575758FA414755FA2D3954FC243458FE273B64FF2D4370FF314978FF2F4776FF
        29406EFF203460FF203054FF1F2A45FF1F2431FF202122FF414141ED00000002
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        686868085A5A5AF5686868FF7C7C7CFF8B8B8BFF888888FF848484FF7F7F7FFF
        7D7C7CFF797878FF707279FE61697AFC4E5A72FC3D4B6AFD303F60FD253354FD
        1F2D4BFE1F2A43FF202738FF21242AFF202020FF1F1F1FFF3E3E3EF32D2D2D06
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        666666105D5D5DFB939393FF929292FF8F8F8FFF8A8A8AFF878787FF818181FF
        7C7C7CFF787878FF747473FF6E6D6FFF67696DFF61646DFF5B606BFF575C66FE
        50525BFD434548FD373737FD2C2B2BFE232323FE1D1D1DFE3F3F3FF73636360A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        6767670B606060F08B8B8BFF999999FF949494FF8E8E8EFF898989FF848484FF
        7E7E7EFF797979FF747474FF6F6F6FFF6B6B6AFF656464FF605F5FFF5B5B5AFF
        565655FF515151FF4B4B4BFE464646FA434343F33D3D3DF5424242F93C3C3C0E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000006B6B6B4D5D5D5DE5696969FE777777FF808080FF828282FF838383FF
        808080FE7B7B7BFE767676FE707070FE686868FE626262FD5B5B5BFA565656F8
        515151F74D4D4DF4494949F3484848F44A4A4AE4494949A54949495600000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000006B6B6B086666664A63636387606060B35F5F5FD45D5D5DEA
        5C5C5CF65C5C5CF65A5A5AF6595959F6575757EC555555DF555555CC525252B6
        535353984F4F4F744D4D4D4D5151511C00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000100000001000000010000000100000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFF0000FFFFE1FFFFFF0000FFFFC07F
        FFFF0000FFFF800FFFFF0000FFFF0003FFFF0000FFFF00007FFF0000FFFF0000
        1FFF0000FFFF00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE00001FFF0000FFFE0000
        1FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE00000FFF0000FFFE0000
        0FFF0000FFFE00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC00000FFF0000FFFC0000
        0FFF0000FFFC00000FFF0000FFFE00000FFF0000FFFF8001FFFF0000FFFFFFFF
        FFFF0000FFFFFFFFFFFF0000}
      Transparent = True
      Visible = False
    end
    object EdApeAtd: TdxDBColorEdit
      Left = 271
      Top = 98
      Width = 303
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
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdRenPed: TdxDBColorCurrencyEdit
      Left = 645
      Top = 2
      Width = 101
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
      TabOrder = 30
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
      Left = 645
      Top = 50
      Width = 140
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
      DataField = 'CGCCLI'
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdUfeRes: TdxDBColorEdit
      Left = 544
      Top = 50
      Width = 30
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
      DataField = 'UFERES'
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdLimite: TdxDBColorCurrencyEdit
      Left = 422
      Top = 146
      Width = 98
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
      TabOrder = 27
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
      Left = 271
      Top = 26
      Width = 303
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
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 271
      Top = 50
      Width = 273
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
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomVen: TdxDBColorEdit
      Left = 271
      Top = 74
      Width = 303
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
      TabOrder = 14
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 271
      Top = 122
      Width = 303
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
      TabOrder = 23
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsRes
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdId_PedRes: TdxDBColorEdit
      Left = 141
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
      DataField = 'ID_PEDRES'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_PedRes: TPanel
      Left = 143
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
      Left = 141
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
      TabOrder = 2
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
      Left = 141
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
      TabOrder = 6
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
      Left = 141
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
      TabOrder = 13
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
    object EdCodPfa: TdxDBColorEdit
      Left = 141
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
      TabOrder = 22
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
      Left = 141
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
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 25
      OnEnter = EdDteResEnter
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
      Left = 271
      Top = 146
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
      TabOrder = 26
      OnEnter = EdDteResEnter
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
      Left = 275
      Top = 126
      Width = 295
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
    object pnApeVen: TPanel
      Left = 275
      Top = 77
      Width = 295
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object pnNomCli: TPanel
      Left = 275
      Top = 53
      Width = 265
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
      Left = 275
      Top = 29
      Width = 295
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
    object pnLimite: TPanel
      Left = 424
      Top = 149
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
    object pnUfeRes: TPanel
      Left = 546
      Top = 53
      Width = 24
      Height = 14
      BevelOuter = bvNone
      Caption = 'SP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object pnCgcCli: TPanel
      Left = 647
      Top = 53
      Width = 132
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
      TabOrder = 10
    end
    object EdDteRes: TdxDBColorDateEdit
      Left = 645
      Top = 26
      Width = 101
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
      OnEnter = EdDteResEnter
      Alignment = taCenter
      DataField = 'DTERES'
      DataSource = DsRes
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnRenPed: TPanel
      Left = 647
      Top = 5
      Width = 93
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
    object EdDscReg: TdxDBColorCurrencyEdit
      Left = 727
      Top = 98
      Width = 58
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
      DataField = 'DSCREG'
      DataSource = DsRes
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdFlgAnt: TdxDBColorPickEdit
      Left = 727
      Top = 122
      Width = 58
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
      TabOrder = 21
      OnEnter = EdDteResEnter
      DataField = 'FLGANT'
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
    object EdCodAtd: TdxDBColorEdit
      Left = 141
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
      TabOrder = 17
      OnEnter = EdCodCliEnter
      OnExit = EdCodAtdExit
      OnKeyDown = EdCodAtdKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsRes
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeAtd: TPanel
      Left = 275
      Top = 101
      Width = 295
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object pnFrete: TPanel
      Left = 564
      Top = 147
      Width = 223
      Height = 22
      BevelOuter = bvNone
      TabOrder = 31
      OnExit = pnFreteExit
      object EdTotFrt: TdxDBColorCurrencyEdit
        Left = 128
        Top = -1
        Width = 93
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
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTFRT'
        DataSource = DsRes
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdTipFre: TdxDBColorPickEdit
        Left = 0
        Top = -1
        Width = 128
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
        TabOrder = 0
        Alignment = taLeftJustify
        DataField = 'TIPFRE'
        DataSource = DsRes
        ReadOnly = False
        ImmediateDropDown = False
        DropDownListStyle = True
        Items.Strings = (
          'CIF'
          'CIF incluso na NF'
          'FOB')
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
    end
    object EdComCli: TdxDBColorCurrencyEdit
      Left = 727
      Top = 74
      Width = 58
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
      TabOrder = 16
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'COMCLI'
      DataSource = DsRes
      DisplayFormat = '###,###,##0.00'
      MaxValue = 100
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
  end
  object grPedRe21: TdxDBGraphicEdit
    Left = 0
    Top = 204
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 102
  end
  object grPedRe2: ThGrid
    Left = 2
    Top = 206
    Width = 780
    Height = 96
    Selected.Strings = (
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'8'#9' '
      'QTPRE2'#9'12'#9' '
      'VLURE2'#9'11'#9' '
      'CODUND'#9'5'#9' '
      'IPIRE2'#9'5'#9' '
      'ICMRE2'#9'5'#9' '
      'MRGSUB'#9'6'#9' '
      'PACRE2'#9'8'#9' '
      'DSCRE2'#9'8'#9' '
      'VLQRE2'#9'12'#9' '
      'TOTRE2'#9'13'#9' ')
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
    OnDrawDataCell = grPedRe2DrawDataCell
    OnEnter = grPedRe2Enter
    OnKeyDown = grPedRe2KeyDown
    OnKeyPress = grPedRe2KeyPress
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
  object pnEstoque: TPanel
    Left = 146
    Top = 108
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
    Left = 31
    Top = 189
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    OnDataChange = DsRe2DataChange
    Left = 31
    Top = 217
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTERES = :DTERES,'
      '  HRERES = :HRERES,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODATD = :CODATD,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODTIP = :CODTIP,'
      '  PRFRES = :PRFRES,'
      '  DTFRES = :DTFRES,'
      '  ID_PEDCND = :ID_PEDCND,'
      '  CODTRA = :CODTRA,'
      '  FLGTAB = :FLGTAB,'
      '  UFERES = :UFERES,'
      '  NOMENT = :NOMENT,'
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
      '  RENMIN = :RENMIN,'
      '  COMCLI = :COMCLI,'
      '  DSCREG = :DSCREG,'
      '  TOTFRT = :TOTFRT,'
      '  FLGAVI = :FLGAVI,'
      '  FLGANT = :FLGANT,'
      '  TIPFRE = :TIPFRE,'
      '  FLGEST = :FLGEST,'
      '  OB1RES = :OB1RES,'
      '  OB2RES = :OB2RES,'
      '  OB3RES = :OB3RES,'
      '  OB4RES = :OB4RES,'
      '  OB5RES = :OB5RES,'
      '  OB6RES = :OB6RES,'
      '  OB7RES = :OB7RES,'
      '  OB8RES = :OB8RES,'
      '  OB1FAT = :OB1FAT,'
      '  OB2FAT = :OB2FAT,'
      '  OB3FAT = :OB3FAT,'
      '  OB4FAT = :OB4FAT,'
      '  OB5FAT = :OB5FAT,'
      '  OB6FAT = :OB6FAT,'
      '  OB7FAT = :OB7FAT,'
      '  OB8FAT = :OB8FAT,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  CODEAN = :CODEAN,'
      '  SEQRES = :SEQRES,'
      '  FLGATU = :FLGATU,'
      '  SITRES = :SITRES,'
      '  FLGCLI = :FLGCLI'
      'where'
      '  ID_PEDRES = :OLD_ID_PEDRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      '  (ID_PEDRES, CODEMP, DTERES, HRERES, CODCLI, CODVEN, CODATD, '
      'CODPFA, TIPPFA, '
      
        '   CODTIP, PRFRES, DTFRES, ID_PEDCND, CODFIL, CODTRA, CODCFO, FL' +
        'GTAB, '
      'UFERES, '
      
        '   CGCCLI, INSCLI, NOMENT, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCL' +
        'I, BAICLI, '
      
        '   CIDCLI, UFECLI, INECLI, CGECLI, QTDIMP, QTIRE2, QTIRE3, SEQRE' +
        '3, QTIRE4, '
      
        '   QTILIB, LINRES, QTFRES, RENMIN, LIMCLI, ACRCND, DSCCND, COMCL' +
        'I, '
      'TOTCLI, '
      
        '   BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTVEN, TOTCS' +
        'T, '
      'TOTRES, '
      
        '   TOTREN, TOTGER, TOTLIQ, TOTBRT, MEDCOM, BASCOM, TOTCOM, DSCRE' +
        'G, '
      'MEDACR, '
      
        '   MEDPRM, TOTDSC, TOTDSR, TOTACR, FATRES, FATGER, DEVRES, DEVGE' +
        'R, '
      'MEDDSC, '
      
        '   TOTDSP, TOTACP, TOTFRT, SLDRES, SLDGER, NROSUF, DESREG, CODUS' +
        'U, '
      'FLGPSQ, '
      
        '   DTLPSQ, FLGCTB, FLGOCO, ATUEST, INTFIN, CONSUM, CODIPI, TIPIP' +
        'I, '
      'TRBIPI, '
      
        '   REDIPI, BSCIPI, CODICM, TIPICM, TRBICM, REDICM, BSCICM, INCRE' +
        'V, INCFIN, '
      
        '   TRBPIS, TRBCOF, TXFIPI, TXFICM, FLGGER, LIBSLD, LANEST, FLGRE' +
        'S, '
      'ID_PEDCTA, '
      
        '   PRCCTA, MODPFA, CLITAB, CODTCL, CODGCL, TIPCOM, CODCOM, FLGAV' +
        'I, '
      'FLGREJ, '
      
        '   FLGCOM, LIBCLI, FLGFIN, FLGPRO, FLGCON, PEDPRO, TIPFRT, FLGDI' +
        'F, '
      'FLGIMP, '
      
        '   FLGEST, OB1RES, OB2RES, OB3RES, OB4RES, OB5RES, OB6RES, OB7RE' +
        'S, '
      'OB8RES, '
      
        '   OB1FAT, OB2FAT, OB3FAT, OB4FAT, OB5FAT, OB6FAT, OB7FAT, OB8FA' +
        'T, '
      'CODEAN, '
      
        '   SEQRES, FLGATU, SITRES, FLGIPI, CODGUS, TIPFRE, TOTCUB, OBRGV' +
        'E, '
      'CODGVE, '
      
        '   COMATD, MEDCAT, BASCAT, TOTCAT, PERPIS, TOTPIS, PERCOF, TOTCO' +
        'F, '
      'FLGCLI, '
      '   FLGANT, SEQLIB, ID_FINUFE, ID_FINCIE, ID_ESTSIP, ID_PEDFE2)'
      'values'
      
        '  (:ID_PEDRES, :CODEMP, :DTERES, :HRERES, :CODCLI, :CODVEN, :COD' +
        'ATD, '
      ':CODPFA, '
      
        '   :TIPPFA, :CODTIP, :PRFRES, :DTFRES, :ID_PEDCND, :CODFIL, :COD' +
        'TRA, '
      ':CODCFO, '
      
        '   :FLGTAB, :UFERES, :CGCCLI, :INSCLI, :NOMENT, :CEPCLI, :TENCLI' +
        ', :ENDCLI, '
      
        '   :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI, :CGECLI' +
        ', :QTDIMP, '
      
        '   :QTIRE2, :QTIRE3, :SEQRE3, :QTIRE4, :QTILIB, :LINRES, :QTFRES' +
        ', :RENMIN, '
      
        '   :LIMCLI, :ACRCND, :DSCCND, :COMCLI, :TOTCLI, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTVEN, :TOTCST, :TOTRES, :TOTREN' +
        ', '
      ':TOTGER, '
      
        '   :TOTLIQ, :TOTBRT, :MEDCOM, :BASCOM, :TOTCOM, :DSCREG, :MEDACR' +
        ', '
      ':MEDPRM, '
      
        '   :TOTDSC, :TOTDSR, :TOTACR, :FATRES, :FATGER, :DEVRES, :DEVGER' +
        ', '
      ':MEDDSC, '
      
        '   :TOTDSP, :TOTACP, :TOTFRT, :SLDRES, :SLDGER, :NROSUF, :DESREG' +
        ', '
      ':CODUSU, '
      
        '   :FLGPSQ, :DTLPSQ, :FLGCTB, :FLGOCO, :ATUEST, :INTFIN, :CONSUM' +
        ', :CODIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :TRBPIS, :TRBCOF, :TXFIPI, :TXFICM' +
        ', :FLGGER, '
      
        '   :LIBSLD, :LANEST, :FLGRES, :ID_PEDCTA, :PRCCTA, :MODPFA, :CLI' +
        'TAB, '
      ':CODTCL, '
      
        '   :CODGCL, :TIPCOM, :CODCOM, :FLGAVI, :FLGREJ, :FLGCOM, :LIBCLI' +
        ', :FLGFIN, '
      
        '   :FLGPRO, :FLGCON, :PEDPRO, :TIPFRT, :FLGDIF, :FLGIMP, :FLGEST' +
        ', :OB1RES, '
      
        '   :OB2RES, :OB3RES, :OB4RES, :OB5RES, :OB6RES, :OB7RES, :OB8RES' +
        ', '
      ':OB1FAT, '
      
        '   :OB2FAT, :OB3FAT, :OB4FAT, :OB5FAT, :OB6FAT, :OB7FAT, :OB8FAT' +
        ', :CODEAN, '
      
        '   :SEQRES, :FLGATU, :SITRES, :FLGIPI, :CODGUS, :TIPFRE, :TOTCUB' +
        ', :OBRGVE, '
      
        '   :CODGVE, :COMATD, :MEDCAT, :BASCAT, :TOTCAT, :PERPIS, :TOTPIS' +
        ', '
      ':PERCOF, '
      
        '   :TOTCOF, :FLGCLI, :FLGANT, :SEQLIB, :ID_FINUFE, :ID_FINCIE, :' +
        'ID_ESTSIP, '
      '   :ID_PEDFE2)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  ID_PEDRES = :OLD_ID_PEDRES')
    Left = 3
    Top = 245
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
      '  CUBRE2 = :CUBRE2,'
      '  LIQRE2 = :LIQRE2,'
      '  BRTRE2 = :BRTRE2,'
      '  LINRE2 = :LINRE2,'
      '  TABPRC = :TABPRC,'
      '  CODTIP = :CODTIP,'
      '  CODCAT = :CODCAT,'
      '  CODMRC = :CODMRC,'
      '  QTPRE2 = :QTPRE2,'
      '  QTDEMB = :QTDEMB,'
      '  VCSRE2 = :VCSRE2,'
      '  CSTLAN = :CSTLAN,'
      '  VLURE2 = :VLURE2,'
      '  VLQRE2 = :VLQRE2,'
      '  ISSRE2 = :ISSRE2,'
      '  ICMRE2 = :ICMRE2,'
      '  IPIRE2 = :IPIRE2,'
      '  TIPDSC = :TIPDSC,'
      '  DSCRE2 = :DSCRE2,'
      '  VDSRE2 = :VDSRE2,'
      '  DSRRE2 = :DSRRE2,'
      '  VDRRE2 = :VDRRE2,'
      '  TIPACR = :TIPACR,'
      '  PACRE2 = :PACRE2,'
      '  VACRE2 = :VACRE2,'
      '  CSTRE2 = :CSTRE2,'
      '  VCHRE2 = :VCHRE2,'
      '  VRERE2 = :VRERE2,'
      '  VCPRE2 = :VCPRE2,'
      '  VPRRE2 = :VPRRE2,'
      '  VCRRE2 = :VCRRE2,'
      '  VMERE2 = :VMERE2,'
      '  VPFRE2 = :VPFRE2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VCRCST = :VCRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  CLSIPI = :CLSIPI,'
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
      '  FLGDUP = :FLGDUP,'
      '  FLGREN = :FLGREN,'
      '  FLGATU = :FLGATU,'
      '  CODICL = :CODICL'
      'where'
      '  ID_PEDRE2 = :OLD_ID_PEDRE2')
    InsertSQL.Strings = (
      'insert into PedRe2'
      
        '  (ID_PEDRE2, ID_PEDRES, CODEIT, CODCLP, CODGRU, CODSUB, CODPRO,' +
        ' '
      'CODTAM, '
      
        '   CODCOR, DESRE2, OBSRE2, CODST1, CODST2, CODUND, REFRE2, CUBRE' +
        '2, '
      'LIQRE2, '
      
        '   BRTRE2, LINRE2, TABPRC, CODTIP, CODCAT, CODMRC, QTIRE4, QTPRE' +
        '2, '
      'QTSRE2, '
      
        '   QTFRE2, QTDRE2, QTDEMB, ULTQTS, SLDRE2, VCSRE2, CSTLAN, VLURE' +
        '2, '
      'VLQRE2, '
      
        '   ISSRE2, ICMRE2, IPIRE2, TIPDSC, DSCRE2, VDSRE2, DSRRE2, VDRRE' +
        '2, '
      'TIPACR, '
      
        '   PACRE2, VACRE2, COMCLI, VALCLI, PDPRE2, VDPRE2, PAPRE2, VAPRE' +
        '2, '
      'CSTRE2, '
      
        '   VCHRE2, VRERE2, VCPRE2, VPRRE2, VCRRE2, VMERE2, VPFRE2, CSTCS' +
        'T, '
      'VCHCST, '
      
        '   VRECST, VCPCST, VPRCST, VCRCST, VMECST, VPFCST, CODCOM, PCORE' +
        '2, '
      'CODCFO, '
      
        '   CLSIPI, CODTXF, TOTVEN, TOTCST, BASIPI, TOTIPI, BASICM, TOTIC' +
        'M, '
      'BASSUB, '
      
        '   TOTSUB, TOTRE2, TOTGE2, TOTREN, TOTCUB, TOTLIQ, TOTBRT, BASCO' +
        'M, '
      'TOTCOM, '
      
        '   TOTDSC, TOTDSR, TOTACR, TOTDSP, TOTACP, TOTCLI, CODSTR, TIPST' +
        'R, '
      'TRBSUB, '
      
        '   ICMSUB, MRGSUB, BASESB, REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, REGICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, ID_PEDGER, ID' +
        '_PEDGR3, '
      
        '   FLGRES, FLGDUP, FLGVAL, FLGMAR, FLGLIB, FLGREN, DSCPER, DIFDS' +
        'C, '
      'MARPRE, '
      
        '   MARPED, LUCROL, LUCROP, TOTPER, ID_PEDICL, ID_PEDCT2, NROITE,' +
        ' '
      'FLGATU, '
      '   NRORE2, PCOATD, BASCAT, TOTCAT, TOTPIS, TOTCOF, CODICL)'
      'values'
      
        '  (:ID_PEDRE2, :ID_PEDRES, :CODEIT, :CODCLP, :CODGRU, :CODSUB, :' +
        'CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESRE2, :OBSRE2, :CODST1, :CODST2, :CODUND' +
        ', '
      ':REFRE2, '
      
        '   :CUBRE2, :LIQRE2, :BRTRE2, :LINRE2, :TABPRC, :CODTIP, :CODCAT' +
        ', '
      ':CODMRC, '
      
        '   :QTIRE4, :QTPRE2, :QTSRE2, :QTFRE2, :QTDRE2, :QTDEMB, :ULTQTS' +
        ', '
      ':SLDRE2, '
      
        '   :VCSRE2, :CSTLAN, :VLURE2, :VLQRE2, :ISSRE2, :ICMRE2, :IPIRE2' +
        ', :TIPDSC, '
      
        '   :DSCRE2, :VDSRE2, :DSRRE2, :VDRRE2, :TIPACR, :PACRE2, :VACRE2' +
        ', '
      ':COMCLI, '
      
        '   :VALCLI, :PDPRE2, :VDPRE2, :PAPRE2, :VAPRE2, :CSTRE2, :VCHRE2' +
        ', '
      ':VRERE2, '
      
        '   :VCPRE2, :VPRRE2, :VCRRE2, :VMERE2, :VPFRE2, :CSTCST, :VCHCST' +
        ', '
      ':VRECST, '
      
        '   :VCPCST, :VPRCST, :VCRCST, :VMECST, :VPFCST, :CODCOM, :PCORE2' +
        ', '
      ':CODCFO, '
      
        '   :CLSIPI, :CODTXF, :TOTVEN, :TOTCST, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTRE2, :TOTGE2, :TOTREN, :TOTCUB, :TOTLIQ' +
        ', '
      ':TOTBRT, '
      
        '   :BASCOM, :TOTCOM, :TOTDSC, :TOTDSR, :TOTACR, :TOTDSP, :TOTACP' +
        ', '
      ':TOTCLI, '
      
        '   :CODSTR, :TIPSTR, :TRBSUB, :ICMSUB, :MRGSUB, :BASESB, :REGIPI' +
        ', :TIPIPI, '
      
        '   :TRBIPI, :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM, :REDICM' +
        ', :BSCICM, '
      
        '   :INCREV, :INCFIN, :ID_PEDGER, :ID_PEDGR3, :FLGRES, :FLGDUP, :' +
        'FLGVAL, '
      
        '   :FLGMAR, :FLGLIB, :FLGREN, :DSCPER, :DIFDSC, :MARPRE, :MARPED' +
        ', '
      ':LUCROL, '
      
        '   :LUCROP, :TOTPER, :ID_PEDICL, :ID_PEDCT2, :NROITE, :FLGATU, :' +
        'NRORE2, '
      '   :PCOATD, :BASCAT, :TOTCAT, :TOTPIS, :TOTCOF, :CODICL)')
    DeleteSQL.Strings = (
      'delete from PedRe2'
      'where'
      '  ID_PEDRE2 = :OLD_ID_PEDRE2')
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
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedResNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedRes'
      'Where PedRes.Id_PedRes = :Id_PedRes')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 3
    Top = 189
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
        ParamType = ptInput
      end>
    object PedResID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Origin = 'ISADE.PEDRES.ID_PEDRES'
    end
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
    object PedResCODATD: TIntegerField
      FieldName = 'CODATD'
      Origin = 'ISADE.PEDRES.CODATD'
    end
    object PedResCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDRES.CODPFA'
      Size = 15
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDRES.TIPPFA'
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
      FieldName = 'DTFRES'
      Origin = 'ISADE.PEDRES.DTFRES'
    end
    object PedResID_PEDCND: TIntegerField
      FieldName = 'ID_PEDCND'
      Origin = 'ISADE.PEDRES.ID_PEDCND'
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.PEDRES.CODFIL'
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.PEDRES.CODTRA'
    end
    object PedResCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDRES.CODCFO'
      Size = 15
    end
    object PedResFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.PEDRES.FLGTAB'
      Size = 25
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
      Size = 18
    end
    object PedResINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.PEDRES.INSCLI'
      Size = 18
    end
    object PedResNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.PEDRES.NOMENT'
      Size = 70
    end
    object PedResCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.PEDRES.CEPCLI'
      EditMask = '99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object PedResTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.PEDRES.TENCLI'
      Size = 10
    end
    object PedResENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.PEDRES.ENDCLI'
      Size = 70
    end
    object PedResREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.PEDRES.REFCLI'
      Size = 40
    end
    object PedResNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.PEDRES.NUMCLI'
      Size = 10
    end
    object PedResBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.PEDRES.BAICLI'
    end
    object PedResCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.PEDRES.CIDCLI'
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
      Size = 18
    end
    object PedResCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.PEDRES.CGECLI'
      Size = 18
    end
    object PedResQTDIMP: TIntegerField
      FieldName = 'QTDIMP'
      Origin = 'ISADE.PEDRES.QTDIMP'
    end
    object PedResQTIRE2: TIntegerField
      FieldName = 'QTIRE2'
      Origin = 'ISADE.PEDRES.QTIRE2'
    end
    object PedResQTIRE3: TIntegerField
      FieldName = 'QTIRE3'
      Origin = 'ISADE.PEDRES.QTIRE3'
    end
    object PedResQTILIB: TIntegerField
      FieldName = 'QTILIB'
      Origin = 'ISADE.PEDRES.QTILIB'
    end
    object PedResLINRES: TIntegerField
      FieldName = 'LINRES'
      Origin = 'ISADE.PEDRES.LINRES'
    end
    object PedResQTFRES: TIntegerField
      FieldName = 'QTFRES'
      Origin = 'ISADE.PEDRES.QTFRES'
    end
    object PedResACRCND: TFloatField
      FieldName = 'ACRCND'
      Origin = 'ISADE.PEDRES.ACRCND'
    end
    object PedResDSCCND: TFloatField
      FieldName = 'DSCCND'
      Origin = 'ISADE.PEDRES.DSCCND'
    end
    object PedResBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDRES.BASIPI'
    end
    object PedResTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDRES.TOTIPI'
    end
    object PedResBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDRES.BASICM'
    end
    object PedResTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDRES.TOTICM'
    end
    object PedResBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDRES.BASSUB'
    end
    object PedResTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDRES.TOTSUB'
    end
    object PedResTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDRES.TOTVEN'
    end
    object PedResTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDRES.TOTCST'
    end
    object PedResTOTRES: TFloatField
      FieldName = 'TOTRES'
      Origin = 'ISADE.PEDRES.TOTRES'
    end
    object PedResTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDRES.TOTREN'
    end
    object PedResTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDRES.TOTGER'
    end
    object PedResTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDRES.TOTLIQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedResTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDRES.TOTBRT'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Origin = 'ISADE.PEDRES.MEDCOM'
    end
    object PedResBASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.PEDRES.BASCOM'
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.PEDRES.TOTCOM'
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.PEDRES.DSCREG'
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.PEDRES.MEDACR'
    end
    object PedResMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Origin = 'ISADE.PEDRES.MEDPRM'
    end
    object PedResTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDRES.TOTDSC'
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDRES.TOTDSR'
    end
    object PedResTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDRES.TOTACR'
    end
    object PedResFATRES: TFloatField
      FieldName = 'FATRES'
      Origin = 'ISADE.PEDRES.FATRES'
    end
    object PedResFATGER: TFloatField
      FieldName = 'FATGER'
      Origin = 'ISADE.PEDRES.FATGER'
    end
    object PedResDEVRES: TFloatField
      FieldName = 'DEVRES'
      Origin = 'ISADE.PEDRES.DEVRES'
    end
    object PedResDEVGER: TFloatField
      FieldName = 'DEVGER'
      Origin = 'ISADE.PEDRES.DEVGER'
    end
    object PedResMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.PEDRES.MEDDSC'
    end
    object PedResTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDRES.TOTDSP'
    end
    object PedResTOTACP: TFloatField
      FieldName = 'TOTACP'
      Origin = 'ISADE.PEDRES.TOTACP'
    end
    object PedResTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.PEDRES.TOTFRT'
      DisplayFormat = '###,###,##0.00'
    end
    object PedResSLDRES: TFloatField
      FieldName = 'SLDRES'
      Origin = 'ISADE.PEDRES.SLDRES'
    end
    object PedResSLDGER: TFloatField
      FieldName = 'SLDGER'
      Origin = 'ISADE.PEDRES.SLDGER'
    end
    object PedResDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.PEDRES.DESREG'
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
      FieldName = 'DTLPSQ'
      Origin = 'ISADE.PEDRES.DTLPSQ'
    end
    object PedResFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.PEDRES.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedResFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Origin = 'ISADE.PEDRES.FLGOCO'
      FixedChar = True
      Size = 3
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
      Size = 30
    end
    object PedResTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDRES.TIPIPI'
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
    end
    object PedResBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDRES.BSCIPI'
    end
    object PedResCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.PEDRES.CODICM'
    end
    object PedResTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDRES.TIPICM'
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
    end
    object PedResBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDRES.BSCICM'
    end
    object PedResINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDRES.INCREV'
    end
    object PedResINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDRES.INCFIN'
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
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.PEDRES.LANEST'
      FixedChar = True
      Size = 3
    end
    object PedResFLGRES: TStringField
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDRES.FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedResID_PEDCTA: TIntegerField
      FieldName = 'ID_PEDCTA'
      Origin = 'ISADE.PEDRES.ID_PEDCTA'
    end
    object PedResPRCCTA: TStringField
      FieldName = 'PRCCTA'
      Origin = 'ISADE.PEDRES.PRCCTA'
      FixedChar = True
      Size = 3
    end
    object PedResMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.PEDRES.MODPFA'
    end
    object PedResCLITAB: TStringField
      FieldName = 'CLITAB'
      Origin = 'ISADE.PEDRES.CLITAB'
      Size = 23
    end
    object PedResCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.PEDRES.CODTCL'
    end
    object PedResCODGCL: TIntegerField
      FieldName = 'CODGCL'
      Origin = 'ISADE.PEDRES.CODGCL'
    end
    object PedResTIPCOM: TStringField
      FieldName = 'TIPCOM'
      Origin = 'ISADE.PEDRES.TIPCOM'
    end
    object PedResCODCOM: TStringField
      FieldName = 'CODCOM'
      Origin = 'ISADE.PEDRES.CODCOM'
      FixedChar = True
      Size = 3
    end
    object PedResFLGREJ: TStringField
      FieldName = 'FLGREJ'
      Origin = 'ISADE.PEDRES.FLGREJ'
      FixedChar = True
      Size = 3
    end
    object PedResFLGCOM: TStringField
      FieldName = 'FLGCOM'
      Origin = 'ISADE.PEDRES.FLGCOM'
      FixedChar = True
      Size = 3
    end
    object PedResLIBCLI: TStringField
      FieldName = 'LIBCLI'
      Origin = 'ISADE.PEDRES.LIBCLI'
      FixedChar = True
      Size = 3
    end
    object PedResFLGFIN: TStringField
      FieldName = 'FLGFIN'
      Origin = 'ISADE.PEDRES.FLGFIN'
      FixedChar = True
      Size = 3
    end
    object PedResFLGPRO: TStringField
      FieldName = 'FLGPRO'
      Origin = 'ISADE.PEDRES.FLGPRO'
      FixedChar = True
      Size = 3
    end
    object PedResFLGCON: TStringField
      FieldName = 'FLGCON'
      Origin = 'ISADE.PEDRES.FLGCON'
      FixedChar = True
      Size = 3
    end
    object PedResPEDPRO: TStringField
      FieldName = 'PEDPRO'
      Origin = 'ISADE.PEDRES.PEDPRO'
      FixedChar = True
      Size = 3
    end
    object PedResTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.PEDRES.TIPFRT'
      FixedChar = True
      Size = 3
    end
    object PedResFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.PEDRES.FLGDIF'
      FixedChar = True
      Size = 3
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.PEDRES.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object PedResOB1RES: TStringField
      FieldName = 'OB1RES'
      Origin = 'ISADE.PEDRES.OB1RES'
      Size = 80
    end
    object PedResOB2RES: TStringField
      FieldName = 'OB2RES'
      Origin = 'ISADE.PEDRES.OB2RES'
      Size = 80
    end
    object PedResOB3RES: TStringField
      FieldName = 'OB3RES'
      Origin = 'ISADE.PEDRES.OB3RES'
      Size = 80
    end
    object PedResOB4RES: TStringField
      FieldName = 'OB4RES'
      Origin = 'ISADE.PEDRES.OB4RES'
      Size = 80
    end
    object PedResOB5RES: TStringField
      FieldName = 'OB5RES'
      Origin = 'ISADE.PEDRES.OB5RES'
      Size = 80
    end
    object PedResOB6RES: TStringField
      FieldName = 'OB6RES'
      Origin = 'ISADE.PEDRES.OB6RES'
      Size = 80
    end
    object PedResOB7RES: TStringField
      FieldName = 'OB7RES'
      Origin = 'ISADE.PEDRES.OB7RES'
      Size = 80
    end
    object PedResOB8RES: TStringField
      FieldName = 'OB8RES'
      Origin = 'ISADE.PEDRES.OB8RES'
      Size = 80
    end
    object PedResOB1FAT: TStringField
      FieldName = 'OB1FAT'
      Origin = 'ISADE.PEDRES.OB1FAT'
      Size = 80
    end
    object PedResOB2FAT: TStringField
      FieldName = 'OB2FAT'
      Origin = 'ISADE.PEDRES.OB2FAT'
      Size = 80
    end
    object PedResOB3FAT: TStringField
      FieldName = 'OB3FAT'
      Origin = 'ISADE.PEDRES.OB3FAT'
      Size = 80
    end
    object PedResOB4FAT: TStringField
      FieldName = 'OB4FAT'
      Origin = 'ISADE.PEDRES.OB4FAT'
      Size = 80
    end
    object PedResOB5FAT: TStringField
      FieldName = 'OB5FAT'
      Origin = 'ISADE.PEDRES.OB5FAT'
      Size = 80
    end
    object PedResOB6FAT: TStringField
      FieldName = 'OB6FAT'
      Origin = 'ISADE.PEDRES.OB6FAT'
      Size = 80
    end
    object PedResOB7FAT: TStringField
      FieldName = 'OB7FAT'
      Origin = 'ISADE.PEDRES.OB7FAT'
      Size = 80
    end
    object PedResOB8FAT: TStringField
      FieldName = 'OB8FAT'
      Origin = 'ISADE.PEDRES.OB8FAT'
      Size = 80
    end
    object PedResSEQRES: TStringField
      FieldName = 'SEQRES'
      Origin = 'ISADE.PEDRES.SEQRES'
      Size = 22
    end
    object PedResFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDRES.FLGATU'
      FixedChar = True
      Size = 1
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      Origin = 'ISADE.PEDRES.SITRES'
      Size = 45
    end
    object PedResLIMCLI: TFloatField
      FieldName = 'LIMCLI'
      Origin = 'ISADE.PEDRES.LIMCLI'
    end
    object PedResFLGEST: TStringField
      FieldName = 'FLGEST'
      Origin = 'ISADE.PEDRES.FLGEST'
      FixedChar = True
      Size = 3
    end
    object PedResCODEAN: TStringField
      FieldName = 'CODEAN'
      Origin = 'ISADE.PEDRES.CODEAN'
      FixedChar = True
      Size = 13
    end
    object PedResSEQRE3: TIntegerField
      FieldName = 'SEQRE3'
      Origin = 'ISADE.PEDRES.SEQRE3'
    end
    object PedResFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.PEDRES.FLGAVI'
      FixedChar = True
      Size = 3
    end
    object PedResQTIRE4: TIntegerField
      FieldName = 'QTIRE4'
      Origin = 'ISADE.PEDRES.QTIRE4'
    end
    object PedResRENMIN: TFloatField
      FieldName = 'RENMIN'
      Origin = 'ISADE.PEDRES.RENMIN'
      DisplayFormat = '##0.00'
    end
    object PedResCOMCLI: TFloatField
      FieldName = 'COMCLI'
      Origin = 'ISADE.PEDRES.COMCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedResTOTCLI: TFloatField
      FieldName = 'TOTCLI'
      Origin = 'ISADE.PEDRES.TOTCLI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedResNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.PEDRES.NROSUF'
    end
    object PedResTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.PEDRES.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object PedResTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.PEDRES.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object PedResTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.PEDRES.TXFIPI'
      Size = 15
    end
    object PedResTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.PEDRES.TXFICM'
      Size = 15
    end
    object PedResFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDRES.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedResCODGUS: TIntegerField
      FieldName = 'CODGUS'
      Origin = 'ISADE.PEDRES.CODGUS'
    end
    object PedResTIPFRE: TStringField
      FieldName = 'TIPFRE'
      Origin = 'ISADE.PEDRES.TIPFRE'
      Size = 17
    end
    object PedResTOTCUB: TFloatField
      FieldName = 'TOTCUB'
      Origin = 'ISADE.PEDRES.TOTCUB'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedResOBRGVE: TStringField
      FieldName = 'OBRGVE'
      Origin = 'ISADE.PEDRES.OBRGVE'
      FixedChar = True
      Size = 3
    end
    object PedResCODGVE: TIntegerField
      FieldName = 'CODGVE'
      Origin = 'ISADE.PEDRES.CODGVE'
    end
    object PedResCOMATD: TStringField
      FieldName = 'COMATD'
      Origin = 'ISADE.PEDRES.COMATD'
      FixedChar = True
      Size = 3
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
    object PedResPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.PEDRES.PERPIS'
    end
    object PedResTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDRES.TOTPIS'
    end
    object PedResPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.PEDRES.PERCOF'
    end
    object PedResTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDRES.TOTCOF'
    end
    object PedResFLGCLI: TStringField
      FieldName = 'FLGCLI'
      Origin = 'ISADE.PEDRES.FLGCLI'
      FixedChar = True
      Size = 3
    end
    object PedResFLGANT: TStringField
      FieldName = 'FLGANT'
      Origin = 'ISADE.PEDRES.FLGANT'
      FixedChar = True
      Size = 3
    end
    object PedResSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.PEDRES.SEQLIB'
    end
    object PedResID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.PEDRES.ID_FINUFE'
    end
    object PedResID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.PEDRES.ID_FINCIE'
    end
    object PedResID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.PEDRES.ID_ESTSIP'
    end
    object PedResID_PEDFE2: TIntegerField
      FieldName = 'ID_PEDFE2'
      Origin = 'ISADE.PEDRES.ID_PEDFE2'
    end
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedRe2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsRes
    SQL.Strings = (
      'Select * From PedRe2'
      'Where PedRe2.Id_PedRes = :Id_PedRes'
      'Order by PedRe2.NroRe2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpRe2
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 3
    Top = 217
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDRES'
        ParamType = ptInput
      end>
    object PedRe2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDRE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedRe2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDRE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedRe2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDRE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTPRE2'
      Origin = 'ISADE.PEDRE2.QTPRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VLURE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLURE2'
      Origin = 'ISADE.PEDRE2.VLURE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDRE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedRe2IPIRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'IPIRE2'
      Origin = 'ISADE.PEDRE2.IPIRE2'
      DisplayFormat = '###0'
    end
    object PedRe2ICMRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMRE2'
      Origin = 'ISADE.PEDRE2.ICMRE2'
      DisplayFormat = '###0'
    end
    object PedRe2MRGSUB: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'MRGSUB'
      Origin = 'ISADE.PEDRE2.MRGSUB'
      DisplayFormat = '##0.00'
    end
    object PedRe2PACRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'PACRE2'
      Origin = 'ISADE.PEDRE2.PACRE2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2DSCRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'DSCRE2'
      Origin = 'ISADE.PEDRE2.DSCRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLQRE2'
      Origin = 'ISADE.PEDRE2.VLQRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTRE2'
      Origin = 'ISADE.PEDRE2.TOTRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDRE2.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2ID_PEDRE2: TIntegerField
      FieldName = 'ID_PEDRE2'
      Origin = 'ISADE.PEDRE2.ID_PEDRE2'
      Visible = False
    end
    object PedRe2ID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Origin = 'ISADE.PEDRE2.ID_PEDRES'
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
    object PedRe2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.PEDRE2.CODTAM'
      Visible = False
      Size = 10
    end
    object PedRe2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDRE2.CODCOR'
      Visible = False
      Size = 10
    end
    object PedRe2DESRE2: TStringField
      FieldName = 'DESRE2'
      Origin = 'ISADE.PEDRE2.DESRE2'
      Visible = False
      Size = 70
    end
    object PedRe2OBSRE2: TStringField
      FieldName = 'OBSRE2'
      Origin = 'ISADE.PEDRE2.OBSRE2'
      Visible = False
      Size = 70
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
    object PedRe2REFRE2: TStringField
      FieldName = 'REFRE2'
      Origin = 'ISADE.PEDRE2.REFRE2'
      Visible = False
    end
    object PedRe2LIQRE2: TFloatField
      FieldName = 'LIQRE2'
      Origin = 'ISADE.PEDRE2.LIQRE2'
      Visible = False
    end
    object PedRe2BRTRE2: TFloatField
      FieldName = 'BRTRE2'
      Origin = 'ISADE.PEDRE2.BRTRE2'
      Visible = False
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
    object PedRe2CODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'ISADE.PEDRE2.CODTIP'
      Visible = False
    end
    object PedRe2CODCAT: TIntegerField
      FieldName = 'CODCAT'
      Origin = 'ISADE.PEDRE2.CODCAT'
      Visible = False
    end
    object PedRe2CODMRC: TIntegerField
      FieldName = 'CODMRC'
      Origin = 'ISADE.PEDRE2.CODMRC'
      Visible = False
    end
    object PedRe2QTSRE2: TFloatField
      FieldName = 'QTSRE2'
      Origin = 'ISADE.PEDRE2.QTSRE2'
      Visible = False
    end
    object PedRe2QTFRE2: TFloatField
      FieldName = 'QTFRE2'
      Origin = 'ISADE.PEDRE2.QTFRE2'
      Visible = False
    end
    object PedRe2QTDRE2: TFloatField
      FieldName = 'QTDRE2'
      Origin = 'ISADE.PEDRE2.QTDRE2'
      Visible = False
    end
    object PedRe2QTDEMB: TFloatField
      FieldName = 'QTDEMB'
      Origin = 'ISADE.PEDRE2.QTDEMB'
      Visible = False
    end
    object PedRe2ULTQTS: TFloatField
      FieldName = 'ULTQTS'
      Origin = 'ISADE.PEDRE2.ULTQTS'
      Visible = False
    end
    object PedRe2SLDRE2: TFloatField
      FieldName = 'SLDRE2'
      Origin = 'ISADE.PEDRE2.SLDRE2'
      Visible = False
    end
    object PedRe2VCSRE2: TFloatField
      FieldName = 'VCSRE2'
      Origin = 'ISADE.PEDRE2.VCSRE2'
      Visible = False
    end
    object PedRe2TIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.PEDRE2.TIPDSC'
      Visible = False
      Size = 10
    end
    object PedRe2VDSRE2: TFloatField
      FieldName = 'VDSRE2'
      Origin = 'ISADE.PEDRE2.VDSRE2'
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
    object PedRe2TIPACR: TStringField
      FieldName = 'TIPACR'
      Origin = 'ISADE.PEDRE2.TIPACR'
      Visible = False
      Size = 10
    end
    object PedRe2VACRE2: TFloatField
      FieldName = 'VACRE2'
      Origin = 'ISADE.PEDRE2.VACRE2'
      Visible = False
    end
    object PedRe2PDPRE2: TFloatField
      FieldName = 'PDPRE2'
      Origin = 'ISADE.PEDRE2.PDPRE2'
      Visible = False
    end
    object PedRe2VDPRE2: TFloatField
      FieldName = 'VDPRE2'
      Origin = 'ISADE.PEDRE2.VDPRE2'
      Visible = False
    end
    object PedRe2PAPRE2: TFloatField
      FieldName = 'PAPRE2'
      Origin = 'ISADE.PEDRE2.PAPRE2'
      Visible = False
    end
    object PedRe2VAPRE2: TFloatField
      FieldName = 'VAPRE2'
      Origin = 'ISADE.PEDRE2.VAPRE2'
      Visible = False
    end
    object PedRe2VCHRE2: TFloatField
      FieldName = 'VCHRE2'
      Origin = 'ISADE.PEDRE2.VCHRE2'
      Visible = False
    end
    object PedRe2VRERE2: TFloatField
      FieldName = 'VRERE2'
      Origin = 'ISADE.PEDRE2.VRERE2'
      Visible = False
    end
    object PedRe2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.PEDRE2.VCHCST'
      Visible = False
    end
    object PedRe2VRECST: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.PEDRE2.VRECST'
      Visible = False
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
    end
    object PedRe2CODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDRE2.CODCFO'
      Visible = False
      Size = 15
    end
    object PedRe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDRE2.CLSIPI'
      Visible = False
      Size = 30
    end
    object PedRe2CODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.PEDRE2.CODTXF'
      Visible = False
      Size = 30
    end
    object PedRe2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDRE2.TOTVEN'
      Visible = False
    end
    object PedRe2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDRE2.TOTCST'
      Visible = False
    end
    object PedRe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDRE2.BASIPI'
      Visible = False
    end
    object PedRe2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDRE2.TOTIPI'
      Visible = False
    end
    object PedRe2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDRE2.BASICM'
      Visible = False
    end
    object PedRe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDRE2.TOTICM'
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
    object PedRe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDRE2.TOTGE2'
      Visible = False
    end
    object PedRe2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDRE2.TOTLIQ'
      Visible = False
    end
    object PedRe2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDRE2.TOTBRT'
      Visible = False
    end
    object PedRe2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.PEDRE2.BASCOM'
      Visible = False
    end
    object PedRe2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.PEDRE2.TOTCOM'
      Visible = False
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
    object PedRe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDRE2.TOTACR'
      Visible = False
    end
    object PedRe2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDRE2.TOTDSP'
      Visible = False
    end
    object PedRe2TOTACP: TFloatField
      FieldName = 'TOTACP'
      Origin = 'ISADE.PEDRE2.TOTACP'
      Visible = False
    end
    object PedRe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDRE2.CODSTR'
      Visible = False
    end
    object PedRe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDRE2.TIPSTR'
      Visible = False
      Size = 7
    end
    object PedRe2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.PEDRE2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.PEDRE2.ICMSUB'
      Visible = False
    end
    object PedRe2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.PEDRE2.BASESB'
      Visible = False
    end
    object PedRe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDRE2.REGIPI'
      Visible = False
      Size = 30
    end
    object PedRe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDRE2.TIPIPI'
      Visible = False
      Size = 7
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
    object PedRe2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDRE2.REGICM'
      Visible = False
    end
    object PedRe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDRE2.TIPICM'
      Visible = False
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
    object PedRe2ID_PEDGR3: TIntegerField
      FieldName = 'ID_PEDGR3'
      Origin = 'ISADE.PEDRE2.ID_PEDGR3'
      Visible = False
    end
    object PedRe2FLGRES: TStringField
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDRE2.FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDRE2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGVAL: TStringField
      FieldName = 'FLGVAL'
      Origin = 'ISADE.PEDRE2.FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGLIB: TStringField
      FieldName = 'FLGLIB'
      Origin = 'ISADE.PEDRE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGREN: TStringField
      FieldName = 'FLGREN'
      Origin = 'ISADE.PEDRE2.FLGREN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2DSCPER: TFloatField
      FieldName = 'DSCPER'
      Origin = 'ISADE.PEDRE2.DSCPER'
      Visible = False
    end
    object PedRe2DIFDSC: TFloatField
      FieldName = 'DIFDSC'
      Origin = 'ISADE.PEDRE2.DIFDSC'
      Visible = False
    end
    object PedRe2MARPRE: TFloatField
      FieldName = 'MARPRE'
      Origin = 'ISADE.PEDRE2.MARPRE'
      Visible = False
    end
    object PedRe2MARPED: TFloatField
      FieldName = 'MARPED'
      Origin = 'ISADE.PEDRE2.MARPED'
      Visible = False
    end
    object PedRe2LUCROL: TFloatField
      FieldName = 'LUCROL'
      Origin = 'ISADE.PEDRE2.LUCROL'
      Visible = False
    end
    object PedRe2LUCROP: TFloatField
      FieldName = 'LUCROP'
      Origin = 'ISADE.PEDRE2.LUCROP'
      Visible = False
    end
    object PedRe2TOTPER: TFloatField
      FieldName = 'TOTPER'
      Origin = 'ISADE.PEDRE2.TOTPER'
      Visible = False
    end
    object PedRe2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDRE2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Origin = 'ISADE.PEDRE2.NRORE2'
      Visible = False
    end
    object PedRe2CSTLAN: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTLAN'
      Origin = 'ISADE.PEDRE2.CSTLAN'
      Visible = False
    end
    object PedRe2ID_PEDGER: TIntegerField
      FieldName = 'ID_PEDGER'
      Origin = 'ISADE.PEDRE2.ID_PEDGER'
      Visible = False
    end
    object PedRe2ID_PEDICL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDICL'
      Origin = 'ISADE.PEDRE2.ID_PEDICL'
      Visible = False
    end
    object PedRe2NROITE: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROITE'
      Origin = 'ISADE.PEDRE2.NROITE'
      Visible = False
    end
    object PedRe2QTIRE4: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTIRE4'
      Origin = 'ISADE.PEDRE2.QTIRE4'
      Visible = False
    end
    object PedRe2FLGMAR: TStringField
      DisplayWidth = 3
      FieldName = 'FLGMAR'
      Origin = 'ISADE.PEDRE2.FLGMAR'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2COMCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'COMCLI'
      Origin = 'ISADE.PEDRE2.COMCLI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2VALCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALCLI'
      Origin = 'ISADE.PEDRE2.VALCLI'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2TOTCLI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCLI'
      Origin = 'ISADE.PEDRE2.TOTCLI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2ISSRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSRE2'
      Origin = 'ISADE.PEDRE2.ISSRE2'
      Visible = False
    end
    object PedRe2CSTRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTRE2'
      Origin = 'ISADE.PEDRE2.CSTRE2'
      Visible = False
    end
    object PedRe2VCPRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPRE2'
      Origin = 'ISADE.PEDRE2.VCPRE2'
      Visible = False
    end
    object PedRe2VPRRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRRE2'
      Origin = 'ISADE.PEDRE2.VPRRE2'
      Visible = False
    end
    object PedRe2VCRRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRRE2'
      Origin = 'ISADE.PEDRE2.VCRRE2'
      Visible = False
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
    object PedRe2CSTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCST'
      Origin = 'ISADE.PEDRE2.CSTCST'
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
    object PedRe2VCRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCST'
      Origin = 'ISADE.PEDRE2.VCRCST'
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
    object PedRe2ID_PEDCT2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PEDCT2'
      Origin = 'ISADE.PEDRE2.ID_PEDCT2'
      Visible = False
    end
    object PedRe2CUBRE2: TFloatField
      DisplayWidth = 10
      FieldName = 'CUBRE2'
      Origin = 'ISADE.PEDRE2.CUBRE2'
      Visible = False
    end
    object PedRe2TOTCUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCUB'
      Origin = 'ISADE.PEDRE2.TOTCUB'
      Visible = False
    end
    object PedRe2PCOATD: TFloatField
      FieldName = 'PCOATD'
      Origin = 'ISADE.PEDRE2.PCOATD'
      Visible = False
    end
    object PedRe2BASCAT: TFloatField
      FieldName = 'BASCAT'
      Origin = 'ISADE.PEDRE2.BASCAT'
      Visible = False
    end
    object PedRe2TOTCAT: TFloatField
      FieldName = 'TOTCAT'
      Origin = 'ISADE.PEDRE2.TOTCAT'
      Visible = False
    end
    object PedRe2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDRE2.TOTPIS'
      Visible = False
    end
    object PedRe2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDRE2.TOTCOF'
      Visible = False
    end
    object PedRe2CODICL: TStringField
      FieldName = 'CODICL'
      Origin = 'ISADE.PEDRE2.TOTCOF'
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
      '           PedPar.UsaDec,'
      '           PedPar.TipImp,'
      '           PedPar.TipPag,'
      '           PedPar.FlgCot,'
      '           PedPar.RefDes,'
      '           PedPar.ExiLoc,'
      '           PedPar.FlgDup,'
      '           PedPar.MudRen'
      'From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 62
    Top = 189
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
    object PedParTIPIMP: TStringField
      FieldName = 'TIPIMP'
      Size = 9
    end
    object PedParTIPPAG: TStringField
      FieldName = 'TIPPAG'
      Size = 28
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
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 31
    Top = 273
  end
end
