inherited fmManEn1_NFE: TfmManEn1_NFE
  Left = 441
  Top = 214
  Caption = 'Notas fiscais (Comercial) - Itens devolvidos'
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
    Top = 463
    Width = 64
    Height = 16
    Caption = 'F1-Iniciais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 617
    Top = 463
    Width = 169
    Height = 16
    Alignment = taRightJustify
    Caption = 'F12 - Confirmar/ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 600
    Top = 357
    Width = 105
    Height = 14
    Caption = 'Itens devolvidos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label38: TLabel
    Left = 62
    Top = 421
    Width = 76
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor do frete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 381
    Width = 132
    Height = 14
    Caption = 'Base de cálculo do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label39: TLabel
    Left = 184
    Top = 421
    Width = 86
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor do seguro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 196
    Top = 381
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
    Left = 281
    Top = 381
    Width = 200
    Height = 14
    Alignment = taRightJustify
    Caption = 'Base de cálculo do ICMS substituição'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label40: TLabel
    Left = 330
    Top = 421
    Width = 146
    Height = 14
    Alignment = taRightJustify
    Caption = 'Outras despesas acessórias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label35: TLabel
    Left = 489
    Top = 381
    Width = 144
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor do ICMS substituição'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 537
    Top = 421
    Width = 93
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor total do IPI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label27: TLabel
    Left = 680
    Top = 421
    Width = 102
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor total da nota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel
    Left = 650
    Top = 381
    Width = 132
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor total dos produtos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 2
    Top = 378
    Width = 1
    Height = 85
  end
  object Shape1: TShape
    Left = 3
    Top = 378
    Width = 783
    Height = 1
  end
  object Shape4: TShape
    Left = 3
    Top = 462
    Width = 783
    Height = 1
  end
  object Shape5: TShape
    Left = 785
    Top = 378
    Width = 1
    Height = 85
  end
  object EdTotFat: TdxDBColorCurrencyEdit
    Left = 637
    Top = 396
    Width = 147
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
    DataField = 'TOTDEV'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotGer: TdxDBColorCurrencyEdit
    Left = 637
    Top = 436
    Width = 147
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
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotIpi: TdxDBColorCurrencyEdit
    Left = 482
    Top = 436
    Width = 155
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
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotSub: TdxDBColorCurrencyEdit
    Left = 482
    Top = 396
    Width = 155
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
    DataField = 'TOTSUB'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdBasSub: TdxDBColorCurrencyEdit
    Left = 276
    Top = 396
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
    TabOrder = 15
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'BASSUB'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotDes: TdxDBColorCurrencyEdit
    Left = 276
    Top = 436
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
    TabOrder = 14
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTDES'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotSeg: TdxDBColorCurrencyEdit
    Left = 143
    Top = 436
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
    TabOrder = 17
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTSEG'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotIcm: TdxDBColorCurrencyEdit
    Left = 143
    Top = 396
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
    TabOrder = 16
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTICM'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdBasIcm: TdxDBColorCurrencyEdit
    Left = 5
    Top = 396
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
    TabOrder = 26
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'BASICM'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotFrt: TdxDBColorCurrencyEdit
    Left = 5
    Top = 436
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
    TabOrder = 27
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTFRT'
    DataSource = DsFatDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdQtdDev: TdxDBColorCurrencyEdit
    Left = 707
    Top = 353
    Width = 80
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
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'QTDDEV'
    DataSource = DsFatDev
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 123
    BevelOuter = bvNone
    TabOrder = 0
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
    object Label13: TLabel
      Left = 3
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
    object Label4: TLabel
      Left = 3
      Top = 55
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
    object Label1: TLabel
      Left = 3
      Top = 31
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
    object Label8: TLabel
      Left = 3
      Top = 7
      Width = 122
      Height = 14
      Caption = 'Número da nota fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 272
      Top = 7
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
    object Label2: TLabel
      Left = 584
      Top = 7
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
    object Label54: TLabel
      Left = 585
      Top = 31
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
    object Label10: TLabel
      Left = 547
      Top = 80
      Width = 121
      Height = 14
      Caption = 'No. nota fiscal cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bPsqPfa: TSpeedButton
      Left = 245
      Top = 100
      Width = 25
      Height = 22
      Hint = 'Pesquisar padrões de faturamento cadastrados'
      Enabled = False
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
    object Label5: TLabel
      Left = 3
      Top = 103
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
    object Label28: TLabel
      Left = 547
      Top = 55
      Width = 103
      Height = 14
      Caption = 'Documento fiscal ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 547
      Top = 104
      Width = 145
      Height = 14
      Caption = 'Serie do documento fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdUfeDev: TdxDBColorEdit
      Left = 632
      Top = 27
      Width = 45
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
      DataField = 'UFEDEV'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumNfs: TdxDBColorEdit
      Left = 141
      Top = 3
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
      TabOrder = 0
      OnEnter = EdNumNfsEnter
      OnExit = EdNumNfsExit
      OnKeyPress = EdNumNfsKeyPress
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMNFS'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
      Left = 379
      Top = 3
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
      TabOrder = 1
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMRES'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 141
      Top = 51
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
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsFatDev
      ReadOnly = False
      CorDeFoco = clInfoBk
      Height = 23
      StoredValues = 65
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 141
      Top = 27
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
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
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
      TabOrder = 15
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 271
      Top = 27
      Width = 274
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
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 274
      Top = 31
      Width = 267
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdNomCli: TdxDBColorEdit
      Left = 271
      Top = 51
      Width = 274
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
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 274
      Top = 55
      Width = 267
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object pnUfeDev: TPanel
      Left = 635
      Top = 31
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
    object EdApeVen: TdxDBColorEdit
      Left = 271
      Top = 74
      Width = 274
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
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnApeVen: TPanel
      Left = 274
      Top = 78
      Width = 267
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
    object EdDteDev: TdxDBColorDateEdit
      Left = 632
      Top = 3
      Width = 105
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
      OnEnter = EdNumNfsEnter
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTEDEV'
      DataSource = DsFatDev
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumRes: TPanel
      Left = 383
      Top = 7
      Width = 93
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object pnCodEmp: TPanel
      Left = 145
      Top = 31
      Width = 93
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object pnCodCli: TPanel
      Left = 145
      Top = 55
      Width = 93
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object pnCodVen: TPanel
      Left = 145
      Top = 78
      Width = 93
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object EdNfsCli: TdxDBColorEdit
      Left = 685
      Top = 76
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
      TabOrder = 19
      OnEnter = EdNumNfsEnter
      OnKeyPress = EdNumNfsKeyPress
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NFSCLI'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 141
      Top = 99
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
      OnEnter = EdCodPfaEnter
      OnExit = EdCodPfaExit
      OnKeyDown = EdCodPfaKeyDown
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscPfa: TdxDBColorEdit
      Left = 271
      Top = 99
      Width = 274
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
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDscPfa: TPanel
      Left = 274
      Top = 103
      Width = 267
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
    object EdFlgDif: TdxDBColorEdit
      Left = 737
      Top = 2
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
      TabOrder = 24
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FLGDIF'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 25
      StoredValues = 1
    end
    object pnFlgDif: TPanel
      Left = 738
      Top = 4
      Width = 44
      Height = 19
      BevelOuter = bvNone
      Color = clLime
      TabOrder = 25
    end
    object EdFlgFsc: TdxDBColorPickEdit
      Left = 685
      Top = 51
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
      TabOrder = 14
      OnEnter = EdNumNfsEnter
      DataField = 'FLGFSC'
      DataSource = DsFatDev
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'Sim'
        'Nao')
      CorDeFoco = clInfoBk
      StoredValues = 64
    end
    object EdSerNot: TdxDBColorEdit
      Left = 719
      Top = 100
      Width = 67
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
      OnEnter = EdNumNfsEnter
      OnKeyPress = EdNumNfsKeyPress
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'SERNOT'
      DataSource = DsFatDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object pnQtdDev: TPanel
    Left = 711
    Top = 356
    Width = 71
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object grFatDv21: TdxDBGraphicEdit
    Left = -1
    Top = 166
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 164
  end
  object grFatDv2: ThGrid
    Left = 1
    Top = 168
    Width = 784
    Height = 158
    Selected.Strings = (
      'CODITE'#9'14'#9' '
      'DESDV2'#9'39'#9' '
      'QTPDV2'#9'11'#9' '
      'QTDDV2'#9'11'#9' '
      'ULTQTD'#9'11'#9' '
      'QTDRMA'#9'11'#9' '
      'SLDDV2'#9'11'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsFatDv2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grFatDv2Enter
    OnKeyDown = grFatDv2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 0
    Top = 124
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 42
  end
  object grLabel2: TPanel
    Left = 2
    Top = 126
    Width = 781
    Height = 36
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label32: TLabel
      Left = 2
      Top = 11
      Width = 81
      Height = 14
      Caption = 'Nosso código'
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
    object Label3: TLabel
      Left = 105
      Top = 11
      Width = 57
      Height = 14
      Caption = 'Descrição'
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
      Left = 408
      Top = 11
      Width = 50
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vendido'
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
    object Label7: TLabel
      Left = 476
      Top = 11
      Width = 64
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo dev.'
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
    object Label18: TLabel
      Left = 559
      Top = 11
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Devolvido'
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
    object Label19: TLabel
      Left = 717
      Top = 11
      Width = 62
      Height = 14
      Alignment = taRightJustify
      Caption = 'Disponivel'
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
      Left = 669
      Top = 11
      Width = 29
      Height = 14
      Alignment = taRightJustify
      Caption = 'RMA'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object pnBasIcm: TPanel
    Left = 7
    Top = 400
    Width = 130
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
  object pnTotFrt: TPanel
    Left = 7
    Top = 440
    Width = 130
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
    TabOrder = 9
  end
  object pnTotSeg: TPanel
    Left = 146
    Top = 440
    Width = 123
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
  object pnTotIcm: TPanel
    Left = 145
    Top = 399
    Width = 124
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
    TabOrder = 11
  end
  object pnBasSub: TPanel
    Left = 278
    Top = 400
    Width = 198
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
  object pnTotDes: TPanel
    Left = 278
    Top = 440
    Width = 198
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
    TabOrder = 13
  end
  object pnTotSub: TPanel
    Left = 484
    Top = 400
    Width = 147
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
    TabOrder = 18
  end
  object pnTotIpi: TPanel
    Left = 484
    Top = 440
    Width = 147
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
  object pnTotGer: TPanel
    Left = 639
    Top = 440
    Width = 139
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
  object pnTotFat: TPanel
    Left = 640
    Top = 400
    Width = 138
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
    TabOrder = 24
  end
  object Panel2: TPanel
    Left = -1
    Top = 331
    Width = 787
    Height = 22
    BevelOuter = bvNone
    TabOrder = 1
    OnExit = Panel2Exit
    object EdCodIte: TdxDBColorEdit
      Left = 0
      Top = -1
      Width = 104
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODITE'
      DataSource = DsFatDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesLb2: TdxDBColorEdit
      Left = 103
      Top = -1
      Width = 285
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESDV2'
      DataSource = DsFatDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpDv2: TdxDBColorCurrencyEdit
      Left = 387
      Top = -1
      Width = 78
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdNumNfsEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPDV2'
      DataSource = DsFatDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtdDv2: TdxDBColorCurrencyEdit
      Left = 464
      Top = -1
      Width = 83
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnEnter = EdNumNfsEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTDDV2'
      DataSource = DsFatDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUltQtd: TdxDBColorCurrencyEdit
      Left = 546
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
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdNumNfsEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ULTQTD'
      DataSource = DsFatDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdSldLb2: TdxDBColorCurrencyEdit
      Left = 708
      Top = -1
      Width = 81
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'SLDDV2'
      DataSource = DsFatDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtdRma: TdxDBColorCurrencyEdit
      Left = 627
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
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdNumNfsEnter
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTDRMA'
      DataSource = DsFatDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object FatDev: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = FatDevNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatDev'
      'Where FatDev.CodEmp = :CodEmp'
      '     and FatDev.DteRes = :DteRes'
      '     and FatDev.NumRes = :NumRes'
      '     and FatDev.SeqLib = :SeqLib'
      '     and FatDev.SeqFat = :SeqFat'
      '     and FatDev.SeqDev = :SeqDev')
    UpdateObject = UpFatDev
    ValidateWithMask = True
    Left = 2
    Top = 213
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
      end
      item
        DataType = ftInteger
        Name = 'SeqDev'
        ParamType = ptInput
      end>
    object FatDevCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATDEV.CODEMP'
    end
    object FatDevDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATDEV.DTERES'
    end
    object FatDevNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATDEV.NUMRES'
    end
    object FatDevSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATDEV.SEQLIB'
    end
    object FatDevSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATDEV.SEQFAT'
    end
    object FatDevSEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Origin = 'ISADE.FATDEV.SEQDEV'
    end
    object FatDevNUMNFS: TIntegerField
      FieldName = 'NUMNFS'
      Origin = 'ISADE.FATDEV.NUMNFS'
    end
    object FatDevDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      Origin = 'ISADE.FATDEV.DTEDEV'
    end
    object FatDevHREDEV: TStringField
      FieldName = 'HREDEV'
      Origin = 'ISADE.FATDEV.HREDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevUFEDEV: TStringField
      FieldName = 'UFEDEV'
      Origin = 'ISADE.FATDEV.UFEDEV'
      FixedChar = True
      Size = 2
    end
    object FatDevCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATDEV.CODPFA'
      FixedChar = True
      Size = 15
    end
    object FatDevTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATDEV.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object FatDevDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATDEV.DSCREG'
    end
    object FatDevPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATDEV.PERPIS'
    end
    object FatDevPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATDEV.PERCOF'
    end
    object FatDevCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATDEV.CODFIL'
    end
    object FatDevQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATDEV.QTDNFS'
    end
    object FatDevNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATDEV.NRONFS'
    end
    object FatDevNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATDEV.NROSUF'
      FixedChar = True
    end
    object FatDevFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATDEV.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatDevCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATDEV.CGCCLI'
      FixedChar = True
      Size = 18
    end
    object FatDevINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATDEV.INSCLI'
      FixedChar = True
      Size = 18
    end
    object FatDevCODCF1: TStringField
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATDEV.CODCF1'
      FixedChar = True
      Size = 15
    end
    object FatDevCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATDEV.CODCF2'
      FixedChar = True
      Size = 15
    end
    object FatDevFRTDEV: TStringField
      FieldName = 'FRTDEV'
      Origin = 'ISADE.FATDEV.FRTDEV'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATDEV.FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATDEV.FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatDevDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATDEV.DESNAT'
      FixedChar = True
      Size = 100
    end
    object FatDevINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATDEV.INSSUB'
      FixedChar = True
      Size = 18
    end
    object FatDevTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATDEV.TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatDevMARDEV: TStringField
      FieldName = 'MARDEV'
      Origin = 'ISADE.FATDEV.MARDEV'
      FixedChar = True
      Size = 15
    end
    object FatDevNRODEV: TStringField
      FieldName = 'NRODEV'
      Origin = 'ISADE.FATDEV.NRODEV'
      FixedChar = True
      Size = 15
    end
    object FatDevESPDEV: TStringField
      FieldName = 'ESPDEV'
      Origin = 'ISADE.FATDEV.ESPDEV'
      FixedChar = True
      Size = 15
    end
    object FatDevNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATDEV.NOMTRA'
      FixedChar = True
      Size = 70
    end
    object FatDevCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATDEV.CGCTRA'
      FixedChar = True
      Size = 18
    end
    object FatDevINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATDEV.INSTRA'
      FixedChar = True
      Size = 18
    end
    object FatDevCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATDEV.CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatDevTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATDEV.TENTRA'
      FixedChar = True
      Size = 10
    end
    object FatDevENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATDEV.ENDTRA'
      FixedChar = True
      Size = 40
    end
    object FatDevREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATDEV.REFTRA'
      FixedChar = True
      Size = 40
    end
    object FatDevNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATDEV.NUMTRA'
      FixedChar = True
      Size = 10
    end
    object FatDevBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATDEV.BAITRA'
      FixedChar = True
    end
    object FatDevCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATDEV.CIDTRA'
      FixedChar = True
    end
    object FatDevUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATDEV.UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatDevPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATDEV.PLCTRA'
      FixedChar = True
      Size = 7
    end
    object FatDevUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATDEV.UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatDevCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATDEV.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatDevTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATDEV.TENCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATDEV.ENDCLI'
      FixedChar = True
      Size = 70
    end
    object FatDevREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATDEV.REFCLI'
      FixedChar = True
      Size = 40
    end
    object FatDevNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATDEV.NUMCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATDEV.BAICLI'
      FixedChar = True
    end
    object FatDevCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATDEV.CIDCLI'
      FixedChar = True
    end
    object FatDevUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATDEV.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatDevINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATDEV.INECLI'
      FixedChar = True
      Size = 18
    end
    object FatDevCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATDEV.CGECLI'
      FixedChar = True
      Size = 18
    end
    object FatDevTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATDEV.TXFIPI'
      FixedChar = True
      Size = 160
    end
    object FatDevTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATDEV.TXFICM'
      FixedChar = True
      Size = 160
    end
    object FatDevOBSDEV: TStringField
      FieldName = 'OBSDEV'
      Origin = 'ISADE.FATDEV.OBSDEV'
      FixedChar = True
      Size = 240
    end
    object FatDevQTDDEV: TIntegerField
      FieldName = 'QTDDEV'
      Origin = 'ISADE.FATDEV.QTDDEV'
    end
    object FatDevSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATDEV.SEQITE'
    end
    object FatDevQTIDEV: TIntegerField
      FieldName = 'QTIDEV'
      Origin = 'ISADE.FATDEV.QTIDEV'
    end
    object FatDevLINDEV: TIntegerField
      FieldName = 'LINDEV'
      Origin = 'ISADE.FATDEV.LINDEV'
    end
    object FatDevQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATDEV.QTDVOL'
    end
    object FatDevINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATDEV.INFLIQ'
    end
    object FatDevTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATDEV.TOTLIQ'
    end
    object FatDevINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATDEV.INFBRT'
    end
    object FatDevTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATDEV.TOTBRT'
    end
    object FatDevBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATDEV.BASIPI'
    end
    object FatDevTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATDEV.TOTIPI'
    end
    object FatDevBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATDEV.BASICM'
    end
    object FatDevTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATDEV.TOTICM'
    end
    object FatDevBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATDEV.BASSUB'
    end
    object FatDevTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATDEV.TOTSUB'
    end
    object FatDevTOTDEV: TFloatField
      FieldName = 'TOTDEV'
      Origin = 'ISADE.FATDEV.TOTDEV'
    end
    object FatDevTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATDEV.TOTPIS'
    end
    object FatDevTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATDEV.TOTCOF'
    end
    object FatDevTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATDEV.TOTFRT'
    end
    object FatDevTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATDEV.TOTSEG'
    end
    object FatDevTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATDEV.TOTDES'
    end
    object FatDevBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATDEV.BSICMF'
    end
    object FatDevBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATDEV.BAICMF'
    end
    object FatDevTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATDEV.TOICMF'
    end
    object FatDevBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATDEV.BSICMS'
    end
    object FatDevBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATDEV.BAICMS'
    end
    object FatDevTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATDEV.TOICMS'
    end
    object FatDevBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATDEV.BSICMD'
    end
    object FatDevBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATDEV.BAICMD'
    end
    object FatDevTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATDEV.TOICMD'
    end
    object FatDevBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATDEV.BSIPIF'
    end
    object FatDevBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATDEV.BAIPIF'
    end
    object FatDevTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATDEV.TOIPIF'
    end
    object FatDevBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATDEV.BSIPIS'
    end
    object FatDevBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATDEV.BAIPIS'
    end
    object FatDevTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATDEV.TOIPIS'
    end
    object FatDevBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATDEV.BSIPID'
    end
    object FatDevBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATDEV.BAIPID'
    end
    object FatDevTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATDEV.TOIPID'
    end
    object FatDevTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATDEV.TOTGER'
    end
    object FatDevBASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.FATDEV.BASCOM'
    end
    object FatDevTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.FATDEV.TOTCOM'
    end
    object FatDevTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATDEV.TOTDSR'
    end
    object FatDevDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATDEV.DESREG'
      FixedChar = True
      Size = 100
    end
    object FatDevCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATDEV.CODUSU'
    end
    object FatDevATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATDEV.ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatDevLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATDEV.LANEST'
      FixedChar = True
      Size = 3
    end
    object FatDevINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATDEV.INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatDevCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATDEV.CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATDEV.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatDevCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATDEV.CODIPI'
      FixedChar = True
      Size = 30
    end
    object FatDevTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATDEV.TIPIPI'
      FixedChar = True
      Size = 7
    end
    object FatDevTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATDEV.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatDevREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATDEV.REDIPI'
    end
    object FatDevBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATDEV.BSCIPI'
    end
    object FatDevCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATDEV.CODICM'
      FixedChar = True
    end
    object FatDevTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATDEV.TIPICM'
      FixedChar = True
      Size = 7
    end
    object FatDevTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATDEV.TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatDevREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATDEV.REDICM'
    end
    object FatDevBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATDEV.BSCICM'
    end
    object FatDevINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATDEV.INCREV'
    end
    object FatDevINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATDEV.INCFIN'
    end
    object FatDevOBSMDV: TMemoField
      FieldName = 'OBSMDV'
      Origin = 'ISADE.FATDEV.OBSMDV'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevSEQREG: TStringField
      FieldName = 'SEQREG'
      Origin = 'ISADE.FATDEV.SEQREG'
      FixedChar = True
      Size = 22
    end
    object FatDevFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.FATDEV.FLGDIF'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGDEV: TStringField
      FieldName = 'FLGDEV'
      Origin = 'ISADE.FATDEV.FLGDEV'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATDEV.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatDevSITDEV: TStringField
      FieldName = 'SITDEV'
      Origin = 'ISADE.FATDEV.SITDEV'
      FixedChar = True
      Size = 45
    end
    object FatDevCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATDEV.CODCLI'
    end
    object FatDevCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATDEV.CODVEN'
    end
    object FatDevMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATDEV.MODPFA'
      FixedChar = True
    end
    object FatDevFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATDEV.FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatDevHRCDEV: TStringField
      FieldName = 'HRCDEV'
      Origin = 'ISADE.FATDEV.HRCDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevDTCDEV: TDateTimeField
      FieldName = 'DTCDEV'
      Origin = 'ISADE.FATDEV.DTCDEV'
    end
    object FatDevUSUCFT: TIntegerField
      FieldName = 'USUCFT'
      Origin = 'ISADE.FATDEV.USUCFT'
    end
    object FatDevOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      Origin = 'ISADE.FATDEV.OBSCFT'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.FATDEV.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGFSC: TStringField
      FieldName = 'FLGFSC'
      Origin = 'ISADE.FATDEV.FLGFSC'
      FixedChar = True
      Size = 3
    end
    object FatDevSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.FATDEV.SERNOT'
      FixedChar = True
      Size = 3
    end
    object FatDevMODDEV: TStringField
      FieldName = 'MODDEV'
      Origin = 'ISADE.FATDEV.MODDEV'
      FixedChar = True
    end
    object FatDevOB1DEV: TStringField
      FieldName = 'OB1DEV'
      Origin = 'ISADE.FATDEV.OB1DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB2DEV: TStringField
      FieldName = 'OB2DEV'
      Origin = 'ISADE.FATDEV.OB2DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB3DEV: TStringField
      FieldName = 'OB3DEV'
      Origin = 'ISADE.FATDEV.OB3DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB4DEV: TStringField
      FieldName = 'OB4DEV'
      Origin = 'ISADE.FATDEV.OB4DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB5DEV: TStringField
      FieldName = 'OB5DEV'
      Origin = 'ISADE.FATDEV.OB5DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB6DEV: TStringField
      FieldName = 'OB6DEV'
      Origin = 'ISADE.FATDEV.OB6DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB7DEV: TStringField
      FieldName = 'OB7DEV'
      Origin = 'ISADE.FATDEV.OB7DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB8DEV: TStringField
      FieldName = 'OB8DEV'
      Origin = 'ISADE.FATDEV.OB8DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATDEV.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatDevNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.FATDEV.NOMENT'
      FixedChar = True
      Size = 70
    end
    object FatDevQTDDSE: TIntegerField
      FieldName = 'QTDDSE'
      Origin = 'ISADE.FATDEV.QTDDSE'
    end
    object FatDevSEQDSE: TIntegerField
      FieldName = 'SEQDSE'
      Origin = 'ISADE.FATDEV.SEQDSE'
    end
    object FatDevTOTDSE: TFloatField
      FieldName = 'TOTDSE'
      Origin = 'ISADE.FATDEV.TOTDSE'
    end
    object FatDevBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATDEV.BASISS'
    end
    object FatDevTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATDEV.TOTISS'
    end
    object FatDevTOTFAT: TFloatField
      FieldName = 'TOTFAT'
      Origin = 'ISADE.FATDEV.TOTFAT'
    end
    object FatDevFLGTOT: TStringField
      FieldName = 'FLGTOT'
      Origin = 'ISADE.FATDEV.FLGTOT'
      FixedChar = True
      Size = 3
    end
    object FatDevCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATDEV.CODTCL'
    end
    object FatDevFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATDEV.FLGENV'
      FixedChar = True
      Size = 3
    end
    object FatDevNFSCLI: TIntegerField
      FieldName = 'NFSCLI'
      Origin = 'ISADE.FATDEV.NFSCLI'
    end
    object FatDevCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATDEV.CODTRA'
    end
    object FatDevCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Origin = 'ISADE.FATDEV.CEFCLI'
      Size = 8
    end
    object FatDevTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Origin = 'ISADE.FATDEV.TEFCLI'
      Size = 10
    end
    object FatDevENFCLI: TStringField
      FieldName = 'ENFCLI'
      Origin = 'ISADE.FATDEV.ENFCLI'
      FixedChar = True
      Size = 70
    end
    object FatDevRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Origin = 'ISADE.FATDEV.RFFCLI'
      FixedChar = True
      Size = 40
    end
    object FatDevNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Origin = 'ISADE.FATDEV.NRFCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Origin = 'ISADE.FATDEV.BAFCLI'
      FixedChar = True
    end
    object FatDevCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Origin = 'ISADE.FATDEV.CIFCLI'
      FixedChar = True
    end
    object FatDevUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Origin = 'ISADE.FATDEV.UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatDevID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.FATDEV.ID_FINUFF'
    end
    object FatDevID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.FATDEV.ID_FINCIF'
    end
    object FatDevID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.FATDEV.ID_TRAUFE'
    end
    object FatDevID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.FATDEV.ID_TRACIE'
    end
    object FatDevID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.FATDEV.ID_FINUFE'
    end
    object FatDevID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.FATDEV.ID_FINCIE'
    end
    object FatDevID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.FATDEV.ID_ESTSIP'
    end
    object FatDevTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.FATDEV.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatDevNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.FATDEV.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object FatDevTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.FATDEV.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatDevNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.FATDEV.NFECOF'
      FixedChar = True
      Size = 2
    end
    object FatDevFLGNOT: TStringField
      FieldName = 'FLGNOT'
      Origin = 'ISADE.FATDEV.FLGNOT'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.FATDEV.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.FATDEV.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.FATDEV.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object FatDevDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.FATDEV.DTENFE'
    end
    object FatDevRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.FATDEV.RECNFE'
      FixedChar = True
      Size = 15
    end
    object FatDevPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.FATDEV.PRONFE'
      FixedChar = True
      Size = 15
    end
    object FatDevLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.FATDEV.LOTNFE'
    end
    object FatDevDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.FATDEV.DTEPNF'
    end
    object FatDevHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.FATDEV.HREPNF'
      FixedChar = True
      Size = 8
    end
    object FatDevDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.FATDEV.DOPNFE'
    end
    object FatDevHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.FATDEV.HRENFE'
      FixedChar = True
      Size = 8
    end
    object FatDevUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.FATDEV.USUNFE'
    end
    object FatDevIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.FATDEV.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.FATDEV.RETNFE'
      Size = 100
    end
    object FatDevDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.FATDEV.DTCNFE'
    end
    object FatDevHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.FATDEV.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object FatDevPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.FATDEV.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object FatDevDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.FATDEV.DTECNE'
    end
    object FatDevHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.FATDEV.HRECNE'
      FixedChar = True
      Size = 8
    end
    object FatDevARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.FATDEV.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
  end
  object FatDv2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFatDev
    SQL.Strings = (
      'Select FatDv2.CodEmp,'
      '           FatDv2.DteRes,'
      '           FatDv2.NumRes,'
      '           FatDv2.SeqLib,'
      '           FatDv2.SeqFat,'
      '           FatDv2.SeqDev,'
      '           FatDv2.SeqDv2,'
      '           FatDv2.DesDv2,'
      '           FatDv2.QtpDv2,'
      '           FatDv2.QtdDv2,'
      '           FatDv2.UltQtd,'
      '           FatDv2.QtdRma,'
      '           FatDv2.SldDv2,'
      
        '           FatDv2.CodGru || _UNICODE_FSS '#39'.'#39' || FatDv2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || FatDv2.CodPro as CodIte From FatDv2'
      'Where FatDv2.CodEmp = :CodEmp'
      '     and FatDv2.DteRes = :DteRes'
      '     and FatDv2.NumRes = :NumRes'
      '     and FatDv2.SeqLib = :SeqLib'
      '     and FatDv2.SeqFat = :SeqFat'
      '     and FatDv2.SeqDev = :SeqDev'
      'Order by FatDv2.NroDv2')
    UpdateObject = UpDv2
    ValidateWithMask = True
    Left = 2
    Top = 241
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
      end
      item
        DataType = ftInteger
        Name = 'SEQDEV'
        ParamType = ptInput
      end>
    object FatDv2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'CODITE'
      Size = 14
    end
    object FatDv2DESDV2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 39
      FieldName = 'DESDV2'
      Origin = 'ISADE.FATDV2.DESDV2'
      FixedChar = True
      Size = 70
    end
    object FatDv2QTPDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTPDV2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2QTDDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTDDV2'
      Origin = 'ISADE.FATDV2.QTDDV2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2ULTQTD: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'ULTQTD'
      Origin = 'ISADE.FATDV2.ULTQTD'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2QTDRMA: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTDRMA'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2SLDDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'SLDDV2'
      Origin = 'ISADE.FATDV2.SLDDV2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatDv2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatDv2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatDv2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatDv2SEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatDv2SEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Visible = False
    end
    object FatDv2SEQDV2: TIntegerField
      FieldName = 'SEQDV2'
      Visible = False
    end
  end
  object DsFatDv2: TDataSource
    DataSet = FatDv2
    OnDataChange = DsFatDv2DataChange
    Left = 30
    Top = 241
  end
  object DsFatDev: TDataSource
    DataSet = FatDev
    Left = 30
    Top = 213
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 2
    Top = 297
  end
  object UpFatDev: TUpdateSQL
    ModifySQL.Strings = (
      'update FatDev'
      'set'
      '  NUMNFS = :NUMNFS,'
      '  DTEDEV = :DTEDEV,'
      '  HREDEV = :HREDEV,'
      '  UFEDEV = :UFEDEV,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  NRONFS = :NRONFS,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTDEV = :FRTDEV,'
      '  MARDEV = :MARDEV,'
      '  NRODEV = :NRODEV,'
      '  ESPDEV = :ESPDEV,'
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
      '  OBSDEV = :OBSDEV,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  QTDVOL = :QTDVOL,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  OBSMDV = :OBSMDV,'
      '  SEQREG = :SEQREG,'
      '  FLGDEV = :FLGDEV,'
      '  FLGATU = :FLGATU,'
      '  SITDEV = :SITDEV,'
      '  FLGNFS = :FLGNFS,'
      '  FLGFSC = :FLGFSC,'
      '  SERNOT = :SERNOT,'
      '  OB1DEV = :OB1DEV,'
      '  OB2DEV = :OB2DEV,'
      '  OB3DEV = :OB3DEV,'
      '  OB4DEV = :OB4DEV,'
      '  OB5DEV = :OB5DEV,'
      '  OB6DEV = :OB6DEV,'
      '  OB7DEV = :OB7DEV,'
      '  OB8DEV = :OB8DEV,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT,'
      '  NFSCLI = :NFSCLI,'
      '  CEFCLI = :CEFCLI,'
      '  TEFCLI = :TEFCLI,'
      '  ENFCLI = :ENFCLI,'
      '  RFFCLI = :RFFCLI,'
      '  NRFCLI = :NRFCLI,'
      '  BAFCLI = :BAFCLI,'
      '  CIFCLI = :CIFCLI,'
      '  UFFCLI = :UFFCLI,'
      '  ID_FINUFF = :ID_FINUFF,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  ID_TRAUFE = :ID_TRAUFE,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  ID_ESTSIP = :ID_ESTSIP,'
      '  FLGNOT = :FLGNOT,'
      '  CODTRA = :CODTRA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV')
    InsertSQL.Strings = (
      'insert into FatDev'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, SEQDEV, NUMNFS, DTEDE' +
        'V, '
      'HREDEV, '
      
        '   UFEDEV, CODPFA, TIPPFA, DSCREG, PERPIS, PERCOF, CODFIL, QTDNF' +
        'S, '
      'NRONFS, '
      
        '   NROSUF, FLGAVI, CGCCLI, INSCLI, CODCF1, CODCF2, FRTDEV, FLGEN' +
        'T, '
      'FLGSAI, '
      
        '   DESNAT, INSSUB, TIPFRT, MARDEV, NRODEV, ESPDEV, NOMTRA, CGCTR' +
        'A, '
      'INSTRA, '
      
        '   CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTRA, UFETR' +
        'A, '
      'PLCTRA, '
      
        '   UFEPLC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCL' +
        'I, UFECLI, '
      
        '   INECLI, CGECLI, TXFIPI, TXFICM, OBSDEV, QTDDEV, SEQITE, QTIDE' +
        'V, LINDEV, '
      
        '   QTDVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIPI, TOTIPI, BASIC' +
        'M, TOTICM, '
      
        '   BASSUB, TOTSUB, TOTDEV, TOTPIS, TOTCOF, TOTFRT, TOTSEG, TOTDE' +
        'S, '
      'BSICMF, '
      
        '   BAICMF, TOICMF, BSICMS, BAICMS, TOICMS, BSICMD, BAICMD, TOICM' +
        'D, '
      'BSIPIF, '
      
        '   BAIPIF, TOIPIF, BSIPIS, BAIPIS, TOIPIS, BSIPID, BAIPID, TOIPI' +
        'D, TOTGER, '
      
        '   BASCOM, TOTCOM, TOTDSR, DESREG, CODUSU, ATUEST, LANEST, INTFI' +
        'N, '
      'CONSUM, '
      
        '   FLGCTB, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPIC' +
        'M, TRBICM, '
      
        '   REDICM, BSCICM, INCREV, INCFIN, OBSMDV, SEQREG, FLGDIF, FLGDE' +
        'V, '
      'FLGATU, '
      
        '   SITDEV, CODCLI, CODVEN, MODPFA, FLGNFS, HRCDEV, DTCDEV, USUCF' +
        'T, '
      'OBSCFT, '
      
        '   FLGSIN, FLGFSC, SERNOT, MODDEV, OB1DEV, OB2DEV, OB3DEV, OB4DE' +
        'V, '
      'OB5DEV, '
      
        '   OB6DEV, OB7DEV, OB8DEV, FLGIMP, NOMENT, QTDDSE, SEQDSE, TOTDS' +
        'E, '
      'BASISS, '
      
        '   TOTISS, TOTFAT, FLGTOT, CODTCL, FLGENV, NFSCLI, CEFCLI, TEFCL' +
        'I, '
      'ENFCLI, '
      
        '   RFFCLI, NRFCLI, BAFCLI, CIFCLI, UFFCLI, ID_FINUFF, ID_FINCIF,' +
        ' ID_TRAUFE, '
      
        '   ID_TRACIE, ID_FINUFE, ID_FINCIE, ID_ESTSIP, TRBPIS, NFEPIS, T' +
        'RBCOF, '
      
        '   NFECOF, FLGNOT, FLGNFE, ENVNFE, SEQNFE, DTENFE, RECNFE, PRONF' +
        'E, '
      'LOTNFE, '
      
        '   DTEPNF, HREPNF, DOPNFE, HRENFE, USUNFE, IMPNFE, RETNFE, DTCNF' +
        'E, '
      'HRCNFE, '
      '   PRCNFE, DTECNE, HRECNE, ARQNFE, CODTRA)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQDEV, :NUMNFS' +
        ', '
      ':DTEDEV, '
      
        '   :HREDEV, :UFEDEV, :CODPFA, :TIPPFA, :DSCREG, :PERPIS, :PERCOF' +
        ', :CODFIL, '
      
        '   :QTDNFS, :NRONFS, :NROSUF, :FLGAVI, :CGCCLI, :INSCLI, :CODCF1' +
        ', :CODCF2, '
      
        '   :FRTDEV, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT, :MARDEV' +
        ', '
      ':NRODEV, '
      
        '   :ESPDEV, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA, :ENDTRA' +
        ', '
      ':REFTRA, '
      
        '   :NUMTRA, :BAITRA, :CIDTRA, :UFETRA, :PLCTRA, :UFEPLC, :CEPCLI' +
        ', :TENCLI, '
      
        '   :ENDCLI, :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI' +
        ', :CGECLI, '
      
        '   :TXFIPI, :TXFICM, :OBSDEV, :QTDDEV, :SEQITE, :QTIDEV, :LINDEV' +
        ', :QTDVOL, '
      
        '   :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTDEV, :TOTPIS, :TOTCOF, :TOTFRT, :TOTSEG' +
        ', '
      ':TOTDES, '
      
        '   :BSICMF, :BAICMF, :TOICMF, :BSICMS, :BAICMS, :TOICMS, :BSICMD' +
        ', :BAICMD, '
      
        '   :TOICMD, :BSIPIF, :BAIPIF, :TOIPIF, :BSIPIS, :BAIPIS, :TOIPIS' +
        ', :BSIPID, '
      
        '   :BAIPID, :TOIPID, :TOTGER, :BASCOM, :TOTCOM, :TOTDSR, :DESREG' +
        ', '
      ':CODUSU, '
      
        '   :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGCTB, :CODIPI, :TIPIPI' +
        ', :TRBIPI, '
      
        '   :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM' +
        ', :INCREV, '
      
        '   :INCFIN, :OBSMDV, :SEQREG, :FLGDIF, :FLGDEV, :FLGATU, :SITDEV' +
        ', :CODCLI, '
      
        '   :CODVEN, :MODPFA, :FLGNFS, :HRCDEV, :DTCDEV, :USUCFT, :OBSCFT' +
        ', '
      ':FLGSIN, '
      
        '   :FLGFSC, :SERNOT, :MODDEV, :OB1DEV, :OB2DEV, :OB3DEV, :OB4DEV' +
        ', '
      ':OB5DEV, '
      
        '   :OB6DEV, :OB7DEV, :OB8DEV, :FLGIMP, :NOMENT, :QTDDSE, :SEQDSE' +
        ', '
      ':TOTDSE, '
      
        '   :BASISS, :TOTISS, :TOTFAT, :FLGTOT, :CODTCL, :FLGENV, :NFSCLI' +
        ', :CEFCLI, '
      
        '   :TEFCLI, :ENFCLI, :RFFCLI, :NRFCLI, :BAFCLI, :CIFCLI, :UFFCLI' +
        ', :ID_FINUFF, '
      
        '   :ID_FINCIF, :ID_TRAUFE, :ID_TRACIE, :ID_FINUFE, :ID_FINCIE, :' +
        'ID_ESTSIP, '
      
        '   :TRBPIS, :NFEPIS, :TRBCOF, :NFECOF, :FLGNOT, :FLGNFE, :ENVNFE' +
        ', :SEQNFE, '
      
        '   :DTENFE, :RECNFE, :PRONFE, :LOTNFE, :DTEPNF, :HREPNF, :DOPNFE' +
        ', '
      ':HRENFE, '
      
        '   :USUNFE, :IMPNFE, :RETNFE, :DTCNFE, :HRCNFE, :PRCNFE, :DTECNE' +
        ', '
      ':HRECNE, '
      '   :ARQNFE, :CODTRA)')
    DeleteSQL.Strings = (
      'delete from FatDev'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV')
    Left = 58
    Top = 213
  end
  object UpDv2: TUpdateSQL
    ModifySQL.Strings = (
      'update FatDv2'
      'set'
      '  ULTQTD = :ULTQTD,'
      '  QTDRMA = :QTDRMA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV and'
      '  SEQDV2 = :OLD_SEQDV2')
    InsertSQL.Strings = (
      'insert into FatDv2'
      
        '(CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, SEQDEV, SEQDV2, DESDV2,' +
        ' '
      'QTPDV2, QTDDV2, ULTQTD, QTDRMA, SLDDV2)'
      'values'
      '(:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQDEV, :SEQDV2, '
      ':DESDV2, :QTPDV2, :QTDDV2, :ULTQTD, :QTDRMA, :SLDDV2)')
    DeleteSQL.Strings = (
      'delete from FatDv2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV and'
      '  SEQDV2 = :OLD_SEQDV2')
    Left = 62
    Top = 245
  end
end
