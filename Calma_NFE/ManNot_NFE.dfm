inherited fmManNot_NFE: TfmManNot_NFE
  Left = 157
  Top = 131
  Caption = 'Notas fiscais (Comercial)'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LbText: TLabel
    Left = 4
    Top = 464
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
    Left = 671
    Top = 464
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
  object Label28: TLabel
    Left = 8
    Top = 379
    Width = 133
    Height = 14
    Caption = 'Base de Calculo do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label33: TLabel
    Left = 196
    Top = 379
    Width = 76
    Height = 14
    Caption = 'Valor do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label34: TLabel
    Left = 278
    Top = 379
    Width = 203
    Height = 14
    Caption = 'Base de Cálculo do ICMS Substituição'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label35: TLabel
    Left = 484
    Top = 379
    Width = 146
    Height = 14
    Caption = 'Valor do ICMS Substituição'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel
    Left = 645
    Top = 379
    Width = 135
    Height = 14
    Caption = 'Valor Total dos Produtos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 4
    Top = 376
    Width = 782
    Height = 1
  end
  object Shape2: TShape
    Left = 3
    Top = 376
    Width = 1
    Height = 85
  end
  object Shape3: TShape
    Left = 785
    Top = 377
    Width = 1
    Height = 33
  end
  object Label38: TLabel
    Left = 60
    Top = 419
    Width = 78
    Height = 14
    Caption = 'Valor do Frete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label39: TLabel
    Left = 182
    Top = 419
    Width = 88
    Height = 14
    Caption = 'Valor do Seguro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label40: TLabel
    Left = 327
    Top = 419
    Width = 149
    Height = 14
    Caption = 'Outras Despesas Acessórias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label41: TLabel
    Left = 531
    Top = 419
    Width = 96
    Height = 14
    Caption = 'Valor Total do IPI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label42: TLabel
    Left = 674
    Top = 419
    Width = 106
    Height = 14
    Caption = 'Valor Total da Nota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape4: TShape
    Left = 4
    Top = 460
    Width = 782
    Height = 1
  end
  object Shape5: TShape
    Left = 785
    Top = 376
    Width = 1
    Height = 85
  end
  object Label44: TLabel
    Left = 660
    Top = 354
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
  object Panel2: TPanel
    Left = 3
    Top = 326
    Width = 609
    Height = 47
    BevelOuter = bvNone
    TabOrder = 28
    OnExit = Panel2Exit
    object EdDesPe2: TdxDBColorEdit
      Left = -1
      Top = 0
      Width = 611
      Hint = 'Descrição do Item'
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
      OnExit = EdDesPe2Exit
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESPE2'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdObsPe2: TdxDBColorEdit
      Left = -1
      Top = 24
      Width = 611
      Hint = 'Observações Sobre o Item'
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
      DataField = 'OBSPE2'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsPe2: TPanel
      Left = 3
      Top = 28
      Width = 603
      Height = 14
      Hint = 'Observações Sobre o Item'
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pnDesPe2: TPanel
      Left = 3
      Top = 3
      Width = 603
      Height = 14
      Hint = 'Descrição do Item'
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object EdTotGer: TdxDBColorCurrencyEdit
    Left = 635
    Top = 434
    Width = 149
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
    DataField = 'TOTGER'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotFrt: TdxDBColorCurrencyEdit
    Left = 5
    Top = 434
    Width = 138
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
    DataField = 'TOTFRT'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotSeg: TdxDBColorCurrencyEdit
    Left = 143
    Top = 434
    Width = 132
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
    DataField = 'TOTSEG'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object grPe21: TdxDBGraphicEdit
    Left = 1
    Top = 160
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 141
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 1
    Top = 123
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
    TabOrder = 1
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 38
  end
  object grLabel2: TPanel
    Left = 3
    Top = 125
    Width = 780
    Height = 32
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
      Left = 208
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
      Left = 333
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
      Left = 411
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
    object Label22: TLabel
      Left = 453
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
    object Label25: TLabel
      Left = 613
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
    object Label26: TLabel
      Left = 716
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
    object Label24: TLabel
      Left = 505
      Top = 8
      Width = 23
      Height = 14
      Caption = 'ST1'
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
    object Label27: TLabel
      Left = 538
      Top = 8
      Width = 23
      Height = 14
      Caption = 'ST2'
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
  object EdBasIcm: TdxDBColorCurrencyEdit
    Left = 5
    Top = 394
    Width = 138
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
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'BASICM'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnBasIcm: TPanel
    Left = 7
    Top = 397
    Width = 131
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object EdTotIcm: TdxDBColorCurrencyEdit
    Left = 143
    Top = 394
    Width = 132
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
    DataField = 'TOTICM'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotIcm: TPanel
    Left = 145
    Top = 397
    Width = 125
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object EdBasSub: TdxDBColorCurrencyEdit
    Left = 276
    Top = 394
    Width = 206
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
    DataField = 'BASSUB'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnBasSub: TPanel
    Left = 278
    Top = 397
    Width = 199
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object EdTotSub: TdxDBColorCurrencyEdit
    Left = 482
    Top = 394
    Width = 152
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
    TabOrder = 11
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTSUB'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotSub: TPanel
    Left = 484
    Top = 397
    Width = 145
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object EdTotFat: TdxDBColorCurrencyEdit
    Left = 635
    Top = 394
    Width = 149
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
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTFAT'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotFat: TPanel
    Left = 637
    Top = 397
    Width = 142
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object pnTotFrt: TPanel
    Left = 7
    Top = 437
    Width = 131
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object pnTotSeg: TPanel
    Left = 145
    Top = 437
    Width = 125
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object EdTotDes: TdxDBColorCurrencyEdit
    Left = 276
    Top = 434
    Width = 206
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
    DataField = 'TOTOUTDESP'
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotDes: TPanel
    Left = 278
    Top = 437
    Width = 199
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object EdTotIpi: TdxDBColorCurrencyEdit
    Left = 482
    Top = 434
    Width = 152
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
    DataSource = DsFat
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotIpi: TPanel
    Left = 484
    Top = 437
    Width = 145
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
  end
  object pnTotGer: TPanel
    Left = 637
    Top = 437
    Width = 142
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
  end
  object EdSeqPe2: TdxDBColorCurrencyEdit
    Left = 698
    Top = 350
    Width = 87
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
    DataField = 'SEQPE2'
    DataSource = DsPe2
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNroPe2: TPanel
    Left = 700
    Top = 354
    Width = 81
    Height = 14
    BevelOuter = bvNone
    Caption = '000/000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 122
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 786
      Height = 509
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
      Caption = 'Número do pedido:'
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
    object Label2: TLabel
      Left = 578
      Top = 6
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
    object Label4: TLabel
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
    object Label16: TLabel
      Left = 578
      Top = 30
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
    object Label13: TLabel
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
    object Label12: TLabel
      Left = 578
      Top = 54
      Width = 33
      Height = 14
      Caption = 'Frete:'
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
      Top = 102
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
    object Label31: TLabel
      Left = 578
      Top = 78
      Width = 84
      Height = 14
      Caption = 'Última cotação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 578
      Top = 102
      Width = 95
      Height = 14
      Caption = 'Valor da cotação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdUfeFat: TdxDBColorEdit
      Left = 675
      Top = 26
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
      TabOrder = 8
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEFAT'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 274
      Top = 26
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
      TabOrder = 2
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 274
      Top = 50
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
      TabOrder = 6
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomVen: TdxDBColorEdit
      Left = 274
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
      TabOrder = 11
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscPfa: TdxDBColorEdit
      Left = 274
      Top = 98
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
      TabOrder = 15
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
      Left = 137
      Top = 2
      Width = 109
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
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMRES'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 137
      Top = 26
      Width = 109
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 278
      Top = 29
      Width = 292
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object EdDteFat: TdxDBColorDateEdit
      Left = 675
      Top = 2
      Width = 110
      Hint = 'Data de Emissão da Nota Fiscal'
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
      OnExit = EdDteFatExit
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      DataField = 'DTEFAT'
      DataSource = DsFat
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 137
      Top = 50
      Width = 109
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 278
      Top = 53
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
      TabOrder = 7
    end
    object pnUfeFat: TPanel
      Left = 677
      Top = 29
      Width = 37
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
    object EdCodVen: TdxDBColorEdit
      Left = 137
      Top = 74
      Width = 109
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomVen: TPanel
      Left = 278
      Top = 77
      Width = 292
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
    object EdCodPfa: TdxDBColorEdit
      Left = 137
      Top = 98
      Width = 109
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
      TabOrder = 14
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 278
      Top = 101
      Width = 292
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
    object EdDtcTmo: TdxDBColorDateEdit
      Left = 675
      Top = 74
      Width = 110
      Hint = 'Data da Última Cotação'
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
      TabOrder = 17
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      DataField = 'DTCTMO'
      DataSource = DsFat
      PopupBorder = pbFlat
      DateButtons = []
      DateValidation = True
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 675
      Top = 98
      Width = 110
      Hint = 'Valor da Última Cotação'
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
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALTMO'
      DataSource = DsFat
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumRes: TPanel
      Left = 139
      Top = 6
      Width = 102
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object pnCodEmp: TPanel
      Left = 139
      Top = 30
      Width = 102
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object pnCodCli: TPanel
      Left = 139
      Top = 54
      Width = 102
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object pnCodVen: TPanel
      Left = 139
      Top = 78
      Width = 102
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object pnCodPfa: TPanel
      Left = 139
      Top = 102
      Width = 102
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object EdModFrt: TdxDBColorLookupEdit
      Left = 674
      Top = 51
      Width = 111
      Color = 16577773
      Enabled = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      DataField = 'ID_FRETE'
      DataSource = DsFat
      ListFieldName = 'NOMFRT'
      KeyFieldName = 'ID'
      ListSource = dsTipFrt
      LookupKeyValue = Null
      CorDeFoco = clInfoBk
    end
  end
  object Panel3: TPanel
    Left = 3
    Top = 302
    Width = 781
    Height = 22
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 4
    OnExit = Panel3Exit
    object EdCodGru: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 44
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
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodGruKeyUp
      OnMouseUp = EdCodGruMouseUp
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
      Left = 42
      Top = -1
      Width = 53
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
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodGruKeyUp
      OnMouseUp = EdCodGruMouseUp
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
      Left = 94
      Top = -1
      Width = 75
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
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      OnKeyUp = EdCodProKeyUp
      OnMouseUp = EdCodProMouseUp
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
      Left = 168
      Top = -1
      Width = 118
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
      OnExit = EdQtpPe2Exit
      OnKeyUp = EdQtpPe2KeyUp
      OnMouseUp = EdQtpPe2MouseUp
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluPe2: TdxDBColorCurrencyEdit
      Left = 285
      Top = -1
      Width = 115
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
      OnExit = EdVluPe2Exit
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiPe2: TdxDBColorCurrencyEdit
      Left = 399
      Top = -1
      Width = 55
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
      TabOrder = 5
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      AutoSize = False
      DataField = 'IPIPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      DisplayFormat = ',0.00;-,0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmPe2: TdxDBColorCurrencyEdit
      Left = 453
      Top = -1
      Width = 48
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
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      AutoSize = False
      DataField = 'ICMPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      DisplayFormat = ',0.00;-,0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 500
      Top = -1
      Width = 33
      Hint = 'Situação Tributária 1'
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
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 531
      Top = -1
      Width = 36
      Hint = 'Situação Tributária 2'
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
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsPe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVlqPe2: TdxDBColorCurrencyEdit
      Left = 566
      Top = -1
      Width = 108
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
      DataField = 'VLQPE2'
      DataSource = DsPe2
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotPe2: TdxDBColorCurrencyEdit
      Left = 673
      Top = -1
      Width = 109
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
      DataField = 'TOTPE2'
      DataSource = DsPe2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object grPe2: ThGrid
    Left = 3
    Top = 162
    Width = 779
    Height = 135
    Selected.Strings = (
      'CODGRU'#9'5'#9'CODGRU'#9'F'
      'CODSUB'#9'7'#9'CODSUB'#9'F'
      'CODPRO'#9'10'#9'CODPRO'#9'F'
      'QTPPE2'#9'15'#9'QTPPE2'#9'F'
      'VLUPE2'#9'16'#9'VLUPE2'#9'F'
      'IPIPE2'#9'6'#9'IPIPE2'#9'F'
      'ICMPE2'#9'8'#9'ICMPE2'#9'F'
      'CODST1'#9'5'#9'CODST1'#9'F'
      'CODST2'#9'2'#9'CODST2'#9'F'
      'VLQPE2'#9'16'#9'VLQPE2'#9'F'
      'TOTPE2'#9'15'#9'TOTPE2'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 27
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grPe2KeyDown
    OnKeyUp = grPe2KeyUp
    OnMouseUp = grPe2MouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnEstoque: TPanel
    Left = 220
    Top = 160
    Width = 320
    Height = 135
    TabOrder = 29
    Visible = False
    object Panel10: TPanel
      Left = 8
      Top = 10
      Width = 305
      Height = 120
      BevelOuter = bvNone
      Color = clRed
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 2
        Width = 303
        Height = 116
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
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
        object Label17: TLabel
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
        object Label18: TLabel
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
          Top = 92
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
        object Label23: TLabel
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
        object Label30: TLabel
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
        object Label47: TLabel
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
        object Label48: TLabel
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
          Top = 93
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
          Top = 89
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
  object pnDscNot: TPanel
    Left = 189
    Top = 182
    Width = 408
    Height = 81
    TabOrder = 30
    Visible = False
    OnExit = pnDscNotExit
    object Label49: TLabel
      Left = 23
      Top = 34
      Width = 254
      Height = 14
      Caption = 'Desconto Praticado para a Nota Fiscal  :   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdDscNot: TdxDBColorCurrencyEdit
      Left = 276
      Top = 30
      Width = 110
      Hint = 'Valor da Última Cotação'
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
      OnKeyUp = EdDteFatKeyUp
      OnMouseUp = EdDteFatMouseUp
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCNOT'
      DataSource = DsFat
      DisplayFormat = '###,###,##0.00'
      MaxValue = 100
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 49
    end
  end
  object Button1: TButton
    Left = 616
    Top = 327
    Width = 167
    Height = 22
    Caption = 'Informar Lotes'
    TabOrder = 31
    OnClick = Button1Click
  end
  object FatPed: TwwQuery
    CachedUpdates = True
    OnNewRecord = FatPedNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatPed'
      'Where'
      '     fatped.DTEres >= '#39'2015-01-04'#39' and'
      '    FatPed.CodEmp = :CodEmp'
      '     and FatPed.DteRes = :DteRes'
      '     and FatPed.NumRes = :NumRes'
      '     and FatPed.SeqLib = :SeqLib'
      '     and FatPed.SeqFat = :SeqFat')
    UpdateObject = UpFat
    ValidateWithMask = True
    Left = 13
    Top = 167
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
      end
      item
        DataType = ftInteger
        Name = 'SeqLib'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SeqFat'
        ParamType = ptInput
      end>
    object FatPedID_FATPED: TIntegerField
      FieldName = 'ID_FATPED'
      Origin = 'ISADE.FATPED.ID_FATPED'
    end
    object FatPedDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.FATPED.DTEFAT'
    end
    object FatPedHREFAT: TStringField
      FieldName = 'HREFAT'
      Origin = 'ISADE.FATPED.HREFAT'
      FixedChar = True
      Size = 8
    end
    object FatPedCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATPED.CODCLI'
    end
    object FatPedUFEFAT: TStringField
      FieldName = 'UFEFAT'
      Origin = 'ISADE.FATPED.UFEFAT'
      FixedChar = True
      Size = 2
    end
    object FatPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATPED.CODEMP'
    end
    object FatPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATPED.CODFIL'
    end
    object FatPedCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATPED.CODVEN'
    end
    object FatPedCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATPED.CODPFA'
      Size = 15
    end
    object FatPedTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATPED.TIPPFA'
      Size = 7
    end
    object FatPedCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATPED.CODTCL'
    end
    object FatPedFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATPED.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatPedCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATPED.CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatPedLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATPED.LANEST'
      FixedChar = True
      Size = 3
    end
    object FatPedATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATPED.ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatPedINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATPED.INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatPedCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATPED.CODTRA'
    end
    object FatPedMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATPED.MODPFA'
    end
    object FatPedID_PEDCND: TIntegerField
      FieldName = 'ID_PEDCND'
      Origin = 'ISADE.FATPED.ID_PEDCND'
    end
    object FatPedTIPTMO: TStringField
      FieldName = 'TIPTMO'
      Origin = 'ISADE.FATPED.TIPTMO'
      Size = 9
    end
    object FatPedDTCTMO: TDateTimeField
      FieldName = 'DTCTMO'
      Origin = 'ISADE.FATPED.DTCTMO'
    end
    object FatPedVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.FATPED.VALTMO'
    end
    object FatPedDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATPED.DSCREG'
    end
    object FatPedPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATPED.PERPIS'
    end
    object FatPedPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATPED.PERCOF'
    end
    object FatPedDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATPED.DESREG'
      Size = 100
    end
    object FatPedQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATPED.QTDNFS'
    end
    object FatPedNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATPED.NRONFS'
    end
    object FatPedQTDNOT: TIntegerField
      FieldName = 'QTDNOT'
      Origin = 'ISADE.FATPED.QTDNOT'
    end
    object FatPedNRONOT: TIntegerField
      FieldName = 'NRONOT'
      Origin = 'ISADE.FATPED.NRONOT'
    end
    object FatPedTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.FATPED.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatPedTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.FATPED.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatPedAVINOT: TStringField
      FieldName = 'AVINOT'
      Origin = 'ISADE.FATPED.AVINOT'
      FixedChar = True
      Size = 3
    end
    object FatPedAVIDUP: TStringField
      FieldName = 'AVIDUP'
      Origin = 'ISADE.FATPED.AVIDUP'
      FixedChar = True
      Size = 3
    end
    object FatPedCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATPED.CGCCLI'
      Size = 18
    end
    object FatPedINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATPED.INSCLI'
      Size = 18
    end
    object FatPedCODCF1: TStringField
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATPED.CODCF1'
      Size = 10
    end
    object FatPedCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATPED.CODCF2'
      Size = 15
    end
    object FatPedFRTFAT: TStringField
      FieldName = 'FRTFAT'
      Origin = 'ISADE.FATPED.FRTFAT'
      FixedChar = True
      Size = 3
    end
    object FatPedDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATPED.DESNAT'
      OnGetText = FatPedDESNATGetText
      Size = 100
    end
    object FatPedINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATPED.INSSUB'
      Size = 18
    end
    object FatPedTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATPED.TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatPedMARFAT: TStringField
      FieldName = 'MARFAT'
      Origin = 'ISADE.FATPED.MARFAT'
      Size = 15
    end
    object FatPedNROFAT: TStringField
      FieldName = 'NROFAT'
      Origin = 'ISADE.FATPED.NROFAT'
      Size = 15
    end
    object FatPedESPFAT: TStringField
      FieldName = 'ESPFAT'
      Origin = 'ISADE.FATPED.ESPFAT'
      Size = 15
    end
    object FatPedUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATPED.UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatPedPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATPED.PLCTRA'
      EditMask = 'AAA\-9999;0; '
      Size = 7
    end
    object FatPedNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATPED.NOMTRA'
      Size = 70
    end
    object FatPedCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATPED.CGCTRA'
      Size = 18
    end
    object FatPedINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATPED.INSTRA'
      Size = 18
    end
    object FatPedCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATPED.CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatPedTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATPED.TENTRA'
      Size = 10
    end
    object FatPedENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATPED.ENDTRA'
      Size = 40
    end
    object FatPedREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATPED.REFTRA'
      Size = 40
    end
    object FatPedNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATPED.NUMTRA'
      Size = 10
    end
    object FatPedBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATPED.BAITRA'
    end
    object FatPedCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATPED.CIDTRA'
    end
    object FatPedUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATPED.UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatPedNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.FATPED.NOMENT'
      Size = 70
    end
    object FatPedCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATPED.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatPedTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATPED.TENCLI'
      Size = 10
    end
    object FatPedENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATPED.ENDCLI'
      Size = 70
    end
    object FatPedREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATPED.REFCLI'
      Size = 40
    end
    object FatPedNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATPED.NUMCLI'
      Size = 10
    end
    object FatPedBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATPED.BAICLI'
    end
    object FatPedCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATPED.CIDCLI'
    end
    object FatPedUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATPED.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatPedINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATPED.INECLI'
      Size = 18
    end
    object FatPedCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATPED.CGECLI'
      Size = 18
    end
    object FatPedNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATPED.NROSUF'
    end
    object FatPedOB1FAT: TMemoField
      FieldName = 'OB1FAT'
      Origin = 'ISADE.FATPED.OB1FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB2FAT: TMemoField
      FieldName = 'OB2FAT'
      Origin = 'ISADE.FATPED.OB2FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB3FAT: TMemoField
      FieldName = 'OB3FAT'
      Origin = 'ISADE.FATPED.OB3FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB4FAT: TMemoField
      FieldName = 'OB4FAT'
      Origin = 'ISADE.FATPED.OB4FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB5FAT: TMemoField
      FieldName = 'OB5FAT'
      Origin = 'ISADE.FATPED.OB5FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB6FAT: TMemoField
      FieldName = 'OB6FAT'
      Origin = 'ISADE.FATPED.OB6FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB7FAT: TMemoField
      FieldName = 'OB7FAT'
      Origin = 'ISADE.FATPED.OB7FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedOB8FAT: TMemoField
      FieldName = 'OB8FAT'
      Origin = 'ISADE.FATPED.OB8FAT'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedQTPSEL: TIntegerField
      FieldName = 'QTPSEL'
      Origin = 'ISADE.FATPED.QTPSEL'
    end
    object FatPedQTIPE2: TIntegerField
      FieldName = 'QTIPE2'
      Origin = 'ISADE.FATPED.QTIPE2'
    end
    object FatPedQTIPE4: TIntegerField
      FieldName = 'QTIPE4'
      Origin = 'ISADE.FATPED.QTIPE4'
    end
    object FatPedQTIPE5: TIntegerField
      FieldName = 'QTIPE5'
      Origin = 'ISADE.FATPED.QTIPE5'
    end
    object FatPedQTIPE6: TIntegerField
      FieldName = 'QTIPE6'
      Origin = 'ISADE.FATPED.QTIPE6'
    end
    object FatPedQTIPE7: TIntegerField
      FieldName = 'QTIPE7'
      Origin = 'ISADE.FATPED.QTIPE7'
    end
    object FatPedQTIDES: TIntegerField
      FieldName = 'QTIDES'
      Origin = 'ISADE.FATPED.QTIDES'
    end
    object FatPedLINFAT: TIntegerField
      FieldName = 'LINFAT'
      Origin = 'ISADE.FATPED.LINFAT'
    end
    object FatPedQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATPED.QTDVOL'
    end
    object FatPedALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Origin = 'ISADE.FATPED.ALTVOL'
    end
    object FatPedDSCFAT: TFloatField
      FieldName = 'DSCFAT'
      Origin = 'ISADE.FATPED.DSCFAT'
    end
    object FatPedINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATPED.INFLIQ'
    end
    object FatPedTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATPED.TOTLIQ'
    end
    object FatPedINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATPED.INFBRT'
    end
    object FatPedTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATPED.TOTBRT'
    end
    object FatPedBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATPED.BASIPI'
    end
    object FatPedTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATPED.TOTIPI'
    end
    object FatPedBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATPED.BASICM'
    end
    object FatPedTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATPED.TOTICM'
    end
    object FatPedBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATPED.BASSUB'
    end
    object FatPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATPED.TOTSUB'
    end
    object FatPedTOTFAT: TFloatField
      FieldName = 'TOTFAT'
      Origin = 'ISADE.FATPED.TOTFAT'
    end
    object FatPedTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATPED.TOTPIS'
    end
    object FatPedTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATPED.TOTCOF'
    end
    object FatPedTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATPED.TOTFRT'
    end
    object FatPedTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATPED.TOTSEG'
    end
    object FatPedTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATPED.TOTDES'
    end
    object FatPedBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATPED.BSICMF'
    end
    object FatPedBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATPED.BAICMF'
    end
    object FatPedTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATPED.TOICMF'
    end
    object FatPedBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATPED.BSICMS'
    end
    object FatPedBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATPED.BAICMS'
    end
    object FatPedTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATPED.TOICMS'
    end
    object FatPedBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATPED.BSICMD'
    end
    object FatPedBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATPED.BAICMD'
    end
    object FatPedTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATPED.TOICMD'
    end
    object FatPedBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATPED.BSIPIF'
    end
    object FatPedBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATPED.BAIPIF'
    end
    object FatPedTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATPED.TOIPIF'
    end
    object FatPedBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATPED.BSIPIS'
    end
    object FatPedBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATPED.BAIPIS'
    end
    object FatPedTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATPED.TOIPIS'
    end
    object FatPedBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATPED.BSIPID'
    end
    object FatPedBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATPED.BAIPID'
    end
    object FatPedTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATPED.TOIPID'
    end
    object FatPedTOTSER: TFloatField
      FieldName = 'TOTSER'
      Origin = 'ISADE.FATPED.TOTSER'
    end
    object FatPedBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATPED.BASISS'
    end
    object FatPedTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATPED.TOTISS'
    end
    object FatPedTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATPED.TOTGER'
    end
    object FatPedTOTDUP: TFloatField
      FieldName = 'TOTDUP'
      Origin = 'ISADE.FATPED.TOTDUP'
    end
    object FatPedLANNOT: TFloatField
      FieldName = 'LANNOT'
      Origin = 'ISADE.FATPED.LANNOT'
    end
    object FatPedSLDNOT: TFloatField
      FieldName = 'SLDNOT'
      Origin = 'ISADE.FATPED.SLDNOT'
    end
    object FatPedLANDUP: TFloatField
      FieldName = 'LANDUP'
      Origin = 'ISADE.FATPED.LANDUP'
    end
    object FatPedSLDDUP: TFloatField
      FieldName = 'SLDDUP'
      Origin = 'ISADE.FATPED.SLDDUP'
    end
    object FatPedTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATPED.TOTDSR'
    end
    object FatPedTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      Origin = 'ISADE.FATPED.TOTLIB'
    end
    object FatPedFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.FATPED.FLGDIF'
      FixedChar = True
      Size = 3
    end
    object FatPedCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATPED.CODIPI'
      Size = 30
    end
    object FatPedTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATPED.TIPIPI'
      Size = 7
    end
    object FatPedTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATPED.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatPedREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATPED.REDIPI'
    end
    object FatPedBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATPED.BSCIPI'
    end
    object FatPedCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATPED.CODICM'
    end
    object FatPedTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATPED.TIPICM'
      Size = 7
    end
    object FatPedTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATPED.TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatPedREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATPED.REDICM'
    end
    object FatPedBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATPED.BSCICM'
    end
    object FatPedINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATPED.INCREV'
    end
    object FatPedINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATPED.INCFIN'
    end
    object FatPedTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATPED.TXFICM'
      Size = 160
    end
    object FatPedTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATPED.TXFIPI'
      Size = 160
    end
    object FatPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATPED.CODUSU'
    end
    object FatPedDTECAN: TDateTimeField
      FieldName = 'DTECAN'
      Origin = 'ISADE.FATPED.DTECAN'
    end
    object FatPedHRECAN: TStringField
      FieldName = 'HRECAN'
      Origin = 'ISADE.FATPED.HRECAN'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUCAN: TIntegerField
      FieldName = 'USUCAN'
      Origin = 'ISADE.FATPED.USUCAN'
    end
    object FatPedDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.FATPED.DTEATU'
    end
    object FatPedHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.FATPED.HREATU'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.FATPED.USUATU'
    end
    object FatPedCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.FATPED.CODVEI'
    end
    object FatPedTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.FATPED.TRASDA'
    end
    object FatPedDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.FATPED.DTESDA'
    end
    object FatPedHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.FATPED.HRESDA'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.FATPED.USUSDA'
    end
    object FatPedNROCOL: TStringField
      FieldName = 'NROCOL'
      Origin = 'ISADE.FATPED.NROCOL'
    end
    object FatPedOB1SDA: TStringField
      FieldName = 'OB1SDA'
      Origin = 'ISADE.FATPED.OB1SDA'
      Size = 80
    end
    object FatPedOB2SDA: TStringField
      FieldName = 'OB2SDA'
      Origin = 'ISADE.FATPED.OB2SDA'
      Size = 80
    end
    object FatPedOB3SDA: TStringField
      FieldName = 'OB3SDA'
      Origin = 'ISADE.FATPED.OB3SDA'
      Size = 80
    end
    object FatPedOB4SDA: TStringField
      FieldName = 'OB4SDA'
      Origin = 'ISADE.FATPED.OB4SDA'
      Size = 80
    end
    object FatPedOB5SDA: TStringField
      FieldName = 'OB5SDA'
      Origin = 'ISADE.FATPED.OB5SDA'
      Size = 80
    end
    object FatPedDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.FATPED.DTEENT'
    end
    object FatPedHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.FATPED.HREENT'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.FATPED.USUENT'
    end
    object FatPedOB1ENT: TStringField
      FieldName = 'OB1ENT'
      Origin = 'ISADE.FATPED.OB1ENT'
      Size = 80
    end
    object FatPedOB2ENT: TStringField
      FieldName = 'OB2ENT'
      Origin = 'ISADE.FATPED.OB2ENT'
      Size = 80
    end
    object FatPedOB3ENT: TStringField
      FieldName = 'OB3ENT'
      Origin = 'ISADE.FATPED.OB3ENT'
      Size = 80
    end
    object FatPedOB4ENT: TStringField
      FieldName = 'OB4ENT'
      Origin = 'ISADE.FATPED.OB4ENT'
      Size = 80
    end
    object FatPedOB5ENT: TStringField
      FieldName = 'OB5ENT'
      Origin = 'ISADE.FATPED.OB5ENT'
      Size = 80
    end
    object FatPedFLGANT: TStringField
      FieldName = 'FLGANT'
      Origin = 'ISADE.FATPED.FLGANT'
      FixedChar = True
      Size = 3
    end
    object FatPedFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATPED.FLGENV'
      FixedChar = True
      Size = 3
    end
    object FatPedFLGSER: TStringField
      FieldName = 'FLGSER'
      Origin = 'ISADE.FATPED.FLGSER'
      FixedChar = True
      Size = 3
    end
    object FatPedOB1DES: TStringField
      FieldName = 'OB1DES'
      Origin = 'ISADE.FATPED.OB1DES'
      Size = 80
    end
    object FatPedOB2DES: TStringField
      FieldName = 'OB2DES'
      Origin = 'ISADE.FATPED.OB2DES'
      Size = 80
    end
    object FatPedOB3DES: TStringField
      FieldName = 'OB3DES'
      Origin = 'ISADE.FATPED.OB3DES'
      Size = 80
    end
    object FatPedOB4DES: TStringField
      FieldName = 'OB4DES'
      Origin = 'ISADE.FATPED.OB4DES'
      Size = 80
    end
    object FatPedOB5DES: TStringField
      FieldName = 'OB5DES'
      Origin = 'ISADE.FATPED.OB5DES'
      Size = 80
    end
    object FatPedFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATPED.FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATPED.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatPedFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATPED.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatPedSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATPED.SEQFAT'
    end
    object FatPedSITFAT: TStringField
      FieldName = 'SITFAT'
      Origin = 'ISADE.FATPED.SITFAT'
      Size = 45
    end
    object FatPedSEQINI: TIntegerField
      FieldName = 'SEQINI'
      Origin = 'ISADE.FATPED.SEQINI'
    end
    object FatPedSEQFIN: TIntegerField
      FieldName = 'SEQFIN'
      Origin = 'ISADE.FATPED.SEQFIN'
    end
    object FatPedFLGSEG: TStringField
      FieldName = 'FLGSEG'
      Origin = 'ISADE.FATPED.FLGSEG'
      FixedChar = True
      Size = 3
    end
    object FatPedSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.FATPED.SERNOT'
      Size = 10
    end
    object FatPedSERSEL: TStringField
      FieldName = 'SERSEL'
      Origin = 'ISADE.FATPED.SERSEL'
      Size = 10
    end
    object FatPedFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.FATPED.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object FatPedDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      Origin = 'ISADE.FATPED.DTEDEV'
    end
    object FatPedHREDEV: TStringField
      FieldName = 'HREDEV'
      Origin = 'ISADE.FATPED.HREDEV'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUDEV: TIntegerField
      FieldName = 'USUDEV'
      Origin = 'ISADE.FATPED.USUDEV'
    end
    object FatPedOB1DEV: TStringField
      FieldName = 'OB1DEV'
      Origin = 'ISADE.FATPED.OB1DEV'
      Size = 80
    end
    object FatPedOB2DEV: TStringField
      FieldName = 'OB2DEV'
      Origin = 'ISADE.FATPED.OB2DEV'
      Size = 80
    end
    object FatPedOB3DEV: TStringField
      FieldName = 'OB3DEV'
      Origin = 'ISADE.FATPED.OB3DEV'
      Size = 80
    end
    object FatPedOB4DEV: TStringField
      FieldName = 'OB4DEV'
      Origin = 'ISADE.FATPED.OB4DEV'
      Size = 80
    end
    object FatPedOB5DEV: TStringField
      FieldName = 'OB5DEV'
      Origin = 'ISADE.FATPED.OB5DEV'
      Size = 80
    end
    object FatPedTOTFRE: TFloatField
      FieldName = 'TOTFRE'
      Origin = 'ISADE.FATPED.TOTFRE'
    end
    object FatPedID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.FATPED.ID_TRAUFE'
    end
    object FatPedID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.FATPED.ID_TRACIE'
    end
    object FatPedID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.FATPED.ID_FINUFE'
    end
    object FatPedID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.FATPED.ID_FINCIE'
    end
    object FatPedCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Origin = 'ISADE.FATPED.CEFCLI'
      FixedChar = True
      Size = 8
    end
    object FatPedTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Origin = 'ISADE.FATPED.TEFCLI'
      Size = 10
    end
    object FatPedENFCLI: TStringField
      FieldName = 'ENFCLI'
      Origin = 'ISADE.FATPED.ENFCLI'
      Size = 70
    end
    object FatPedRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Origin = 'ISADE.FATPED.RFFCLI'
      Size = 40
    end
    object FatPedNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Origin = 'ISADE.FATPED.NRFCLI'
      Size = 10
    end
    object FatPedBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Origin = 'ISADE.FATPED.BAFCLI'
    end
    object FatPedCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Origin = 'ISADE.FATPED.CIFCLI'
    end
    object FatPedUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Origin = 'ISADE.FATPED.UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatPedID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.FATPED.ID_FINUFF'
    end
    object FatPedID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.FATPED.ID_FINCIF'
    end
    object FatPedNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.FATPED.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object FatPedNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.FATPED.NFECOF'
      FixedChar = True
      Size = 2
    end
    object FatPedFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.FATPED.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object FatPedENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.FATPED.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object FatPedSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.FATPED.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object FatPedDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.FATPED.DTENFE'
    end
    object FatPedRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.FATPED.RECNFE'
      FixedChar = True
      Size = 15
    end
    object FatPedPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.FATPED.PRONFE'
      FixedChar = True
      Size = 15
    end
    object FatPedLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.FATPED.LOTNFE'
    end
    object FatPedDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.FATPED.DTEPNF'
    end
    object FatPedHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.FATPED.HREPNF'
      FixedChar = True
      Size = 8
    end
    object FatPedDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.FATPED.DOPNFE'
    end
    object FatPedHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.FATPED.HRENFE'
      FixedChar = True
      Size = 8
    end
    object FatPedUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.FATPED.USUNFE'
    end
    object FatPedIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.FATPED.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object FatPedRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.FATPED.RETNFE'
      Size = 100
    end
    object FatPedDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.FATPED.DTECNE'
    end
    object FatPedHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.FATPED.HRECNE'
      FixedChar = True
      Size = 8
    end
    object FatPedARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.FATPED.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object FatPedDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.FATPED.DTCNFE'
    end
    object FatPedHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.FATPED.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object FatPedPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.FATPED.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object FatPedID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.FATPED.ID_ESTSIP'
    end
    object FatPedNFETH: TSmallintField
      FieldName = 'NFETH'
      Origin = 'ISADE.FATPED.NFETH'
    end
    object FatPedARQNFECANC: TBlobField
      FieldName = 'ARQNFECANC'
      Origin = 'ISADE.FATPED.ARQNFECANC'
      BlobType = ftBlob
      Size = 1
    end
    object FatPedNFETHCANC: TSmallintField
      FieldName = 'NFETHCANC'
      Origin = 'ISADE.FATPED.NFETHCANC'
    end
    object FatPedDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATPED.DTERES'
    end
    object FatPedNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATPED.NUMRES'
    end
    object FatPedSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATPED.SEQLIB'
    end
    object FatPedFLGTMO: TStringField
      FieldName = 'FLGTMO'
      Origin = 'ISADE.FATPED.FLGTMO'
      FixedChar = True
      Size = 3
    end
    object FatPedCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Origin = 'ISADE.FATPED.CODTMO'
    end
    object FatPedFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATPED.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATPED.FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATPED.FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatPedOBSFAT: TStringField
      FieldName = 'OBSFAT'
      Origin = 'ISADE.FATPED.OBSFAT'
      Size = 240
    end
    object FatPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATPED.SEQITE'
    end
    object FatPedQTIFAT: TIntegerField
      FieldName = 'QTIFAT'
      Origin = 'ISADE.FATPED.QTIFAT'
    end
    object FatPedQTPNOT: TIntegerField
      FieldName = 'QTPNOT'
      Origin = 'ISADE.FATPED.QTPNOT'
    end
    object FatPedSTPNOT: TIntegerField
      FieldName = 'STPNOT'
      Origin = 'ISADE.FATPED.STPNOT'
    end
    object FatPedQTPDUP: TIntegerField
      FieldName = 'QTPDUP'
      Origin = 'ISADE.FATPED.QTPDUP'
    end
    object FatPedSTPDUP: TIntegerField
      FieldName = 'STPDUP'
      Origin = 'ISADE.FATPED.STPDUP'
    end
    object FatPedICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.FATPED.ICMFRT'
    end
    object FatPedICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.FATPED.ICMSEG'
    end
    object FatPedICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.FATPED.ICMDES'
    end
    object FatPedIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.FATPED.IPIFRT'
    end
    object FatPedIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.FATPED.IPISEG'
    end
    object FatPedIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.FATPED.IPIDES'
    end
    object FatPedHRCFAT: TStringField
      FieldName = 'HRCFAT'
      Origin = 'ISADE.FATPED.HRCFAT'
      FixedChar = True
      Size = 8
    end
    object FatPedDTCFAT: TDateTimeField
      FieldName = 'DTCFAT'
      Origin = 'ISADE.FATPED.DTCFAT'
    end
    object FatPedUSUCFT: TIntegerField
      FieldName = 'USUCFT'
      Origin = 'ISADE.FATPED.USUCFT'
    end
    object FatPedOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      Origin = 'ISADE.FATPED.OBSCFT'
      BlobType = ftMemo
      Size = 500
    end
    object FatPedOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.FATPED.OBSSDA'
      Size = 240
    end
    object FatPedOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.FATPED.OBSENT'
      Size = 240
    end
    object FatPedFLGREQ: TStringField
      FieldName = 'FLGREQ'
      Origin = 'ISADE.FATPED.FLGREQ'
      FixedChar = True
      Size = 3
    end
    object FatPedENVRAE: TStringField
      FieldName = 'ENVRAE'
      Origin = 'ISADE.FATPED.ENVRAE'
      FixedChar = True
      Size = 3
    end
    object FatPedDSCNOT: TFloatField
      FieldName = 'DSCNOT'
      Origin = 'ISADE.FATPED.DSCNOT'
    end
    object FatPedSEQDES: TIntegerField
      FieldName = 'SEQDES'
      Origin = 'ISADE.FATPED.SEQDES'
    end
    object FatPedQTISER: TIntegerField
      FieldName = 'QTISER'
      Origin = 'ISADE.FATPED.QTISER'
    end
    object FatPedSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = 'ISADE.FATPED.SEQSER'
    end
    object FatPedFLGFEC: TStringField
      FieldName = 'FLGFEC'
      Origin = 'ISADE.FATPED.FLGFEC'
      FixedChar = True
      Size = 3
    end
    object FatPedFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.FATPED.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatPedOBSDES: TStringField
      FieldName = 'OBSDES'
      Origin = 'ISADE.FATPED.OBSDES'
      Size = 150
    end
    object FatPedOB1CAN: TStringField
      FieldName = 'OB1CAN'
      Origin = 'ISADE.FATPED.OB1CAN'
      Size = 80
    end
    object FatPedOB2CAN: TStringField
      FieldName = 'OB2CAN'
      Origin = 'ISADE.FATPED.OB2CAN'
      Size = 80
    end
    object FatPedOB3CAN: TStringField
      FieldName = 'OB3CAN'
      Origin = 'ISADE.FATPED.OB3CAN'
      Size = 80
    end
    object FatPedOB4CAN: TStringField
      FieldName = 'OB4CAN'
      Origin = 'ISADE.FATPED.OB4CAN'
      Size = 80
    end
    object FatPedOB5CAN: TStringField
      FieldName = 'OB5CAN'
      Origin = 'ISADE.FATPED.OB5CAN'
      Size = 80
    end
    object FatPedMODFRT: TStringField
      FieldName = 'MODFRT'
      Origin = 'ISADE.FATPED.MODFRT'
      FixedChar = True
      Size = 16
    end
    object FatPedFLGNOT: TStringField
      FieldName = 'FLGNOT'
      Origin = 'ISADE.FATPED.FLGNOT'
      FixedChar = True
      Size = 3
    end
    object FatPedUFECOM: TStringField
      FieldName = 'UFECOM'
      Origin = 'ISADE.FATPED.UFECOM'
      FixedChar = True
      Size = 2
    end
    object FatPedFLGREC: TStringField
      FieldName = 'FLGREC'
      Origin = 'ISADE.FATPED.FLGREC'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGAPR: TStringField
      FieldName = 'FLGAPR'
      Origin = 'ISADE.FATPED.FLGAPR'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGQTD: TStringField
      FieldName = 'FLGQTD'
      Origin = 'ISADE.FATPED.FLGQTD'
      FixedChar = True
      Size = 1
    end
    object FatPedFLGVERBOL: TSmallintField
      FieldName = 'FLGVERBOL'
      Origin = 'ISADE.FATPED.FLGVERBOL'
    end
    object FatPedFLGCON: TStringField
      FieldName = 'FLGCON'
      Origin = 'ISADE.FATPED.FLGCON'
      FixedChar = True
      Size = 3
    end
    object FatPedLIBERA_RESP: TStringField
      FieldName = 'LIBERA_RESP'
      Origin = 'ISADE.FATPED.LIBERA_RESP'
      FixedChar = True
      Size = 1
    end
    object FatPedLIBERA_CODUSU: TIntegerField
      FieldName = 'LIBERA_CODUSU'
      Origin = 'ISADE.FATPED.LIBERA_CODUSU'
    end
    object FatPedLIBERA_DTEHRE: TDateTimeField
      FieldName = 'LIBERA_DTEHRE'
      Origin = 'ISADE.FATPED.LIBERA_DTEHRE'
    end
    object FatPedFLGOPE: TStringField
      FieldName = 'FLGOPE'
      Origin = 'ISADE.FATPED.FLGOPE'
      FixedChar = True
      Size = 3
    end
    object FatPedSERIENF: TSmallintField
      FieldName = 'SERIENF'
      Origin = 'ISADE.FATPED.SERIENF'
    end
    object FatPedSERIECONTINGENCIA: TSmallintField
      FieldName = 'SERIECONTINGENCIA'
      Origin = 'ISADE.FATPED.SERIECONTINGENCIA'
    end
    object FatPedNUMCONTINGENCIA: TSmallintField
      FieldName = 'NUMCONTINGENCIA'
      Origin = 'ISADE.FATPED.NUMCONTINGENCIA'
    end
    object FatPedTOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
      Origin = 'ISADE.FATPED.TOTOUTDESP'
    end
    object FatPedTOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
      Origin = 'ISADE.FATPED.TOTDESCINC'
    end
    object FatPedOBSCOMPLEMENTO: TMemoField
      FieldName = 'OBSCOMPLEMENTO'
      Origin = 'ISADE.FATPED.OBSCOMPLEMENTO'
      BlobType = ftMemo
      Size = 5000
    end
    object FatPedFLGDENEGADA: TStringField
      FieldName = 'FLGDENEGADA'
      Origin = 'ISADE.FATPED.FLGDENEGADA'
      FixedChar = True
      Size = 1
    end
    object FatPedENVDPEC: TStringField
      FieldName = 'ENVDPEC'
      Origin = 'ISADE.FATPED.ENVDPEC'
      FixedChar = True
      Size = 1
    end
    object FatPedUSUDPEC: TIntegerField
      FieldName = 'USUDPEC'
      Origin = 'ISADE.FATPED.USUDPEC'
    end
    object FatPedJUSTDPEC: TStringField
      FieldName = 'JUSTDPEC'
      Origin = 'ISADE.FATPED.JUSTDPEC'
      Size = 255
    end
    object FatPedPROTDPEC: TStringField
      FieldName = 'PROTDPEC'
      Origin = 'ISADE.FATPED.PROTDPEC'
      Size = 255
    end
    object FatPedNFE_PROTOCOLO: TMemoField
      FieldName = 'NFE_PROTOCOLO'
      Origin = 'ISADE.FATPED.NFE_PROTOCOLO'
      BlobType = ftMemo
      Size = 300
    end
    object FatPedNFE_RECIBO: TMemoField
      FieldName = 'NFE_RECIBO'
      Origin = 'ISADE.FATPED.NFE_RECIBO'
      BlobType = ftMemo
      Size = 300
    end
    object FatPedLOCEMB: TStringField
      FieldName = 'LOCEMB'
      Origin = 'ISADE.FATPED.LOCEMB'
      Size = 60
    end
    object FatPedUFEMB: TStringField
      FieldName = 'UFEMB'
      Origin = 'ISADE.FATPED.UFEMB'
      FixedChar = True
      Size = 2
    end
    object FatPedTOTVOL: TIntegerField
      FieldName = 'TOTVOL'
      Origin = 'ISADE.FATPED.TOTVOL'
    end
    object FatPedTOTIBPT: TFloatField
      FieldName = 'TOTIBPT'
      Origin = 'ISADE.FATPED.TOTIBPT'
    end
    object FatPedID_FRETE: TIntegerField
      FieldName = 'ID_FRETE'
      Origin = 'ISADE.FATPED.ID_FRETE'
    end
    object FatPedSUFR_ICMS: TStringField
      FieldName = 'SUFR_ICMS'
      Origin = 'ISADE.FATPED.SUFR_ICMS'
      FixedChar = True
      Size = 1
    end
    object FatPedSUFR_IPI: TStringField
      FieldName = 'SUFR_IPI'
      Origin = 'ISADE.FATPED.SUFR_IPI'
      FixedChar = True
      Size = 1
    end
    object FatPedSUFR_PIS: TStringField
      FieldName = 'SUFR_PIS'
      Origin = 'ISADE.FATPED.SUFR_PIS'
      FixedChar = True
      Size = 1
    end
    object FatPedSUFR_COFINS: TStringField
      FieldName = 'SUFR_COFINS'
      Origin = 'ISADE.FATPED.SUFR_COFINS'
      FixedChar = True
      Size = 1
    end
    object FatPedINDIC_CF: TIntegerField
      FieldName = 'INDIC_CF'
      Origin = 'ISADE.FATPED.INDIC_CF'
    end
    object FatPedINDIC_PRESENCA: TIntegerField
      FieldName = 'INDIC_PRESENCA'
      Origin = 'ISADE.FATPED.INDIC_PRESENCA'
    end
    object FatPedTOTDESONERADO: TFloatField
      FieldName = 'TOTDESONERADO'
      Origin = 'ISADE.FATPED.TOTDESONERADO'
    end
    object FatPedFRTSUB: TFloatField
      FieldName = 'FRTSUB'
      Origin = 'ISADE.FATPED.FRTSUB'
    end
    object FatPedSEGSUB: TFloatField
      FieldName = 'SEGSUB'
      Origin = 'ISADE.FATPED.SEGSUB'
    end
    object FatPedDESSUB: TFloatField
      FieldName = 'DESSUB'
      Origin = 'ISADE.FATPED.DESSUB'
    end
    object FatPedDSCSUB: TFloatField
      FieldName = 'DSCSUB'
      Origin = 'ISADE.FATPED.DSCSUB'
    end
    object FatPedDSCIPI: TFloatField
      FieldName = 'DSCIPI'
      Origin = 'ISADE.FATPED.DSCIPI'
    end
    object FatPedDSCICM: TFloatField
      FieldName = 'DSCICM'
      Origin = 'ISADE.FATPED.DSCICM'
    end
    object FatPedID_ESTICM: TIntegerField
      FieldName = 'ID_ESTICM'
      Origin = 'ISADE.FATPED.ID_ESTICM'
    end
    object FatPedID_ESTIPI: TIntegerField
      FieldName = 'ID_ESTIPI'
      Origin = 'ISADE.FATPED.ID_ESTIPI'
    end
    object FatPedTOT_FCPUFDEST: TFloatField
      FieldName = 'TOT_FCPUFDEST'
      Origin = 'ISADE.FATPED.TOT_FCPUFDEST'
    end
    object FatPedTOT_ICMSUFDEST: TFloatField
      FieldName = 'TOT_ICMSUFDEST'
      Origin = 'ISADE.FATPED.TOT_ICMSUFDEST'
    end
    object FatPedTOT_ICMSUFREMET: TFloatField
      FieldName = 'TOT_ICMSUFREMET'
      Origin = 'ISADE.FATPED.TOT_ICMSUFREMET'
    end
    object FatPedALIQ_CRED_SN: TFloatField
      FieldName = 'ALIQ_CRED_SN'
      Origin = 'ISADE.FATPED.ALIQ_CRED_SN'
    end
  end
  object FatPe2: TwwQuery
    CachedUpdates = True
    OnNewRecord = FatPe2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatPe2'
      'Where FatPe2.CodEmp = :CodEmp'
      '     and FatPe2.DteRes = :DteRes'
      '     and FatPe2.NumRes = :NumRes'
      '     and FatPe2.SeqLib = :SeqLib'
      '     and FatPe2.SeqFat = :SeqFat'
      'Order by FatPe2.NroPe2')
    UpdateObject = UpPe2
    ValidateWithMask = True
    Left = 45
    Top = 167
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
      end
      item
        DataType = ftInteger
        Name = 'SeqLib'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SeqFat'
        ParamType = ptInput
      end>
    object FatPe2CODGRU: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATPE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatPe2CODSUB: TStringField
      Alignment = taCenter
      DisplayWidth = 7
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATPE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatPe2CODPRO: TStringField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATPE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatPe2QTPPE2: TFloatField
      DisplayWidth = 15
      FieldName = 'QTPPE2'
      Origin = 'ISADE.FATPE2.QTPPE2'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object FatPe2VLUPE2: TFloatField
      DisplayWidth = 16
      FieldName = 'VLUPE2'
      Origin = 'ISADE.FATPE2.VLUPE2'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
    end
    object FatPe2IPIPE2: TFloatField
      DisplayWidth = 6
      FieldName = 'IPIPE2'
      Origin = 'ISADE.FATPE2.IPIPE2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object FatPe2ICMPE2: TFloatField
      DisplayWidth = 8
      FieldName = 'ICMPE2'
      Origin = 'ISADE.FATPE2.ICMPE2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object FatPe2CODST1: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODST1'
      Origin = 'ISADE.FATPE2.CODST1'
      FixedChar = True
      Size = 1
    end
    object FatPe2CODST2: TStringField
      Alignment = taCenter
      DisplayWidth = 2
      FieldName = 'CODST2'
      Origin = 'ISADE.FATPE2.CODST2'
      FixedChar = True
      Size = 2
    end
    object FatPe2VLQPE2: TFloatField
      DisplayWidth = 16
      FieldName = 'VLQPE2'
      Origin = 'ISADE.FATPE2.VLQPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object FatPe2TOTPE2: TFloatField
      DisplayWidth = 15
      FieldName = 'TOTPE2'
      Origin = 'ISADE.FATPE2.TOTPE2'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object FatPe2CODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATPE2.CODEMP'
      Visible = False
    end
    object FatPe2DTERES: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTERES'
      Origin = 'ISADE.FATPE2.DTERES'
      Visible = False
    end
    object FatPe2NUMRES: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATPE2.NUMRES'
      Visible = False
    end
    object FatPe2SEQLIB: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATPE2.SEQLIB'
      Visible = False
    end
    object FatPe2SEQFAT: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATPE2.SEQFAT'
      Visible = False
    end
    object FatPe2SEQPE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPE2'
      Origin = 'ISADE.FATPE2.SEQPE2'
      Visible = False
    end
    object FatPe2CODEIT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEIT'
      Origin = 'ISADE.FATPE2.CODEIT'
      Visible = False
    end
    object FatPe2CODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATPE2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPe2CODTAM: TStringField
      DisplayWidth = 10
      FieldName = 'CODTAM'
      Origin = 'ISADE.FATPE2.CODTAM'
      Visible = False
      Size = 10
    end
    object FatPe2CODCOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODCOR'
      Origin = 'ISADE.FATPE2.CODCOR'
      Visible = False
      Size = 10
    end
    object FatPe2DESPE2: TStringField
      DisplayWidth = 70
      FieldName = 'DESPE2'
      Origin = 'ISADE.FATPE2.DESPE2'
      Visible = False
      Size = 70
    end
    object FatPe2OBSPE2: TStringField
      DisplayWidth = 100
      FieldName = 'OBSPE2'
      Origin = 'ISADE.FATPE2.OBSPE2'
      Visible = False
      Size = 100
    end
    object FatPe2CODUND: TStringField
      DisplayWidth = 3
      FieldName = 'CODUND'
      Origin = 'ISADE.FATPE2.CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2REFPE2: TStringField
      DisplayWidth = 20
      FieldName = 'REFPE2'
      Origin = 'ISADE.FATPE2.REFPE2'
      Visible = False
    end
    object FatPe2LIQPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQPE2'
      Origin = 'ISADE.FATPE2.LIQPE2'
      Visible = False
    end
    object FatPe2BRTPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTPE2'
      Origin = 'ISADE.FATPE2.BRTPE2'
      Visible = False
    end
    object FatPe2LINPE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINPE2'
      Origin = 'ISADE.FATPE2.LINPE2'
      Visible = False
    end
    object FatPe2QTDPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDPE2'
      Origin = 'ISADE.FATPE2.QTDPE2'
      Visible = False
    end
    object FatPe2SLDPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'SLDPE2'
      Origin = 'ISADE.FATPE2.SLDPE2'
      Visible = False
    end
    object FatPe2VCHPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCHPE2'
      Origin = 'ISADE.FATPE2.VCHPE2'
      Visible = False
    end
    object FatPe2VREPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VREPE2'
      Origin = 'ISADE.FATPE2.VREPE2'
      Visible = False
    end
    object FatPe2VCPPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPPE2'
      Origin = 'ISADE.FATPE2.VCPPE2'
      Visible = False
    end
    object FatPe2VPRPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRPE2'
      Origin = 'ISADE.FATPE2.VPRPE2'
      Visible = False
    end
    object FatPe2DSRPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'DSRPE2'
      Origin = 'ISADE.FATPE2.DSRPE2'
      Visible = False
    end
    object FatPe2VDRPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDRPE2'
      Origin = 'ISADE.FATPE2.VDRPE2'
      Visible = False
    end
    object FatPe2CLSIPI: TStringField
      DisplayWidth = 30
      FieldName = 'CLSIPI'
      Origin = 'ISADE.FATPE2.CLSIPI'
      Visible = False
      Size = 30
    end
    object FatPe2SEQNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNFS'
      Origin = 'ISADE.FATPE2.SEQNFS'
      Visible = False
    end
    object FatPe2SEQCLF: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQCLF'
      Origin = 'ISADE.FATPE2.SEQCLF'
      Visible = False
    end
    object FatPe2BASIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATPE2.BASIPI'
      Visible = False
    end
    object FatPe2TOTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATPE2.TOTIPI'
      Visible = False
    end
    object FatPe2BASICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Origin = 'ISADE.FATPE2.BASICM'
      Visible = False
    end
    object FatPe2TOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATPE2.TOTICM'
      Visible = False
    end
    object FatPe2BASSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATPE2.BASSUB'
      Visible = False
    end
    object FatPe2TOTSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATPE2.TOTSUB'
      Visible = False
    end
    object FatPe2TOTGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      Origin = 'ISADE.FATPE2.TOTGE2'
      Visible = False
    end
    object FatPe2TOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATPE2.TOTLIQ'
      Visible = False
    end
    object FatPe2TOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATPE2.TOTBRT'
      Visible = False
    end
    object FatPe2TOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATPE2.TOTPIS'
      Visible = False
    end
    object FatPe2TOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATPE2.TOTCOF'
      Visible = False
    end
    object FatPe2TOTDSR: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATPE2.TOTDSR'
      Visible = False
    end
    object FatPe2CODSTR: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTR'
      Origin = 'ISADE.FATPE2.CODSTR'
      Visible = False
    end
    object FatPe2TIPSTR: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTR'
      Origin = 'ISADE.FATPE2.TIPSTR'
      Visible = False
      Size = 7
    end
    object FatPe2REGIPI: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Origin = 'ISADE.FATPE2.REGIPI'
      Visible = False
      Size = 30
    end
    object FatPe2TIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATPE2.TIPIPI'
      Visible = False
      Size = 7
    end
    object FatPe2TRBIPI: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATPE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2REDIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATPE2.REDIPI'
      Visible = False
    end
    object FatPe2BSCIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATPE2.BSCIPI'
      Visible = False
    end
    object FatPe2REGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Origin = 'ISADE.FATPE2.REGICM'
      Visible = False
    end
    object FatPe2TIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATPE2.TIPICM'
      Visible = False
      Size = 7
    end
    object FatPe2TRBICM: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATPE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2REDICM: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Origin = 'ISADE.FATPE2.REDICM'
      Visible = False
    end
    object FatPe2BSCICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATPE2.BSCICM'
      Visible = False
    end
    object FatPe2INCREV: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Origin = 'ISADE.FATPE2.INCREV'
      Visible = False
    end
    object FatPe2INCFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATPE2.INCFIN'
      Visible = False
    end
    object FatPe2FLASEQ: TStringField
      DisplayWidth = 1
      FieldName = 'FLASEQ'
      Origin = 'ISADE.FATPE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPe2FLGLIB: TStringField
      DisplayWidth = 1
      FieldName = 'FLGLIB'
      Origin = 'ISADE.FATPE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatPe2NRONFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATPE2.NRONFS'
      Visible = False
    end
    object FatPe2NROPE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROPE2'
      Origin = 'ISADE.FATPE2.NROPE2'
      Visible = False
    end
    object FatPe2SEQRE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQRE2'
      Origin = 'ISADE.FATPE2.SEQRE2'
      Visible = False
    end
    object FatPe2CODVWA: TStringField
      DisplayWidth = 14
      FieldName = 'CODVWA'
      Origin = 'ISADE.FATPE2.CODVWA'
      Visible = False
      Size = 14
    end
    object FatPe2FLGREQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREQ'
      Origin = 'ISADE.FATPE2.FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2FLGDUP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDUP'
      Origin = 'ISADE.FATPE2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2VALPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'VALPE2'
      Origin = 'ISADE.FATPE2.VALPE2'
      Visible = False
    end
    object FatPe2VALTMO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALTMO'
      Origin = 'ISADE.FATPE2.VALTMO'
      Visible = False
    end
    object FatPe2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.FATPE2.CODTXF'
      Visible = False
      Size = 30
    end
    object FatPe2CODCFO: TStringField
      DisplayWidth = 10
      FieldName = 'CODCFO'
      Origin = 'ISADE.FATPE2.CODCFO'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatPe2TRBSUB: TStringField
      DisplayWidth = 3
      FieldName = 'TRBSUB'
      Origin = 'ISADE.FATPE2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatPe2ICMSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      Origin = 'ISADE.FATPE2.ICMSUB'
      Visible = False
    end
    object FatPe2MRGSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      Origin = 'ISADE.FATPE2.MRGSUB'
      Visible = False
    end
    object FatPe2BASESB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASESB'
      Origin = 'ISADE.FATPE2.BASESB'
      Visible = False
    end
    object FatPe2TOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATPE2.TOTFRT'
      Visible = False
    end
    object FatPe2TOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATPE2.TOTSEG'
      Visible = False
    end
    object FatPe2TOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATPE2.TOTDES'
      Visible = False
    end
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
      '  CODFIL = :CODFIL,'
      '  NRONFS = :NRONFS,'
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
      '  OBSFAT = :OBSFAT,'
      '  LINFAT = :LINFAT,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  FLGCTB = :FLGCTB,'
      '  FLGATU = :FLGATU,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  TRASDA = :TRASDA,'
      '  SITFAT = :SITFAT,'
      '  DSCNOT = :DSCNOT,'
      '  FLGNFS = :FLGNFS,'
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
      '  NOMENT = :NOMENT,'
      '  FLGIPI = :FLGIPI,'
      '  CODTRA = :CODTRA,'
      '  MODFRT = :MODFRT,'
      '  FLGREC = :FLGREC,'
      '  FLGANT = :FLGANT,'
      '  FLGAPR = :FLGAPR,'
      '  FLGQTD = :FLGQTD,'
      '  CEFCLI = :CEFCLI,'
      '  TEFCLI = :TEFCLI,'
      '  ENFCLI = :ENFCLI,'
      '  NRFCLI = :NRFCLI,'
      '  RFFCLI = :RFFCLI,'
      '  BAFCLI = :BAFCLI,'
      '  CIFCLI = :CIFCLI,'
      '  UFFCLI = :UFFCLI,'
      '  ID_TRAUFE = :ID_TRAUFE,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  flgnfe = :flgnfe,'
      '  envnfe = :envnfe,'
      '  tefcli = :tefcli,'
      '  enfcli = :enfcli,'
      '  NRFCLI = :NRFCLI,'
      '  RFFCLI = :RFFCLI,'
      '  BAFCLI = :BAFCLI,'
      '  CIFCLI = :CIFCLI,'
      '  UFFCLI = :UFFCLI,'
      '  CEFCLI = :CEFCLI,'
      '  ID_FINUFF = :ID_FINUFF,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  FLGVERBOL = :FLGVERBOL,'
      '  FLGCON = :FLGCON'
      ''
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT'
      ' ')
    InsertSQL.Strings = (
      'insert into FatPed'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, DTEFAT, HREFAT, UFEFA' +
        'T, FLGTMO, '
      
        '   CODTMO, TIPTMO, DTCTMO, VALTMO, DSCREG, PERPIS, PERCOF, CODFI' +
        'L, QTDNFS, '
      
        '   NRONFS, NROSUF, FLGAVI, CGCCLI, INSCLI, CODCF1, CODCF2, FRTFA' +
        'T, FLGENT, '
      
        '   FLGSAI, DESNAT, INSSUB, TIPFRT, MARFAT, NROFAT, ESPFAT, NOMTR' +
        'A, CGCTRA, '
      
        '   INSTRA, CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTR' +
        'A, UFETRA, '
      
        '   PLCTRA, UFEPLC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICL' +
        'I, CIDCLI, '
      
        '   UFECLI, INECLI, CGECLI, TXFIPI, TXFICM, OBSFAT, SEQITE, QTIFA' +
        'T, LINFAT, '
      
        '   QTPNOT, STPNOT, QTPDUP, STPDUP, QTDVOL, ALTVOL, INFLIQ, TOTLI' +
        'Q, INFBRT, '
      
        '   TOTBRT, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTFA' +
        'T, TOTPIS, '
      
        '   TOTCOF, TOTFRT, TOTSEG, TOTDES, ICMFRT, BSICMF, BAICMF, TOICM' +
        'F, ICMSEG, '
      
        '   BSICMS, BAICMS, TOICMS, ICMDES, BSICMD, BAICMD, TOICMD, IPIFR' +
        'T, BSIPIF, '
      
        '   BAIPIF, TOIPIF, IPISEG, BSIPIS, BAIPIS, TOIPIS, IPIDES, BSIPI' +
        'D, BAIPID, '
      
        '   TOIPID, TOTGER, TOTDUP, LANNOT, LANDUP, SLDNOT, SLDDUP, TOTDS' +
        'R, CODUSU, '
      
        '   HRCFAT, DTCFAT, USUCFT, OBSCFT, ATUEST, LANEST, INTFIN, CONSU' +
        'M, FLGCTB, '
      
        '   CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, FLGATU, DTEATU, HREATU, USUATU, TRASD' +
        'A, DTESDA, '
      
        '   HRESDA, USUSDA, OBSSDA, CODVEI, DTEENT, HREENT, USUENT, OBSEN' +
        'T, DESREG, '
      
        '   FLGREQ, ENVRAE, FLGDIF, SITFAT, NROCOL, DSCNOT, SEQDES, QTIDE' +
        'S, FLGNFS, '
      
        '   TOTLIB, CODTCL, FLGENV, FLGSER, TOTSER, BASISS, TOTISS, QTISE' +
        'R, SEQSER, '
      
        '   FLGFEC, FLGSIN, CODCLI, CODVEN, CODPFA, TIPPFA, MODPFA, OB1FA' +
        'T, OB2FAT, '
      
        '   OB3FAT, OB4FAT, OB5FAT, OB6FAT, OB7FAT, OB8FAT, FLGIMP, NOMEN' +
        'T, FLGIPI, '
      
        '   CODTRA, MODFRT, FLGREC, FLGANT, FLGAPR, FLGQTD, OBSDES, TRBPI' +
        'S, TRBCOF, '
      
        '   ID_ESTSIP, CEFCLI, TEFCLI, ENFCLI, NRFCLI, RFFCLI, BAFCLI, CI' +
        'FCLI, UFFCLI, '
      
        '   NFEPIS, NFECOF, FLGNFE, ENVNFE, SEQNFE, DTENFE, RECNFE, PRONF' +
        'E, LOTNFE, '
      
        '   DTEPNF, HREPNF, DOPNFE, HRENFE, USUNFE, IMPNFE, RETNFE, DTCNF' +
        'E, HRCNFE, '
      
        '   PRCNFE, DTECNE, HRECNE, ARQNFE, ID_TRAUFE, ID_TRACIE, ID_FINU' +
        'FF, ID_FINCIF, '
      '   ID_FINUFE, ID_FINCIE,'
      'tefcli,'
      'enfcli,'
      'nrfcli,'
      'rffcli,'
      'bafcli,'
      'cifcli,'
      'uffcli,'
      'cefcli,'
      'id_finuff,'
      'id_fincif'
      ')'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :DTEFAT, :HREFAT' +
        ', :UFEFAT, '
      
        '   :FLGTMO, :CODTMO, :TIPTMO, :DTCTMO, :VALTMO, :DSCREG, :PERPIS' +
        ', :PERCOF, '
      
        '   :CODFIL, :QTDNFS, :NRONFS, :NROSUF, :FLGAVI, :CGCCLI, :INSCLI' +
        ', :CODCF1, '
      
        '   :CODCF2, :FRTFAT, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT' +
        ', :MARFAT, '
      
        '   :NROFAT, :ESPFAT, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA' +
        ', :ENDTRA, '
      
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
        ', :USUCFT, '
      
        '   :OBSCFT, :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGCTB, :CODIPI' +
        ', :TIPIPI, '
      
        '   :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM, :REDICM' +
        ', :BSCICM, '
      
        '   :INCREV, :INCFIN, :FLGATU, :DTEATU, :HREATU, :USUATU, :TRASDA' +
        ', :DTESDA, '
      
        '   :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT, :USUENT' +
        ', :OBSENT, '
      
        '   :DESREG, :FLGREQ, :ENVRAE, :FLGDIF, :SITFAT, :NROCOL, :DSCNOT' +
        ', :SEQDES, '
      
        '   :QTIDES, :FLGNFS, :TOTLIB, :CODTCL, :FLGENV, :FLGSER, :TOTSER' +
        ', :BASISS, '
      
        '   :TOTISS, :QTISER, :SEQSER, :FLGFEC, :FLGSIN, :CODCLI, :CODVEN' +
        ', :CODPFA, '
      
        '   :TIPPFA, :MODPFA, :OB1FAT, :OB2FAT, :OB3FAT, :OB4FAT, :OB5FAT' +
        ', :OB6FAT, '
      
        '   :OB7FAT, :OB8FAT, :FLGIMP, :NOMENT, :FLGIPI, :CODTRA, :MODFRT' +
        ', :FLGREC, '
      
        '   :FLGANT, :FLGAPR, :FLGQTD, :OBSDES, :TRBPIS, :TRBCOF, :ID_EST' +
        'SIP, :CEFCLI, '
      
        '   :TEFCLI, :ENFCLI, :NRFCLI, :RFFCLI, :BAFCLI, :CIFCLI, :UFFCLI' +
        ', :NFEPIS, '
      
        '   :NFECOF, :FLGNFE, :ENVNFE, :SEQNFE, :DTENFE, :RECNFE, :PRONFE' +
        ', :LOTNFE, '
      
        '   :DTEPNF, :HREPNF, :DOPNFE, :HRENFE, :USUNFE, :IMPNFE, :RETNFE' +
        ', :DTCNFE, '
      
        '   :HRCNFE, :PRCNFE, :DTECNE, :HRECNE, :ARQNFE, :ID_TRAUFE, :ID_' +
        'TRACIE, '
      '   :ID_FINUFF, :ID_FINCIF, :ID_FINUFE, :ID_FINCIE,'
      ':tefcli,'
      ':enfcli,'
      ':nrfcli,'
      ':rffcli,'
      ':bafcli,'
      ':cifcli,'
      ':uffcli,'
      ':cefcli,'
      ':id_finuff,'
      ':id_fincif   )')
    DeleteSQL.Strings = (
      'delete from FatPed'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT')
    Left = 117
    Top = 167
  end
  object UpPe2: TUpdateSQL
    ModifySQL.Strings = (
      'update FatPe2'
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
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFPE2 = :REFPE2,'
      '  LIQPE2 = :LIQPE2,'
      '  BRTPE2 = :BRTPE2,'
      '  LINPE2 = :LINPE2,'
      '  QTPPE2 = :QTPPE2,'
      '  QTDPE2 = :QTDPE2,'
      '  SLDPE2 = :SLDPE2,'
      '  VLUPE2 = :VLUPE2,'
      '  VCHPE2 = :VCHPE2,'
      '  VREPE2 = :VREPE2,'
      '  VCPPE2 = :VCPPE2,'
      '  VPRPE2 = :VPRPE2,'
      '  DSRPE2 = :DSRPE2,'
      '  VDRPE2 = :VDRPE2,'
      '  VLQPE2 = :VLQPE2,'
      '  IPIPE2 = :IPIPE2,'
      '  CLSIPI = :CLSIPI,'
      '  SEQNFS = :SEQNFS,'
      '  SEQCLF = :SEQCLF,'
      '  ICMPE2 = :ICMPE2,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTPE2 = :TOTPE2,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTDSR = :TOTDSR,'
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
      '  FLASEQ = :FLASEQ,'
      '  FLGLIB = :FLGLIB,'
      '  NRONFS = :NRONFS,'
      '  NROPE2 = :NROPE2,'
      '  SEQRE2 = :SEQRE2,'
      '  CODVWA = :CODVWA,'
      '  FLGREQ = :FLGREQ,'
      '  FLGDUP = :FLGDUP,'
      '  VALPE2 = :VALPE2,'
      '  VALTMO = :VALTMO,'
      '  CODTXF = :CODTXF'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQPE2 = :OLD_SEQPE2')
    InsertSQL.Strings = (
      'insert into FatPe2'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, SEQPE2, CODEIT, CODCL' +
        'P, CODGRU, '
      
        '   CODSUB, CODPRO, CODTAM, CODCOR, DESPE2, OBSPE2, CODST1, CODST' +
        '2, CODUND, '
      
        '   REFPE2, LIQPE2, BRTPE2, LINPE2, QTPPE2, QTDPE2, SLDPE2, VLUPE' +
        '2, VCHPE2, '
      
        '   VREPE2, VCPPE2, VPRPE2, DSRPE2, VDRPE2, VLQPE2, IPIPE2, CLSIP' +
        'I, SEQNFS, '
      
        '   SEQCLF, ICMPE2, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, TOTPE2, '
      
        '   TOTGE2, TOTLIQ, TOTBRT, TOTPIS, TOTCOF, TOTDSR, CODSTR, TIPST' +
        'R, REGIPI, '
      
        '   TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDIC' +
        'M, BSCICM, '
      
        '   INCREV, INCFIN, FLASEQ, FLGLIB, NRONFS, NROPE2, SEQRE2, CODVW' +
        'A, FLGREQ, '
      '   FLGDUP, VALPE2, VALTMO, CODTXF)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQPE2, :CODEIT' +
        ', :CODCLP, '
      
        '   :CODGRU, :CODSUB, :CODPRO, :CODTAM, :CODCOR, :DESPE2, :OBSPE2' +
        ', :CODST1, '
      
        '   :CODST2, :CODUND, :REFPE2, :LIQPE2, :BRTPE2, :LINPE2, :QTPPE2' +
        ', :QTDPE2, '
      
        '   :SLDPE2, :VLUPE2, :VCHPE2, :VREPE2, :VCPPE2, :VPRPE2, :DSRPE2' +
        ', :VDRPE2, '
      
        '   :VLQPE2, :IPIPE2, :CLSIPI, :SEQNFS, :SEQCLF, :ICMPE2, :BASIPI' +
        ', :TOTIPI, '
      
        '   :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTPE2, :TOTGE2, :TOTLIQ' +
        ', :TOTBRT, '
      
        '   :TOTPIS, :TOTCOF, :TOTDSR, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI' +
        ', :TRBIPI, '
      
        '   :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM' +
        ', :INCREV, '
      
        '   :INCFIN, :FLASEQ, :FLGLIB, :NRONFS, :NROPE2, :SEQRE2, :CODVWA' +
        ', :FLGREQ, '
      '   :FLGDUP, :VALPE2, :VALTMO, :CODTXF)')
    DeleteSQL.Strings = (
      'delete from FatPe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQPE2 = :OLD_SEQPE2')
    Left = 117
    Top = 203
  end
  object DsPe2: TDataSource
    DataSet = FatPe2
    OnDataChange = DsPe2DataChange
    Left = 81
    Top = 203
  end
  object DsFat: TDataSource
    DataSet = FatPed
    Left = 81
    Top = 167
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 13
    Top = 203
  end
  object FatPar: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FlgCot,LerObs, VAL_DESCONTO From FatPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 45
    Top = 203
    object FatParFLGCOT: TStringField
      FieldName = 'FLGCOT'
      FixedChar = True
      Size = 3
    end
    object FatParLEROBS: TStringField
      FieldName = 'LEROBS'
      FixedChar = True
      Size = 3
    end
    object FatParVAL_DESCONTO: TFloatField
      FieldName = 'VAL_DESCONTO'
    end
  end
  object TIPFRT: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select frt.id,CAST(frt.id as VARCHAR(2))||'#39' - '#39' ||frt.descfrt no' +
        'mfrt FROM TIPFRT frt')
    UniDirectional = True
    ValidateWithMask = True
    Left = 13
    Top = 243
    object TIPFRTID: TIntegerField
      FieldName = 'ID'
    end
    object TIPFRTNOMFRT: TStringField
      FieldName = 'NOMFRT'
      Size = 65
    end
  end
  object dsTipFrt: TDataSource
    DataSet = TIPFRT
    OnDataChange = DsPe2DataChange
    Left = 43
    Top = 243
  end
end
