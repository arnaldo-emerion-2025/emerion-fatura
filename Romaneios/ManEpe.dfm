inherited fmManEpe: TfmManEpe
  Left = 0
  Caption = 'Emissão de Romaneios'
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
    Left = 636
    Top = 464
    Width = 147
    Height = 16
    Caption = 'F12-Continuar Esc-Sair'
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
  object Label43: TLabel
    Left = 654
    Top = 446
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
  object Label44: TLabel
    Left = 565
    Top = 446
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
  object Label3: TLabel
    Left = 565
    Top = 396
    Width = 67
    Height = 14
    Caption = 'Total Itens'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 565
    Top = 421
    Width = 65
    Height = 14
    Caption = 'Total Geral'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 654
    Top = 421
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
  object Label19: TLabel
    Left = 654
    Top = 396
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
  object EdTotGer: TdxDBColorCurrencyEdit
    Left = 661
    Top = 417
    Width = 126
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
    DataSource = DsOrc
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdTotOrc: TdxDBColorCurrencyEdit
    Left = 661
    Top = 392
    Width = 126
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
    DataField = 'TOTORC'
    DataSource = DsOrc
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object grOr21: TdxDBGraphicEdit
    Left = 1
    Top = 161
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
    TabOrder = 2
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 231
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 1
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
    TabOrder = 0
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
    Top = 126
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
    TabOrder = 1
    object Label32: TLabel
      Left = 2
      Top = 8
      Width = 83
      Height = 14
      Caption = 'Nosso Codigo'
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
      Left = 444
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
      Left = 539
      Top = 8
      Width = 86
      Height = 14
      Caption = 'Preço Unitario'
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
      Left = 632
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
    object Label11: TLabel
      Left = 149
      Top = 8
      Width = 110
      Height = 14
      Caption = 'Descrição do Item'
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
  object EdObsOr2: TdxDBColorEdit
    Left = 2
    Top = 392
    Width = 560
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
    DataField = 'OBSOR2'
    DataSource = DsOr2
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnObsOr2: TPanel
    Left = 6
    Top = 395
    Width = 552
    Height = 14
    Hint = 'Observações Sobre o Item'
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object EdSeqOr2: TdxDBColorCurrencyEdit
    Left = 661
    Top = 442
    Width = 126
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
    DataField = 'SEQOR2'
    DataSource = DsOr2
    DecimalPlaces = 0
    DisplayFormat = '###0'
    Nullable = False
    UseThousandSeparator = True
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnNroOr2: TPanel
    Left = 663
    Top = 446
    Width = 119
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
    TabOrder = 6
  end
  object pnTotOrc: TPanel
    Left = 663
    Top = 395
    Width = 120
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object pnTotGer: TPanel
    Left = 663
    Top = 420
    Width = 120
    Height = 14
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 125
    BevelOuter = bvNone
    TabOrder = 11
    OnExit = Panel2Exit
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
      Top = 7
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
    object Label4: TLabel
      Left = 4
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
    object Label13: TLabel
      Left = 4
      Top = 79
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
      Top = 103
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
      Left = 159
      Top = 103
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
      Left = 159
      Top = 79
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
      Left = 159
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
    object Label46: TLabel
      Left = 159
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
    object Label9: TLabel
      Left = 159
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
    object Label2: TLabel
      Left = 576
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
    object Label16: TLabel
      Left = 576
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
    object Label53: TLabel
      Left = 663
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
    object Label68: TLabel
      Left = 663
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
    object Label31: TLabel
      Left = 576
      Top = 79
      Width = 81
      Height = 14
      Caption = 'Última Cotação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 663
      Top = 79
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
    object Label17: TLabel
      Left = 576
      Top = 103
      Width = 75
      Height = 14
      Caption = 'Valor Cotação'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 663
      Top = 103
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
    object EdDteOrc: TdxDBColorDateEdit
      Left = 671
      Top = 27
      Width = 100
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
      TabOrder = 5
      OnExit = EdDteOrcExit
      OnKeyUp = EdDteOrcKeyUp
      OnMouseUp = EdDteOrcMouseUp
      Alignment = taCenter
      DataField = 'DTEORC'
      DataSource = DsOrc
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdUfeOrc: TdxDBColorEdit
      Left = 671
      Top = 51
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
      TabOrder = 9
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEORC'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomEmp: TdxDBColorEdit
      Left = 295
      Top = 27
      Width = 275
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 295
      Top = 51
      Width = 275
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomVen: TdxDBColorEdit
      Left = 295
      Top = 75
      Width = 275
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 295
      Top = 99
      Width = 275
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 165
      Top = 99
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
      TabOrder = 15
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodVen: TdxDBColorEdit
      Left = 165
      Top = 75
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
      TabOrder = 11
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodCli: TdxDBColorEdit
      Left = 165
      Top = 51
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
      TabOrder = 6
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 165
      Top = 27
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
      TabOrder = 2
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNumRes: TdxDBColorEdit
      Left = 165
      Top = 3
      Width = 109
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
      DataField = 'NUMRES'
      DataSource = DsOrc
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumRes: TPanel
      Left = 167
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
      TabOrder = 1
    end
    object pnNomVen: TPanel
      Left = 299
      Top = 78
      Width = 267
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object pnNomPfa: TPanel
      Left = 299
      Top = 102
      Width = 267
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object pnNomCli: TPanel
      Left = 299
      Top = 54
      Width = 267
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
      TabOrder = 8
    end
    object pnNomEmp: TPanel
      Left = 299
      Top = 30
      Width = 267
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object pnUfeOrc: TPanel
      Left = 673
      Top = 54
      Width = 37
      Height = 14
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
    object EdDtcTmo: TdxDBColorDateEdit
      Left = 671
      Top = 75
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
      TabOrder = 14
      Alignment = taCenter
      DataField = 'DTCTMO'
      DataSource = DsOrc
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdValTmo: TdxDBColorCurrencyEdit
      Left = 671
      Top = 99
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VALTMO'
      DataSource = DsOrc
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object grOr2: ThGrid
    Left = 3
    Top = 163
    Width = 781
    Height = 225
    Selected.Strings = (
      'CODGRU'#9'5'#9' '#9'F'
      'CODSUB'#9'6'#9' '#9'F'
      'CODPRO'#9'8'#9' '#9'F'
      'DESOR2'#9'42'#9'DESOR2'#9'F'
      'QTPOR2'#9'10'#9' '#9'F'
      'VLUOR2'#9'15'#9' '#9'F'
      'ICMOR2'#9'5'#9' '#9'F'
      'TOTOR2'#9'16'#9' '#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsOr2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 12
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyUp = grOr2KeyUp
    OnMouseUp = grOr2MouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object FatOrc: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatOrc'
      'Where FatOrc.CodEmp = :CodEmp'
      '     and FatOrc.DteRes = :DteRes'
      '     and FatOrc.NumRes = :NumRes'
      '     and FatOrc.SeqLib = :SeqLib'
      '     and FatOrc.SeqOrc = :SeqOrc')
    UpdateObject = UpOrc
    ValidateWithMask = True
    Left = 5
    Top = 303
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
        Name = 'SeqOrc'
        ParamType = ptInput
      end>
    object FatOrcCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATORC.CODEMP'
    end
    object FatOrcDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATORC.DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object FatOrcNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATORC.NUMRES'
    end
    object FatOrcSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATORC.SEQLIB'
    end
    object FatOrcSEQORC: TIntegerField
      FieldName = 'SEQORC'
      Origin = 'ISADE.FATORC.SEQORC'
    end
    object FatOrcDTEORC: TDateTimeField
      FieldName = 'DTEORC'
      Origin = 'ISADE.FATORC.DTEORC'
      EditMask = '!99/99/9999;1;_'
    end
    object FatOrcHREORC: TStringField
      FieldName = 'HREORC'
      Origin = 'ISADE.FATORC.HREORC'
      FixedChar = True
      Size = 8
    end
    object FatOrcFLGTMO: TStringField
      FieldName = 'FLGTMO'
      Origin = 'ISADE.FATORC.FLGTMO'
      FixedChar = True
      Size = 3
    end
    object FatOrcCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Origin = 'ISADE.FATORC.CODTMO'
    end
    object FatOrcTIPTMO: TStringField
      FieldName = 'TIPTMO'
      Origin = 'ISADE.FATORC.TIPTMO'
      FixedChar = True
      Size = 9
    end
    object FatOrcDTCTMO: TDateTimeField
      FieldName = 'DTCTMO'
      Origin = 'ISADE.FATORC.DTCTMO'
      EditMask = '!99/99/9999;1;_'
    end
    object FatOrcVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.FATORC.VALTMO'
    end
    object FatOrcFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATORC.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatOrcSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATORC.SEQITE'
    end
    object FatOrcQTIORC: TIntegerField
      FieldName = 'QTIORC'
      Origin = 'ISADE.FATORC.QTIORC'
    end
    object FatOrcQTPORC: TIntegerField
      FieldName = 'QTPORC'
      Origin = 'ISADE.FATORC.QTPORC'
    end
    object FatOrcSQPORC: TIntegerField
      FieldName = 'SQPORC'
      Origin = 'ISADE.FATORC.SQPORC'
    end
    object FatOrcQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATORC.QTDVOL'
    end
    object FatOrcTOTORC: TFloatField
      FieldName = 'TOTORC'
      Origin = 'ISADE.FATORC.TOTORC'
    end
    object FatOrcTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATORC.TOTFRT'
    end
    object FatOrcTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATORC.TOTSEG'
    end
    object FatOrcTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATORC.TOTDES'
    end
    object FatOrcTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATORC.TOTGER'
    end
    object FatOrcLANORC: TFloatField
      FieldName = 'LANORC'
      Origin = 'ISADE.FATORC.LANORC'
    end
    object FatOrcSLDORC: TFloatField
      FieldName = 'SLDORC'
      Origin = 'ISADE.FATORC.SLDORC'
    end
    object FatOrcCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATORC.CODUSU'
    end
    object FatOrcHRECOR: TStringField
      FieldName = 'HRECOR'
      Origin = 'ISADE.FATORC.HRECOR'
      FixedChar = True
      Size = 8
    end
    object FatOrcDTECOR: TDateTimeField
      FieldName = 'DTECOR'
      Origin = 'ISADE.FATORC.DTECOR'
    end
    object FatOrcUSUCOR: TIntegerField
      FieldName = 'USUCOR'
      Origin = 'ISADE.FATORC.USUCOR'
    end
    object FatOrcOBSCOR: TMemoField
      FieldName = 'OBSCOR'
      Origin = 'ISADE.FATORC.OBSCOR'
      BlobType = ftMemo
      Size = 500
    end
    object FatOrcOBSORC: TMemoField
      FieldName = 'OBSORC'
      Origin = 'ISADE.FATORC.OBSORC'
      BlobType = ftMemo
      Size = 500
    end
    object FatOrcTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.FATORC.TRASDA'
    end
    object FatOrcDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.FATORC.DTESDA'
    end
    object FatOrcHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.FATORC.HRESDA'
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.FATORC.USUSDA'
    end
    object FatOrcOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.FATORC.OBSSDA'
      FixedChar = True
      Size = 240
    end
    object FatOrcCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.FATORC.CODVEI'
    end
    object FatOrcDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.FATORC.DTEENT'
    end
    object FatOrcHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.FATORC.HREENT'
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.FATORC.USUENT'
    end
    object FatOrcOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.FATORC.OBSENT'
      FixedChar = True
      Size = 240
    end
    object FatOrcFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATORC.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatOrcFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATORC.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatOrcDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.FATORC.DTEATU'
    end
    object FatOrcHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.FATORC.HREATU'
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.FATORC.USUATU'
    end
    object FatOrcSITORC: TStringField
      FieldName = 'SITORC'
      Origin = 'ISADE.FATORC.SITORC'
      FixedChar = True
      Size = 45
    end
    object FatOrcNROCOL: TStringField
      FieldName = 'NROCOL'
      Origin = 'ISADE.FATORC.NROCOL'
      FixedChar = True
    end
    object FatOrcFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.FATORC.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object FatOrcCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATORC.CODCLI'
    end
    object FatOrcCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATORC.CODVEN'
    end
    object FatOrcCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATORC.CODPFA'
      FixedChar = True
      Size = 15
    end
    object FatOrcTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATORC.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object FatOrcMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATORC.MODPFA'
      FixedChar = True
    end
    object FatOrcUFEORC: TStringField
      FieldName = 'UFEORC'
      Origin = 'ISADE.FATORC.UFEORC'
      FixedChar = True
      Size = 2
    end
    object FatOrcCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATORC.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatOrcTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATORC.TENCLI'
      FixedChar = True
      Size = 10
    end
    object FatOrcENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATORC.ENDCLI'
      FixedChar = True
      Size = 70
    end
    object FatOrcREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATORC.REFCLI'
      FixedChar = True
      Size = 40
    end
    object FatOrcNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATORC.NUMCLI'
      FixedChar = True
      Size = 10
    end
    object FatOrcBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATORC.BAICLI'
      FixedChar = True
    end
    object FatOrcCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATORC.CIDCLI'
      FixedChar = True
    end
    object FatOrcUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATORC.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatOrcINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATORC.INECLI'
      FixedChar = True
      Size = 18
    end
    object FatOrcCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATORC.CGECLI'
      FixedChar = True
      Size = 18
    end
    object FatOrcCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATORC.CODTRA'
    end
  end
  object FatOr2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatOr2.CodEmp,'
      '           FatOr2.DteRes,'
      '           FatOr2.NumRes,'
      '           FatOr2.SeqLib,'
      '           FatOr2.SeqOrc,'
      '           FatOr2.SeqOr2,'
      '           FatOr2.CodClp,'
      '           FatOr2.CodGru,'
      '           FatOr2.CodSub,'
      '           FatOr2.CodPro,'
      '           FatOr2.DesOr2,'
      '           FatOr2.ObsOr2,'
      '           FatOr2.QtpOr2,'
      '           FatOr2.VluOr2,'
      '           FatOr2.IpiOr2,'
      '           FatOr2.IcmOr2,'
      '           FatOr2.TotOr2'
      'From FatOr2'
      'Where FatOr2.CodEmp = :CodEmp'
      '     and FatOr2.DteRes = :DteRes'
      '     and FatOr2.NumRes = :NumRes'
      '     and FatOr2.SeqLib = :SeqLib'
      '     and FatOr2.SeqOrc = :SeqOrc'
      'Order by FatOr2.NroOr2')
    ValidateWithMask = True
    Left = 5
    Top = 331
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
        Name = 'SeqOrc'
        ParamType = ptInput
      end>
    object FatOr2CODGRU: TStringField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATOR2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatOr2CODSUB: TStringField
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATOR2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatOr2CODPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATOR2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatOr2DESOR2: TStringField
      DisplayWidth = 42
      FieldName = 'DESOR2'
      Origin = 'ISADE.FATOR2.DESOR2'
      FixedChar = True
      Size = 70
    end
    object FatOr2QTPOR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'QTPOR2'
      Origin = 'ISADE.FATOR2.QTPOR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatOr2VLUOR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'VLUOR2'
      Origin = 'ISADE.FATOR2.VLUOR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatOr2ICMOR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMOR2'
      Origin = 'ISADE.FATOR2.ICMOR2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatOr2TOTOR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 16
      FieldName = 'TOTOR2'
      Origin = 'ISADE.FATOR2.TOTOR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatOr2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatOr2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatOr2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatOr2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatOr2SEQORC: TIntegerField
      FieldName = 'SEQORC'
      Visible = False
    end
    object FatOr2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatOr2IPIOR2: TFloatField
      FieldName = 'IPIOR2'
      Visible = False
    end
    object FatOr2SEQOR2: TIntegerField
      FieldName = 'SEQOR2'
      Visible = False
    end
    object FatOr2OBSOR2: TStringField
      FieldName = 'OBSOR2'
      Visible = False
      FixedChar = True
      Size = 100
    end
  end
  object UpOrc: TUpdateSQL
    ModifySQL.Strings = (
      'update FatOrc'
      'set'
      '  DTEORC = :DTEORC,'
      '  HREORC = :HREORC,'
      '  FLGTMO = :FLGTMO,'
      '  CODTMO = :CODTMO,'
      '  TIPTMO = :TIPTMO,'
      '  DTCTMO = :DTCTMO,'
      '  VALTMO = :VALTMO,'
      '  FLGAVI = :FLGAVI,'
      '  SEQITE = :SEQITE,'
      '  QTIORC = :QTIORC,'
      '  QTPORC = :QTPORC,'
      '  SQPORC = :SQPORC,'
      '  QTDVOL = :QTDVOL,'
      '  TOTORC = :TOTORC,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  TOTGER = :TOTGER,'
      '  LANORC = :LANORC,'
      '  SLDORC = :SLDORC,'
      '  CODUSU = :CODUSU,'
      '  HRECOR = :HRECOR,'
      '  DTECOR = :DTECOR,'
      '  USUCOR = :USUCOR,'
      '  OBSCOR = :OBSCOR,'
      '  OBSORC = :OBSORC,'
      '  TRASDA = :TRASDA,'
      '  DTESDA = :DTESDA,'
      '  HRESDA = :HRESDA,'
      '  USUSDA = :USUSDA,'
      '  OBSSDA = :OBSSDA,'
      '  CODVEI = :CODVEI,'
      '  DTEENT = :DTEENT,'
      '  HREENT = :HREENT,'
      '  USUENT = :USUENT,'
      '  OBSENT = :OBSENT,'
      '  FLGATU = :FLGATU,'
      '  FLGIMP = :FLGIMP,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  SITORC = :SITORC,'
      '  NROCOL = :NROCOL,'
      '  FLGIPI = :FLGIPI,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  MODPFA = :MODPFA,'
      '  UFEORC = :UFEORC,'
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
      '  CODTRA = :CODTRA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQORC = :OLD_SEQORC')
    InsertSQL.Strings = (
      'insert into FatOrc'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQORC, DTEORC, HREORC, FLGTM' +
        'O, CODTMO, '
      
        '   TIPTMO, DTCTMO, VALTMO, FLGAVI, SEQITE, QTIORC, QTPORC, SQPOR' +
        'C, QTDVOL, '
      
        '   TOTORC, TOTFRT, TOTSEG, TOTDES, TOTGER, LANORC, SLDORC, CODUS' +
        'U, HRECOR, '
      
        '   DTECOR, USUCOR, OBSCOR, OBSORC, TRASDA, DTESDA, HRESDA, USUSD' +
        'A, OBSSDA, '
      
        '   CODVEI, DTEENT, HREENT, USUENT, OBSENT, FLGATU, FLGIMP, DTEAT' +
        'U, HREATU, '
      
        '   USUATU, SITORC, NROCOL, FLGIPI, CODCLI, CODVEN, CODPFA, TIPPF' +
        'A, MODPFA, '
      
        '   UFEORC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCL' +
        'I, UFECLI, '
      '   INECLI, CGECLI, CODTRA)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQORC, :DTEORC, :HREORC' +
        ', :FLGTMO, '
      
        '   :CODTMO, :TIPTMO, :DTCTMO, :VALTMO, :FLGAVI, :SEQITE, :QTIORC' +
        ', :QTPORC, '
      
        '   :SQPORC, :QTDVOL, :TOTORC, :TOTFRT, :TOTSEG, :TOTDES, :TOTGER' +
        ', :LANORC, '
      
        '   :SLDORC, :CODUSU, :HRECOR, :DTECOR, :USUCOR, :OBSCOR, :OBSORC' +
        ', :TRASDA, '
      
        '   :DTESDA, :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT' +
        ', :USUENT, '
      
        '   :OBSENT, :FLGATU, :FLGIMP, :DTEATU, :HREATU, :USUATU, :SITORC' +
        ', :NROCOL, '
      
        '   :FLGIPI, :CODCLI, :CODVEN, :CODPFA, :TIPPFA, :MODPFA, :UFEORC' +
        ', :CEPCLI, '
      
        '   :TENCLI, :ENDCLI, :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI' +
        ', :INECLI, '
      '   :CGECLI, :CODTRA)')
    DeleteSQL.Strings = (
      'delete from FatOrc'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQORC = :OLD_SEQORC')
    Left = 5
    Top = 359
  end
  object DsOr2: TDataSource
    DataSet = FatOr2
    OnDataChange = DsOr2DataChange
    Left = 33
    Top = 331
  end
  object DsOrc: TDataSource
    DataSet = FatOrc
    Left = 33
    Top = 303
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 64
    Top = 303
  end
end
