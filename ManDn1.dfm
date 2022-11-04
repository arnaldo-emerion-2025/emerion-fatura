inherited fmManDn1: TfmManDn1
  Left = 0
  Caption = 'Emissão de Notas Fiscais de Entrada'
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
    Left = 635
    Top = 463
    Width = 151
    Height = 16
    Caption = 'F12-Confirmar/Esc-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label44: TLabel
    Left = 594
    Top = 354
    Width = 102
    Height = 14
    Caption = 'Itens Devolvidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label43: TLabel
    Left = 698
    Top = 354
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
  object Shape4: TShape
    Left = 3
    Top = 460
    Width = 783
    Height = 1
  end
  object Shape2: TShape
    Left = 2
    Top = 376
    Width = 1
    Height = 85
  end
  object Shape1: TShape
    Left = 3
    Top = 376
    Width = 783
    Height = 1
  end
  object Shape5: TShape
    Left = 785
    Top = 376
    Width = 1
    Height = 85
  end
  object Label20: TLabel
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
  object Label21: TLabel
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
    Left = 534
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
  object Label35: TLabel
    Left = 487
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
    Left = 648
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
  object Label42: TLabel
    Left = 677
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
  object EdSeqDv2: TdxDBColorCurrencyEdit
    Left = 704
    Top = 350
    Width = 82
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
    DataField = 'SEQDV2'
    DataSource = DsDv2
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNroDv2: TPanel
    Left = 706
    Top = 354
    Width = 75
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
    TabOrder = 0
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
    TabOrder = 2
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTFRT'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
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
    TabOrder = 3
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'BASICM'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
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
    TabOrder = 4
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTICM'
    DataSource = DsDev
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
    TabOrder = 5
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTSEG'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
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
    TabOrder = 6
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTDES'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
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
    TabOrder = 7
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'BASSUB'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotSub: TdxDBColorCurrencyEdit
    Left = 482
    Top = 394
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
    TabOrder = 8
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTSUB'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotIpi: TdxDBColorCurrencyEdit
    Left = 482
    Top = 434
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
    TabOrder = 9
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTIPI'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotGer: TdxDBColorCurrencyEdit
    Left = 637
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
    TabOrder = 10
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTGER'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotFat: TdxDBColorCurrencyEdit
    Left = 637
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
    TabOrder = 11
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTDEV'
    DataSource = DsDev
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnBasIcm: TPanel
    Left = 7
    Top = 398
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
    TabOrder = 12
  end
  object pnTotFrt: TPanel
    Left = 7
    Top = 438
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
    TabOrder = 13
  end
  object pnTotSeg: TPanel
    Left = 146
    Top = 438
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
    TabOrder = 14
  end
  object pnTotIcm: TPanel
    Left = 145
    Top = 397
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
    TabOrder = 15
  end
  object pnBasSub: TPanel
    Left = 278
    Top = 398
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
    TabOrder = 16
  end
  object pnTotDes: TPanel
    Left = 278
    Top = 438
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
    TabOrder = 17
  end
  object pnTotIpi: TPanel
    Left = 484
    Top = 438
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
  object pnTotSub: TPanel
    Left = 484
    Top = 398
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
    TabOrder = 19
  end
  object pnTotFat: TPanel
    Left = 640
    Top = 398
    Width = 140
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
    Top = 438
    Width = 141
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
    TabOrder = 21
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 124
    BevelOuter = bvNone
    TabOrder = 22
    OnExit = Panel1Exit
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 796
      Height = 482
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnPaint = PaintBox1Paint
    end
    object Label5: TLabel
      Left = 3
      Top = 102
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
    object Label13: TLabel
      Left = 3
      Top = 78
      Width = 54
      Height = 14
      Caption = 'Vendedor'
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
      Width = 37
      Height = 14
      Caption = 'Cliente'
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
    object Label8: TLabel
      Left = 3
      Top = 7
      Width = 121
      Height = 14
      Caption = 'Número da Nota Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 271
      Top = 7
      Width = 122
      Height = 14
      Caption = 'Número do Pedido    :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 611
      Top = 7
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
    object Label54: TLabel
      Left = 670
      Top = 55
      Width = 41
      Height = 14
      Caption = 'Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 722
      Top = 55
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
    object Label14: TLabel
      Left = 671
      Top = 7
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
    object Label24: TLabel
      Left = 131
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
    object Label26: TLabel
      Left = 131
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
    object Label6: TLabel
      Left = 131
      Top = 55
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
      Left = 131
      Top = 31
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
    object Label23: TLabel
      Left = 131
      Top = 7
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
    object EdUfeDev: TdxDBColorEdit
      Left = 741
      Top = 51
      Width = 45
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
      DataField = 'UFEDEV'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumNfs: TdxDBColorEdit
      Left = 141
      Top = 3
      Width = 103
      Hint = 'Número da Nota Fiscal Emitida'
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
      OnKeyPress = EdNumNfsKeyPress
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMNFS'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
      Left = 405
      Top = 3
      Width = 103
      Hint = 'Número do Pedido'
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
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 141
      Top = 51
      Width = 103
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
      Style.ButtonTransparence = ebtInactive
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsDev
      ReadOnly = False
      CorDeFoco = clInfoBk
      Height = 23
      StoredValues = 65
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 141
      Top = 27
      Width = 103
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
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodVen: TdxDBColorEdit
      Left = 141
      Top = 74
      Width = 103
      Hint = 'Vendedor'
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
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomEmp: TdxDBColorEdit
      Left = 269
      Top = 27
      Width = 517
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
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomEmp: TPanel
      Left = 274
      Top = 31
      Width = 508
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
      Left = 269
      Top = 51
      Width = 389
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
      TabOrder = 10
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 274
      Top = 55
      Width = 380
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object pnUfeDev: TPanel
      Left = 743
      Top = 55
      Width = 39
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object EdNomVen: TdxDBColorEdit
      Left = 269
      Top = 74
      Width = 517
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
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomVen: TPanel
      Left = 274
      Top = 78
      Width = 508
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 141
      Top = 98
      Width = 103
      Hint = 'Padrão de Faturamento'
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
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 269
      Top = 98
      Width = 517
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
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 274
      Top = 102
      Width = 508
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object EdDteDev: TdxDBColorDateEdit
      Left = 683
      Top = 3
      Width = 103
      Hint = 'Data de Emissão da Devolução'
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
      OnKeyUp = EdDteDevKeyUp
      OnMouseUp = EdDteDevMouseUp
      Alignment = taCenter
      AutoSize = False
      DataField = 'DTEDEV'
      DataSource = DsDev
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumRes: TPanel
      Left = 409
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
      TabOrder = 9
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
      TabOrder = 15
    end
  end
  object grLabel1: TdxDBGraphicEdit
    Left = -1
    Top = 123
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
    TabOrder = 23
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 38
  end
  object grPe21: TdxDBGraphicEdit
    Left = -1
    Top = 160
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
    TabOrder = 24
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 141
  end
  object grDv2: ThGrid
    Left = 1
    Top = 162
    Width = 784
    Height = 135
    Selected.Strings = (
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'7'#9' '
      'CODCFO'#9'7'#9' '
      'CLSIPI'#9'10'#9' '
      'CODST1'#9'4'#9' '
      'CODST2'#9'4'#9' '
      'ULTQTD'#9'12'#9' '
      'VLQDV2'#9'11'#9' '
      'IPIDV2'#9'7'#9' '
      'ICMDV2'#9'7'#9' '
      'TOTDV2'#9'12'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDv2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 25
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel2: TPanel
    Left = 1
    Top = 125
    Width = 783
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
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
      Left = 237
      Top = 8
      Width = 44
      Height = 14
      Caption = 'Cl. Fisc.'
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
      Left = 651
      Top = 8
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
    object Label3: TLabel
      Left = 400
      Top = 8
      Width = 71
      Height = 14
      Alignment = taRightJustify
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
    object Label7: TLabel
      Left = 501
      Top = 8
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Unit'
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
      Left = 604
      Top = 8
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
    object Label9: TLabel
      Left = 719
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
    object Label11: TLabel
      Left = 308
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
      Left = 343
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
    object Label50: TLabel
      Left = 164
      Top = 8
      Width = 31
      Height = 14
      Caption = 'CFOP'
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
    Left = 2
    Top = 326
    Width = 626
    Height = 47
    BevelOuter = bvNone
    TabOrder = 27
    object EdObsPe2: TdxDBColorEdit
      Left = -1
      Top = 24
      Width = 628
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
      DataField = 'OBSDV2'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDesPe2: TdxDBColorEdit
      Left = -1
      Top = 0
      Width = 628
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
      TabOrder = 0
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESDV2'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsDv2: TPanel
      Left = 3
      Top = 28
      Width = 620
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
    object pnDesDv2: TPanel
      Left = 3
      Top = 3
      Width = 620
      Height = 14
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
  object Panel3: TPanel
    Left = 1
    Top = 302
    Width = 786
    Height = 22
    BevelOuter = bvNone
    TabOrder = 28
    object EdCodGru: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 47
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 45
      Top = -1
      Width = 52
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 96
      Top = -1
      Width = 62
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpDv2: TdxDBColorCurrencyEdit
      Left = 378
      Top = -1
      Width = 97
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
      DataField = 'ULTQTD'
      DataSource = DsDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluDv2: TdxDBColorCurrencyEdit
      Left = 474
      Top = -1
      Width = 94
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQDV2'
      DataSource = DsDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiDv2: TdxDBColorCurrencyEdit
      Left = 567
      Top = -1
      Width = 61
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
      DataField = 'IPIDV2'
      DataSource = DsDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmDv2: TdxDBColorCurrencyEdit
      Left = 627
      Top = -1
      Width = 61
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
      DataField = 'ICMDV2'
      DataSource = DsDv2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 304
      Top = -1
      Width = 30
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 333
      Top = -1
      Width = 46
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotDv2: TdxDBColorCurrencyEdit
      Left = 687
      Top = -1
      Width = 99
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
      DataField = 'TOTDV2'
      DataSource = DsDv2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 157
      Top = -1
      Width = 60
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCFO'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 215
      Top = -1
      Width = 90
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsDv2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object FatDev: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatDev'
      'Where FatDev.CodEmp = :CodEmp'
      '     and FatDev.DteRes = :DteRes'
      '     and FatDev.NumRes = :NumRes'
      '     and FatDev.SeqLib = :SeqLib'
      '     and FatDev.SeqFat = :SeqFat'
      '     and FatDev.SeqDev = :SeqDev')
    UpdateObject = UpDev
    ValidateWithMask = True
    Left = 2
    Top = 212
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
    end
    object FatDevDTERES: TDateTimeField
      FieldName = 'DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object FatDevNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object FatDevSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
    end
    object FatDevSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
    end
    object FatDevSEQDEV: TIntegerField
      FieldName = 'SEQDEV'
    end
    object FatDevNUMNFS: TIntegerField
      FieldName = 'NUMNFS'
    end
    object FatDevDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      EditMask = '!99/99/9999;1;_'
    end
    object FatDevHREDEV: TStringField
      FieldName = 'HREDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevUFEDEV: TStringField
      FieldName = 'UFEDEV'
      FixedChar = True
      Size = 2
    end
    object FatDevCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object FatDevTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object FatDevDSCREG: TFloatField
      FieldName = 'DSCREG'
    end
    object FatDevPERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object FatDevPERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object FatDevCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object FatDevQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
    end
    object FatDevNRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object FatDevNROSUF: TStringField
      FieldName = 'NROSUF'
      FixedChar = True
    end
    object FatDevFLGAVI: TStringField
      FieldName = 'FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatDevCGCCLI: TStringField
      FieldName = 'CGCCLI'
      FixedChar = True
      Size = 18
    end
    object FatDevINSCLI: TStringField
      FieldName = 'INSCLI'
      FixedChar = True
      Size = 18
    end
    object FatDevCODCF1: TStringField
      FieldName = 'CODCF1'
      FixedChar = True
      Size = 15
    end
    object FatDevCODCF2: TStringField
      FieldName = 'CODCF2'
      FixedChar = True
      Size = 15
    end
    object FatDevFRTDEV: TStringField
      FieldName = 'FRTDEV'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGENT: TStringField
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGSAI: TStringField
      FieldName = 'FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatDevDESNAT: TStringField
      FieldName = 'DESNAT'
      FixedChar = True
      Size = 100
    end
    object FatDevINSSUB: TStringField
      FieldName = 'INSSUB'
      FixedChar = True
      Size = 18
    end
    object FatDevTIPFRT: TStringField
      FieldName = 'TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatDevMARDEV: TStringField
      FieldName = 'MARDEV'
      FixedChar = True
      Size = 15
    end
    object FatDevNRODEV: TStringField
      FieldName = 'NRODEV'
      FixedChar = True
      Size = 15
    end
    object FatDevESPDEV: TStringField
      FieldName = 'ESPDEV'
      FixedChar = True
      Size = 15
    end
    object FatDevNOMTRA: TStringField
      FieldName = 'NOMTRA'
      FixedChar = True
      Size = 70
    end
    object FatDevCGCTRA: TStringField
      FieldName = 'CGCTRA'
      FixedChar = True
      Size = 18
    end
    object FatDevINSTRA: TStringField
      FieldName = 'INSTRA'
      FixedChar = True
      Size = 18
    end
    object FatDevCEPTRA: TStringField
      FieldName = 'CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatDevTENTRA: TStringField
      FieldName = 'TENTRA'
      FixedChar = True
      Size = 10
    end
    object FatDevENDTRA: TStringField
      FieldName = 'ENDTRA'
      FixedChar = True
      Size = 40
    end
    object FatDevREFTRA: TStringField
      FieldName = 'REFTRA'
      FixedChar = True
      Size = 40
    end
    object FatDevNUMTRA: TStringField
      FieldName = 'NUMTRA'
      FixedChar = True
      Size = 10
    end
    object FatDevBAITRA: TStringField
      FieldName = 'BAITRA'
      FixedChar = True
    end
    object FatDevCIDTRA: TStringField
      FieldName = 'CIDTRA'
      FixedChar = True
    end
    object FatDevUFETRA: TStringField
      FieldName = 'UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatDevPLCTRA: TStringField
      FieldName = 'PLCTRA'
      FixedChar = True
      Size = 7
    end
    object FatDevUFEPLC: TStringField
      FieldName = 'UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatDevCEPCLI: TStringField
      FieldName = 'CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatDevTENCLI: TStringField
      FieldName = 'TENCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevENDCLI: TStringField
      FieldName = 'ENDCLI'
      FixedChar = True
      Size = 70
    end
    object FatDevREFCLI: TStringField
      FieldName = 'REFCLI'
      FixedChar = True
      Size = 40
    end
    object FatDevNUMCLI: TStringField
      FieldName = 'NUMCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevBAICLI: TStringField
      FieldName = 'BAICLI'
      FixedChar = True
    end
    object FatDevCIDCLI: TStringField
      FieldName = 'CIDCLI'
      FixedChar = True
    end
    object FatDevUFECLI: TStringField
      FieldName = 'UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatDevINECLI: TStringField
      FieldName = 'INECLI'
      FixedChar = True
      Size = 18
    end
    object FatDevCGECLI: TStringField
      FieldName = 'CGECLI'
      FixedChar = True
      Size = 18
    end
    object FatDevTXFIPI: TStringField
      FieldName = 'TXFIPI'
      FixedChar = True
      Size = 160
    end
    object FatDevTXFICM: TStringField
      FieldName = 'TXFICM'
      FixedChar = True
      Size = 160
    end
    object FatDevOBSDEV: TStringField
      FieldName = 'OBSDEV'
      FixedChar = True
      Size = 240
    end
    object FatDevQTDDEV: TIntegerField
      FieldName = 'QTDDEV'
    end
    object FatDevSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object FatDevQTIDEV: TIntegerField
      FieldName = 'QTIDEV'
    end
    object FatDevLINDEV: TIntegerField
      FieldName = 'LINDEV'
    end
    object FatDevQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
    end
    object FatDevINFLIQ: TFloatField
      FieldName = 'INFLIQ'
    end
    object FatDevTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object FatDevINFBRT: TFloatField
      FieldName = 'INFBRT'
    end
    object FatDevTOTBRT: TFloatField
      FieldName = 'TOTBRT'
    end
    object FatDevBASIPI: TFloatField
      FieldName = 'BASIPI'
    end
    object FatDevTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object FatDevBASICM: TFloatField
      FieldName = 'BASICM'
    end
    object FatDevTOTICM: TFloatField
      FieldName = 'TOTICM'
    end
    object FatDevBASSUB: TFloatField
      FieldName = 'BASSUB'
    end
    object FatDevTOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object FatDevTOTDEV: TFloatField
      FieldName = 'TOTDEV'
    end
    object FatDevTOTPIS: TFloatField
      FieldName = 'TOTPIS'
    end
    object FatDevTOTCOF: TFloatField
      FieldName = 'TOTCOF'
    end
    object FatDevTOTFRT: TFloatField
      FieldName = 'TOTFRT'
    end
    object FatDevTOTSEG: TFloatField
      FieldName = 'TOTSEG'
    end
    object FatDevTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object FatDevICMFRT: TFloatField
      FieldName = 'ICMFRT'
    end
    object FatDevBSICMF: TFloatField
      FieldName = 'BSICMF'
    end
    object FatDevBAICMF: TFloatField
      FieldName = 'BAICMF'
    end
    object FatDevTOICMF: TFloatField
      FieldName = 'TOICMF'
    end
    object FatDevICMSEG: TFloatField
      FieldName = 'ICMSEG'
    end
    object FatDevBSICMS: TFloatField
      FieldName = 'BSICMS'
    end
    object FatDevBAICMS: TFloatField
      FieldName = 'BAICMS'
    end
    object FatDevTOICMS: TFloatField
      FieldName = 'TOICMS'
    end
    object FatDevICMDES: TFloatField
      FieldName = 'ICMDES'
    end
    object FatDevBSICMD: TFloatField
      FieldName = 'BSICMD'
    end
    object FatDevBAICMD: TFloatField
      FieldName = 'BAICMD'
    end
    object FatDevTOICMD: TFloatField
      FieldName = 'TOICMD'
    end
    object FatDevIPIFRT: TFloatField
      FieldName = 'IPIFRT'
    end
    object FatDevBSIPIF: TFloatField
      FieldName = 'BSIPIF'
    end
    object FatDevBAIPIF: TFloatField
      FieldName = 'BAIPIF'
    end
    object FatDevTOIPIF: TFloatField
      FieldName = 'TOIPIF'
    end
    object FatDevIPISEG: TFloatField
      FieldName = 'IPISEG'
    end
    object FatDevBSIPIS: TFloatField
      FieldName = 'BSIPIS'
    end
    object FatDevBAIPIS: TFloatField
      FieldName = 'BAIPIS'
    end
    object FatDevTOIPIS: TFloatField
      FieldName = 'TOIPIS'
    end
    object FatDevIPIDES: TFloatField
      FieldName = 'IPIDES'
    end
    object FatDevBSIPID: TFloatField
      FieldName = 'BSIPID'
    end
    object FatDevBAIPID: TFloatField
      FieldName = 'BAIPID'
    end
    object FatDevTOIPID: TFloatField
      FieldName = 'TOIPID'
    end
    object FatDevTOTGER: TFloatField
      FieldName = 'TOTGER'
    end
    object FatDevBASCOM: TFloatField
      FieldName = 'BASCOM'
    end
    object FatDevTOTCOM: TFloatField
      FieldName = 'TOTCOM'
    end
    object FatDevTOTDSR: TFloatField
      FieldName = 'TOTDSR'
    end
    object FatDevDESREG: TStringField
      FieldName = 'DESREG'
      FixedChar = True
      Size = 100
    end
    object FatDevCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object FatDevATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatDevLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object FatDevINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatDevCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatDevCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object FatDevTIPIPI: TStringField
      FieldName = 'TIPIPI'
      FixedChar = True
      Size = 7
    end
    object FatDevTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatDevREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object FatDevBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object FatDevCODICM: TStringField
      FieldName = 'CODICM'
      FixedChar = True
    end
    object FatDevTIPICM: TStringField
      FieldName = 'TIPICM'
      FixedChar = True
      Size = 7
    end
    object FatDevTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatDevREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object FatDevBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object FatDevINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object FatDevINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object FatDevOBSMDV: TMemoField
      FieldName = 'OBSMDV'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevSEQREG: TStringField
      FieldName = 'SEQREG'
      FixedChar = True
      Size = 22
    end
    object FatDevFLGDIF: TStringField
      FieldName = 'FLGDIF'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGDEV: TStringField
      FieldName = 'FLGDEV'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatDevSITDEV: TStringField
      FieldName = 'SITDEV'
      FixedChar = True
      Size = 45
    end
    object FatDevCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object FatDevCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FatDevMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object FatDevFLGNFS: TStringField
      FieldName = 'FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatDevHRCDEV: TStringField
      FieldName = 'HRCDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevDTCDEV: TDateTimeField
      FieldName = 'DTCDEV'
    end
    object FatDevUSUCFT: TIntegerField
      FieldName = 'USUCFT'
    end
    object FatDevOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevFLGSIN: TStringField
      FieldName = 'FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGFSC: TStringField
      FieldName = 'FLGFSC'
      FixedChar = True
      Size = 3
    end
    object FatDevSERNOT: TStringField
      FieldName = 'SERNOT'
      FixedChar = True
      Size = 3
    end
    object FatDevMODDEV: TStringField
      FieldName = 'MODDEV'
      FixedChar = True
    end
    object FatDevOB1DEV: TStringField
      FieldName = 'OB1DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB2DEV: TStringField
      FieldName = 'OB2DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB3DEV: TStringField
      FieldName = 'OB3DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB4DEV: TStringField
      FieldName = 'OB4DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB5DEV: TStringField
      FieldName = 'OB5DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB6DEV: TStringField
      FieldName = 'OB6DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB7DEV: TStringField
      FieldName = 'OB7DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevOB8DEV: TStringField
      FieldName = 'OB8DEV'
      FixedChar = True
      Size = 80
    end
    object FatDevFLGIMP: TStringField
      FieldName = 'FLGIMP'
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
  end
  object FatDv2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatDv2.*,'
      '           IntStrZeros(SeqDv3,3) as ClaIpi,'
      
        '           FatDv2.CodSt1 || _UNICODE_FSS '#39' '#39' || FatDv2.CodSt2  a' +
        's CodSit,'
      
        '           FatDv2.CodGru || _UNICODE_FSS '#39'.'#39' || FatDv2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || FatDv2.CodPro as CodIte From FatDv2'
      'Where FatDv2.CodEmp = :CodEmp'
      '     and FatDv2.DteRes = :DteRes'
      '     and FatDv2.NumRes = :NumRes'
      '     and FatDv2.SeqLib = :SeqLib'
      '     and FatDv2.SeqFat = :SeqFat'
      '     and FatDv2.SeqDev = :SeqDev'
      
        'Order by FatDv2.CodEmp,FatDv2.DteRes,FatDv2.NumRes,FatDv2.SeqFat' +
        ',FatDv2.SeqDev,FatDv2.SeqDv2')
    ValidateWithMask = True
    Left = 2
    Top = 240
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
    object FatDv2CODGRU: TStringField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatDv2CODSUB: TStringField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatDv2CODPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatDv2CODCFO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCFO'
      FixedChar = True
      Size = 10
    end
    object FatDv2CLSIPI: TStringField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      FixedChar = True
      Size = 30
    end
    object FatDv2CODST1: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST1'
      FixedChar = True
      Size = 1
    end
    object FatDv2CODST2: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST2'
      FixedChar = True
      Size = 2
    end
    object FatDv2ULTQTD: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'ULTQTD'
      DisplayFormat = '###,###,##0'
    end
    object FatDv2VLQDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'VLQDV2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2IPIDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPIDV2'
      DisplayFormat = '###0'
    end
    object FatDv2ICMDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'ICMDV2'
      DisplayFormat = '###0'
    end
    object FatDv2TOTDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTDV2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatDv2CODITE: TStringField
      DisplayWidth = 17
      FieldName = 'CODITE'
      Visible = False
      Size = 14
    end
    object FatDv2CLAIPI: TStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'CLAIPI'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDv2CODSIT: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODSIT'
      Visible = False
      Size = 4
    end
    object FatDv2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = 'Und'
      DisplayWidth = 6
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2TOTIPI: TFloatField
      DisplayWidth = 14
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatDv2QTPDV2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'QTPDV2'
      Visible = False
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
    object FatDv2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object FatDv2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDv2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDv2DESDV2: TStringField
      FieldName = 'DESDV2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDv2OBSDV2: TStringField
      FieldName = 'OBSDV2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDv2REFDV2: TStringField
      FieldName = 'REFDV2'
      Visible = False
      FixedChar = True
    end
    object FatDv2LIQDV2: TFloatField
      FieldName = 'LIQDV2'
      Visible = False
    end
    object FatDv2BRTDV2: TFloatField
      FieldName = 'BRTDV2'
      Visible = False
    end
    object FatDv2LINDV2: TIntegerField
      FieldName = 'LINDV2'
      Visible = False
    end
    object FatDv2QTDDV2: TFloatField
      FieldName = 'QTDDV2'
      Visible = False
    end
    object FatDv2SLDDV2: TFloatField
      FieldName = 'SLDDV2'
      Visible = False
    end
    object FatDv2VLUDV2: TFloatField
      FieldName = 'VLUDV2'
      Visible = False
    end
    object FatDv2VCHDV2: TFloatField
      FieldName = 'VCHDV2'
      Visible = False
    end
    object FatDv2VREDV2: TFloatField
      FieldName = 'VREDV2'
      Visible = False
    end
    object FatDv2VCPDV2: TFloatField
      FieldName = 'VCPDV2'
      Visible = False
    end
    object FatDv2VPRDV2: TFloatField
      FieldName = 'VPRDV2'
      Visible = False
    end
    object FatDv2DSRDV2: TFloatField
      FieldName = 'DSRDV2'
      Visible = False
    end
    object FatDv2VDRDV2: TFloatField
      FieldName = 'VDRDV2'
      Visible = False
    end
    object FatDv2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object FatDv2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object FatDv2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object FatDv2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object FatDv2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatDv2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
    end
    object FatDv2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object FatDv2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object FatDv2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatDv2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object FatDv2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object FatDv2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object FatDv2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object FatDv2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object FatDv2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDv2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object FatDv2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object FatDv2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object FatDv2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object FatDv2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object FatDv2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object FatDv2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object FatDv2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2NRONFS: TIntegerField
      FieldName = 'NRONFS'
      Visible = False
    end
    object FatDv2SEQNFS: TIntegerField
      FieldName = 'SEQNFS'
      Visible = False
    end
    object FatDv2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object FatDv2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
    object FatDv2NROPE2: TIntegerField
      FieldName = 'NROPE2'
      Visible = False
    end
    object FatDv2CODVWA: TStringField
      FieldName = 'CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object FatDv2FLGREQ: TStringField
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2NRODV2: TIntegerField
      FieldName = 'NRODV2'
      Visible = False
    end
    object FatDv2SEQNFD: TIntegerField
      FieldName = 'SEQNFD'
      Visible = False
    end
    object FatDv2SEQDV3: TIntegerField
      FieldName = 'SEQDV3'
      Visible = False
    end
    object FatDv2QTDRMA: TFloatField
      FieldName = 'QTDRMA'
      Visible = False
    end
    object FatDv2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDv2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Visible = False
    end
    object FatDv2MRGSUB: TFloatField
      FieldName = 'MRGSUB'
      Visible = False
    end
    object FatDv2BASESB: TFloatField
      FieldName = 'BASESB'
      Visible = False
    end
  end
  object DsDv2: TDataSource
    DataSet = FatDv2
    OnDataChange = DsDv2DataChange
    Left = 30
    Top = 240
  end
  object DsDev: TDataSource
    DataSet = FatDev
    Left = 30
    Top = 212
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 30
    Top = 268
  end
  object UpDev: TUpdateSQL
    ModifySQL.Strings = (
      'update FatDev'
      'set'
      '  NUMNFS = :NUMNFS,'
      '  DTEDEV = :DTEDEV,'
      '  HREDEV = :HREDEV,'
      '  UFEDEV = :UFEDEV,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
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
      '  FRTDEV = :FRTDEV,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
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
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSDEV = :OBSDEV,'
      '  QTDDEV = :QTDDEV,'
      '  SEQITE = :SEQITE,'
      '  QTIDEV = :QTIDEV,'
      '  LINDEV = :LINDEV,'
      '  QTDVOL = :QTDVOL,'
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
      '  TOTDEV = :TOTDEV,'
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
      '  BASCOM = :BASCOM,'
      '  TOTCOM = :TOTCOM,'
      '  TOTDSR = :TOTDSR,'
      '  DESREG = :DESREG,'
      '  CODUSU = :CODUSU,'
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
      '  OBSMDV = :OBSMDV,'
      '  SEQREG = :SEQREG,'
      '  FLGDIF = :FLGDIF,'
      '  FLGDEV = :FLGDEV,'
      '  FLGATU = :FLGATU,'
      '  SITDEV = :SITDEV,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  MODPFA = :MODPFA,'
      '  FLGNFS = :FLGNFS,'
      '  HRCDEV = :HRCDEV,'
      '  DTCDEV = :DTCDEV,'
      '  USUCFT = :USUCFT,'
      '  OBSCFT = :OBSCFT,'
      '  FLGSIN = :FLGSIN,'
      '  FLGFSC = :FLGFSC,'
      '  SERNOT = :SERNOT,'
      '  MODDEV = :MODDEV,'
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
      '  QTDDSE = :QTDDSE,'
      '  SEQDSE = :SEQDSE,'
      '  TOTDSE = :TOTDSE,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  TOTFAT = :TOTFAT,'
      '  FLGTOT = :FLGTOT,'
      '  CODTCL = :CODTCL,'
      '  FLGENV = :FLGENV,'
      '  NFSCLI = :NFSCLI'
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
        'V, HREDEV, '
      
        '   UFEDEV, CODPFA, TIPPFA, DSCREG, PERPIS, PERCOF, CODFIL, QTDNF' +
        'S, NRONFS, '
      
        '   NROSUF, FLGAVI, CGCCLI, INSCLI, CODCF1, CODCF2, FRTDEV, FLGEN' +
        'T, FLGSAI, '
      
        '   DESNAT, INSSUB, TIPFRT, MARDEV, NRODEV, ESPDEV, NOMTRA, CGCTR' +
        'A, INSTRA, '
      
        '   CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTRA, UFETR' +
        'A, PLCTRA, '
      
        '   UFEPLC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCL' +
        'I, UFECLI, '
      
        '   INECLI, CGECLI, TXFIPI, TXFICM, OBSDEV, QTDDEV, SEQITE, QTIDE' +
        'V, LINDEV, '
      
        '   QTDVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIPI, TOTIPI, BASIC' +
        'M, TOTICM, '
      
        '   BASSUB, TOTSUB, TOTDEV, TOTPIS, TOTCOF, TOTFRT, TOTSEG, TOTDE' +
        'S, ICMFRT, '
      
        '   BSICMF, BAICMF, TOICMF, ICMSEG, BSICMS, BAICMS, TOICMS, ICMDE' +
        'S, BSICMD, '
      
        '   BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPIF, TOIPIF, IPISEG, BSIPI' +
        'S, BAIPIS, '
      
        '   TOIPIS, IPIDES, BSIPID, BAIPID, TOIPID, TOTGER, BASCOM, TOTCO' +
        'M, TOTDSR, '
      
        '   DESREG, CODUSU, ATUEST, LANEST, INTFIN, CONSUM, FLGCTB, CODIP' +
        'I, TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      
        '   INCFIN, OBSMDV, SEQREG, FLGDIF, FLGDEV, FLGATU, SITDEV, CODCL' +
        'I, CODVEN, '
      
        '   MODPFA, FLGNFS, HRCDEV, DTCDEV, USUCFT, OBSCFT, FLGSIN, FLGFS' +
        'C, SERNOT, '
      
        '   MODDEV, OB1DEV, OB2DEV, OB3DEV, OB4DEV, OB5DEV, OB6DEV, OB7DE' +
        'V, OB8DEV, '
      
        '   FLGIMP, NOMENT, QTDDSE, SEQDSE, TOTDSE, BASISS, TOTISS, TOTFA' +
        'T, FLGTOT, '
      '   CODTCL, FLGENV, NFSCLI)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQDEV, :NUMNFS' +
        ', :DTEDEV, '
      
        '   :HREDEV, :UFEDEV, :CODPFA, :TIPPFA, :DSCREG, :PERPIS, :PERCOF' +
        ', :CODFIL, '
      
        '   :QTDNFS, :NRONFS, :NROSUF, :FLGAVI, :CGCCLI, :INSCLI, :CODCF1' +
        ', :CODCF2, '
      
        '   :FRTDEV, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT, :MARDEV' +
        ', :NRODEV, '
      
        '   :ESPDEV, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA, :ENDTRA' +
        ', :REFTRA, '
      
        '   :NUMTRA, :BAITRA, :CIDTRA, :UFETRA, :PLCTRA, :UFEPLC, :CEPCLI' +
        ', :TENCLI, '
      
        '   :ENDCLI, :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI' +
        ', :CGECLI, '
      
        '   :TXFIPI, :TXFICM, :OBSDEV, :QTDDEV, :SEQITE, :QTIDEV, :LINDEV' +
        ', :QTDVOL, '
      
        '   :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTDEV, :TOTPIS, :TOTCOF, :TOTFRT, :TOTSEG' +
        ', :TOTDES, '
      
        '   :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS, :BAICMS' +
        ', :TOICMS, '
      
        '   :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF, :BAIPIF' +
        ', :TOIPIF, '
      
        '   :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID, :BAIPID' +
        ', :TOIPID, '
      
        '   :TOTGER, :BASCOM, :TOTCOM, :TOTDSR, :DESREG, :CODUSU, :ATUEST' +
        ', :LANEST, '
      
        '   :INTFIN, :CONSUM, :FLGCTB, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :OBSMDV, '
      
        '   :SEQREG, :FLGDIF, :FLGDEV, :FLGATU, :SITDEV, :CODCLI, :CODVEN' +
        ', :MODPFA, '
      
        '   :FLGNFS, :HRCDEV, :DTCDEV, :USUCFT, :OBSCFT, :FLGSIN, :FLGFSC' +
        ', :SERNOT, '
      
        '   :MODDEV, :OB1DEV, :OB2DEV, :OB3DEV, :OB4DEV, :OB5DEV, :OB6DEV' +
        ', :OB7DEV, '
      
        '   :OB8DEV, :FLGIMP, :NOMENT, :QTDDSE, :SEQDSE, :TOTDSE, :BASISS' +
        ', :TOTISS, '
      '   :TOTFAT, :FLGTOT, :CODTCL, :FLGENV, :NFSCLI)')
    DeleteSQL.Strings = (
      'delete from FatDev'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV')
    Left = 2
    Top = 268
  end
end
