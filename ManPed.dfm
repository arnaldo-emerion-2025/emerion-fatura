inherited fmManPed: TfmManPed
  Left = 0
  Caption = 'Alterar Informações de Pedidos Faturados'
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
    Width = 175
    Height = 16
    Caption = 'Enter-Informar Novo Custo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
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
  object Label22: TLabel
    Left = 731
    Top = 463
    Width = 54
    Height = 16
    Alignment = taRightJustify
    Caption = 'ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grPe21: TdxDBGraphicEdit
    Left = -1
    Top = 199
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
    TabOrder = 21
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 242
  end
  object grLb2: ThGrid
    Left = 1
    Top = 201
    Width = 783
    Height = 236
    Selected.Strings = (
      'DSCPRO'#9'60'#9' '
      'ULTQTS'#9'12'#9' '
      'VLQLB2'#9'12'#9' '
      'VCSLB2'#9'12'#9' '
      'TOTREN'#9'13'#9' ')
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
  object EdUltQts: TdxDBColorCurrencyEdit
    Left = 426
    Top = 440
    Width = 90
    Hint = 'Quantidade Faturada para o Item'
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
    TabOrder = 23
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
  object grLabel1: TdxDBGraphicEdit
    Left = -1
    Top = 158
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
    Left = 1
    Top = 160
    Width = 784
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
      Width = 29
      Height = 14
      Caption = 'Item'
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
      Left = 440
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
      Left = 550
      Top = 11
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Caption = 'Unitario'
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
      Left = 649
      Top = 11
      Width = 36
      Height = 14
      Caption = 'Custo'
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
      Left = 718
      Top = 11
      Width = 64
      Height = 14
      Alignment = taRightJustify
      Caption = '% Markup'
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
    DataField = 'NOMCLI'
    DataSource = DsRes
    CorDeFoco = clInfoBk
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
    DataField = 'NOMVEN'
    DataSource = DsRes
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdDscPfa: TdxDBColorEdit
    Left = 255
    Top = 97
    Width = 532
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
    DataField = 'DSCPFA'
    DataSource = DsRes
    CorDeFoco = clInfoBk
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
    Width = 524
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
  object EdNomEmp: TdxDBColorEdit
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
    DataField = 'NOMEMP'
    DataSource = DsRes
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNomEmp: TPanel
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
    Width = 157
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
    DataField = 'CGCCLI'
    DataSource = DsRes
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnCgcCli: TPanel
    Left = 633
    Top = 53
    Width = 150
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
    DataField = 'UFERES'
    DataSource = DsRes
    CorDeFoco = clInfoBk
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
    DataSource = DsRes
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
  object EdDscPro: TdxDBColorEdit
    Left = -1
    Top = 440
    Width = 429
    Hint = 'Item'
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
    TabOrder = 24
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'DSCPRO'
    DataSource = DsLb2
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdVluLb2: TdxDBColorCurrencyEdit
    Left = 514
    Top = 440
    Width = 91
    Hint = 'Valor Unitario de Venda'
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
    TabOrder = 25
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'VLQLB2'
    DataSource = DsLb2
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdVcsLb2: TdxDBColorCurrencyEdit
    Left = 603
    Top = 440
    Width = 90
    Hint = 'Valor Unitario de Custo'
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
    TabOrder = 26
    OnExit = EdVcsLb2Exit
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'VCSLB2'
    DataSource = DsLb2
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotRen: TdxDBColorCurrencyEdit
    Left = 691
    Top = 440
    Width = 98
    Hint = 'Markup do Item'
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
    TabOrder = 27
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'TOTREN'
    DataSource = DsLb2
    DecimalPlaces = 4
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
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
    DataSource = DsRes
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
    DataSource = DsRes
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
    DataSource = DsRes
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
    DataSource = DsRes
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
    DataSource = DsRes
    PopupBorder = pbFlat
    DateButtons = []
    DateValidation = True
    SaveTime = False
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnCodCli: TPanel
    Left = 257
    Top = 124
    Width = 105
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Total do Pedido '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
  end
  object pnTotLib: TPanel
    Left = 362
    Top = 124
    Width = 91
    Height = 32
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00 '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 29
  end
  object Panel2: TPanel
    Left = 455
    Top = 124
    Width = 105
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Total de Custos'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
  end
  object pnTotCst: TPanel
    Left = 560
    Top = 124
    Width = 91
    Height = 32
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00 '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
  end
  object pnTotRen: TPanel
    Left = 710
    Top = 124
    Width = 76
    Height = 32
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00 % '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
  end
  object Panel5: TPanel
    Left = 653
    Top = 124
    Width = 57
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Markup '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 33
  end
  object PedLib: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedLib'
      'Where PedLib.CodEmp = :CodEmp'
      '     and PedLib.DteRes = :DteRes'
      '     and PedLib.NumRes = :NumRes'
      '     and PedLib.SeqLib = :SeqLib'
      'Order by PedLib.CodEmp,PedLib.DteRes,PedLib.NumRes,PedLib.SeqLib')
    ValidateWithMask = True
    Left = 2
    Top = 352
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
      Origin = 'ISADE.PEDLIB.CODEMP'
    end
    object PedLibDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.PEDLIB.DTERES'
    end
    object PedLibNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.PEDLIB.NUMRES'
    end
    object PedLibSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.PEDLIB.SEQLIB'
    end
    object PedLibDTELIB: TDateTimeField
      FieldName = 'DTELIB'
      Origin = 'ISADE.PEDLIB.DTELIB'
    end
    object PedLibHRELIB: TStringField
      FieldName = 'HRELIB'
      Origin = 'ISADE.PEDLIB.HRELIB'
      FixedChar = True
      Size = 8
    end
    object PedLibQTSLIB: TIntegerField
      FieldName = 'QTSLIB'
      Origin = 'ISADE.PEDLIB.QTSLIB'
    end
    object PedLibBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDLIB.BASIPI'
    end
    object PedLibTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDLIB.TOTIPI'
    end
    object PedLibBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDLIB.BASICM'
    end
    object PedLibTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDLIB.TOTICM'
    end
    object PedLibBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDLIB.BASSUB'
    end
    object PedLibTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDLIB.TOTSUB'
    end
    object PedLibTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDLIB.TOTVEN'
    end
    object PedLibTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDLIB.TOTCST'
    end
    object PedLibTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      Origin = 'ISADE.PEDLIB.TOTLIB'
    end
    object PedLibTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDLIB.TOTREN'
    end
    object PedLibTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDLIB.TOTGER'
    end
    object PedLibTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDLIB.TOTLIQ'
    end
    object PedLibTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDLIB.TOTBRT'
    end
    object PedLibBASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.PEDLIB.BASCOM'
    end
    object PedLibTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.PEDLIB.TOTCOM'
    end
    object PedLibDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDLIB.DSCCOM'
    end
    object PedLibDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.PEDLIB.DSCREG'
    end
    object PedLibMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.PEDLIB.MEDDSC'
    end
    object PedLibMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.PEDLIB.MEDACR'
    end
    object PedLibMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Origin = 'ISADE.PEDLIB.MEDCOM'
    end
    object PedLibMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Origin = 'ISADE.PEDLIB.MEDPRM'
    end
    object PedLibMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      Origin = 'ISADE.PEDLIB.MEDDCO'
    end
    object PedLibTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Origin = 'ISADE.PEDLIB.TOTDCO'
    end
    object PedLibTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDLIB.TOTDSC'
    end
    object PedLibTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDLIB.TOTDSR'
    end
    object PedLibTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDLIB.TOTDSP'
    end
    object PedLibTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDLIB.TOTACR'
    end
    object PedLibCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.PEDLIB.CODUSU'
    end
    object PedLibFLGRES: TStringField
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDLIB.FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedLibFLGLIB: TStringField
      FieldName = 'FLGLIB'
      Origin = 'ISADE.PEDLIB.FLGLIB'
      FixedChar = True
      Size = 1
    end
    object PedLibPEDANT: TStringField
      FieldName = 'PEDANT'
      Origin = 'ISADE.PEDLIB.PEDANT'
      FixedChar = True
      Size = 3
    end
    object PedLibFLGANT: TStringField
      FieldName = 'FLGANT'
      Origin = 'ISADE.PEDLIB.FLGANT'
      FixedChar = True
      Size = 1
    end
    object PedLibDTEANT: TDateTimeField
      FieldName = 'DTEANT'
      Origin = 'ISADE.PEDLIB.DTEANT'
    end
    object PedLibHREANT: TStringField
      FieldName = 'HREANT'
      Origin = 'ISADE.PEDLIB.HREANT'
      FixedChar = True
      Size = 8
    end
    object PedLibOBSANT: TMemoField
      FieldName = 'OBSANT'
      Origin = 'ISADE.PEDLIB.OBSANT'
      BlobType = ftMemo
      Size = 300
    end
    object PedLibUSUANT: TIntegerField
      FieldName = 'USUANT'
      Origin = 'ISADE.PEDLIB.USUANT'
    end
    object PedLibDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.PEDLIB.DTEFAT'
    end
    object PedLibHREFAT: TStringField
      FieldName = 'HREFAT'
      Origin = 'ISADE.PEDLIB.HREFAT'
      FixedChar = True
      Size = 8
    end
    object PedLibUSUFAT: TIntegerField
      FieldName = 'USUFAT'
      Origin = 'ISADE.PEDLIB.USUFAT'
    end
    object PedLibNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.PEDLIB.NRONFS'
    end
    object PedLibFLGREQ: TStringField
      FieldName = 'FLGREQ'
      Origin = 'ISADE.PEDLIB.FLGREQ'
      FixedChar = True
      Size = 3
    end
    object PedLibSITLIB: TStringField
      FieldName = 'SITLIB'
      Origin = 'ISADE.PEDLIB.SITLIB'
      FixedChar = True
      Size = 45
    end
    object PedLibPEDTIP: TIntegerField
      FieldName = 'PEDTIP'
      Origin = 'ISADE.PEDLIB.PEDTIP'
    end
    object PedLibDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
      Origin = 'ISADE.PEDLIB.DTEDEL'
    end
    object PedLibHREDEL: TStringField
      FieldName = 'HREDEL'
      Origin = 'ISADE.PEDLIB.HREDEL'
      FixedChar = True
      Size = 8
    end
    object PedLibOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      Origin = 'ISADE.PEDLIB.OBSDEL'
      BlobType = ftMemo
      Size = 500
    end
    object PedLibUSUDEL: TIntegerField
      FieldName = 'USUDEL'
      Origin = 'ISADE.PEDLIB.USUDEL'
    end
    object PedLibDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      Origin = 'ISADE.PEDLIB.DTEDEV'
    end
    object PedLibHREDEV: TStringField
      FieldName = 'HREDEV'
      Origin = 'ISADE.PEDLIB.HREDEV'
      FixedChar = True
      Size = 8
    end
    object PedLibOBSDEV: TMemoField
      FieldName = 'OBSDEV'
      Origin = 'ISADE.PEDLIB.OBSDEV'
      BlobType = ftMemo
      Size = 500
    end
    object PedLibUSUDEV: TIntegerField
      FieldName = 'USUDEV'
      Origin = 'ISADE.PEDLIB.USUDEV'
    end
    object PedLibFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDLIB.FLGATU'
      FixedChar = True
      Size = 1
    end
    object PedLibDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.PEDLIB.DTEATU'
    end
    object PedLibHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.PEDLIB.HREATU'
      FixedChar = True
      Size = 8
    end
    object PedLibUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.PEDLIB.USUATU'
    end
    object PedLibTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.PEDLIB.TRASDA'
    end
    object PedLibDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.PEDLIB.DTESDA'
    end
    object PedLibHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.PEDLIB.HRESDA'
      FixedChar = True
      Size = 8
    end
    object PedLibUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.PEDLIB.USUSDA'
    end
    object PedLibOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.PEDLIB.OBSSDA'
      FixedChar = True
      Size = 240
    end
    object PedLibCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.PEDLIB.CODVEI'
    end
    object PedLibDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.PEDLIB.DTEENT'
    end
    object PedLibHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.PEDLIB.HREENT'
      FixedChar = True
      Size = 8
    end
    object PedLibUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.PEDLIB.USUENT'
    end
    object PedLibOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.PEDLIB.OBSENT'
      FixedChar = True
      Size = 240
    end
    object PedLibCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.PEDLIB.CODCLI'
    end
    object PedLibCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.PEDLIB.CODVEN'
    end
    object PedLibCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDLIB.CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedLibTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDLIB.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedLibCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.PEDLIB.CODFIL'
    end
    object PedLibCODATD: TIntegerField
      FieldName = 'CODATD'
      Origin = 'ISADE.PEDLIB.CODATD'
    end
    object PedLibCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.PEDLIB.CODTRA'
    end
    object PedLibMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.PEDLIB.MODPFA'
      FixedChar = True
    end
    object PedLibFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.PEDLIB.FLGTAB'
      FixedChar = True
      Size = 25
    end
    object PedLibATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.PEDLIB.ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedLibINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.PEDLIB.INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedLibMESLIB: TStringField
      FieldName = 'MESLIB'
      Origin = 'ISADE.PEDLIB.MESLIB'
      FixedChar = True
      Size = 3
    end
    object PedLibANOLIB: TIntegerField
      FieldName = 'ANOLIB'
      Origin = 'ISADE.PEDLIB.ANOLIB'
    end
    object PedLibLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.PEDLIB.LANEST'
      FixedChar = True
      Size = 3
    end
    object PedLibUFELIB: TStringField
      FieldName = 'UFELIB'
      Origin = 'ISADE.PEDLIB.UFELIB'
      FixedChar = True
      Size = 2
    end
    object PedLibFLGSER: TStringField
      FieldName = 'FLGSER'
      Origin = 'ISADE.PEDLIB.FLGSER'
      FixedChar = True
      Size = 3
    end
    object PedLibVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.PEDLIB.VALTMO'
    end
    object PedLibBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.PEDLIB.BASISS'
    end
    object PedLibTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.PEDLIB.TOTISS'
    end
    object PedLibCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.PEDLIB.CODTCL'
    end
    object PedLibMEDCAT: TFloatField
      FieldName = 'MEDCAT'
      Origin = 'ISADE.PEDLIB.MEDCAT'
    end
    object PedLibBASCAT: TFloatField
      FieldName = 'BASCAT'
      Origin = 'ISADE.PEDLIB.BASCAT'
    end
    object PedLibTOTCAT: TFloatField
      FieldName = 'TOTCAT'
      Origin = 'ISADE.PEDLIB.TOTCAT'
    end
    object PedLibTIPCPA: TStringField
      FieldName = 'TIPCPA'
      Origin = 'ISADE.PEDLIB.TIPCPA'
      FixedChar = True
      Size = 10
    end
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLb2.*,'
      
        '           TextoOcor(PedLb2.CodGru,'#39'.'#39',PedLb2.CodSub,'#39'.'#39',PedLb2.' +
        'CodPro,'#39'-'#39',PedLb2.DesLb2) as DscPro From PedLb2'
      'Where PedLb2.CodEmp = :CodEmp'
      '     and PedLb2.DteRes = :DteRes'
      '     and PedLb2.NumRes = :NumRes'
      '     and PedLb2.SeqLib = :SeqLib'
      '     and PedLb2.UltQts > 0'
      'Order by PedLb2.SeqLb2')
    UpdateObject = UpLb2
    ValidateWithMask = True
    Left = 2
    Top = 380
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
    object PedLb2DSCPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 60
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 100
    end
    object PedLb2ULTQTS: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'ULTQTS'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2VLQLB2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLQLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2VCSLB2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VCSLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2TOTREN: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLb2CODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLb2DTERES: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTERES'
      Visible = False
    end
    object PedLb2NUMRES: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedLb2SEQLIB: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLb2SEQLB2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQLB2'
      Visible = False
    end
    object PedLb2SEQRE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQRE2'
      Visible = False
    end
    object PedLb2CODEIT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEIT'
      Visible = False
    end
    object PedLb2CODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2CODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedLb2CODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedLb2CODTAM: TStringField
      DisplayWidth = 10
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedLb2CODCOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedLb2DESLB2: TStringField
      DisplayWidth = 70
      FieldName = 'DESLB2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedLb2OBSLB2: TStringField
      DisplayWidth = 70
      FieldName = 'OBSLB2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedLb2CODST1: TStringField
      DisplayWidth = 1
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2CODST2: TStringField
      DisplayWidth = 2
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedLb2CODUND: TStringField
      DisplayWidth = 3
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2REFLB2: TStringField
      DisplayWidth = 20
      FieldName = 'REFLB2'
      Visible = False
      FixedChar = True
    end
    object PedLb2CLSIPI: TStringField
      DisplayWidth = 30
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedLb2LIQLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQLB2'
      Visible = False
    end
    object PedLb2BRTLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTLB2'
      Visible = False
    end
    object PedLb2QTPLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTPLB2'
      Visible = False
    end
    object PedLb2QTSLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTSLB2'
      Visible = False
    end
    object PedLb2SLDLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'SLDLB2'
      Visible = False
    end
    object PedLb2QTDLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDLB2'
      Visible = False
    end
    object PedLb2VLULB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VLULB2'
      Visible = False
    end
    object PedLb2VCHLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCHLB2'
      Visible = False
    end
    object PedLb2VRELB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VRELB2'
      Visible = False
    end
    object PedLb2VCPLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPLB2'
      Visible = False
    end
    object PedLb2VPRLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRLB2'
      Visible = False
    end
    object PedLb2DSCLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCLB2'
      Visible = False
    end
    object PedLb2VDSLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDSLB2'
      Visible = False
    end
    object PedLb2DSPLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'DSPLB2'
      Visible = False
    end
    object PedLb2VDPLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDPLB2'
      Visible = False
    end
    object PedLb2DSRLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'DSRLB2'
      Visible = False
    end
    object PedLb2VDRLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDRLB2'
      Visible = False
    end
    object PedLb2PACLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'PACLB2'
      Visible = False
    end
    object PedLb2VACLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VACLB2'
      Visible = False
    end
    object PedLb2DSCCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCCOM'
      Visible = False
    end
    object PedLb2VDSCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'VDSCOM'
      Visible = False
    end
    object PedLb2PCOLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'PCOLB2'
      Visible = False
    end
    object PedLb2IPILB2: TFloatField
      DisplayWidth = 10
      FieldName = 'IPILB2'
      Visible = False
    end
    object PedLb2ICMLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMLB2'
      Visible = False
    end
    object PedLb2TOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object PedLb2TOTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCST'
      Visible = False
    end
    object PedLb2BASIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Visible = False
    end
    object PedLb2TOTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Visible = False
    end
    object PedLb2BASICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Visible = False
    end
    object PedLb2TOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Visible = False
    end
    object PedLb2BASSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASSUB'
      Visible = False
    end
    object PedLb2TOTSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSUB'
      Visible = False
    end
    object PedLb2TOTLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLB2'
      Visible = False
    end
    object PedLb2TOTGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      Visible = False
    end
    object PedLb2TOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object PedLb2TOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Visible = False
    end
    object PedLb2BASCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASCOM'
      Visible = False
    end
    object PedLb2TOTCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOM'
      Visible = False
    end
    object PedLb2TOTDSC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSC'
      Visible = False
    end
    object PedLb2TOTDSR: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSR'
      Visible = False
    end
    object PedLb2TOTDSP: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSP'
      Visible = False
    end
    object PedLb2TOTACR: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTACR'
      Visible = False
    end
    object PedLb2TOTDCO: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedLb2CODSTR: TStringField
      DisplayWidth = 20
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedLb2TIPSTR: TStringField
      DisplayWidth = 7
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2REGIPI: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedLb2TIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2TRBIPI: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2REDIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Visible = False
    end
    object PedLb2BSCIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Visible = False
    end
    object PedLb2REGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object PedLb2TIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2TRBICM: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2REDICM: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Visible = False
    end
    object PedLb2BSCICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Visible = False
    end
    object PedLb2INCREV: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Visible = False
    end
    object PedLb2INCFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Visible = False
    end
    object PedLb2FLGSEQ: TStringField
      DisplayWidth = 1
      FieldName = 'FLGSEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2FLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2FLGREQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CODVWA: TStringField
      DisplayWidth = 14
      FieldName = 'CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object PedLb2FLGDUP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2NRORE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedLb2VMELB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VMELB2'
      Visible = False
    end
    object PedLb2VPFLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFLB2'
      Visible = False
    end
    object PedLb2CSTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTCST'
      Visible = False
    end
    object PedLb2VCHCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCHCST'
      Visible = False
    end
    object PedLb2VRECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VRECST'
      Visible = False
    end
    object PedLb2VCRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRCST'
      Visible = False
    end
    object PedLb2VCPCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VCPCST'
      Visible = False
    end
    object PedLb2VPRCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPRCST'
      Visible = False
    end
    object PedLb2VMECST: TFloatField
      DisplayWidth = 10
      FieldName = 'VMECST'
      Visible = False
    end
    object PedLb2VPFCST: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFCST'
      Visible = False
    end
    object PedLb2CSTLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'CSTLB2'
      Visible = False
    end
    object PedLb2VCRLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'VCRLB2'
      Visible = False
    end
    object PedLb2DSCPER: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPER'
      Visible = False
    end
    object PedLb2CODPRM: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODPRM'
      Visible = False
    end
    object PedLb2SEQPR2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPR2'
      Visible = False
    end
    object PedLb2CODTIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Visible = False
    end
    object PedLb2CODCAT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODCAT'
      Visible = False
    end
    object PedLb2CODMRC: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODMRC'
      Visible = False
    end
    object PedLb2FLGSEP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGSEP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2MESLIB: TStringField
      DisplayWidth = 3
      FieldName = 'MESLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2ANOLIB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ANOLIB'
      Visible = False
    end
    object PedLb2LANCST: TStringField
      DisplayWidth = 3
      FieldName = 'LANCST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2QTDQTE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDQTE'
      Visible = False
    end
    object PedLb2VPFOUT: TFloatField
      DisplayWidth = 10
      FieldName = 'VPFOUT'
      Visible = False
    end
    object PedLb2OUTCST: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTCST'
      Visible = False
    end
    object PedLb2FLGSER: TStringField
      DisplayWidth = 3
      FieldName = 'FLGSER'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2VALTMO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALTMO'
      Visible = False
    end
    object PedLb2BASISS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASISS'
      Visible = False
    end
    object PedLb2TOTISS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTISS'
      Visible = False
    end
    object PedLb2ISSLB2: TFloatField
      DisplayWidth = 10
      FieldName = 'ISSLB2'
      Visible = False
    end
    object PedLb2EMPENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPENT'
      Visible = False
    end
    object PedLb2DTEENT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEENT'
      Visible = False
    end
    object PedLb2NUMENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMENT'
      Visible = False
    end
    object PedLb2SEQEN2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQEN2'
      Visible = False
    end
    object PedLb2TIPCPA: TStringField
      DisplayWidth = 10
      FieldName = 'TIPCPA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedLb2MEDCAT: TFloatField
      DisplayWidth = 10
      FieldName = 'MEDCAT'
      Visible = False
    end
    object PedLb2BASCAT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASCAT'
      Visible = False
    end
    object PedLb2TOTCAT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCAT'
      Visible = False
    end
    object PedLb2DIFDSC: TFloatField
      DisplayWidth = 10
      FieldName = 'DIFDSC'
      Visible = False
    end
    object PedLb2MARPRE: TFloatField
      DisplayWidth = 10
      FieldName = 'MARPRE'
      Visible = False
    end
    object PedLb2MARPED: TFloatField
      DisplayWidth = 10
      FieldName = 'MARPED'
      Visible = False
    end
    object PedLb2LUCROL: TFloatField
      DisplayWidth = 10
      FieldName = 'LUCROL'
      Visible = False
    end
    object PedLb2LUCROP: TFloatField
      DisplayWidth = 10
      FieldName = 'LUCROP'
      Visible = False
    end
    object PedLb2TOTPER: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPER'
      Visible = False
    end
    object PedLb2PCOATD: TFloatField
      DisplayWidth = 10
      FieldName = 'PCOATD'
      Visible = False
    end
    object PedLb2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object UpLb2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLb2'
      'set'
      '  SEQRE2 = :SEQRE2,'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESLB2 = :DESLB2,'
      '  OBSLB2 = :OBSLB2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFLB2 = :REFLB2,'
      '  CLSIPI = :CLSIPI,'
      '  LIQLB2 = :LIQLB2,'
      '  BRTLB2 = :BRTLB2,'
      '  QTPLB2 = :QTPLB2,'
      '  QTSLB2 = :QTSLB2,'
      '  ULTQTS = :ULTQTS,'
      '  SLDLB2 = :SLDLB2,'
      '  QTDLB2 = :QTDLB2,'
      '  VLULB2 = :VLULB2,'
      '  VLQLB2 = :VLQLB2,'
      '  VCHLB2 = :VCHLB2,'
      '  VRELB2 = :VRELB2,'
      '  VCPLB2 = :VCPLB2,'
      '  VPRLB2 = :VPRLB2,'
      '  VCSLB2 = :VCSLB2,'
      '  DSCLB2 = :DSCLB2,'
      '  VDSLB2 = :VDSLB2,'
      '  DSPLB2 = :DSPLB2,'
      '  VDPLB2 = :VDPLB2,'
      '  DSRLB2 = :DSRLB2,'
      '  VDRLB2 = :VDRLB2,'
      '  PACLB2 = :PACLB2,'
      '  VACLB2 = :VACLB2,'
      '  DSCCOM = :DSCCOM,'
      '  VDSCOM = :VDSCOM,'
      '  PCOLB2 = :PCOLB2,'
      '  IPILB2 = :IPILB2,'
      '  ICMLB2 = :ICMLB2,'
      '  TOTVEN = :TOTVEN,'
      '  TOTCST = :TOTCST,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTLB2 = :TOTLB2,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTREN = :TOTREN,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  BASCOM = :BASCOM,'
      '  TOTCOM = :TOTCOM,'
      '  TOTDSC = :TOTDSC,'
      '  TOTDSR = :TOTDSR,'
      '  TOTDSP = :TOTDSP,'
      '  TOTACR = :TOTACR,'
      '  TOTDCO = :TOTDCO,'
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
      '  FLGSEQ = :FLGSEQ,'
      '  FLGRES = :FLGRES,'
      '  FLGREQ = :FLGREQ,'
      '  CODVWA = :CODVWA,'
      '  FLGDUP = :FLGDUP,'
      '  NRORE2 = :NRORE2,'
      '  VMELB2 = :VMELB2,'
      '  VPFLB2 = :VPFLB2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCRCST = :VCRCST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  CSTLB2 = :CSTLB2,'
      '  VCRLB2 = :VCRLB2,'
      '  DSCPER = :DSCPER,'
      '  CODPRM = :CODPRM,'
      '  SEQPR2 = :SEQPR2,'
      '  CODTIP = :CODTIP,'
      '  CODCAT = :CODCAT,'
      '  CODMRC = :CODMRC,'
      '  FLGSEP = :FLGSEP,'
      '  MESLIB = :MESLIB,'
      '  ANOLIB = :ANOLIB,'
      '  LANCST = :LANCST,'
      '  QTDQTE = :QTDQTE,'
      '  VPFOUT = :VPFOUT,'
      '  OUTCST = :OUTCST,'
      '  FLGSER = :FLGSER,'
      '  VALTMO = :VALTMO,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  ISSLB2 = :ISSLB2,'
      '  EMPENT = :EMPENT,'
      '  DTEENT = :DTEENT,'
      '  NUMENT = :NUMENT,'
      '  SEQEN2 = :SEQEN2,'
      '  TIPCPA = :TIPCPA,'
      '  MEDCAT = :MEDCAT,'
      '  BASCAT = :BASCAT,'
      '  TOTCAT = :TOTCAT,'
      '  DIFDSC = :DIFDSC,'
      '  MARPRE = :MARPRE,'
      '  MARPED = :MARPED,'
      '  LUCROL = :LUCROL,'
      '  LUCROP = :LUCROP,'
      '  TOTPER = :TOTPER,'
      '  PCOATD = :PCOATD,'
      '  CODTXF = :CODTXF'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQLB2 = :OLD_SEQLB2')
    InsertSQL.Strings = (
      'insert into PedLb2'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQLB2, SEQRE2, CODEIT, CODCL' +
        'P, '
      'CODGRU, '
      
        '   CODSUB, CODPRO, CODTAM, CODCOR, DESLB2, OBSLB2, CODST1, CODST' +
        '2, '
      'CODUND, '
      
        '   REFLB2, CLSIPI, LIQLB2, BRTLB2, QTPLB2, QTSLB2, ULTQTS, SLDLB' +
        '2, '
      'QTDLB2, '
      
        '   VLULB2, VLQLB2, VCHLB2, VRELB2, VCPLB2, VPRLB2, VCSLB2, DSCLB' +
        '2, '
      'VDSLB2, '
      
        '   DSPLB2, VDPLB2, DSRLB2, VDRLB2, PACLB2, VACLB2, DSCCOM, VDSCO' +
        'M, '
      'PCOLB2, '
      
        '   IPILB2, ICMLB2, TOTVEN, TOTCST, BASIPI, TOTIPI, BASICM, TOTIC' +
        'M, BASSUB, '
      
        '   TOTSUB, TOTLB2, TOTGE2, TOTREN, TOTLIQ, TOTBRT, BASCOM, TOTCO' +
        'M, '
      'TOTDSC, '
      
        '   TOTDSR, TOTDSP, TOTACR, TOTDCO, CODSTR, TIPSTR, REGIPI, TIPIP' +
        'I, '
      'TRBIPI, '
      
        '   REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCICM, INCRE' +
        'V, INCFIN, '
      
        '   FLGSEQ, FLGRES, FLGREQ, CODVWA, FLGDUP, NRORE2, VMELB2, VPFLB' +
        '2, '
      'CSTCST, '
      
        '   VCHCST, VRECST, VCRCST, VCPCST, VPRCST, VMECST, VPFCST, CSTLB' +
        '2, '
      'VCRLB2, '
      
        '   DSCPER, CODPRM, SEQPR2, CODTIP, CODCAT, CODMRC, FLGSEP, MESLI' +
        'B, '
      'ANOLIB, '
      
        '   LANCST, QTDQTE, VPFOUT, OUTCST, FLGSER, VALTMO, BASISS, TOTIS' +
        'S, '
      'ISSLB2, '
      
        '   EMPENT, DTEENT, NUMENT, SEQEN2, TIPCPA, MEDCAT, BASCAT, TOTCA' +
        'T, '
      'DIFDSC, '
      '   MARPRE, MARPED, LUCROL, LUCROP, TOTPER, PCOATD, CODTXF)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQLB2, :SEQRE2, :CODEIT' +
        ', '
      ':CODCLP, '
      
        '   :CODGRU, :CODSUB, :CODPRO, :CODTAM, :CODCOR, :DESLB2, :OBSLB2' +
        ', '
      ':CODST1, '
      
        '   :CODST2, :CODUND, :REFLB2, :CLSIPI, :LIQLB2, :BRTLB2, :QTPLB2' +
        ', :QTSLB2, '
      
        '   :ULTQTS, :SLDLB2, :QTDLB2, :VLULB2, :VLQLB2, :VCHLB2, :VRELB2' +
        ', :VCPLB2, '
      
        '   :VPRLB2, :VCSLB2, :DSCLB2, :VDSLB2, :DSPLB2, :VDPLB2, :DSRLB2' +
        ', :VDRLB2, '
      
        '   :PACLB2, :VACLB2, :DSCCOM, :VDSCOM, :PCOLB2, :IPILB2, :ICMLB2' +
        ', :TOTVEN, '
      
        '   :TOTCST, :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB' +
        ', :TOTLB2, '
      
        '   :TOTGE2, :TOTREN, :TOTLIQ, :TOTBRT, :BASCOM, :TOTCOM, :TOTDSC' +
        ', '
      ':TOTDSR, '
      
        '   :TOTDSP, :TOTACR, :TOTDCO, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI' +
        ', :TRBIPI, '
      
        '   :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM' +
        ', :INCREV, '
      
        '   :INCFIN, :FLGSEQ, :FLGRES, :FLGREQ, :CODVWA, :FLGDUP, :NRORE2' +
        ', '
      ':VMELB2, '
      
        '   :VPFLB2, :CSTCST, :VCHCST, :VRECST, :VCRCST, :VCPCST, :VPRCST' +
        ', '
      ':VMECST, '
      
        '   :VPFCST, :CSTLB2, :VCRLB2, :DSCPER, :CODPRM, :SEQPR2, :CODTIP' +
        ', '
      ':CODCAT, '
      
        '   :CODMRC, :FLGSEP, :MESLIB, :ANOLIB, :LANCST, :QTDQTE, :VPFOUT' +
        ', '
      ':OUTCST, '
      
        '   :FLGSER, :VALTMO, :BASISS, :TOTISS, :ISSLB2, :EMPENT, :DTEENT' +
        ', '
      ':NUMENT, '
      
        '   :SEQEN2, :TIPCPA, :MEDCAT, :BASCAT, :TOTCAT, :DIFDSC, :MARPRE' +
        ', '
      ':MARPED, '
      '   :LUCROL, :LUCROP, :TOTPER, :PCOATD, :CODTXF)')
    DeleteSQL.Strings = (
      'delete from PedLb2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQLB2 = :OLD_SEQLB2')
    Left = 2
    Top = 408
  end
  object DsLb2: TDataSource
    DataSet = PedLb2
    OnDataChange = DsLb2DataChange
    Left = 30
    Top = 380
  end
  object DsLib: TDataSource
    DataSet = PedLib
    Left = 30
    Top = 352
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 30
    Top = 408
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.*,DscPfa,NomCli,NomVen,NomTip,NomEmp'
      'From PedRes LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'
      
        '                                                  AND (PedRes.Ti' +
        'pPfa = EstPfa.TipPfa)'
      
        '                        LEFT JOIN FinCli ON (PedRes.CodCli = Fin' +
        'Cli.CodCli)'
      
        '                     LEFT JOIN FinVen ON (PedRes.CodVen = FinVen' +
        '.CodVen)'
      
        '                     LEFT JOIN PedTip ON (PedRes.CodTip = PedTip' +
        '.CodTip)'
      
        '                    LEFT JOIN GerEmp ON (PedRes.CodEmp = GerEmp.' +
        'CodEmp)'
      'Where PedRes.CodEmp = :CodEmp'
      '     and PedRes.DteRes = :DteRes'
      '     and PedRes.NumRes = :NumRes'
      'Order by PedRes.CodEmp,PedRes.DteRes,PedRes.NumRes')
    ValidateWithMask = True
    Left = 2
    Top = 324
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
      end>
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedResDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object PedResNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      FixedChar = True
      Size = 8
    end
    object PedResCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedResCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedResCODTIP: TIntegerField
      FieldName = 'CODTIP'
    end
    object PedResPRFRES: TIntegerField
      FieldName = 'PRFRES'
    end
    object PedResDTFRES: TDateTimeField
      FieldName = 'DTFRES'
    end
    object PedResCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
    end
    object PedResFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object PedResUFERES: TStringField
      FieldName = 'UFERES'
      FixedChar = True
      Size = 2
    end
    object PedResCGCCLI: TStringField
      FieldName = 'CGCCLI'
      FixedChar = True
      Size = 18
    end
    object PedResINSCLI: TStringField
      FieldName = 'INSCLI'
      FixedChar = True
      Size = 18
    end
    object PedResCEPCLI: TStringField
      FieldName = 'CEPCLI'
      FixedChar = True
      Size = 8
    end
    object PedResTENCLI: TStringField
      FieldName = 'TENCLI'
      FixedChar = True
      Size = 10
    end
    object PedResENDCLI: TStringField
      FieldName = 'ENDCLI'
      FixedChar = True
      Size = 70
    end
    object PedResREFCLI: TStringField
      FieldName = 'REFCLI'
      FixedChar = True
      Size = 40
    end
    object PedResNUMCLI: TStringField
      FieldName = 'NUMCLI'
      FixedChar = True
      Size = 10
    end
    object PedResBAICLI: TStringField
      FieldName = 'BAICLI'
      FixedChar = True
    end
    object PedResCIDCLI: TStringField
      FieldName = 'CIDCLI'
      FixedChar = True
    end
    object PedResUFECLI: TStringField
      FieldName = 'UFECLI'
      FixedChar = True
      Size = 2
    end
    object PedResINECLI: TStringField
      FieldName = 'INECLI'
      FixedChar = True
      Size = 18
    end
    object PedResCGECLI: TStringField
      FieldName = 'CGECLI'
      FixedChar = True
      Size = 18
    end
    object PedResOBSRES: TStringField
      FieldName = 'OBSRES'
      FixedChar = True
      Size = 240
    end
    object PedResQTIRES: TIntegerField
      FieldName = 'QTIRES'
    end
    object PedResSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
    end
    object PedResSEQPAR: TIntegerField
      FieldName = 'SEQPAR'
    end
    object PedResLINRES: TIntegerField
      FieldName = 'LINRES'
    end
    object PedResQTLRES: TIntegerField
      FieldName = 'QTLRES'
    end
    object PedResQTFRES: TIntegerField
      FieldName = 'QTFRES'
    end
    object PedResBASIPI: TFloatField
      FieldName = 'BASIPI'
    end
    object PedResTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object PedResBASICM: TFloatField
      FieldName = 'BASICM'
    end
    object PedResTOTICM: TFloatField
      FieldName = 'TOTICM'
    end
    object PedResBASSUB: TFloatField
      FieldName = 'BASSUB'
    end
    object PedResTOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object PedResTOTVEN: TFloatField
      FieldName = 'TOTVEN'
    end
    object PedResTOTCST: TFloatField
      FieldName = 'TOTCST'
    end
    object PedResTOTRES: TFloatField
      FieldName = 'TOTRES'
    end
    object PedResTOTREN: TFloatField
      FieldName = 'TOTREN'
    end
    object PedResTOTGER: TFloatField
      FieldName = 'TOTGER'
    end
    object PedResTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object PedResTOTBRT: TFloatField
      FieldName = 'TOTBRT'
    end
    object PedResBASCOM: TFloatField
      FieldName = 'BASCOM'
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
    end
    object PedResDSCCOM: TFloatField
      FieldName = 'DSCCOM'
    end
    object PedResTOTDCO: TFloatField
      FieldName = 'TOTDCO'
    end
    object PedResMEDDCO: TFloatField
      FieldName = 'MEDDCO'
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
    end
    object PedResMEDPRM: TFloatField
      FieldName = 'MEDPRM'
    end
    object PedResTOTDSC: TFloatField
      FieldName = 'TOTDSC'
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
    end
    object PedResTOTDSP: TFloatField
      FieldName = 'TOTDSP'
    end
    object PedResTOTACR: TFloatField
      FieldName = 'TOTACR'
    end
    object PedResDESREG: TStringField
      FieldName = 'DESREG'
      FixedChar = True
      Size = 100
    end
    object PedResCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object PedResFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      FixedChar = True
      Size = 3
    end
    object PedResDTLPSQ: TDateTimeField
      FieldName = 'DTLPSQ'
    end
    object PedResFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedResFLGAVI: TStringField
      FieldName = 'FLGAVI'
      FixedChar = True
      Size = 1
    end
    object PedResFLGOCO: TStringField
      FieldName = 'FLGOCO'
      FixedChar = True
      Size = 1
    end
    object PedResSEQRES: TStringField
      FieldName = 'SEQRES'
      FixedChar = True
      Size = 22
    end
    object PedResATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedResINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedResCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedResCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object PedResTIPIPI: TStringField
      FieldName = 'TIPIPI'
      FixedChar = True
      Size = 7
    end
    object PedResTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedResREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object PedResBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object PedResCODICM: TStringField
      FieldName = 'CODICM'
      FixedChar = True
    end
    object PedResTIPICM: TStringField
      FieldName = 'TIPICM'
      FixedChar = True
      Size = 7
    end
    object PedResTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedResREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object PedResBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object PedResINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object PedResINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object PedResFLGCOM: TStringField
      FieldName = 'FLGCOM'
      FixedChar = True
      Size = 1
    end
    object PedResDTECOM: TDateTimeField
      FieldName = 'DTECOM'
    end
    object PedResHRECOM: TStringField
      FieldName = 'HRECOM'
      FixedChar = True
      Size = 8
    end
    object PedResOBSCOM: TMemoField
      FieldName = 'OBSCOM'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUCOM: TIntegerField
      FieldName = 'USUCOM'
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      FixedChar = True
      Size = 3
    end
    object PedResFLGFIN: TStringField
      FieldName = 'FLGFIN'
      FixedChar = True
      Size = 1
    end
    object PedResDTEFIN: TDateTimeField
      FieldName = 'DTEFIN'
    end
    object PedResHREFIN: TStringField
      FieldName = 'HREFIN'
      FixedChar = True
      Size = 8
    end
    object PedResOBSFIN: TMemoField
      FieldName = 'OBSFIN'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFIN: TIntegerField
      FieldName = 'USUFIN'
    end
    object PedResDTEREJ: TDateTimeField
      FieldName = 'DTEREJ'
    end
    object PedResHREREJ: TStringField
      FieldName = 'HREREJ'
      FixedChar = True
      Size = 8
    end
    object PedResOBSREJ: TMemoField
      FieldName = 'OBSREJ'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUREJ: TIntegerField
      FieldName = 'USUREJ'
    end
    object PedResTXFIPI: TStringField
      FieldName = 'TXFIPI'
      FixedChar = True
      Size = 160
    end
    object PedResTXFICM: TStringField
      FieldName = 'TXFICM'
      FixedChar = True
      Size = 160
    end
    object PedResFLGSLD: TStringField
      FieldName = 'FLGSLD'
      FixedChar = True
      Size = 1
    end
    object PedResFATRES: TFloatField
      FieldName = 'FATRES'
    end
    object PedResFATGER: TFloatField
      FieldName = 'FATGER'
    end
    object PedResDEVRES: TFloatField
      FieldName = 'DEVRES'
    end
    object PedResDEVGER: TFloatField
      FieldName = 'DEVGER'
    end
    object PedResSLDRES: TFloatField
      FieldName = 'SLDRES'
    end
    object PedResSLDGER: TFloatField
      FieldName = 'SLDGER'
    end
    object PedResMEDDSC: TFloatField
      FieldName = 'MEDDSC'
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      FixedChar = True
      Size = 3
    end
    object PedResFLGGER: TStringField
      FieldName = 'FLGGER'
      FixedChar = True
      Size = 3
    end
    object PedResLIBSLD: TStringField
      FieldName = 'LIBSLD'
      FixedChar = True
      Size = 3
    end
    object PedResDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
    end
    object PedResHREDEL: TStringField
      FieldName = 'HREDEL'
      FixedChar = True
      Size = 8
    end
    object PedResOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUDEL: TIntegerField
      FieldName = 'USUDEL'
    end
    object PedResDTEFPE: TDateTimeField
      FieldName = 'DTEFPE'
    end
    object PedResHREFPE: TStringField
      FieldName = 'HREFPE'
      FixedChar = True
      Size = 8
    end
    object PedResOBSFPE: TMemoField
      FieldName = 'OBSFPE'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFPE: TIntegerField
      FieldName = 'USUFPE'
    end
    object PedResFLGREQ: TStringField
      FieldName = 'FLGREQ'
      FixedChar = True
      Size = 3
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object PedResFLGRES: TStringField
      FieldName = 'FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      FixedChar = True
      Size = 45
    end
    object PedResQTDIMP: TIntegerField
      FieldName = 'QTDIMP'
    end
    object PedResEMPCTA: TIntegerField
      FieldName = 'EMPCTA'
    end
    object PedResDTECTA: TDateTimeField
      FieldName = 'DTECTA'
    end
    object PedResNUMCTA: TIntegerField
      FieldName = 'NUMCTA'
    end
    object PedResPRCCTA: TStringField
      FieldName = 'PRCCTA'
      FixedChar = True
      Size = 3
    end
    object PedResMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object PedResMESRES: TStringField
      FieldName = 'MESRES'
      FixedChar = True
      Size = 3
    end
    object PedResANORES: TIntegerField
      FieldName = 'ANORES'
    end
    object PedResFLGPRO: TStringField
      FieldName = 'FLGPRO'
      FixedChar = True
      Size = 1
    end
    object PedResPEDPRO: TStringField
      FieldName = 'PEDPRO'
      FixedChar = True
      Size = 3
    end
    object PedResDTEPRO: TDateTimeField
      FieldName = 'DTEPRO'
    end
    object PedResHREPRO: TStringField
      FieldName = 'HREPRO'
      FixedChar = True
      Size = 8
    end
    object PedResOBSPRO: TMemoField
      FieldName = 'OBSPRO'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUPRO: TIntegerField
      FieldName = 'USUPRO'
    end
    object PedResCLITAB: TStringField
      FieldName = 'CLITAB'
      FixedChar = True
      Size = 23
    end
    object PedResCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object PedResCODGCL: TIntegerField
      FieldName = 'CODGCL'
    end
    object PedResFLGCON: TStringField
      FieldName = 'FLGCON'
      FixedChar = True
      Size = 1
    end
    object PedResDTECON: TDateTimeField
      FieldName = 'DTECON'
    end
    object PedResHRECON: TStringField
      FieldName = 'HRECON'
      FixedChar = True
      Size = 8
    end
    object PedResOBSCON: TMemoField
      FieldName = 'OBSCON'
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUCON: TIntegerField
      FieldName = 'USUCON'
    end
    object PedResTIPCOM: TStringField
      FieldName = 'TIPCOM'
      FixedChar = True
    end
    object PedResCODCOM: TStringField
      FieldName = 'CODCOM'
      FixedChar = True
      Size = 3
    end
    object PedResFLGSER: TStringField
      FieldName = 'FLGSER'
      FixedChar = True
      Size = 3
    end
    object PedResBASISS: TFloatField
      FieldName = 'BASISS'
    end
    object PedResTOTISS: TFloatField
      FieldName = 'TOTISS'
    end
    object PedResMEDCAT: TFloatField
      FieldName = 'MEDCAT'
    end
    object PedResBASCAT: TFloatField
      FieldName = 'BASCAT'
    end
    object PedResTOTCAT: TFloatField
      FieldName = 'TOTCAT'
    end
    object PedResTIPCPA: TStringField
      FieldName = 'TIPCPA'
      FixedChar = True
      Size = 10
    end
    object PedResEMPPED: TIntegerField
      FieldName = 'EMPPED'
    end
    object PedResDTEPED: TDateTimeField
      FieldName = 'DTEPED'
    end
    object PedResNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object PedResDSCPFA: TStringField
      FieldName = 'DSCPFA'
      FixedChar = True
      Size = 100
    end
    object PedResNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedResNOMVEN: TStringField
      FieldName = 'NOMVEN'
      FixedChar = True
      Size = 40
    end
    object PedResNOMTIP: TStringField
      FieldName = 'NOMTIP'
      FixedChar = True
      Size = 40
    end
    object PedResNOMEMP: TStringField
      FieldName = 'NOMEMP'
      FixedChar = True
      Size = 40
    end
  end
  object DsRes: TDataSource
    DataSet = PedRes
    Left = 30
    Top = 324
  end
end
