inherited fmManLib: TfmManLib
  Left = 0
  Caption = 'Liberação de Pedidos'
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
    Left = 557
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
    Left = 557
    Top = 419
    Width = 100
    Height = 14
    Caption = 'Itens Separados'
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
    Left = 199
    Top = 419
    Width = 98
    Height = 14
    Caption = 'Itens do Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 311
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
  object Panel1: TPanel
    Left = 1
    Top = 391
    Width = 785
    Height = 22
    BevelOuter = bvNone
    TabOrder = 27
    OnExit = Panel1Exit
    object EdCodIte: TdxDBColorEdit
      Left = 0
      Top = -1
      Width = 105
      Hint = 'Nosso Código'
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
    object EdDesLb2: TdxDBColorEdit
      Left = 104
      Top = -1
      Width = 338
      Hint = 'Descrição do Item'
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
      DataField = 'DESLB2'
      DataSource = DsLb2
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdQtpLb2: TdxDBColorCurrencyEdit
      Left = 441
      Top = -1
      Width = 81
      Hint = 'Quantidade Pedida do Item'
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
      Hint = 'Quantidade Faturada do Item'
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
      Hint = 'Quantidade Separada para Faturamento'
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
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdSldLb2: TdxDBColorCurrencyEdit
      Left = 697
      Top = -1
      Width = 90
      Hint = 'Saldo Restante para Faturamento'
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
    Width = 117
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
    Top = 166
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
    TabOrder = 21
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 224
  end
  object grLb2: ThGrid
    Left = 2
    Top = 168
    Width = 780
    Height = 218
    Selected.Strings = (
      'CODITE'#9'14'#9'CODITE'#9'F'
      'DESLB2'#9'46'#9' '#9'F'
      'QTPLB2'#9'12'#9' '#9'F'
      'QTSLB2'#9'12'#9' '#9'F'
      'ULTQTS'#9'12'#9' '#9'F'
      'SLDLB2'#9'12'#9' '#9'F')
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
    Width = 109
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
    DataField = 'UFELIB'
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
  object EdNumRes: TdxDBColorEdit
    Left = 125
    Top = 2
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
    TabOrder = 0
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'NUMRES'
    DataSource = DsLib
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNumRes: TPanel
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
  object EdQtsLib: TdxDBColorCurrencyEdit
    Left = 671
    Top = 415
    Width = 117
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
    TabOrder = 25
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'QTSLIB'
    DataSource = DsLib
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnQtsLib: TPanel
    Left = 673
    Top = 418
    Width = 109
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
    Hint = 'Data de Emissão do Pedido'
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
    Left = 325
    Top = 415
    Width = 117
    Hint = 'Itens do Pedido'
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
    DataField = 'QTSLIB'
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
    Left = 327
    Top = 419
    Width = 109
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
  object PedLib: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.CodEmp,'
      '           PedLib.DteRes,'
      '           PedLib.NumRes,'
      '           PedLib.SeqLib,'
      '           PedLib.DteLib,'
      '           PedLib.UfeLib,'
      '           PedLib.CodCli,'
      '           PedLib.CodVen,'
      '           PedLib.CodAtd,'
      '           PedLib.CodPfa,'
      '           PedLib.TipPfa,'
      '           PedLib.QtsLib,'
      '           PedLib.FlgLib,'
      '           PedLib.TotLib,'
      '           PedLib.SitLib'
      'From PedLib'
      'Where PedLib.CodEmp = :CodEmp'
      '     and PedLib.DteRes = :DteRes'
      '     and PedLib.NumRes = :NumRes'
      '     and PedLib.SeqLib = :SeqLib')
    UpdateObject = UpLib
    ValidateWithMask = True
    Left = 168
    Top = 236
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
      end>
    object PedLibCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedLibDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object PedLibNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object PedLibSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
    end
    object PedLibDTELIB: TDateTimeField
      FieldName = 'DTELIB'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibUFELIB: TStringField
      FieldName = 'UFELIB'
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
      FixedChar = True
      Size = 15
    end
    object PedLibTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedLibQTSLIB: TIntegerField
      FieldName = 'QTSLIB'
      DisplayFormat = '###0'
    end
    object PedLibTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibSITLIB: TStringField
      FieldName = 'SITLIB'
      FixedChar = True
      Size = 45
    end
    object PedLibFLGLIB: TStringField
      FieldName = 'FLGLIB'
      FixedChar = True
      Size = 1
    end
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLb2.CodEmp,'
      '           PedLb2.DteRes,'
      '           PedLb2.NumRes,'
      '           PedLb2.SeqLib,'
      '           PedLb2.SeqLb2,'
      '           PedLb2.DesLb2,'
      '           PedLb2.QtpLb2,'
      '           PedLb2.QtsLb2,'
      '           PedLb2.UltQts,'
      '           PedLb2.SldLb2,'
      
        '           PedLb2.CodGru || _UNICODE_FSS '#39'.'#39' || PedLb2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedLb2.CodPro as CodIte'
      'From PedLb2'
      'Where PedLb2.CodEmp = :CodEmp'
      '     and PedLb2.DteRes = :DteRes'
      '     and PedLb2.NumRes = :NumRes'
      '     and PedLb2.SeqLib = :SeqLib'
      'Order by PedLb2.CodGru,PedLb2.CodSub,PedLb2.CodPro')
    UpdateObject = UpLb2
    ValidateWithMask = True
    Left = 168
    Top = 264
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
      end>
    object PedLb2CODITE: TStringField
      DisplayWidth = 14
      FieldName = 'CODITE'
      Origin = 'ISADE.PEDLB2.CODITE'
      Size = 14
    end
    object PedLb2DESLB2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 46
      FieldName = 'DESLB2'
      Origin = 'ISADE.PEDLB2.DESLB2'
      FixedChar = True
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
    object PedLb2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLb2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedLb2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedLb2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLb2SEQLB2: TIntegerField
      FieldName = 'SEQLB2'
      Visible = False
    end
  end
  object UpLb2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLb2'
      'set'
      '  DESLB2 = :DESLB2,'
      '  QTPLB2 = :QTPLB2,'
      '  QTSLB2 = :QTSLB2,'
      '  ULTQTS = :ULTQTS,'
      '  SLDLB2 = :SLDLB2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQLB2 = :OLD_SEQLB2')
    InsertSQL.Strings = (
      'insert into PedLb2'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQLB2, DESLB2, QTPLB2, QTSLB' +
        '2, '
      'ULTQTS, '
      '   SLDLB2)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQLB2, :DESLB2, :QTPLB2' +
        ', '
      ':QTSLB2, '
      '   :ULTQTS, :SLDLB2)')
    DeleteSQL.Strings = (
      'delete from PedLb2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQLB2 = :OLD_SEQLB2')
    Left = 196
    Top = 292
  end
  object DsLb2: TDataSource
    DataSet = PedLb2
    OnDataChange = DsLb2DataChange
    Left = 196
    Top = 264
  end
  object DsLib: TDataSource
    DataSet = PedLib
    Left = 196
    Top = 236
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 168
    Top = 320
  end
  object UpLib: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLib'
      'set'
      '  DTELIB = :DTELIB,'
      '  UFELIB = :UFELIB,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODATD = :CODATD,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  QTSLIB = :QTSLIB,'
      '  FLGLIB = :FLGLIB,'
      '  TOTLIB = :TOTLIB,'
      '  SITLIB = :SITLIB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB')
    InsertSQL.Strings = (
      'insert into PedLib'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, DTELIB, UFELIB, CODCLI, CODVE' +
        'N, CODATD, '
      '   CODPFA, TIPPFA, QTSLIB, FLGLIB, TOTLIB, SITLIB)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :DTELIB, :UFELIB, :CODCLI' +
        ', :CODVEN, '
      
        '   :CODATD, :CODPFA, :TIPPFA, :QTSLIB, :FLGLIB, :TOTLIB, :SITLIB' +
        ')')
    DeleteSQL.Strings = (
      'delete from PedLib'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB')
    Left = 168
    Top = 292
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Liberação de Pedidos'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Emerion Consultoria e Sist de Inf Ltda'
    RegistroUsuario.SerieProduto = 'SINGLE-0407/01065'
    RegistroUsuario.AutorizacaoKey = 'BBCL-1878-VBFC-6009-GNHN'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Setup'
    TitulodoRelatorio = 'Liberação de Pedidos'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padrão PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RDprint1NewPage
    Left = 196
    Top = 320
  end
  object quLb2: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 263
    Top = 265
  end
  object quRes: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 236
    Top = 236
  end
  object quLib: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 235
    Top = 265
  end
end
