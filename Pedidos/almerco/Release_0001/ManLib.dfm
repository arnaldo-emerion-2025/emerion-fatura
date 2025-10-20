inherited fmManLib: TfmManLib
  Left = 0
  Caption = 'Aguardando liberação para faturamento'
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
  object Label8: TLabel
    Left = 4
    Top = 463
    Width = 574
    Height = 16
    Caption = 
      'Enter-Informar Qtd a Separar Barra de Espaço-Sep Saldo/Nao Sep F' +
      '6-Sep Tudo/Nao Sep'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label41: TLabel
    Left = 582
    Top = 443
    Width = 31
    Height = 14
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label42: TLabel
    Left = 663
    Top = 443
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
  object Label29: TLabel
    Left = 4
    Top = 6
    Width = 102
    Height = 14
    Caption = 'Número do Pedido'
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
  object Label4: TLabel
    Left = 4
    Top = 54
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
  object Label13: TLabel
    Left = 4
    Top = 77
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
  object Label5: TLabel
    Left = 4
    Top = 101
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
  object Label16: TLabel
    Left = 564
    Top = 78
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
  object Label11: TLabel
    Left = 564
    Top = 54
    Width = 52
    Height = 14
    Caption = 'CPF/CNPJ'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 564
    Top = 31
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
  object Label68: TLabel
    Left = 619
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
  object Label37: TLabel
    Left = 619
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
  object Label53: TLabel
    Left = 619
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
  object Label7: TLabel
    Left = 119
    Top = 101
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
    Left = 119
    Top = 77
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
  object Label12: TLabel
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
  object Label20: TLabel
    Left = 582
    Top = 419
    Width = 63
    Height = 14
    Caption = 'Itens Sep.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label21: TLabel
    Left = 663
    Top = 419
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
  object Label22: TLabel
    Left = 638
    Top = 463
    Width = 147
    Height = 16
    Caption = 'F12-Confirmar Esc-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 3
    Top = 419
    Width = 106
    Height = 14
    Caption = 'Itens do Pedido :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label52: TLabel
    Left = 3
    Top = 442
    Width = 82
    Height = 14
    Caption = 'Peso liquído :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label69: TLabel
    Left = 218
    Top = 442
    Width = 76
    Height = 14
    Caption = 'Peso bruto :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label71: TLabel
    Left = 405
    Top = 442
    Width = 65
    Height = 14
    Caption = 'Cubagem :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object EdTotLiq: TdxDBColorCurrencyEdit
    Left = 111
    Top = 438
    Width = 102
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
    TabOrder = 31
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTLIQ'
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotBrt: TdxDBColorCurrencyEdit
    Left = 298
    Top = 438
    Width = 102
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
    DataField = 'TOTBRT'
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object Panel1: TPanel
    Left = 1
    Top = 391
    Width = 784
    Height = 22
    BevelOuter = bvNone
    TabOrder = 27
    OnExit = Panel1Exit
    object EdCodIte: TdxDBColorEdit
      Left = 0
      Top = -1
      Width = 105
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
      DataSource = DsLb2
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdDesRe2: TdxDBColorEdit
      Left = 104
      Top = -1
      Width = 338
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
      DataField = 'DESRE2'
      DataSource = DsLb2
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdQtpLb2: TdxDBColorCurrencyEdit
      Left = 441
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
      TabOrder = 2
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPLB2'
      DataSource = DsLb2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtsLb2: TdxDBColorCurrencyEdit
      Left = 521
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
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTSLB2'
      DataSource = DsLb2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUltQts: TdxDBColorCurrencyEdit
      Left = 609
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
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ULTQTS'
      DataSource = DsLb2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdSldLb2: TdxDBColorCurrencyEdit
      Left = 697
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
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'SLDLB2'
      DataSource = DsLb2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object EdTotLib: TdxDBColorCurrencyEdit
    Left = 671
    Top = 439
    Width = 115
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
    DataField = 'TOTLIB'
    DataSource = DsLib
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object grPe21: TdxDBGraphicEdit
    Left = 0
    Top = 164
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
    TabOrder = 21
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 226
  end
  object grLb2: ThGrid
    Left = 2
    Top = 166
    Width = 780
    Height = 220
    Selected.Strings = (
      'CODITE'#9'17'#9' '
      'DESRE2'#9'43'#9' '
      'QTPLB2'#9'12'#9' '
      'QTSLB2'#9'12'#9' '
      'ULTQTS'#9'12'#9' '
      'SLDLB2'#9'12'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLb2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 22
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grLb2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 0
    Top = 123
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
    Height = 42
  end
  object grLabel2: TPanel
    Left = 2
    Top = 125
    Width = 780
    Height = 36
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    object Label32: TLabel
      Left = 2
      Top = 11
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
      Left = 443
      Top = 11
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
    object Label3: TLabel
      Left = 544
      Top = 11
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Sep'
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
      Left = 645
      Top = 11
      Width = 47
      Height = 14
      Alignment = taRightJustify
      Caption = 'Separar'
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
      Left = 750
      Top = 11
      Width = 29
      Height = 14
      Alignment = taRightJustify
      Caption = 'Falta'
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
  object pnTotLib: TPanel
    Left = 673
    Top = 443
    Width = 107
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
    TabOrder = 24
  end
  object EdNomCli: TdxDBColorEdit
    Left = 255
    Top = 50
    Width = 305
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
    CorDeFoco = clBlack
    Height = 23
    StoredValues = 1
  end
  object pnNomCli: TPanel
    Left = 259
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
    TabOrder = 8
  end
  object EdNomVen: TdxDBColorEdit
    Left = 255
    Top = 73
    Width = 305
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
    CorDeFoco = clBlack
    Height = 24
    StoredValues = 1
  end
  object EdDscPfa: TdxDBColorEdit
    Left = 255
    Top = 97
    Width = 531
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
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clBlack
    Height = 24
    StoredValues = 1
  end
  object pnNomVen: TPanel
    Left = 259
    Top = 76
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
    TabOrder = 13
  end
  object pnNomPfa: TPanel
    Left = 259
    Top = 100
    Width = 523
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
  object EdApeEmp: TdxDBColorEdit
    Left = 255
    Top = 26
    Width = 305
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
    CorDeFoco = clBlack
    Height = 24
    StoredValues = 1
  end
  object pnApeEmp: TPanel
    Left = 259
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
    TabOrder = 4
  end
  object EdCgcCli: TdxDBColorEdit
    Left = 630
    Top = 50
    Width = 156
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
    CorDeFoco = clBlack
    Height = 24
    StoredValues = 1
  end
  object pnCgcCli: TPanel
    Left = 633
    Top = 53
    Width = 149
    Height = 14
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object EdUfeRes: TdxDBColorEdit
    Left = 630
    Top = 74
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
    TabOrder = 14
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'UFERES'
    DataSource = DsLib
    CorDeFoco = clBlack
    Height = 24
    StoredValues = 1
  end
  object pnUfeRes: TPanel
    Left = 632
    Top = 77
    Width = 37
    Height = 14
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object EdId_PedRes: TdxDBColorEdit
    Left = 125
    Top = 2
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
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'ID_PEDRES'
    DataSource = DsLib
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnId_PedRes: TPanel
    Left = 127
    Top = 5
    Width = 96
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
    TabOrder = 1
  end
  object EdQtiLib: TdxDBColorCurrencyEdit
    Left = 671
    Top = 415
    Width = 115
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
    DataField = 'QTILIB'
    DataSource = DsLib
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnQtiLib: TPanel
    Left = 673
    Top = 418
    Width = 107
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
    TabOrder = 26
  end
  object EdCodEmp: TdxDBColorEdit
    Left = 125
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
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODEMP'
    DataSource = DsLib
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdCodCli: TdxDBColorEdit
    Left = 125
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
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 6
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODCLI'
    DataSource = DsLib
    ReadOnly = False
    CorDeFoco = clInfoBk
    Height = 23
    StoredValues = 65
  end
  object EdCodVen: TdxDBColorEdit
    Left = 125
    Top = 73
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
    TabOrder = 11
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODVEN'
    DataSource = DsLib
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdCodPfa: TdxDBColorEdit
    Left = 125
    Top = 97
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
    TabOrder = 16
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODPFA'
    DataSource = DsLib
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdDteRes: TdxDBColorDateEdit
    Left = 630
    Top = 27
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
    TabOrder = 5
    Alignment = taCenter
    AutoSize = False
    DataField = 'DTERES'
    DataSource = DsLib
    PopupBorder = pbFlat
    DateButtons = []
    SaveTime = False
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdQtdIte: TdxDBColorCurrencyEdit
    Left = 111
    Top = 415
    Width = 102
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
    TabOrder = 28
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'QTILIB'
    DataSource = DsLib
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnQtdIte: TPanel
    Left = 113
    Top = 418
    Width = 94
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
    TabOrder = 29
  end
  object pnTotLiq: TPanel
    Left = 113
    Top = 441
    Width = 94
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
    TabOrder = 30
  end
  object pnTotBrt: TPanel
    Left = 300
    Top = 441
    Width = 94
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
    TabOrder = 32
  end
  object EdTotCub: TdxDBColorCurrencyEdit
    Left = 475
    Top = 438
    Width = 102
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
    TabOrder = 33
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTCUB'
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnTotCub: TPanel
    Left = 477
    Top = 441
    Width = 94
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
    TabOrder = 35
  end
  object PedLib: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.Id_PedLib, '
      '           PedLib.Id_PedRes,'
      '           PedLib.DteLib,'
      '           PedLib.NroLib,'
      '           PedLib.QtiLib,'
      '           PedLib.FlgLib,'
      '           PedLib.TotFrt,'
      '           PedLib.QtdVol,'
      '           PedLib.TotLib,'
      '           PedLib.TotCub,'
      '           PedLib.InfLiq,'
      '           PedLib.TotLiq,'
      '           PedLib.InfBrt,'
      '           PedLib.TotBrt,'
      '           PedLib.SitLib,'
      '           PedRes.DteRes,'
      '           PedRes.UfeRes,'
      '           PedRes.CodEmp,'
      '           PedRes.CodCli,'
      '           PedRes.CodVen,'
      '           PedRes.CodAtd,'
      '           PedRes.CodPfa,'
      '           PedRes.TipPfa'
      'From PedLib,PedRes'
      'Where PedLib.Id_PedRes = PedRes.Id_PedRes'
      '     and PedLib.Id_PedLib = :Id_PedLib')
    UpdateObject = UpLib
    ValidateWithMask = True
    Left = 3
    Top = 301
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedLib'
        ParamType = ptInput
      end>
    object PedLibID_PEDLIB: TIntegerField
      FieldName = 'ID_PEDLIB'
    end
    object PedLibDTELIB: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTELIB'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibNROLIB: TIntegerField
      FieldName = 'NROLIB'
    end
    object PedLibQTILIB: TIntegerField
      FieldName = 'QTILIB'
    end
    object PedLibFLGLIB: TStringField
      FieldName = 'FLGLIB'
      FixedChar = True
      Size = 3
    end
    object PedLibTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibSITLIB: TStringField
      FieldName = 'SITLIB'
      Size = 45
    end
    object PedLibID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
    end
    object PedLibUFERES: TStringField
      FieldName = 'UFERES'
      FixedChar = True
      Size = 2
    end
    object PedLibCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedLibCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedLibCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedLibCODPFA: TStringField
      FieldName = 'CODPFA'
      Size = 15
    end
    object PedLibTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Size = 7
    end
    object PedLibDTERES: TDateTimeField
      FieldName = 'DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedLibTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      DisplayFormat = '###,###,##0'
    end
    object PedLibTOTCUB: TFloatField
      FieldName = 'TOTCUB'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedLibTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLibTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLibINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLibINFBRT: TFloatField
      FieldName = 'INFBRT'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsLib
    SQL.Strings = (
      'Select PedLb2.Id_PedLb2,'
      '           PedRe2.DesRe2,'
      '           PedLb2.QtpLb2,'
      '           PedLb2.QtsLb2,'
      '           PedLb2.UltQts,'
      '           PedLb2.SldLb2,'
      
        '           PedRe2.CodClp || _UNICODE_FSS '#39'-'#39' || PedRe2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub || _UNICODE_FSS '#39'.'#39' || PedRe2' +
        '.CodPro as CodIte'
      'From PedLb2,PedRe2'
      'Where PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'
      '     and PedLb2.Id_PedLib = :Id_PedLib'
      'Order by PedRe2.CodClp,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro')
    UpdateObject = UpLb2
    ValidateWithMask = True
    Left = 3
    Top = 329
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDLIB'
        ParamType = ptInput
      end>
    object PedLb2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 17
      FieldName = 'CODITE'
      Origin = 'ISADE.PEDLB2.CODITE'
      Size = 14
    end
    object PedLb2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 43
      FieldName = 'DESRE2'
      Size = 70
    end
    object PedLb2QTPLB2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTPLB2'
      Origin = 'ISADE.PEDLB2.QTPLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2QTSLB2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTSLB2'
      Origin = 'ISADE.PEDLB2.QTSLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2ULTQTS: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'ULTQTS'
      Origin = 'ISADE.PEDLB2.ULTQTS'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2SLDLB2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'SLDLB2'
      Origin = 'ISADE.PEDLB2.SLDLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2ID_PEDLB2: TIntegerField
      FieldName = 'ID_PEDLB2'
      Visible = False
    end
  end
  object UpLb2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLb2'
      'set'
      '  ULTQTS = :ULTQTS'
      'where'
      '  ID_PEDLB2 = :OLD_ID_PEDLB2')
    InsertSQL.Strings = (
      'insert into PedLb2'
      '  (ID_PEDLB2, DESRE2, QTPLB2, QTSLB2, ULTQTS, SLDLB2)'
      'values'
      '  (:ID_PEDLB2, :DESRE2, :QTPLB2, :QTSLB2, :ULTQTS, :SLDLB2)')
    DeleteSQL.Strings = (
      'delete from PedLb2'
      'where'
      '  ID_PEDLB2 = :OLD_ID_PEDLB2')
    Left = 31
    Top = 357
  end
  object DsLb2: TDataSource
    DataSet = PedLb2
    OnDataChange = DsLb2DataChange
    Left = 31
    Top = 329
  end
  object DsLib: TDataSource
    DataSet = PedLib
    Left = 31
    Top = 301
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 301
  end
  object UpLib: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLib'
      'set'
      '  DTELIB = :DTELIB,'
      '  FLGLIB = :FLGLIB,'
      '  TOTFRT = :TOTFRT,'
      '  QTDVOL = :QTDVOL,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  SITLIB = :SITLIB'
      'where'
      '  ID_PEDLIB = :OLD_ID_PEDLIB')
    InsertSQL.Strings = (
      'insert into PedLib'
      
        '  (ID_PEDLIB, ID_PEDRES, DTELIB, NROLIB, QTILIB, FLGLIB, TOTFRT,' +
        ' QTDVOL, '
      '   TOTLIB, TOTCUB, INFLIQ, TOTLIQ, INFBRT, TOTBRT, SITLIB)'
      'values'
      
        '  (:ID_PEDLIB, :ID_PEDRES, :DTELIB, :NROLIB, :QTILIB, :FLGLIB, :' +
        'TOTFRT, '
      
        '   :QTDVOL, :TOTLIB, :TOTCUB, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT' +
        ', :SITLIB)')
    DeleteSQL.Strings = (
      'delete from PedLib'
      'where'
      '  ID_PEDLIB = :OLD_ID_PEDLIB')
    Left = 3
    Top = 357
  end
end
