inherited fmManRo2: TfmManRo2
  Left = 0
  Caption = 'Notas fiscais/Romaneios (Fornecedores) - Emissão'
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
  object grPe21: TdxDBGraphicEdit
    Left = 2
    Top = 137
    Width = 782
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
    Height = 166
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 2
    Top = 100
    Width = 782
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 99
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
      Width = 98
      Height = 14
      Caption = 'Nro. da operação:'
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
      Left = 572
      Top = 30
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
      Width = 66
      Height = 14
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 572
      Top = 55
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
    object Label12: TLabel
      Left = 693
      Top = 55
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
      Top = 78
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
    object bpsqFor: TSpeedButton
      Left = 274
      Top = 51
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
    end
    object bpsqEmp: TSpeedButton
      Left = 274
      Top = 27
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
    end
    object bpsqPfa: TSpeedButton
      Left = 274
      Top = 75
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
    end
    object Label52: TLabel
      Left = 301
      Top = 6
      Width = 105
      Height = 14
      Caption = 'Região operacional:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdId_CmpNfs: TdxDBColorEdit
      Left = 165
      Top = 2
      Width = 108
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
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'ID_CMPNFS'
      DataSource = DsNfs
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeNfs: TdxDBColorEdit
      Left = 638
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
      TabOrder = 7
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFENFS'
      DataSource = DsNfs
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 299
      Top = 26
      Width = 271
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
      TabOrder = 4
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 299
      Top = 74
      Width = 486
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_CmpNfs: TPanel
      Left = 167
      Top = 5
      Width = 100
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
      Left = 165
      Top = 26
      Width = 108
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsNfs
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 303
      Top = 29
      Width = 263
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object EdDteFat: TdxDBColorDateEdit
      Left = 638
      Top = 26
      Width = 104
      Hint = 'Data de Emissão da Nota Fiscal'
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
      TabOrder = 6
      OnEnter = EdDteFatEnter
      OnExit = EdDteFatExit
      Alignment = taCenter
      DataField = 'DTEFAT'
      DataSource = DsNfs
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnUfeNfs: TPanel
      Left = 640
      Top = 54
      Width = 37
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
    object EdFrtNfs: TdxDBColorPickEdit
      Left = 728
      Top = 51
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
      TabOrder = 12
      AutoSize = False
      DataField = 'FRTNFS'
      DataSource = DsNfs
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
    object EdCodPfa: TdxDBColorEdit
      Left = 165
      Top = 74
      Width = 108
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
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsNfs
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 303
      Top = 77
      Width = 478
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
    object EdCodFor: TdxDBColorEdit
      Left = 165
      Top = 50
      Width = 108
      Hint = 'Fornecedor'
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODFOR'
      DataSource = DsNfs
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 299
      Top = 50
      Width = 271
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
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomFor: TPanel
      Left = 303
      Top = 53
      Width = 263
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
    object EdCodTip: TdxDBColorCurrencyEdit
      Left = 409
      Top = 2
      Width = 58
      Hint = 'Região Operacional do Fornecedor (1,2,3)'
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'CODTIP'
      DataSource = DsNfs
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
  end
  object Panel4: TPanel
    Left = 4
    Top = 377
    Width = 781
    Height = 83
    BevelOuter = bvNone
    TabOrder = 3
    OnExit = Panel4Exit
    object Label28: TLabel
      Left = 4
      Top = 2
      Width = 133
      Height = 14
      Alignment = taRightJustify
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
      Left = 59
      Top = 42
      Width = 78
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 194
      Top = 2
      Width = 76
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do ICMS'
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
      Top = 42
      Width = 88
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 274
      Top = 2
      Width = 203
      Height = 14
      Alignment = taRightJustify
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
      Left = 328
      Top = 42
      Width = 149
      Height = 14
      Alignment = taRightJustify
      Caption = 'Outras Despesas Acessórias'
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
      Top = 2
      Width = 146
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do ICMS Substituição'
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
      Top = 42
      Width = 96
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total do IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 644
      Top = 2
      Width = 135
      Height = 14
      Alignment = taRightJustify
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
      Left = 673
      Top = 42
      Width = 106
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdTotFrt: TdxDBColorCurrencyEdit
      Left = 1
      Top = 58
      Width = 138
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
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTFRT'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdBasIc1: TdxDBColorCurrencyEdit
      Left = 1
      Top = 18
      Width = 138
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
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BASIC1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnBasIc1: TPanel
      Left = 3
      Top = 22
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
      TabOrder = 1
    end
    object pnTotFrt: TPanel
      Left = 3
      Top = 62
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
      TabOrder = 10
    end
    object EdTotIc1: TdxDBColorCurrencyEdit
      Left = 140
      Top = 18
      Width = 132
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIC1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIc1: TPanel
      Left = 142
      Top = 22
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
      TabOrder = 3
    end
    object EdTotSeg: TdxDBColorCurrencyEdit
      Left = 140
      Top = 58
      Width = 132
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
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSEG'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSeg: TPanel
      Left = 142
      Top = 62
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
      TabOrder = 13
    end
    object EdBasSu1: TdxDBColorCurrencyEdit
      Left = 273
      Top = 18
      Width = 206
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
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BASSU1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnBasSu1: TPanel
      Left = 275
      Top = 22
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
      TabOrder = 5
    end
    object EdTotDes: TdxDBColorCurrencyEdit
      Left = 273
      Top = 57
      Width = 206
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
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTDES'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotDes: TPanel
      Left = 275
      Top = 61
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
      TabOrder = 15
    end
    object EdTotSu1: TdxDBColorCurrencyEdit
      Left = 480
      Top = 18
      Width = 152
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
      TabOrder = 6
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSU1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSu1: TPanel
      Left = 482
      Top = 22
      Width = 144
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
      TabOrder = 7
    end
    object EdTotIp1: TdxDBColorCurrencyEdit
      Left = 480
      Top = 57
      Width = 152
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
      DataField = 'TOTIP1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIp1: TPanel
      Left = 482
      Top = 61
      Width = 144
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
    object EdTotIt1: TdxDBColorCurrencyEdit
      Left = 633
      Top = 18
      Width = 149
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
      TabOrder = 8
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIT1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIt1: TPanel
      Left = 635
      Top = 22
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
      TabOrder = 9
    end
    object EdTotGe1: TdxDBColorCurrencyEdit
      Left = 633
      Top = 57
      Width = 149
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
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTGE1'
      DataSource = DsNfs
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotGe1: TPanel
      Left = 635
      Top = 61
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
      TabOrder = 19
    end
  end
  object grLabel2: TPanel
    Left = 4
    Top = 102
    Width = 776
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
      Left = 254
      Top = 8
      Width = 27
      Height = 14
      Caption = 'NCM'
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
      Left = 644
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
    object Label21: TLabel
      Left = 439
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
    object Label22: TLabel
      Left = 546
      Top = 8
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Caption = 'Unitário'
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
      Left = 612
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
    object Label26: TLabel
      Left = 712
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
      Left = 319
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
      Left = 355
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
      Left = 190
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
    object Label3: TLabel
      Left = 398
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
  end
  object grNf2: ThGrid
    Left = 4
    Top = 139
    Width = 776
    Height = 160
    Selected.Strings = (
      'CODCLP'#9'3'#9' '
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'7'#9' '
      'CODCFO'#9'5'#9' '
      'CLSIPI'#9'10'#9' '
      'CODST1'#9'4'#9' '
      'CODST2'#9'4'#9' '
      'CODUND'#9'5'#9' '
      'QTPNF2'#9'10'#9' '
      'VLUNF2'#9'10'#9' '
      'IPINF2'#9'4'#9' '
      'ICMNF2'#9'5'#9' '
      'TOTNF2'#9'12'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsNf2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    OnEnter = grNf2Enter
    OnKeyDown = grNf2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel3: TPanel
    Left = 3
    Top = 304
    Width = 780
    Height = 70
    BevelOuter = bvNone
    TabOrder = 6
    object Label44: TLabel
      Left = 604
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
      Left = 638
      Top = 51
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
    object EdNroNf2: TdxDBColorCurrencyEdit
      Left = 680
      Top = 47
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
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'NRONF2'
      DataSource = DsNf2
      DecimalPlaces = 0
      DisplayFormat = '###0'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = 28
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
      TabOrder = 1
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 74
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
      TabOrder = 2
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 125
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
      TabOrder = 3
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpNf2: TdxDBColorCurrencyEdit
      Left = 428
      Top = -1
      Width = 89
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
      DataField = 'QTPNF2'
      DataSource = DsNf2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluNf2: TdxDBColorCurrencyEdit
      Left = 516
      Top = -1
      Width = 85
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
      DataField = 'VLUNF2'
      DataSource = DsNf2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiNf2: TdxDBColorCurrencyEdit
      Left = 600
      Top = -1
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
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPINF2'
      DataSource = DsNf2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmNf2: TdxDBColorCurrencyEdit
      Left = 637
      Top = -1
      Width = 44
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
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMNF2'
      DataSource = DsNf2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 314
      Top = -1
      Width = 36
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 349
      Top = -1
      Width = 39
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
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotNf2: TdxDBColorCurrencyEdit
      Left = 680
      Top = -1
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
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTNF2'
      DataSource = DsNf2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 186
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
      TabOrder = 4
      OnKeyPress = EdCodCfoKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCFO'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 232
      Top = -1
      Width = 83
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
      OnKeyPress = EdCodCfoKeyPress
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 387
      Top = -1
      Width = 42
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
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodClp: TdxDBColorEdit
      Left = -1
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
      TabOrder = 0
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNroNf2: TPanel
      Left = 682
      Top = 50
      Width = 92
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
      TabOrder = 19
    end
    object EdObsNf2: TdxDBColorEdit
      Left = -1
      Top = 47
      Width = 603
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
      DataField = 'OBSNF2'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsNf2: TPanel
      Left = 2
      Top = 51
      Width = 596
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
    object EdDesNf2: TdxDBColorEdit
      Left = -1
      Top = 23
      Width = 603
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
      DataField = 'DESNF2'
      DataSource = DsNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesNf2: TPanel
      Left = 2
      Top = 26
      Width = 596
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
  end
  object CmpNfs: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpNfs'
      'Where CmpNfs.Id_CmpNfs = :Id_CmpNfs')
    UpdateObject = UpNfs
    ValidateWithMask = True
    Left = 6
    Top = 186
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpNfs'
        ParamType = ptInput
      end>
    object CmpNfsCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CmpNfsDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpNfsHREFAT: TStringField
      FieldName = 'HREFAT'
      FixedChar = True
      Size = 8
    end
    object CmpNfsUFENFS: TStringField
      FieldName = 'UFENFS'
      FixedChar = True
      Size = 2
    end
    object CmpNfsCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object CmpNfsTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object CmpNfsMODPFA: TStringField
      FieldName = 'MODPFA'
      FixedChar = True
    end
    object CmpNfsCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CmpNfsPERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object CmpNfsPERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object CmpNfsCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object CmpNfsQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
    end
    object CmpNfsNRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object CmpNfsCGCFOR: TStringField
      FieldName = 'CGCFOR'
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSFOR: TStringField
      FieldName = 'INSFOR'
      FixedChar = True
      Size = 18
    end
    object CmpNfsCODCF1: TStringField
      FieldName = 'CODCF1'
      FixedChar = True
      Size = 15
    end
    object CmpNfsCODCF2: TStringField
      FieldName = 'CODCF2'
      FixedChar = True
      Size = 15
    end
    object CmpNfsFRTNFS: TStringField
      FieldName = 'FRTNFS'
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGENT: TStringField
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGSAI: TStringField
      FieldName = 'FLGSAI'
      FixedChar = True
      Size = 1
    end
    object CmpNfsDESNAT: TStringField
      FieldName = 'DESNAT'
      FixedChar = True
      Size = 100
    end
    object CmpNfsINSSUB: TStringField
      FieldName = 'INSSUB'
      FixedChar = True
      Size = 18
    end
    object CmpNfsTIPFRT: TStringField
      FieldName = 'TIPFRT'
      FixedChar = True
      Size = 1
    end
    object CmpNfsMARNFS: TStringField
      FieldName = 'MARNFS'
      FixedChar = True
      Size = 15
    end
    object CmpNfsNUMNFS: TStringField
      FieldName = 'NUMNFS'
      FixedChar = True
      Size = 15
    end
    object CmpNfsESPNFS: TStringField
      FieldName = 'ESPNFS'
      FixedChar = True
      Size = 15
    end
    object CmpNfsNOMTRA: TStringField
      FieldName = 'NOMTRA'
      FixedChar = True
      Size = 70
    end
    object CmpNfsCGCTRA: TStringField
      FieldName = 'CGCTRA'
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSTRA: TStringField
      FieldName = 'INSTRA'
      FixedChar = True
      Size = 18
    end
    object CmpNfsCEPTRA: TStringField
      FieldName = 'CEPTRA'
      EditMask = '99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object CmpNfsTENTRA: TStringField
      FieldName = 'TENTRA'
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDTRA: TStringField
      FieldName = 'ENDTRA'
      FixedChar = True
      Size = 40
    end
    object CmpNfsREFTRA: TStringField
      FieldName = 'REFTRA'
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMTRA: TStringField
      FieldName = 'NUMTRA'
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAITRA: TStringField
      FieldName = 'BAITRA'
      FixedChar = True
    end
    object CmpNfsCIDTRA: TStringField
      FieldName = 'CIDTRA'
      FixedChar = True
    end
    object CmpNfsUFETRA: TStringField
      FieldName = 'UFETRA'
      FixedChar = True
      Size = 2
    end
    object CmpNfsPLCTRA: TStringField
      FieldName = 'PLCTRA'
      FixedChar = True
      Size = 7
    end
    object CmpNfsPRTTRA: TStringField
      FieldName = 'PRTTRA'
      FixedChar = True
      Size = 4
    end
    object CmpNfsFONTRA: TStringField
      FieldName = 'FONTRA'
      FixedChar = True
    end
    object CmpNfsUFEPLC: TStringField
      FieldName = 'UFEPLC'
      FixedChar = True
      Size = 2
    end
    object CmpNfsCEPFOR: TStringField
      FieldName = 'CEPFOR'
      EditMask = '99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object CmpNfsTENFOR: TStringField
      FieldName = 'TENFOR'
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDFOR: TStringField
      FieldName = 'ENDFOR'
      FixedChar = True
      Size = 70
    end
    object CmpNfsREFFOR: TStringField
      FieldName = 'REFFOR'
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMFOR: TStringField
      FieldName = 'NUMFOR'
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAIFOR: TStringField
      FieldName = 'BAIFOR'
      FixedChar = True
    end
    object CmpNfsCIDFOR: TStringField
      FieldName = 'CIDFOR'
      FixedChar = True
    end
    object CmpNfsUFEFOR: TStringField
      FieldName = 'UFEFOR'
      FixedChar = True
      Size = 2
    end
    object CmpNfsQTINFS: TIntegerField
      FieldName = 'QTINFS'
    end
    object CmpNfsLINNFS: TIntegerField
      FieldName = 'LINNFS'
    end
    object CmpNfsQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
    end
    object CmpNfsALTVOL: TIntegerField
      FieldName = 'ALTVOL'
    end
    object CmpNfsINFLIQ: TFloatField
      FieldName = 'INFLIQ'
    end
    object CmpNfsTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object CmpNfsINFBRT: TFloatField
      FieldName = 'INFBRT'
    end
    object CmpNfsTOTBRT: TFloatField
      FieldName = 'TOTBRT'
    end
    object CmpNfsBASIPI: TFloatField
      FieldName = 'BASIPI'
    end
    object CmpNfsTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object CmpNfsBASICM: TFloatField
      FieldName = 'BASICM'
    end
    object CmpNfsTOTICM: TFloatField
      FieldName = 'TOTICM'
    end
    object CmpNfsBASSUB: TFloatField
      FieldName = 'BASSUB'
    end
    object CmpNfsTOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object CmpNfsTOTITE: TFloatField
      FieldName = 'TOTITE'
    end
    object CmpNfsTOTGER: TFloatField
      FieldName = 'TOTGER'
    end
    object CmpNfsTOTPIS: TFloatField
      FieldName = 'TOTPIS'
    end
    object CmpNfsTOTCOF: TFloatField
      FieldName = 'TOTCOF'
    end
    object CmpNfsTOTFRT: TFloatField
      FieldName = 'TOTFRT'
    end
    object CmpNfsTOTSEG: TFloatField
      FieldName = 'TOTSEG'
    end
    object CmpNfsTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object CmpNfsBSICMF: TFloatField
      FieldName = 'BSICMF'
    end
    object CmpNfsBAICMF: TFloatField
      FieldName = 'BAICMF'
    end
    object CmpNfsTOICMF: TFloatField
      FieldName = 'TOICMF'
    end
    object CmpNfsBSICMS: TFloatField
      FieldName = 'BSICMS'
    end
    object CmpNfsBAICMS: TFloatField
      FieldName = 'BAICMS'
    end
    object CmpNfsTOICMS: TFloatField
      FieldName = 'TOICMS'
    end
    object CmpNfsBSICMD: TFloatField
      FieldName = 'BSICMD'
    end
    object CmpNfsBAICMD: TFloatField
      FieldName = 'BAICMD'
    end
    object CmpNfsTOICMD: TFloatField
      FieldName = 'TOICMD'
    end
    object CmpNfsBSIPIF: TFloatField
      FieldName = 'BSIPIF'
    end
    object CmpNfsBAIPIF: TFloatField
      FieldName = 'BAIPIF'
    end
    object CmpNfsTOIPIF: TFloatField
      FieldName = 'TOIPIF'
    end
    object CmpNfsBSIPIS: TFloatField
      FieldName = 'BSIPIS'
    end
    object CmpNfsBAIPIS: TFloatField
      FieldName = 'BAIPIS'
    end
    object CmpNfsTOIPIS: TFloatField
      FieldName = 'TOIPIS'
    end
    object CmpNfsBSIPID: TFloatField
      FieldName = 'BSIPID'
    end
    object CmpNfsBAIPID: TFloatField
      FieldName = 'BAIPID'
    end
    object CmpNfsTOIPID: TFloatField
      FieldName = 'TOIPID'
    end
    object CmpNfsBASIP1: TFloatField
      FieldName = 'BASIP1'
    end
    object CmpNfsTOTIP1: TFloatField
      FieldName = 'TOTIP1'
    end
    object CmpNfsBASIC1: TFloatField
      FieldName = 'BASIC1'
    end
    object CmpNfsTOTIC1: TFloatField
      FieldName = 'TOTIC1'
    end
    object CmpNfsBASSU1: TFloatField
      FieldName = 'BASSU1'
    end
    object CmpNfsTOTSU1: TFloatField
      FieldName = 'TOTSU1'
    end
    object CmpNfsTOTIT1: TFloatField
      FieldName = 'TOTIT1'
    end
    object CmpNfsTOTGE1: TFloatField
      FieldName = 'TOTGE1'
    end
    object CmpNfsCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object CmpNfsHRCNFS: TStringField
      FieldName = 'HRCNFS'
      FixedChar = True
      Size = 8
    end
    object CmpNfsDTCNFS: TDateTimeField
      FieldName = 'DTCNFS'
    end
    object CmpNfsUSCNFS: TIntegerField
      FieldName = 'USCNFS'
    end
    object CmpNfsATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object CmpNfsLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object CmpNfsINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object CmpNfsCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object CmpNfsCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object CmpNfsTIPIPI: TStringField
      FieldName = 'TIPIPI'
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object CmpNfsBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object CmpNfsCODICM: TStringField
      FieldName = 'CODICM'
      FixedChar = True
    end
    object CmpNfsTIPICM: TStringField
      FieldName = 'TIPICM'
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object CmpNfsBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object CmpNfsINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object CmpNfsINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object CmpNfsNROCOL: TStringField
      FieldName = 'NROCOL'
      FixedChar = True
    end
    object CmpNfsSITNFS: TStringField
      FieldName = 'SITNFS'
      FixedChar = True
      Size = 45
    end
    object CmpNfsFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object CmpNfsCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Origin = 'ISADE.CMPNFS.CODTIP'
    end
    object CmpNfsFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.CMPNFS.FLGENV'
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.CMPNFS.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object CmpNfsOB1NFS: TStringField
      FieldName = 'OB1NFS'
      Origin = 'ISADE.CMPNFS.OB1NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB2NFS: TStringField
      FieldName = 'OB2NFS'
      Origin = 'ISADE.CMPNFS.OB2NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB3NFS: TStringField
      FieldName = 'OB3NFS'
      Origin = 'ISADE.CMPNFS.OB3NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB4NFS: TStringField
      FieldName = 'OB4NFS'
      Origin = 'ISADE.CMPNFS.OB4NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB5NFS: TStringField
      FieldName = 'OB5NFS'
      Origin = 'ISADE.CMPNFS.OB5NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB6NFS: TStringField
      FieldName = 'OB6NFS'
      Origin = 'ISADE.CMPNFS.OB6NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB7NFS: TStringField
      FieldName = 'OB7NFS'
      Origin = 'ISADE.CMPNFS.OB7NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB8NFS: TStringField
      FieldName = 'OB8NFS'
      Origin = 'ISADE.CMPNFS.OB8NFS'
      FixedChar = True
      Size = 80
    end
    object CmpNfsNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.CMPNFS.NOMENT'
      FixedChar = True
      Size = 70
    end
    object CmpNfsID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
      Origin = 'ISADE.CMPNFS.ID_CMPNFS'
    end
    object CmpNfsDTFNFS: TDateTimeField
      FieldName = 'DTFNFS'
      Origin = 'ISADE.CMPNFS.DTFNFS'
    end
    object CmpNfsHRFNFS: TStringField
      FieldName = 'HRFNFS'
      Origin = 'ISADE.CMPNFS.HRFNFS'
      FixedChar = True
      Size = 8
    end
    object CmpNfsUSFNFS: TIntegerField
      FieldName = 'USFNFS'
      Origin = 'ISADE.CMPNFS.USFNFS'
    end
    object CmpNfsTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.CMPNFS.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object CmpNfsTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.CMPNFS.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object CmpNfsSEQNFS: TStringField
      FieldName = 'SEQNFS'
      Origin = 'ISADE.CMPNFS.SEQNFS'
      FixedChar = True
      Size = 22
    end
    object CmpNfsFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.CMPNFS.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object CmpNfsOBCNF1: TStringField
      FieldName = 'OBCNF1'
      Origin = 'ISADE.CMPNFS.OBCNF1'
      Size = 80
    end
    object CmpNfsOBCNF2: TStringField
      FieldName = 'OBCNF2'
      Origin = 'ISADE.CMPNFS.OBCNF2'
      Size = 80
    end
    object CmpNfsOBCNF3: TStringField
      FieldName = 'OBCNF3'
      Origin = 'ISADE.CMPNFS.OBCNF3'
      Size = 80
    end
    object CmpNfsOBFNF1: TStringField
      FieldName = 'OBFNF1'
      Origin = 'ISADE.CMPNFS.OBFNF1'
      Size = 80
    end
    object CmpNfsOBFNF2: TStringField
      FieldName = 'OBFNF2'
      Origin = 'ISADE.CMPNFS.OBFNF2'
      Size = 80
    end
    object CmpNfsOBFNF3: TStringField
      FieldName = 'OBFNF3'
      Origin = 'ISADE.CMPNFS.OBFNF3'
      Size = 80
    end
    object CmpNfsQTDNOT: TIntegerField
      FieldName = 'QTDNOT'
      Origin = 'ISADE.CMPNFS.QTDNOT'
    end
    object CmpNfsNRONOT: TIntegerField
      FieldName = 'NRONOT'
      Origin = 'ISADE.CMPNFS.NRONOT'
    end
    object CmpNfsSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.CMPNFS.SERNOT'
      Size = 10
    end
    object CmpNfsSERSEL: TStringField
      FieldName = 'SERSEL'
      Origin = 'ISADE.CMPNFS.SERSEL'
      Size = 10
    end
    object CmpNfsFLGSEG: TStringField
      FieldName = 'FLGSEG'
      Origin = 'ISADE.CMPNFS.FLGSEG'
      FixedChar = True
      Size = 3
    end
    object CmpNfsSEQINI: TIntegerField
      FieldName = 'SEQINI'
      Origin = 'ISADE.CMPNFS.SEQINI'
    end
    object CmpNfsSEQFIN: TIntegerField
      FieldName = 'SEQFIN'
      Origin = 'ISADE.CMPNFS.SEQFIN'
    end
    object CmpNfsCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.CMPNFS.CODTRA'
    end
    object CmpNfsTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.CMPNFS.TXFIPI'
      Size = 15
    end
    object CmpNfsTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.CMPNFS.TXFICM'
      Size = 15
    end
    object CmpNfsFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.CMPNFS.FLGNFS'
      FixedChar = True
      Size = 3
    end
    object CmpNfsVALTMO: TFloatField
      FieldName = 'VALTMO'
      Origin = 'ISADE.CMPNFS.VALTMO'
    end
    object CmpNfsID_CMPPED: TIntegerField
      FieldName = 'ID_CMPPED'
      Origin = 'ISADE.CMPNFS.ID_CMPPED'
    end
    object CmpNfsOB1OPE: TStringField
      FieldName = 'OB1OPE'
      Origin = 'ISADE.CMPNFS.OB1OPE'
      Size = 80
    end
    object CmpNfsOB2OPE: TStringField
      FieldName = 'OB2OPE'
      Origin = 'ISADE.CMPNFS.OB2OPE'
      Size = 80
    end
    object CmpNfsOB3OPE: TStringField
      FieldName = 'OB3OPE'
      Origin = 'ISADE.CMPNFS.OB3OPE'
      Size = 80
    end
    object CmpNfsOB4OPE: TStringField
      FieldName = 'OB4OPE'
      Origin = 'ISADE.CMPNFS.OB4OPE'
      Size = 80
    end
    object CmpNfsOB5OPE: TStringField
      FieldName = 'OB5OPE'
      Origin = 'ISADE.CMPNFS.OB5OPE'
      Size = 80
    end
    object CmpNfsCEFFOR: TStringField
      FieldName = 'CEFFOR'
      Origin = 'ISADE.CMPNFS.CEFFOR'
      Size = 8
    end
    object CmpNfsTEFFOR: TStringField
      FieldName = 'TEFFOR'
      Origin = 'ISADE.CMPNFS.TEFFOR'
      Size = 10
    end
    object CmpNfsENFFOR: TStringField
      FieldName = 'ENFFOR'
      Origin = 'ISADE.CMPNFS.ENFFOR'
      Size = 70
    end
    object CmpNfsRFFFOR: TStringField
      FieldName = 'RFFFOR'
      Origin = 'ISADE.CMPNFS.RFFFOR'
      Size = 40
    end
    object CmpNfsNRFFOR: TStringField
      FieldName = 'NRFFOR'
      Origin = 'ISADE.CMPNFS.NRFFOR'
      Size = 10
    end
    object CmpNfsBAFFOR: TStringField
      FieldName = 'BAFFOR'
      Origin = 'ISADE.CMPNFS.BAFFOR'
    end
    object CmpNfsCIFFOR: TStringField
      FieldName = 'CIFFOR'
      Origin = 'ISADE.CMPNFS.CIFFOR'
    end
    object CmpNfsID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.CMPNFS.ID_FINUFF'
    end
    object CmpNfsID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.CMPNFS.ID_FINCIF'
    end
    object CmpNfsID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.CMPNFS.ID_TRAUFE'
    end
    object CmpNfsID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.CMPNFS.ID_TRACIE'
    end
    object CmpNfsID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.CMPNFS.ID_FINUFE'
    end
    object CmpNfsID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.CMPNFS.ID_FINCIE'
    end
    object CmpNfsNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.CMPNFS.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object CmpNfsNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.CMPNFS.NFECOF'
      FixedChar = True
      Size = 2
    end
    object CmpNfsFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.CMPNFS.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object CmpNfsENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.CMPNFS.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object CmpNfsSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.CMPNFS.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object CmpNfsDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.CMPNFS.DTENFE'
    end
    object CmpNfsRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.CMPNFS.RECNFE'
      FixedChar = True
      Size = 15
    end
    object CmpNfsPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.CMPNFS.PRONFE'
      FixedChar = True
      Size = 15
    end
    object CmpNfsLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.CMPNFS.LOTNFE'
    end
    object CmpNfsDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.CMPNFS.DTEPNF'
    end
    object CmpNfsHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.CMPNFS.HREPNF'
      FixedChar = True
      Size = 8
    end
    object CmpNfsDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.CMPNFS.DOPNFE'
    end
    object CmpNfsHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.CMPNFS.HRENFE'
      FixedChar = True
      Size = 8
    end
    object CmpNfsUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.CMPNFS.USUNFE'
    end
    object CmpNfsIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.CMPNFS.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object CmpNfsRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.CMPNFS.RETNFE'
      Size = 100
    end
    object CmpNfsDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.CMPNFS.DTECNE'
    end
    object CmpNfsHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.CMPNFS.HRECNE'
      FixedChar = True
      Size = 8
    end
    object CmpNfsARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.CMPNFS.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object CmpNfsDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.CMPNFS.DTCNFE'
    end
    object CmpNfsHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.CMPNFS.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object CmpNfsPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.CMPNFS.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object CmpNfsUFFFOR: TStringField
      FieldName = 'UFFFOR'
      Origin = 'ISADE.CMPNFS.UFFFOR'
      FixedChar = True
      Size = 2
    end
    object CmpNfsCGEFOR: TStringField
      FieldName = 'CGEFOR'
      Origin = 'ISADE.CMPNFS.ID_CMPNFS'
      FixedChar = True
      Size = 18
    end
    object CmpNfsINEFOR: TStringField
      FieldName = 'INEFOR'
      Origin = 'ISADE.CMPNFS.ID_CMPNFS'
      FixedChar = True
      Size = 18
    end
  end
  object CmpNf2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsNfs
    SQL.Strings = (
      'Select * From CmpNf2'
      'Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'
      'Order by CmpNf2.NroNf2')
    UpdateObject = UpNf2
    ValidateWithMask = True
    Left = 6
    Top = 214
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPNFS'
        ParamType = ptInput
      end>
    object CmpNf2CODCLP: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATGE2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATGE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpNf2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATGE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpNf2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATGE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpNf2CODCFO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODCFO'
      Origin = 'ISADE.CMPNF2.CODCFO'
      Size = 10
    end
    object CmpNf2CLSIPI: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPNF2.CLSIPI'
      FixedChar = True
      Size = 30
    end
    object CmpNf2CODST1: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST1'
      Origin = 'ISADE.CMPNF2.CODST1'
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODST2: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST2'
      Origin = 'ISADE.CMPNF2.CODST2'
      FixedChar = True
      Size = 2
    end
    object CmpNf2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.CMPNF2.CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'QTPNF2'
      Origin = 'ISADE.CMPNF2.QTPNF2'
      DisplayFormat = '###,###,##0'
      Precision = 2
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'VLUNF2'
      Origin = 'ISADE.CMPNF2.VLUNF2'
      DisplayFormat = '###,###,###0.0000'
      Precision = 4
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'IPINF2'
      Origin = 'ISADE.CMPNF2.IPINF2'
      DisplayFormat = '##0'
      Precision = 2
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMNF2'
      Origin = 'ISADE.CMPNF2.ICMNF2'
      DisplayFormat = '##0'
      Precision = 2
    end
    object CmpNf2TOTNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTNF2'
      Origin = 'ISADE.CMPNF2.TOTNF2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.CMPNF2.CODEIT'
      Visible = False
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 17
      FieldName = 'TOTITE'
      Origin = 'ISADE.CMPNF2.TOTITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpNf2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.CMPNF2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.CMPNF2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Origin = 'ISADE.CMPNF2.DESNF2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Origin = 'ISADE.CMPNF2.OBSNF2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNf2REFNF2: TStringField
      FieldName = 'REFNF2'
      Origin = 'ISADE.CMPNF2.REFNF2'
      Visible = False
      FixedChar = True
    end
    object CmpNf2LIQNF2: TFloatField
      FieldName = 'LIQNF2'
      Origin = 'ISADE.CMPNF2.LIQNF2'
      Visible = False
    end
    object CmpNf2BRTNF2: TFloatField
      FieldName = 'BRTNF2'
      Origin = 'ISADE.CMPNF2.BRTNF2'
      Visible = False
    end
    object CmpNf2LINNF2: TIntegerField
      FieldName = 'LINNF2'
      Origin = 'ISADE.CMPNF2.LINNF2'
      Visible = False
    end
    object CmpNf2QTDNF2: TFloatField
      FieldName = 'QTDNF2'
      Origin = 'ISADE.CMPNF2.QTDNF2'
      Visible = False
    end
    object CmpNf2SLDNF2: TFloatField
      FieldName = 'SLDNF2'
      Origin = 'ISADE.CMPNF2.SLDNF2'
      Visible = False
    end
    object CmpNf2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPNF2.BASIPI'
      Visible = False
    end
    object CmpNf2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPNF2.TOTIPI'
      Visible = False
    end
    object CmpNf2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPNF2.BASICM'
      Visible = False
    end
    object CmpNf2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPNF2.TOTICM'
      Visible = False
    end
    object CmpNf2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPNF2.BASSUB'
      Visible = False
    end
    object CmpNf2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPNF2.TOTSUB'
      Visible = False
    end
    object CmpNf2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPNF2.TOTLIQ'
      Visible = False
    end
    object CmpNf2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPNF2.TOTBRT'
      Visible = False
    end
    object CmpNf2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.CMPNF2.TOTPIS'
      Visible = False
    end
    object CmpNf2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.CMPNF2.TOTCOF'
      Visible = False
    end
    object CmpNf2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.CMPNF2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.CMPNF2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.CMPNF2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPNF2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPNF2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPNF2.REDIPI'
      Visible = False
    end
    object CmpNf2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPNF2.BSCIPI'
      Visible = False
    end
    object CmpNf2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.CMPNF2.REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPNF2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPNF2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPNF2.REDICM'
      Visible = False
    end
    object CmpNf2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPNF2.BSCICM'
      Visible = False
    end
    object CmpNf2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPNF2.INCREV'
      Visible = False
    end
    object CmpNf2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPNF2.INCFIN'
      Visible = False
    end
    object CmpNf2NRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.CMPNF2.NRONFS'
      Visible = False
    end
    object CmpNf2NRONF2: TIntegerField
      FieldName = 'NRONF2'
      Origin = 'ISADE.CMPNF2.NRONF2'
      Visible = False
    end
    object CmpNf2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.CMPNF2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNf2FLGENT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGENT'
      Origin = 'ISADE.CMPNF2.FLGENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTINFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTINFE'
      Origin = 'ISADE.CMPNF2.QTINFE'
      Visible = False
    end
    object CmpNf2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.CMPNF2.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2ID_CMPNF2: TIntegerField
      FieldName = 'ID_CMPNF2'
      Origin = 'ISADE.CMPNF2.ID_CMPNF2'
      Visible = False
    end
    object CmpNf2ID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
      Origin = 'ISADE.CMPNF2.ID_CMPNFS'
      Visible = False
    end
    object CmpNf2QTNNF2: TFloatField
      FieldName = 'QTNNF2'
      Origin = 'ISADE.CMPNF2.QTNNF2'
      Visible = False
    end
    object CmpNf2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.CMPNF2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.CMPNF2.ICMSUB'
      Visible = False
    end
    object CmpNf2MRGSUB: TFloatField
      FieldName = 'MRGSUB'
      Origin = 'ISADE.CMPNF2.MRGSUB'
      Visible = False
    end
    object CmpNf2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.CMPNF2.BASESB'
      Visible = False
    end
    object CmpNf2ID_CMPNFG: TIntegerField
      FieldName = 'ID_CMPNFG'
      Origin = 'ISADE.CMPNF2.ID_CMPNFG'
      Visible = False
    end
    object CmpNf2ID_CMPNF3: TIntegerField
      FieldName = 'ID_CMPNF3'
      Origin = 'ISADE.CMPNF2.ID_CMPNF3'
      Visible = False
    end
    object CmpNf2NRONOT: TIntegerField
      FieldName = 'NRONOT'
      Origin = 'ISADE.CMPNF2.NRONOT'
      Visible = False
    end
    object CmpNf2VALNF2: TFloatField
      DisplayWidth = 10
      FieldName = 'VALNF2'
      Origin = 'ISADE.CMPNF2.VALNF2'
      Visible = False
    end
    object CmpNf2FLGINT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGINT'
      Origin = 'ISADE.CMPNF2.FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2PRODEP: TStringField
      DisplayWidth = 18
      FieldName = 'PRODEP'
      Origin = 'ISADE.CMPNF2.PRODEP'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNf2TOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Origin = 'ISADE.CMPNF2.TOTFRT'
      Visible = False
    end
    object CmpNf2TOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Origin = 'ISADE.CMPNF2.TOTSEG'
      Visible = False
    end
    object CmpNf2TOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Origin = 'ISADE.CMPNF2.TOTDES'
      Visible = False
    end
    object CmpNf2BAICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMF'
      Origin = 'ISADE.CMPNF2.BAICMF'
      Visible = False
    end
    object CmpNf2TOICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMF'
      Origin = 'ISADE.CMPNF2.TOICMF'
      Visible = False
    end
    object CmpNf2BAICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMS'
      Origin = 'ISADE.CMPNF2.BAICMS'
      Visible = False
    end
    object CmpNf2TOICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMS'
      Origin = 'ISADE.CMPNF2.TOICMS'
      Visible = False
    end
    object CmpNf2BAICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMD'
      Origin = 'ISADE.CMPNF2.BAICMD'
      Visible = False
    end
    object CmpNf2TOICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMD'
      Origin = 'ISADE.CMPNF2.TOICMD'
      Visible = False
    end
    object CmpNf2BAIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIF'
      Origin = 'ISADE.CMPNF2.BAIPIF'
      Visible = False
    end
    object CmpNf2TOIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIF'
      Origin = 'ISADE.CMPNF2.TOIPIF'
      Visible = False
    end
    object CmpNf2BAIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIS'
      Origin = 'ISADE.CMPNF2.BAIPIS'
      Visible = False
    end
    object CmpNf2TOIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIS'
      Origin = 'ISADE.CMPNF2.TOIPIS'
      Visible = False
    end
    object CmpNf2BAIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPID'
      Origin = 'ISADE.CMPNF2.BAIPID'
      Visible = False
    end
    object CmpNf2TOIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPID'
      Origin = 'ISADE.CMPNF2.TOIPID'
      Visible = False
    end
  end
  object UpNfs: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODTIP = :CODTIP,'
      '  DTEFAT = :DTEFAT,'
      '  HREFAT = :HREFAT,'
      '  UFENFS = :UFENFS,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  MODPFA = :MODPFA,'
      '  CODFOR = :CODFOR,'
      '  NRONOT = :NRONOT,'
      '  NRONFS = :NRONFS,'
      '  CGCFOR = :CGCFOR,'
      '  INSFOR = :INSFOR,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTNFS = :FRTNFS,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARNFS = :MARNFS,'
      '  NUMNFS = :NUMNFS,'
      '  ESPNFS = :ESPNFS,'
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
      '  PRTTRA = :PRTTRA,'
      '  FONTRA = :FONTRA,'
      '  UFEPLC = :UFEPLC,'
      '  NOMENT = :NOMENT,'
      '  CEPFOR = :CEPFOR,'
      '  TENFOR = :TENFOR,'
      '  ENDFOR = :ENDFOR,'
      '  REFFOR = :REFFOR,'
      '  NUMFOR = :NUMFOR,'
      '  BAIFOR = :BAIFOR,'
      '  CIDFOR = :CIDFOR,'
      '  UFEFOR = :UFEFOR,'
      '  OB1NFS = :OB1NFS,'
      '  OB2NFS = :OB2NFS,'
      '  OB3NFS = :OB3NFS,'
      '  OB4NFS = :OB4NFS,'
      '  OB5NFS = :OB5NFS,'
      '  OB6NFS = :OB6NFS,'
      '  OB7NFS = :OB7NFS,'
      '  OB8NFS = :OB8NFS,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  BASIP1 = :BASIP1,'
      '  TOTIP1 = :TOTIP1,'
      '  BASIC1 = :BASIC1,'
      '  TOTIC1 = :TOTIC1,'
      '  BASSU1 = :BASSU1,'
      '  TOTSU1 = :TOTSU1,'
      '  TOTIT1 = :TOTIT1,'
      '  TOTGE1 = :TOTGE1,'
      '  TRBPIS = :TRBPIS,'
      '  TRBCOF = :TRBCOF,'
      '  FLGIMP = :FLGIMP,'
      '  FLGATU = :FLGATU,'
      '  SEQNFS = :SEQNFS,'
      '  SITNFS = :SITNFS,'
      '  CODTRA = :CODTRA,'
      '  FLGNFS = :FLGNFS,'
      '  VALTMO = :VALTMO,'
      '  ID_CMPPED = :ID_CMPPED,'
      '  CEFFOR = :CEFFOR,'
      '  TEFFOR = :TEFFOR,'
      '  ENFFOR = :ENFFOR,'
      '  RFFFOR = :RFFFOR,'
      '  NRFFOR = :NRFFOR,'
      '  BAFFOR = :BAFFOR,'
      '  CIFFOR = :CIFFOR,'
      '  ID_FINUFF = :ID_FINUFF,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  ID_TRAUFE = :ID_TRAUFE,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  NFEPIS = :NFEPIS,'
      '  NFECOF = :NFECOF,'
      '  UFFFOR = :UFFFOR,'
      '  CGEFOR = :CGEFOR,'
      '  INEFOR = :INEFOR'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      
        '  (ID_CMPNFS, CODEMP, CODTIP, DTEFAT, HREFAT, UFENFS, CODPFA, TI' +
        'PPFA, '
      'MODPFA, '
      
        '   CODFOR, PERPIS, PERCOF, CODFIL, QTDNOT, NRONOT, QTDNFS, NRONF' +
        'S, '
      'CGCFOR, '
      
        '   INSFOR, CODCF1, CODCF2, FRTNFS, FLGENT, FLGSAI, DESNAT, INSSU' +
        'B, '
      'TIPFRT, '
      
        '   MARNFS, NUMNFS, ESPNFS, NOMTRA, CGCTRA, INSTRA, CEPTRA, TENTR' +
        'A, '
      'ENDTRA, '
      
        '   REFTRA, NUMTRA, BAITRA, CIDTRA, UFETRA, PLCTRA, PRTTRA, FONTR' +
        'A, '
      'UFEPLC, '
      
        '   NOMENT, CEPFOR, TENFOR, ENDFOR, REFFOR, NUMFOR, BAIFOR, CIDFO' +
        'R, '
      'UFEFOR, '
      
        '   OB1NFS, OB2NFS, OB3NFS, OB4NFS, OB5NFS, OB6NFS, OB7NFS, OB8NF' +
        'S, '
      'QTINFS, '
      
        '   LINNFS, QTDVOL, ALTVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIP' +
        'I, TOTIPI, '
      
        '   BASICM, TOTICM, BASSUB, TOTSUB, TOTITE, TOTGER, TOTPIS, TOTCO' +
        'F, '
      'TOTFRT, '
      
        '   TOTSEG, TOTDES, BSICMF, BAICMF, TOICMF, BSICMS, BAICMS, TOICM' +
        'S, '
      'BSICMD, '
      
        '   BAICMD, TOICMD, BSIPIF, BAIPIF, TOIPIF, BSIPIS, BAIPIS, TOIPI' +
        'S, BSIPID, '
      
        '   BAIPID, TOIPID, BASIP1, TOTIP1, BASIC1, TOTIC1, BASSU1, TOTSU' +
        '1, TOTIT1, '
      
        '   TOTGE1, CODUSU, HRCNFS, DTCNFS, USCNFS, OBCNF1, OBCNF2, OBCNF' +
        '3, '
      'DTFNFS, '
      
        '   HRFNFS, OBFNF1, OBFNF2, OBFNF3, USFNFS, ATUEST, LANEST, INTFI' +
        'N, '
      'CONSUM, '
      
        '   FLGSIN, FLGCTB, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODIC' +
        'M, TIPICM, '
      
        '   TRBICM, REDICM, BSCICM, INCREV, INCFIN, NROCOL, TRBPIS, TRBCO' +
        'F, '
      'FLGENV, '
      
        '   FLGIMP, FLGATU, SEQNFS, SITNFS, SERNOT, SERSEL, FLGSEG, SEQIN' +
        'I, '
      'SEQFIN, '
      
        '   CODTRA, TXFICM, TXFIPI, FLGNFS, VALTMO, ID_CMPPED, OB1OPE, OB' +
        '2OPE, '
      'OB3OPE, '
      
        '   OB4OPE, OB5OPE, CEFFOR, TEFFOR, ENFFOR, RFFFOR, NRFFOR, BAFFO' +
        'R, '
      'CIFFOR, '
      
        '   ID_FINUFF, ID_FINCIF, ID_TRAUFE, ID_TRACIE, ID_FINUFE, ID_FIN' +
        'CIE, '
      'NFEPIS, '
      
        '   NFECOF, FLGNFE, ENVNFE, SEQNFE, DTENFE, RECNFE, PRONFE, LOTNF' +
        'E, '
      'DTEPNF, '
      
        '   HREPNF, DOPNFE, HRENFE, USUNFE, IMPNFE, RETNFE, DTECNE, HRECN' +
        'E, '
      'ARQNFE, '
      '   DTCNFE, HRCNFE, PRCNFE, UFFFOR, CGEFOR, INEFOR)'
      'values'
      
        '  (:ID_CMPNFS, :CODEMP, :CODTIP, :DTEFAT, :HREFAT, :UFENFS, :COD' +
        'PFA, '
      ':TIPPFA, '
      
        '   :MODPFA, :CODFOR, :PERPIS, :PERCOF, :CODFIL, :QTDNOT, :NRONOT' +
        ', '
      ':QTDNFS, '
      
        '   :NRONFS, :CGCFOR, :INSFOR, :CODCF1, :CODCF2, :FRTNFS, :FLGENT' +
        ', '
      ':FLGSAI, '
      
        '   :DESNAT, :INSSUB, :TIPFRT, :MARNFS, :NUMNFS, :ESPNFS, :NOMTRA' +
        ', '
      ':CGCTRA, '
      
        '   :INSTRA, :CEPTRA, :TENTRA, :ENDTRA, :REFTRA, :NUMTRA, :BAITRA' +
        ', '
      ':CIDTRA, '
      
        '   :UFETRA, :PLCTRA, :PRTTRA, :FONTRA, :UFEPLC, :NOMENT, :CEPFOR' +
        ', '
      ':TENFOR, '
      
        '   :ENDFOR, :REFFOR, :NUMFOR, :BAIFOR, :CIDFOR, :UFEFOR, :OB1NFS' +
        ', '
      ':OB2NFS, '
      
        '   :OB3NFS, :OB4NFS, :OB5NFS, :OB6NFS, :OB7NFS, :OB8NFS, :QTINFS' +
        ', :LINNFS, '
      
        '   :QTDVOL, :ALTVOL, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI' +
        ', :TOTIPI, '
      
        '   :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTGER, :TOTPIS' +
        ', '
      ':TOTCOF, '
      
        '   :TOTFRT, :TOTSEG, :TOTDES, :BSICMF, :BAICMF, :TOICMF, :BSICMS' +
        ', :BAICMS, '
      
        '   :TOICMS, :BSICMD, :BAICMD, :TOICMD, :BSIPIF, :BAIPIF, :TOIPIF' +
        ', :BSIPIS, '
      
        '   :BAIPIS, :TOIPIS, :BSIPID, :BAIPID, :TOIPID, :BASIP1, :TOTIP1' +
        ', :BASIC1, '
      
        '   :TOTIC1, :BASSU1, :TOTSU1, :TOTIT1, :TOTGE1, :CODUSU, :HRCNFS' +
        ', '
      ':DTCNFS, '
      
        '   :USCNFS, :OBCNF1, :OBCNF2, :OBCNF3, :DTFNFS, :HRFNFS, :OBFNF1' +
        ', '
      ':OBFNF2, '
      
        '   :OBFNF3, :USFNFS, :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGSIN' +
        ', :FLGCTB, '
      
        '   :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM' +
        ', :TRBICM, '
      
        '   :REDICM, :BSCICM, :INCREV, :INCFIN, :NROCOL, :TRBPIS, :TRBCOF' +
        ', :FLGENV, '
      
        '   :FLGIMP, :FLGATU, :SEQNFS, :SITNFS, :SERNOT, :SERSEL, :FLGSEG' +
        ', :SEQINI, '
      
        '   :SEQFIN, :CODTRA, :TXFICM, :TXFIPI, :FLGNFS, :VALTMO, :ID_CMP' +
        'PED, '
      ':OB1OPE, '
      
        '   :OB2OPE, :OB3OPE, :OB4OPE, :OB5OPE, :CEFFOR, :TEFFOR, :ENFFOR' +
        ', '
      ':RFFFOR, '
      
        '   :NRFFOR, :BAFFOR, :CIFFOR, :ID_FINUFF, :ID_FINCIF, :ID_TRAUFE' +
        ', '
      ':ID_TRACIE, '
      
        '   :ID_FINUFE, :ID_FINCIE, :NFEPIS, :NFECOF, :FLGNFE, :ENVNFE, :' +
        'SEQNFE, '
      
        '   :DTENFE, :RECNFE, :PRONFE, :LOTNFE, :DTEPNF, :HREPNF, :DOPNFE' +
        ', '
      ':HRENFE, '
      
        '   :USUNFE, :IMPNFE, :RETNFE, :DTECNE, :HRECNE, :ARQNFE, :DTCNFE' +
        ', '
      ':HRCNFE, '
      '   :PRCNFE, :UFFFOR, :CGEFOR, :INEFOR)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 6
    Top = 242
  end
  object UpNf2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNf2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESNF2 = :DESNF2,'
      '  OBSNF2 = :OBSNF2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFNF2 = :REFNF2,'
      '  QTINFE = :QTINFE,'
      '  LIQNF2 = :LIQNF2,'
      '  BRTNF2 = :BRTNF2,'
      '  LINNF2 = :LINNF2,'
      '  QTPNF2 = :QTPNF2,'
      '  VLUNF2 = :VLUNF2,'
      '  IPINF2 = :IPINF2,'
      '  CLSIPI = :CLSIPI,'
      '  CODTXF = :CODTXF,'
      '  CODCFO = :CODCFO,'
      '  ICMNF2 = :ICMNF2,'
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
      '  FLGATU = :FLGATU,'
      '  VALNF2 = :VALNF2,'
      '  FLGINT = :FLGINT'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    InsertSQL.Strings = (
      'insert into CmpNf2'
      
        '  (ID_CMPNF2, ID_CMPNFS, CODEIT, CODCLP, CODGRU, CODSUB, CODPRO,' +
        ' '
      'CODTAM, '
      
        '   CODCOR, DESNF2, OBSNF2, CODST1, CODST2, CODUND, REFNF2, QTINF' +
        'E, '
      'LIQNF2, '
      
        '   BRTNF2, LINNF2, QTPNF2, QTNNF2, QTDNF2, SLDNF2, VLUNF2, IPINF' +
        '2, '
      'CLSIPI, '
      
        '   CODTXF, CODCFO, ICMNF2, BASIPI, TOTIPI, BASICM, TOTICM, BASSU' +
        'B, '
      'TOTSUB, '
      
        '   TOTITE, TOTNF2, TOTPIS, TOTCOF, TOTLIQ, TOTBRT, CODSTR, TIPST' +
        'R, '
      'TRBSUB, '
      
        '   ICMSUB, MRGSUB, BASESB, REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, REGICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, FLGENT, NRONF' +
        'S, '
      'FLGATU, '
      
        '   NRONF2, ID_CMPNFG, ID_CMPNF3, NRONOT, VALNF2, FLGINT, PRODEP,' +
        ' '
      'TOTFRT, '
      
        '   TOTSEG, TOTDES, BAICMF, TOICMF, BAICMS, TOICMS, BAICMD, TOICM' +
        'D, '
      'BAIPIF, '
      '   TOIPIF, BAIPIS, TOIPIS, BAIPID, TOIPID)'
      'values'
      
        '  (:ID_CMPNF2, :ID_CMPNFS, :CODEIT, :CODCLP, :CODGRU, :CODSUB, :' +
        'CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESNF2, :OBSNF2, :CODST1, :CODST2, :CODUND' +
        ', '
      ':REFNF2, '
      
        '   :QTINFE, :LIQNF2, :BRTNF2, :LINNF2, :QTPNF2, :QTNNF2, :QTDNF2' +
        ', :SLDNF2, '
      
        '   :VLUNF2, :IPINF2, :CLSIPI, :CODTXF, :CODCFO, :ICMNF2, :BASIPI' +
        ', :TOTIPI, '
      
        '   :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTNF2, :TOTPIS' +
        ', :TOTCOF, '
      
        '   :TOTLIQ, :TOTBRT, :CODSTR, :TIPSTR, :TRBSUB, :ICMSUB, :MRGSUB' +
        ', '
      ':BASESB, '
      
        '   :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM, :TIPICM' +
        ', :TRBICM, '
      
        '   :REDICM, :BSCICM, :INCREV, :INCFIN, :FLGENT, :NRONFS, :FLGATU' +
        ', :NRONF2, '
      
        '   :ID_CMPNFG, :ID_CMPNF3, :NRONOT, :VALNF2, :FLGINT, :PRODEP, :' +
        'TOTFRT, '
      
        '   :TOTSEG, :TOTDES, :BAICMF, :TOICMF, :BAICMS, :TOICMS, :BAICMD' +
        ', :TOICMD, '
      '   :BAIPIF, :TOIPIF, :BAIPIS, :TOIPIS, :BAIPID, :TOIPID)')
    DeleteSQL.Strings = (
      'delete from CmpNf2'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    Left = 34
    Top = 242
  end
  object DsNf2: TDataSource
    DataSet = CmpNf2
    OnDataChange = DsNf2DataChange
    Left = 34
    Top = 214
  end
  object DsNfs: TDataSource
    DataSet = CmpNfs
    Left = 34
    Top = 186
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 5
    Top = 270
  end
end
