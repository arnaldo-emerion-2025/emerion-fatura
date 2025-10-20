inherited fmManAt1: TfmManAt1
  Left = 0
  Caption = 'Contatos'
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
    Top = 450
    Width = 151
    Height = 14
    Caption = 'F1-Iniciais F2-Inteligente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 653
    Top = 466
    Width = 131
    Height = 14
    Alignment = taRightJustify
    Caption = 'F12-Concluir ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
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
  object grLabel1: TdxDBGraphicEdit
    Left = 2
    Top = 123
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
    Left = 4
    Top = 125
    Width = 776
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
      Width = 51
      Height = 14
      Caption = 'Contato'
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
      Left = 148
      Top = 6
      Width = 59
      Height = 14
      Caption = 'Vendedor'
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
      Left = 291
      Top = 6
      Width = 66
      Height = 14
      Caption = 'Atendente'
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
      Left = 435
      Top = 6
      Width = 51
      Height = 14
      Caption = 'Retorno'
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
      Left = 579
      Top = 6
      Width = 107
      Height = 14
      Caption = 'Nome do contato'
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
    Height = 121
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
      Left = 3
      Top = 6
      Width = 114
      Height = 14
      Caption = 'Número do controle:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 3
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
      Left = 3
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
    object bpsqCli: TSpeedButton
      Left = 229
      Top = 51
      Width = 26
      Height = 22
      Hint = 'Pesquisar clientes cadastrados'
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
      Left = 229
      Top = 27
      Width = 26
      Height = 22
      Hint = 'Pesquisar empresas cadastradas'
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
    object Label54: TLabel
      Left = 663
      Top = 54
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
    object Label1: TLabel
      Left = 3
      Top = 78
      Width = 35
      Height = 14
      Caption = 'E-mail:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 2
      Top = 102
      Width = 53
      Height = 14
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 411
      Top = 102
      Width = 131
      Height = 14
      Caption = 'Data do último contato:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 663
      Top = 102
      Width = 42
      Height = 14
      Caption = 'Horário:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 587
      Top = 6
      Width = 88
      Height = 14
      Caption = 'No. da Cotação:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdUfeAte: TdxDBColorEdit
      Left = 716
      Top = 50
      Width = 43
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
      TabOrder = 8
      OnEnter = EdUfeAteEnter
      OnExit = EdUfeAteExit
      OnKeyDown = EdUfeAteKeyDown
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'UFEATE'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 255
      Top = 26
      Width = 528
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
      DataSource = DsAte
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 255
      Top = 50
      Width = 398
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
      TabOrder = 6
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'NOMCLI'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdId_PedAte: TdxDBColorEdit
      Left = 125
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
      DataField = 'ID_PEDATE'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnId_PedAte: TPanel
      Left = 127
      Top = 5
      Width = 95
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
      OnEnter = EdCodEmpEnter
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsAte
      CorDeFoco = clInfoBk
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
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdCodCliEnter
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 259
      Top = 53
      Width = 390
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
    object pnApeEmp: TPanel
      Left = 259
      Top = 29
      Width = 520
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
    object pnUfeAte: TPanel
      Left = 718
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
    object EdEmaCli: TdxDBColorEdit
      Left = 125
      Top = 74
      Width = 658
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      OnDblClick = EdEmaCliDblClick
      OnEnter = EdEmaCliEnter
      Alignment = taLeftJustify
      CharCase = ecLowerCase
      DataField = 'EMACLI'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdPfoCli: TdxDBColorEdit
      Left = 125
      Top = 98
      Width = 60
      Color = 16577773
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
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'PFOCLI'
      DataSource = DsAte
      MaxLength = 4
      CorDeFoco = clInfoBk
      StoredValues = 3
    end
    object EdFonCli: TdxDBColorEdit
      Left = 186
      Top = 98
      Width = 137
      Color = 16577773
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
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'FONCLI'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDteUlt: TdxDBColorDateEdit
      Left = 549
      Top = 98
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
      TabOrder = 13
      Alignment = taCenter
      DataField = 'DTEULT'
      DataSource = DsAte
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdHreUlt: TdxDBColorEdit
      Left = 716
      Top = 98
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'HREULT'
      DataSource = DsAte
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object EdId_PedCta: TdxDBColorEdit
      Left = 680
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
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'ID_PEDCTA'
      DataSource = DsAte
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnId_PedCta: TPanel
      Left = 683
      Top = 5
      Width = 94
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
  object grAt21: TdxDBGraphicEdit
    Left = 2
    Top = 156
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 77
  end
  object grAt2: ThGrid
    Left = 4
    Top = 158
    Width = 776
    Height = 71
    Selected.Strings = (
      'CONTATO'#9'20'#9' '
      'APEVEN'#9'20'#9' '
      'APEATD'#9'20'#9' '
      'RETORNO'#9'20'#9' '
      'NOMCON'#9'28'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsAt2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grAt2Enter
    OnKeyDown = grAt2KeyDown
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
    TabOrder = 7
  end
  object Panel2: TPanel
    Left = 3
    Top = 232
    Width = 780
    Height = 216
    BevelOuter = bvNone
    TabOrder = 4
    OnExit = Panel2Exit
    object Label39: TLabel
      Left = 1
      Top = 5
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
    object bpsqVen: TSpeedButton
      Left = 229
      Top = 2
      Width = 26
      Height = 22
      Hint = 'Pesquisar vendedores cadastrados'
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
      Left = 1
      Top = 29
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
      Left = 229
      Top = 26
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
    object Label5: TLabel
      Left = 1
      Top = 53
      Width = 119
      Height = 14
      Caption = 'Contato realizado em:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 256
      Top = 53
      Width = 109
      Height = 14
      Caption = 'Realizar retorno em:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 490
      Top = 53
      Width = 109
      Height = 14
      Caption = 'Horário preferencial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 1
      Top = 77
      Width = 73
      Height = 14
      Caption = 'Observações:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 1
      Top = 197
      Width = 101
      Height = 14
      Caption = 'Nome do contato:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnDiaSemana: TLabel
      Left = 688
      Top = 53
      Width = 84
      Height = 14
      Caption = '                     '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdCodVen: TdxDBColorEdit
      Left = 125
      Top = 1
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
      OnEnter = EdCodCliEnter
      OnExit = EdCodVenExit
      OnKeyDown = EdCodVenKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomVen: TdxDBColorEdit
      Left = 255
      Top = 1
      Width = 526
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
      TabOrder = 1
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DsAte
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object pnApeVen: TPanel
      Left = 259
      Top = 4
      Width = 518
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object EdCodAtd: TdxDBColorEdit
      Left = 125
      Top = 25
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
      TabOrder = 3
      OnEnter = EdCodCliEnter
      OnExit = EdCodAtdExit
      OnKeyDown = EdCodAtdKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODATD'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdApeAtd: TdxDBColorEdit
      Left = 255
      Top = 25
      Width = 526
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
      CorDeFoco = clBlack
      Height = 24
      StoredValues = 1
    end
    object pnApeAtd: TPanel
      Left = 259
      Top = 28
      Width = 518
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
    object EdDteAte: TdxDBColorDateEdit
      Left = 125
      Top = 49
      Width = 103
      Color = 16577773
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
      OnEnter = EdDteAteEnter
      OnExit = EdDteAteExit
      Alignment = taCenter
      DataField = 'DTEATE'
      DataSource = DsAt2
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDteRet: TdxDBColorDateEdit
      Left = 373
      Top = 49
      Width = 103
      Color = 16577773
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
      Alignment = taCenter
      DataField = 'DTERET'
      DataSource = DsAt2
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdHreRet: TdxDBColorMaskEdit
      Left = 609
      Top = 49
      Width = 68
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      Alignment = taCenter
      CharCase = ecUpperCase
      DataField = 'HRERET'
      DataSource = DsAt2
      IgnoreMaskBlank = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdOb1Ate: TdxDBColorEdit
      Left = 125
      Top = 73
      Width = 656
      Color = 16577773
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
      TabOrder = 9
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OB1ATE'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdOb2Ate: TdxDBColorEdit
      Left = 125
      Top = 97
      Width = 656
      Color = 16577773
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
      TabOrder = 10
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OB2ATE'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdOb3Ate: TdxDBColorEdit
      Left = 125
      Top = 121
      Width = 656
      Color = 16577773
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
      TabOrder = 11
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OB3ATE'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdOb4Ate: TdxDBColorEdit
      Left = 125
      Top = 145
      Width = 656
      Color = 16577773
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
      TabOrder = 12
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OB4ATE'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdOb5Ate: TdxDBColorEdit
      Left = 125
      Top = 169
      Width = 656
      Color = 16577773
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
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OB5ATE'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomCon: TdxDBColorEdit
      Left = 125
      Top = 193
      Width = 656
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      DataField = 'NOMCON'
      DataSource = DsAt2
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
  end
  object DsAte: TwwDataSource
    DataSet = PedAte
    Left = 32
    Top = 340
  end
  object DsAt2: TwwDataSource
    DataSet = PedAt2
    OnDataChange = DsAt2DataChange
    Left = 32
    Top = 368
  end
  object UpAte: TUpdateSQL
    ModifySQL.Strings = (
      'update PedAte'
      'set'
      '  CODCLI = :CODCLI,'
      '  NOMCLI = :NOMCLI,'
      '  UFEATE = :UFEATE,'
      '  EMACLI = :EMACLI,'
      '  PFOCLI = :PFOCLI,'
      '  FONCLI = :FONCLI,'
      '  SEQATE = :SEQATE,'
      '  FLGATU = :FLGATU,'
      '  SITATE = :SITATE'
      'where'
      '  ID_PEDATE = :OLD_ID_PEDATE')
    InsertSQL.Strings = (
      'insert into PedAte'
      
        '  (ID_PEDATE, CODEMP, CODCLI, NOMCLI, UFEATE, EMACLI, PFOCLI, FO' +
        'NCLI, '
      'CLITAB, '
      
        '   QTIAT2, DTEULT, HREULT, DTEFIN, HREFIN, USUFIN, OB1FIN, OB2FI' +
        'N, '
      'OB3FIN, '
      '   OB4FIN, OB5FIN, ID_PEDCTA, SEQATE, FLGATU, SITATE)'
      'values'
      
        '  (:ID_PEDATE, :CODEMP, :CODCLI, :NOMCLI, :UFEATE, :EMACLI, :PFO' +
        'CLI, '
      ':FONCLI, '
      
        '   :CLITAB, :QTIAT2, :DTEULT, :HREULT, :DTEFIN, :HREFIN, :USUFIN' +
        ', :OB1FIN, '
      
        '   :OB2FIN, :OB3FIN, :OB4FIN, :OB5FIN, :ID_PEDCTA, :SEQATE, :FLG' +
        'ATU, '
      ':SITATE)')
    DeleteSQL.Strings = (
      'delete from PedAte'
      'where'
      '  ID_PEDATE = :OLD_ID_PEDATE')
    Left = 4
    Top = 396
  end
  object UpAt2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedAt2'
      'set'
      '  DTEATE = :DTEATE,'
      '  DTERET = :DTERET,'
      '  HRERET = :HRERET,'
      '  OB1ATE = :OB1ATE,'
      '  OB2ATE = :OB2ATE,'
      '  OB3ATE = :OB3ATE,'
      '  OB4ATE = :OB4ATE,'
      '  OB5ATE = :OB5ATE,'
      '  OB6ATE = :OB6ATE,'
      '  OB7ATE = :OB7ATE,'
      '  OB8ATE = :OB8ATE,'
      '  OB9ATE = :OB9ATE,'
      '  NOMCON = :NOMCON,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_PEDAT2 = :OLD_ID_PEDAT2')
    InsertSQL.Strings = (
      'insert into PedAt2'
      '(ID_PEDAT2, ID_PEDATE, DTEATE, HREATE, DTERET, HRERET, CODVEN, '
      'CODATD, OB1ATE, OB2ATE, OB3ATE, OB4ATE, OB5ATE, OB6ATE, OB7ATE, '
      'OB8ATE, OB9ATE, NOMCON, CODUSU, DTEATU, HREATU, USUATU, FLGATU, '
      'NROAT2)'
      'values'
      
        '(:ID_PEDAT2, :ID_PEDATE, :DTEATE, :HREATE, :DTERET, :HRERET, :CO' +
        'DVEN, '
      
        ':CODATD, :OB1ATE, :OB2ATE, :OB3ATE, :OB4ATE, :OB5ATE, :OB6ATE, :' +
        'OB7ATE, '
      ':OB8ATE, :OB9ATE, :NOMCON, :CODUSU, :DTEATU, :HREATU, :USUATU, '
      ':FLGATU, :NROAT2)')
    DeleteSQL.Strings = (
      'delete from PedAt2'
      'where'
      '  ID_PEDAT2 = :OLD_ID_PEDAT2')
    Left = 32
    Top = 396
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 340
  end
  object PedAte: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedAteNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedAte'
      'Where PedAte.Id_PedAte = :Id_PedAte')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpAte
    ValidateWithMask = True
    Left = 4
    Top = 340
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedAte'
        ParamType = ptInput
      end>
    object PedAteID_PEDATE: TIntegerField
      FieldName = 'ID_PEDATE'
      Origin = 'ISADE.PEDATE.ID_PEDATE'
    end
    object PedAteCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDATE.CODEMP'
    end
    object PedAteCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.PEDATE.CODCLI'
    end
    object PedAteNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'ISADE.PEDATE.NOMCLI'
      Size = 70
    end
    object PedAteEMACLI: TStringField
      FieldName = 'EMACLI'
      Origin = 'ISADE.PEDATE.EMACLI'
      Size = 70
    end
    object PedAtePFOCLI: TStringField
      FieldName = 'PFOCLI'
      Origin = 'ISADE.PEDATE.PFOCLI'
      EditMask = '!\(9999\);0;_'
      FixedChar = True
      Size = 4
    end
    object PedAteFONCLI: TStringField
      FieldName = 'FONCLI'
      Origin = 'ISADE.PEDATE.FONCLI'
      Size = 30
    end
    object PedAteQTIAT2: TIntegerField
      FieldName = 'QTIAT2'
      Origin = 'ISADE.PEDATE.QTIAT2'
    end
    object PedAteDTEULT: TDateTimeField
      FieldName = 'DTEULT'
      Origin = 'ISADE.PEDATE.DTEULT'
    end
    object PedAteHREULT: TStringField
      FieldName = 'HREULT'
      Origin = 'ISADE.PEDATE.HREULT'
      FixedChar = True
      Size = 8
    end
    object PedAteSITATE: TStringField
      FieldName = 'SITATE'
      Origin = 'ISADE.PEDATE.SITATE'
      Size = 45
    end
    object PedAteDTEFIN: TDateTimeField
      FieldName = 'DTEFIN'
      Origin = 'ISADE.PEDATE.DTEFIN'
    end
    object PedAteHREFIN: TStringField
      FieldName = 'HREFIN'
      Origin = 'ISADE.PEDATE.HREFIN'
      FixedChar = True
      Size = 8
    end
    object PedAteUSUFIN: TIntegerField
      FieldName = 'USUFIN'
      Origin = 'ISADE.PEDATE.USUFIN'
    end
    object PedAteOB1FIN: TStringField
      FieldName = 'OB1FIN'
      Origin = 'ISADE.PEDATE.OB1FIN'
      Size = 80
    end
    object PedAteOB2FIN: TStringField
      FieldName = 'OB2FIN'
      Origin = 'ISADE.PEDATE.OB2FIN'
      Size = 80
    end
    object PedAteOB3FIN: TStringField
      FieldName = 'OB3FIN'
      Origin = 'ISADE.PEDATE.OB3FIN'
      Size = 80
    end
    object PedAteOB4FIN: TStringField
      FieldName = 'OB4FIN'
      Origin = 'ISADE.PEDATE.OB4FIN'
      Size = 80
    end
    object PedAteOB5FIN: TStringField
      FieldName = 'OB5FIN'
      Origin = 'ISADE.PEDATE.OB5FIN'
      Size = 80
    end
    object PedAteUFEATE: TStringField
      FieldName = 'UFEATE'
      Origin = 'ISADE.PEDATE.UFEATE'
      FixedChar = True
      Size = 2
    end
    object PedAteSEQATE: TStringField
      FieldName = 'SEQATE'
      Origin = 'ISADE.PEDATE.SEQATE'
      FixedChar = True
      Size = 22
    end
    object PedAteFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDATE.FLGATU'
      FixedChar = True
      Size = 1
    end
    object PedAteCLITAB: TStringField
      FieldName = 'CLITAB'
      Origin = 'ISADE.PEDATE.CLITAB'
      Size = 23
    end
    object PedAteID_PEDCTA: TIntegerField
      FieldName = 'ID_PEDCTA'
      Origin = 'ISADE.PEDATE.ID_PEDCTA'
    end
  end
  object PedAt2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedAt2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsAte
    SQL.Strings = (
      'Select PedAt2.*,'
      '           FinVen.ApeVen,'
      
        '           (Select ApeAtd From FinAtd Where FinAtd.CodAtd = PedA' +
        't2.CodAtd) as ApeAtd'
      'From PedAt2 LEFT JOIN FinVen ON (PedAt2.CodVen = FinVen.CodVen)'
      'Where PedAt2.Id_PedAte = :Id_PedAte'
      'Order by PedAt2.NroAt2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpAt2
    ValidateWithMask = True
    Left = 4
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDATE'
        ParamType = ptInput
      end>
    object PedAt2CONTATO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CONTATO'
      OnGetText = PedAt2CONTATOGetText
      Calculated = True
    end
    object PedAt2APEVEN: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'APEVEN'
    end
    object PedAt2APEATD: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'APEATD'
    end
    object PedAt2RETORNO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'RETORNO'
      OnGetText = PedAt2RETORNOGetText
      Calculated = True
    end
    object PedAt2NOMCON: TStringField
      DisplayLabel = ' '
      DisplayWidth = 28
      FieldName = 'NOMCON'
      Size = 70
    end
    object PedAt2ID_PEDAT2: TIntegerField
      FieldName = 'ID_PEDAT2'
      Origin = 'ISADE.PEDAT2.ID_PEDAT2'
      Visible = False
    end
    object PedAt2ID_PEDATE: TIntegerField
      FieldName = 'ID_PEDATE'
      Origin = 'ISADE.PEDAT2.ID_PEDATE'
      Visible = False
    end
    object PedAt2DTEATE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEATE'
      Origin = 'ISADE.PEDAT2.DTEATE'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object PedAt2HREATE: TStringField
      FieldName = 'HREATE'
      Origin = 'ISADE.PEDAT2.HREATE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedAt2DTERET: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTERET'
      Origin = 'ISADE.PEDAT2.DTERET'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object PedAt2HRERET: TStringField
      FieldName = 'HRERET'
      Origin = 'ISADE.PEDAT2.HRERET'
      Visible = False
      EditMask = '!99:99;1;_'
      FixedChar = True
      Size = 5
    end
    object PedAt2CODVEN: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'CODVEN'
      Origin = 'ISADE.PEDAT2.CODVEN'
      Visible = False
    end
    object PedAt2CODATD: TIntegerField
      DisplayLabel = 'Ate'
      FieldName = 'CODATD'
      Origin = 'ISADE.PEDAT2.CODATD'
      Visible = False
    end
    object PedAt2OB1ATE: TStringField
      FieldName = 'OB1ATE'
      Origin = 'ISADE.PEDAT2.OB1ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB2ATE: TStringField
      FieldName = 'OB2ATE'
      Origin = 'ISADE.PEDAT2.OB2ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB3ATE: TStringField
      FieldName = 'OB3ATE'
      Origin = 'ISADE.PEDAT2.OB3ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB4ATE: TStringField
      FieldName = 'OB4ATE'
      Origin = 'ISADE.PEDAT2.OB4ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB5ATE: TStringField
      FieldName = 'OB5ATE'
      Origin = 'ISADE.PEDAT2.OB5ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB6ATE: TStringField
      FieldName = 'OB6ATE'
      Origin = 'ISADE.PEDAT2.OB6ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB7ATE: TStringField
      FieldName = 'OB7ATE'
      Origin = 'ISADE.PEDAT2.OB7ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB8ATE: TStringField
      FieldName = 'OB8ATE'
      Origin = 'ISADE.PEDAT2.OB8ATE'
      Visible = False
      Size = 80
    end
    object PedAt2OB9ATE: TStringField
      FieldName = 'OB9ATE'
      Origin = 'ISADE.PEDAT2.OB9ATE'
      Visible = False
      Size = 80
    end
    object PedAt2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.PEDAT2.CODUSU'
      Visible = False
    end
    object PedAt2NROAT2: TIntegerField
      FieldName = 'NROAT2'
      Origin = 'ISADE.PEDAT2.NROAT2'
      Visible = False
    end
    object PedAt2FLGATU: TStringField
      DisplayWidth = 1
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedAt2DTEATU: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEATU'
      Visible = False
    end
    object PedAt2HREATU: TStringField
      DisplayWidth = 8
      FieldName = 'HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedAt2USUATU: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUATU'
      Visible = False
    end
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.FlgCot,'
      '           PedPar.TipAtd'
      'From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 340
    object PedParTIPATD: TStringField
      FieldName = 'TIPATD'
      Size = 9
    end
    object PedParFLGCOT: TStringField
      FieldName = 'FLGCOT'
      FixedChar = True
      Size = 3
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 63
    Top = 368
    object IncluirNovo1: TMenuItem
      Caption = 'Incluir contato'
      Hint = 'Incluir contato'
      OnClick = IncluirNovo1Click
    end
    object ExcluirAmbiente1: TMenuItem
      Caption = 'Remover contato'
      Hint = 'Remover contato'
      OnClick = ExcluirAmbiente1Click
    end
  end
end
