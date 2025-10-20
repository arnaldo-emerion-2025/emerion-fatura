inherited fmManDes: TfmManDes
  Left = 387
  Top = 211
  Caption = 'Minuta de Despacho'
  ClientHeight = 346
  ClientWidth = 687
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 98
    Width = 687
    Height = 248
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
    Left = 439
    Top = 328
    Width = 135
    Height = 16
    Alignment = taRightJustify
    Caption = 'F12-Concluir Esc-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape3: TShape
    Left = 785
    Top = 377
    Width = 1
    Height = 33
  end
  object grPe21: TdxDBGraphicEdit
    Left = 1
    Top = 136
    Width = 686
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
    Height = 165
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 1
    Top = 99
    Width = 685
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
    Top = 101
    Width = 678
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
      Left = 35
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
    object Label10: TLabel
      Left = 130
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
    object Label15: TLabel
      Left = 171
      Top = 8
      Width = 61
      Height = 14
      Caption = 'Conteudo'
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
      Left = 499
      Top = 8
      Width = 68
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso Bruto'
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
      Left = 616
      Top = 8
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso Liq.'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 98
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 687
      Height = 98
      Align = alClient
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
      Width = 60
      Height = 14
      Caption = 'Pedido No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 78
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
    object Label46: TLabel
      Left = 78
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
    object Label2: TLabel
      Left = 406
      Top = 30
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
      Left = 457
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
    object Label6: TLabel
      Left = 78
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
    object Label16: TLabel
      Left = 406
      Top = 54
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
    object Label53: TLabel
      Left = 457
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
    object Label13: TLabel
      Left = 4
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
    object Label14: TLabel
      Left = 78
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
    object Label12: TLabel
      Left = 406
      Top = 78
      Width = 29
      Height = 14
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 457
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
    object Label3: TLabel
      Left = 189
      Top = 6
      Width = 80
      Height = 14
      Caption = 'Nota Fiscal No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 302
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
    object EdUfeFat: TdxDBColorEdit
      Left = 465
      Top = 50
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
      Left = 186
      Top = 26
      Width = 215
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
      DataField = 'APEEMP'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 186
      Top = 50
      Width = 215
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
      DataField = 'NOMCLI'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeVen: TdxDBColorEdit
      Left = 186
      Top = 74
      Width = 215
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
      DataField = 'APEVEN'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
      Left = 84
      Top = 2
      Width = 93
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
      Left = 84
      Top = 26
      Width = 93
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
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 190
      Top = 29
      Width = 207
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
      Left = 465
      Top = 26
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
      Left = 84
      Top = 50
      Width = 93
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
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 190
      Top = 53
      Width = 207
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
      Left = 467
      Top = 53
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
      Left = 84
      Top = 74
      Width = 93
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
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeVen: TPanel
      Left = 190
      Top = 77
      Width = 207
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
    object EdFrtFat: TdxDBColorPickEdit
      Left = 465
      Top = 74
      Width = 57
      Hint = 'Tipo de Frete ( CIF - Emitente ou FOB - Destinatario )'
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
      TabOrder = 13
      AutoSize = False
      DataField = 'FRTFAT'
      DataSource = DsFat
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'CIF'
        'FOB')
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 64
    end
    object pnNumRes: TPanel
      Left = 86
      Top = 6
      Width = 86
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
      TabOrder = 14
    end
    object EdNroNFs: TdxDBColorEdit
      Left = 308
      Top = 2
      Width = 93
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
      DataField = 'NRONFS'
      DataSource = DsFat
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNroNfs: TPanel
      Left = 310
      Top = 6
      Width = 86
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
      TabOrder = 16
    end
  end
  object Panel3: TPanel
    Left = 3
    Top = 302
    Width = 683
    Height = 22
    BevelOuter = bvNone
    TabOrder = 4
    OnExit = Panel3Exit
    object EdQtdVol: TdxDBColorCurrencyEdit
      Left = -1
      Top = -1
      Width = 118
      Hint = 'Quantidade'
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
      OnExit = EdQtdVolExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTDVOL'
      DataSource = DsDes
      DecimalPlaces = 0
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPesDes: TdxDBColorCurrencyEdit
      Left = 459
      Top = -1
      Width = 113
      Hint = 'Peso'
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
      OnKeyDown = EdCodUndKeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PESDES'
      DataSource = DsDes
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCon: TdxDBColorEdit
      Left = 169
      Top = -1
      Width = 291
      Hint = 'Conteudo'
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
      OnKeyDown = EdCodUndKeyDown
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NOMCON'
      DataSource = DsDes
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 117
      Top = -1
      Width = 52
      Hint = 'Unidade de Medida'
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
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsDes
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdPesliqDes: TdxDBColorCurrencyEdit
      Left = 571
      Top = -1
      Width = 113
      Hint = 'Peso'
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
      OnKeyDown = EdCodUndKeyDown
      OnKeyPress = EdPesliqDesKeyPress
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PESLIQDES'
      DataSource = DsDes
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object grDes: ThGrid
    Left = 3
    Top = 138
    Width = 680
    Height = 159
    Selected.Strings = (
      'QTDVOL'#9'15'#9' '#9'F'
      'CODUND'#9'8'#9' '#9'F'
      'NOMCON'#9'42'#9' '#9'F'
      'PESDES'#9'14'#9' '#9'F'
      'PESLIQDES'#9'14'#9'PESLIQDES'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDes
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
    OnKeyDown = grDesKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object FatPed: TwwQuery
    CachedUpdates = True
    AfterOpen = FatPedAfterOpen
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select '#39'FP'#39' Tip, FatPed.CodEmp,FatPed.DteRes,FatPed.NumRes,FatPe' +
        'd.SeqLib,FatPed.SeqFat,'
      
        'FatPed.DteFat,FatPed.UfeFat,FatPed.FrtFat,FatPed.NroNfs,FatPed.C' +
        'odCli,FatPed.CodVen,'
      
        'FatPed.SeqDes,FatPed.QtiDes,FatPed.ObsDes,GerEmp.ApeEmp,Cast(Fin' +
        'Ven.ApeVen as varchar(20))as APEVEN,Cast(FinCli.NomCli as varcha' +
        'r(70)) As NomCli,'
      
        'Cast(FinCli.ObsCli as varchar(2000))as ObsCli,FinCli.TefCli,FinC' +
        'li.CefCli,CAst(FinCli.EnfCli as varchar(70))as EnfCli,Cast(FinCl' +
        'i.RffCli as Varchar(40))as RFFCli,FinCli.NrfCli,'
      'FinCli.BafCli,FinCli.CifCli,FinCli.UffCli'
      'From FatPed'
      'LEFT JOIN GerEmp ON (FatPed.CodEmp = GerEmp.CodEmp)'
      'LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)'
      'LEFT JOIN FinVen ON (FatPed.CodVen = FinVen.CodVen)'
      'Where FatPed.CodEmp = :CodEmp'
      'and FatPed.dtefat = :dtefat'
      'and FatPed.NroNfs = :NroNfs'
      'and FatPed.SitFat = '#39'Faturado'#39
      'and FatPed.ENVNFE = '#39'Sim'#39
      'and '#39'FP'#39' = :Tip'
      'union all'
      
        'Select '#39'FG'#39' Tip, FatGer.CodEmp,FatGer.dteger,FatGer.numger,FatGe' +
        'r.seqite,FatGer.seqser,'
      
        'FatGer.DteFat,FatGer.ufeger,FatGer.frtger,FatGer.NroNfs,FatGer.C' +
        'odCli,FatGer.CodVen,'
      
        'FatGer.seqite,FatGer.qtiger,FatGer.ObsDes,GerEmp.ApeEmp,Cast(Fin' +
        'Ven.ApeVen as varchar(20))as APEVEN,Cast(FinCli.NomCli as varcha' +
        'r(70))As NomCli,'
      
        'Cast(FinCli.ObsCli as varchar(2000))as ObsCli,FinCli.TefCli,FinC' +
        'li.CefCli,CAst(FinCli.EnfCli as varchar(70))as EnfCli,Cast(FinCl' +
        'i.RffCli as Varchar(40))as RFFCli,FinCli.NrfCli,'
      'FinCli.BafCli,FinCli.CifCli,FinCli.UffCli'
      'From FatGer'
      'LEFT JOIN GerEmp ON (FatGer.CodEmp = GerEmp.CodEmp)'
      'LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)'
      'LEFT JOIN FinVen ON (FatGer.CodVen = FinVen.CodVen)'
      'Where FatGer.CodEmp = :CodEmp'
      'and FatGer.dtefat = :dtefat'
      'and FatGer.NroNfs = :NroNfs'
      'and FatGer.sitger = '#39'Faturado'#39
      'and FatGer.ENVNFE = '#39'Sim'#39
      'and '#39'FG'#39' = :Tip'
      'union all'
      
        'Select '#39'CN'#39' Tip, CmpNfs.CodEmp,CmpNfs.dtenfs,0 numnfs,CmpNfs.seq' +
        'ite,CmpNfs.seqnfs,'
      
        'CmpNfs.DteFat,CmpNfs.ufenfs,CmpNfs.frtnfs,CmpNfs.NroNfs,CmpNfs.c' +
        'odfor,0 CodVen,'
      
        'CmpNfs.seqnfs,CmpNfs.qtinfs,CmpNfs.ObsDes,GerEmp.ApeEmp,Cast('#39#39' ' +
        'as VarChar(20)) ApeVen,Cast(FinFor.nomfor as VarChar(70))as NomC' +
        'li,'
      
        'Cast(FinFor.obsfor as VarChar(2000)),FinFor.tenfor,FinFor.cepfor' +
        ',Cast(FinFor.endfor as VarChar(70)),Cast(FinFor.reffor as VarCha' +
        'r(40)),FinFor.numfor,'
      'FinFor.baifor,FinFor.cidfor,FinFor.uferet'
      'From CmpNfs'
      'LEFT JOIN GerEmp ON (CmpNfs.CodEmp = GerEmp.CodEmp)'
      'LEFT JOIN FinFor ON (CmpNfs.codfor = FinFor.codfor)'
      'Where CmpNfs.CodEmp = :CodEmp'
      'and CmpNfs.dtefat = :dtefat'
      'and CmpNfs.NroNfs = :NroNfs'
      'and CmpNfs.sitnfs = '#39'Faturado'#39
      'and CmpNfs.ENVNFE = '#39'Sim'#39
      'and '#39'CN'#39' = :Tip')
    UpdateObject = upCmpNfs
    ValidateWithMask = True
    Left = 4
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dtefat'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NroNfs'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tip'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dtefat'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NroNfs'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tip'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dtefat'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NroNfs'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tip'
        ParamType = ptUnknown
      end>
    object FatPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object FatPedDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object FatPedNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object FatPedSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
    end
    object FatPedSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
    end
    object FatPedDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
    end
    object FatPedUFEFAT: TStringField
      FieldName = 'UFEFAT'
      FixedChar = True
      Size = 2
    end
    object FatPedFRTFAT: TStringField
      FieldName = 'FRTFAT'
      FixedChar = True
      Size = 3
    end
    object FatPedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object FatPedCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FatPedOBSDES: TStringField
      FieldName = 'OBSDES'
      Size = 150
    end
    object FatPedAPEEMP: TStringField
      FieldName = 'APEEMP'
      FixedChar = True
      Size = 30
    end
    object FatPedAPEVEN: TStringField
      FieldName = 'APEVEN'
    end
    object FatPedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 70
    end
    object FatPedOBSCLI: TMemoField
      FieldName = 'OBSCLI'
      BlobType = ftMemo
      Size = 2000
    end
    object FatPedTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Size = 10
    end
    object FatPedCEFCLI: TStringField
      FieldName = 'CEFCLI'
      FixedChar = True
      Size = 8
    end
    object FatPedENFCLI: TStringField
      FieldName = 'ENFCLI'
      Size = 70
    end
    object FatPedRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Size = 40
    end
    object FatPedNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Size = 10
    end
    object FatPedBAFCLI: TStringField
      FieldName = 'BAFCLI'
    end
    object FatPedCIFCLI: TStringField
      FieldName = 'CIFCLI'
    end
    object FatPedUFFCLI: TStringField
      FieldName = 'UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatPedNRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object FatPedSEQDES: TIntegerField
      FieldName = 'SEQDES'
    end
    object FatPedQTIDES: TIntegerField
      FieldName = 'QTIDES'
    end
    object FatPedTIP: TStringField
      FieldName = 'TIP'
      FixedChar = True
      Size = 2
    end
  end
  object FatDes: TwwQuery
    CachedUpdates = True
    AfterOpen = FatDesAfterOpen
    OnNewRecord = FatDesNewRecord
    DatabaseName = 'ISade'
    DataSource = DsFat
    SQL.Strings = (
      'Select * From FatDes'
      'Where FatDes.CodEmp = :CodEmp'
      '     and FatDes.DteFat = :DteFat'
      '     and FatDes.NroNfs = :NroNfs'
      'Order by FatDes.SEQDES')
    UpdateObject = UpDes
    ValidateWithMask = True
    Left = 4
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEFAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NRONFS'
        ParamType = ptUnknown
      end>
    object FatDesQTDVOL: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATDES.QTDVOL'
      DisplayFormat = '####0'
    end
    object FatDesCODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'CODUND'
      Origin = 'ISADE.FATDES.CODUND'
      FixedChar = True
      Size = 3
    end
    object FatDesNOMCON: TStringField
      DisplayLabel = ' '
      DisplayWidth = 42
      FieldName = 'NOMCON'
      Origin = 'ISADE.FATDES.NOMCON'
      FixedChar = True
      Size = 40
    end
    object FatDesPESDES: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'PESDES'
      Origin = 'ISADE.FATDES.PESDES'
      DisplayFormat = '#,##0.0000'
      Precision = 4
    end
    object FatDesPESLIQDES: TFloatField
      DisplayWidth = 14
      FieldName = 'PESLIQDES'
      Origin = 'ISADE.FATDES.PESLIQDES'
      DisplayFormat = '#,##0.0000'
    end
    object FatDesCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATDES.CODEMP'
      Visible = False
    end
    object FatDesDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATDES.DTERES'
      Visible = False
    end
    object FatDesNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATDES.NUMRES'
      Visible = False
    end
    object FatDesSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATDES.SEQLIB'
      Visible = False
    end
    object FatDesSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATDES.SEQFAT'
      Visible = False
    end
    object FatDesSEQDES: TIntegerField
      FieldName = 'SEQDES'
      Origin = 'ISADE.FATDES.SEQDES'
      Visible = False
    end
    object FatDesNRODES: TIntegerField
      FieldName = 'NRODES'
      Origin = 'ISADE.FATDES.NRODES'
      Visible = False
    end
    object FatDesNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATDES.NRONFS'
      Visible = False
    end
    object FatDesDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.FATDES.DTEFAT'
      Visible = False
    end
  end
  object UpFat: TUpdateSQL
    ModifySQL.Strings = (
      'update FatPed'
      'set'
      '  OBSDES = :OBSDES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    InsertSQL.Strings = (
      'insert into FatPed'
      '  (OBSDES)'
      'values'
      '  (:OBSDES)')
    DeleteSQL.Strings = (
      'delete from FatPed'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    Left = 4
    Top = 300
  end
  object DsDes: TDataSource
    DataSet = FatDes
    Left = 32
    Top = 192
  end
  object DsFat: TDataSource
    DataSet = FatPed
    Left = 32
    Top = 164
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 220
  end
  object UpDes: TUpdateSQL
    ModifySQL.Strings = (
      'update FatDes'
      'set'
      '  CODEMP = :CODEMP,'
      '  SEQDES = :SEQDES,'
      '  QTDVOL = :QTDVOL,'
      '  CODUND = :CODUND,'
      '  NOMCON = :NOMCON,'
      '  PESDES = :PESDES,'
      '  NRODES = :NRODES,'
      '  NRONFS = :NRONFS,'
      '  DTEFAT = :DTEFAT,'
      '  PESLIQDES = :PESLIQDES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  SEQDES = :OLD_SEQDES and'
      '  NRONFS = :OLD_NRONFS and'
      '  DTEFAT = :OLD_DTEFAT')
    InsertSQL.Strings = (
      'insert into FatDes'
      
        '  (CODEMP, SEQDES, QTDVOL, CODUND, NOMCON, PESDES, NRODES, NRONF' +
        'S, DTEFAT, '
      '   PESLIQDES)'
      'values'
      
        '  (:CODEMP, :SEQDES, :QTDVOL, :CODUND, :NOMCON, :PESDES, :NRODES' +
        ', :NRONFS, '
      '   :DTEFAT, :PESLIQDES)')
    DeleteSQL.Strings = (
      'delete from FatDes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  SEQDES = :OLD_SEQDES and'
      '  NRONFS = :OLD_NRONFS and'
      '  DTEFAT = :OLD_DTEFAT')
    Left = 32
    Top = 220
  end
  object upFatGer: TUpdateSQL
    ModifySQL.Strings = (
      'update FatGer'
      'set'
      '  OBSDES = :OBSDES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    InsertSQL.Strings = (
      'insert into FatGer'
      '  (OBSDES)'
      'values'
      '  (:OBSDES)')
    DeleteSQL.Strings = (
      'delete from FatGer'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    Left = 36
    Top = 300
  end
  object upCmpNfs: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  OBSDES = :OBSDES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      '  (OBSDES)'
      'values'
      '  (:OBSDES)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEFAT = :OLD_DTEFAT and'
      '  NRONFS = :OLD_NRONFS')
    Left = 4
    Top = 220
  end
end
