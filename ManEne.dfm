inherited fmManEne: TfmManEne
  Left = 259
  Top = 164
  Caption = 'Reimpressão de Notas Fiscais'
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
    OnPaint = PaintBoxPaint
  end
  object Label16: TLabel
    Left = 3
    Top = 17
    Width = 87
    Height = 13
    Caption = 'Número do Pedido'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 3
    Top = 132
    Width = 70
    Height = 13
    Caption = 'Realizada Em :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 208
    Top = 132
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 3
    Top = 157
    Width = 92
    Height = 13
    Caption = 'Valor da Devolução'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 208
    Top = 156
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel
    Left = 3
    Top = 62
    Width = 41
    Height = 13
    Caption = 'Empresa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 3
    Top = 86
    Width = 33
    Height = 13
    Caption = 'Cliente'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 3
    Top = 109
    Width = 46
    Height = 13
    Caption = 'Vendedor'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object BbPsqEmp: TSpeedButton
    Left = 200
    Top = 60
    Width = 23
    Height = 21
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
    OnClick = BbPsqEmpClick
  end
  object BbPsqCli: TSpeedButton
    Left = 200
    Top = 83
    Width = 23
    Height = 21
    Hint = 'Pesquisar Clientes Existentes'
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
    OnClick = BbPsqCliClick
  end
  object BbPsqVen: TSpeedButton
    Left = 200
    Top = 106
    Width = 23
    Height = 21
    Hint = 'Pesquisar Vendedores Existentes'
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
    OnClick = BbPsqVenClick
  end
  object Label1: TLabel
    Left = 224
    Top = 17
    Width = 55
    Height = 13
    Caption = 'Estado de :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 3
    Top = 0
    Width = 154
    Height = 13
    Caption = 'Informações para Pesquisa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 160
    Top = 6
    Width = 622
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 3
    Top = 176
    Width = 142
    Height = 13
    Caption = 'Devoluções Selecionadas'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 160
    Top = 183
    Width = 622
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 5
    Top = 327
    Width = 94
    Height = 13
    Caption = 'Itens devolvidos'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel3: TBevel
    Left = 160
    Top = 334
    Width = 83
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 106
    Top = 17
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 106
    Top = 63
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 106
    Top = 86
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 106
    Top = 109
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 106
    Top = 132
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 106
    Top = 156
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 362
    Top = 17
    Width = 142
    Height = 13
    Caption = 'No. da Nota Fiscal de Venda :'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 3
    Top = 40
    Width = 89
    Height = 13
    Caption = 'Nota Fiscal\Cliente'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 106
    Top = 40
    Width = 4
    Height = 13
    Caption = ':'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 362
    Top = 40
    Width = 150
    Height = 13
    Caption = 'No. da Nota Fiscal de Entrada :'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object dbRe2: TdxDBGraphicEdit
    Left = 3
    Top = 345
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
    TabOrder = 24
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 138
  end
  object dbRes: TdxDBGraphicEdit
    Left = 2
    Top = 190
    Width = 783
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
    Height = 133
  end
  object EdPsqDteDv1: TdxColorDateEdit
    Left = 112
    Top = 128
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 11
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqNumRes: TdxColorEdit
    Left = 112
    Top = 13
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    OnExit = EdPsqNumResExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqDteDv2: TdxColorDateEdit
    Left = 223
    Top = 128
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 12
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqTotDv1: TdxColorCurrencyEdit
    Left = 112
    Top = 152
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 13
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqTotDv2: TdxColorCurrencyEdit
    Left = 223
    Top = 152
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqCodVen: TdxColorEdit
    Left = 112
    Top = 105
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 9
    OnExit = EdPsqCodVenExit
    OnKeyDown = EdPsqCodVenKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodCli: TdxColorEdit
    Left = 112
    Top = 82
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 7
    OnExit = EdPsqCodCliExit
    OnKeyDown = EdPsqCodCliKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 112
    Top = 59
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 5
    OnExit = EdPsqCodEmpExit
    OnKeyDown = EdPsqCodEmpKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomVen: TdxColorEdit
    Left = 223
    Top = 105
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 10
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomCli: TdxColorEdit
    Left = 223
    Top = 82
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqApeEmp: TdxColorEdit
    Left = 223
    Top = 59
    Width = 394
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object rgOrdem: TRadioGroup
    Left = 617
    Top = 9
    Width = 169
    Height = 96
    Caption = ' Exibido por '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 3
    Items.Strings = (
      'Cliente'
      'Vendedor'
      'Data de Devolução'
      'Número da Nota Fiscal')
    ParentFont = False
    TabOrder = 15
  end
  object EdPsqUfeDev: TdxColorPickEdit
    Left = 283
    Top = 13
    Width = 53
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 1
    HideSelection = False
    DropDownListStyle = True
    Items.Strings = (
      ''
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    CorDeFoco = clInfoBk
  end
  object grDev: ThGrid
    Tag = 1
    Left = 4
    Top = 192
    Width = 777
    Height = 127
    Selected.Strings = (
      'NUMRES'#9'10'#9'Pedido'
      'DTEDEV'#9'10'#9'Emissão'
      'NRONFS'#9'10'#9'Nota Fiscal'
      'CLIENTE'#9'32'#9'Cliente'
      'CODVEN'#9'10'#9'Vendedor'
      'CODPFA'#9'17'#9'Padrão Fat.'
      'TOTGER'#9'12'#9'       Total Devolucao'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDev
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 18
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grDevKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grDv2: ThGrid
    Tag = 1
    Left = 5
    Top = 347
    Width = 776
    Height = 132
    Selected.Strings = (
      'DSCPRO'#9'58'#9'Item'
      'ULTQTD'#9'10'#9'Qtde. devolvida'
      'VLQDV2'#9'10'#9'          Unitario'
      'IPIDV2'#9'3'#9'  IPI'
      'ICMDV2'#9'4'#9'  ICMS'
      'TOTDV2'#9'10'#9'        Total Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDv2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 19
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnHreDev: TPanel
    Left = 711
    Top = 323
    Width = 74
    Height = 22
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object pnApeVen: TPanel
    Left = 506
    Top = 323
    Width = 204
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
  end
  object EdPsqNumNfs: TdxColorEdit
    Left = 523
    Top = 13
    Width = 94
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    OnExit = EdPsqNumNfsExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bSelecionar: TBitBtn
    Left = 313
    Top = 131
    Width = 151
    Height = 44
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = bSelecionarClick
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
      FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
      FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
      FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
      FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
      CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
      CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
      CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
      CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
      990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
      990000CC9900FF999900CC99990099999900669999003399990000999900FF66
      9900CC66990099669900666699003366990000669900FF339900CC3399009933
      9900663399003333990000339900FF009900CC00990099009900660099003300
      990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
      6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
      6600669966003399660000996600FF666600CC66660099666600666666003366
      660000666600FF336600CC33660099336600663366003333660000336600FF00
      6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
      330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
      330000CC3300FF993300CC99330099993300669933003399330000993300FF66
      3300CC66330099663300666633003366330000663300FF333300CC3333009933
      3300663333003333330000333300FF003300CC00330099003300660033003300
      330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
      000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
      000000990000FF660000CC66000099660000666600000066000033660000FF33
      0000CC33000099330000663300003333000000330000CC000000990000006600
      0000330000000000DD000000BB000000AA000000880000007700000055000000
      44000000220000DD000000BB000000AA00000088000000770000005500000044
      000000220000DDDDDD0055555500777777007777770044444400222222001111
      110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
      323232000000000000000000EDEDED3232323232323232323232323232323232
      00000031313131FF5CFF5C5C000000EDEDED3232323232323232323232320000
      31313131313131FF5CFF5C5C5C5C5C0000EDEDED323232323232323232005C5C
      31313131313131FF5CFF5C5C5C5C5C5C5C00EDEDED32323232323232005C5C5C
      31313131313131FF5CFF5C5C5C5C5C5C5C5C00EDEDED3232323232005C5C5C5C
      3131310000000000000000005C5C5C5C5C5C5C00EDEDED323232005C5C5C5C5C
      000000FFFFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED323232005C5C5C0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED3232005C5C00FFFF
      FFFF00000000000000000000FFFFFFFFFF005C5C00EDEDED3232005C00FFFFFF
      00005B5B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED320000FFFFFF00
      5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED3200FFFFFF0087
      5B5B5B5B5B5B5B5B5BFFFFFF5B5B5B5B00FFFFFF00EDEDEDED3200FFFF005C5B
      875B5B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED323200FFFF005C5C
      5B8787315B5B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED323200FFFF005C5C
      5C5B31FF3187878787878787875B5C5C5C00FFFF00EDED32323200FFFFFF005C
      5C5C5C315B5B5B5B5B5B5B5B5B5CF75B00FFFFFF00ED323232323200FFFFFF00
      5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF00323232323232323200FFFFFF
      0000005C5C5C5C5C5C5C5C5C5C0000FFFFFF003232323232323232323200FFFF
      FFFFFF00000000000000000000FFFFFFFF00EDED323232323232323232320000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED3232323232323232323232
      000000FFFFFFFFFFFFFFFFFFFF00000707075D00EDED32323232323232323232
      3232320000000000000000000007FFFF0707070000EDED323232323232323232
      323232323232323232323232320007FFFF0700000000EDED3232323232323232
      323232323232323232323232323200000000F100000000EDED32323232323232
      32323232323232323232323232323200F0EDF0F100000000EDED323232323232
      3232323232323232323232323232323200F0EDF0F100000000ED323232323232
      323232323232323232323232323232323200F0EDF0F100000000323232323232
      32323232323232323232323232323232323200F0EDF0F1000000323232323232
      3232323232323232323232323232323232323200F0EDF0F10000323232323232
      323232323232323232323232323232323232323200F0EDF0F100323232323232
      3232323232323232323232323232323232323232320000000032323232323232
      3232323232323232323232323232323232323232323232323232}
  end
  object BitBtn1: TBitBtn
    Left = 466
    Top = 131
    Width = 149
    Height = 44
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = BitBtn1Click
    Glyph.Data = {
      7E0D0000424D7E0D000000000000360000002800000021000000220000000100
      180000000000480D0000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0D0D050505050505050505020202020202020202020202020202020
      2020404040404040404040404040404040404040404040404040404040202020
      202020202020202020202020202020505050505050505050C0D0D0C0CFD0C0CF
      D000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0404040404040404040404040
      404040404040404040D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D04040
      40404040404040404040404040404040404040E0D8E0E0D8E0E0D8E0505050C0
      CFD0C0CFD000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0A0A0A070787070787070787070787070787070787070
      7870A0A0A0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      505050C0CFD0C0CFD000C0CFD0C0CFD0505050C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0505050C0CFD0C0CFD000C0CFD0C0CFD0505050A0A0A0A0A0A0A0A0A0
      A0A0A00000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000A0A0A0A0
      A0A0A0A0A0A0A0A0505050C0CFD0C0CFD000C0CFD05050507078707078707078
      7070787070787040404040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      707870707870707870707870707870505050C0CFD000C0CFD0505050E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0707870C0C0C070787FC0C0C0707870E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD050505070787070
      78707078707078707F7870707870707870707870707870707870707870707870
      7F78707078707078707078707078707078707078707078707F78707078707078
      707078707078707078707078707078707F7870505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E03068FFE0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0A0A0A0E0D8E0E0D8E0E0D8E000B800E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0A0A0A0505050505050505050A0A0A0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0C0CFD05050505050505050505050505050505050505058
      50505050505050505050505050505050505050E0D8E0505850E0D8E050505050
      5050505050505050505050505050505850505050505050505050505050505050
      505050C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040505050C0
      C0C0404040E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0404040909890404040C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040
      707870C0C0C0404040F0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8
      FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FF404040C0C0C040
      4040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0404040707870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD04040407F7870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0404040C0C0C040404FFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FF404040404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040404040FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF404040C0D0D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD04048
      40FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD040404F4040404040404040404040
      4040404040404040404040404F40404040404040404040404040404040404040
      404040404F404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000}
  end
  object EdPsqNfsCli: TdxColorEdit
    Left = 112
    Top = 36
    Width = 87
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    OnExit = EdPsqNfsCliExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNroNfs: TdxColorEdit
    Left = 523
    Top = 36
    Width = 94
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 4
    OnExit = EdPsqNroNfsExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object pnDadosNota: TPanel
    Left = 183
    Top = 173
    Width = 420
    Height = 139
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 25
    Visible = False
    OnExit = pnDadosNotaExit
    object Label15: TLabel
      Left = 80
      Top = 74
      Width = 51
      Height = 14
      Caption = 'C.F.O.P :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 80
      Top = 42
      Width = 22
      Height = 14
      Caption = 'UF :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 80
      Top = 14
      Width = 146
      Height = 14
      Caption = 'Documento Conferido ?'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 80
      Top = 107
      Width = 75
      Height = 14
      Caption = 'Emitida Em :'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 232
      Top = 70
      Width = 108
      Hint = 'CFOP'
      Color = 16577773
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
      DataField = 'CODCF1'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeFat: TdxDBColorEdit
      Left = 232
      Top = 38
      Width = 52
      Hint = 'CFOP'
      Color = 16577773
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
      DataField = 'UFEDEV'
      DataSource = DsDev
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdFlgSin: TdxDBCheckEdit
      Left = 232
      Top = 15
      Width = 17
      Color = 16644596
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clRed
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      DataField = 'FLGSIN'
      DataSource = DsDev
      ValueChecked = 'Sim'
      ValueGrayed = 'Nao'
      ValueUnchecked = 'Nao'
      NullStyle = nsInactive
      Height = 17
      StoredValues = 1
    end
    object EdDteDev: TdxDBColorDateEdit
      Left = 232
      Top = 102
      Width = 108
      Hint = 'Data de Emissão da Entrada'
      Color = 16577773
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
      DataField = 'DTEDEV'
      DataSource = DsDev
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object rgImpresso: TRadioGroup
    Left = 618
    Top = 106
    Width = 168
    Height = 69
    Caption = ' Impressão Confirmada ? '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Sim'
      'Nao'
      'Todos')
    ParentFont = False
    TabOrder = 16
  end
  object pnSitImp: TPanel
    Left = 246
    Top = 323
    Width = 259
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Impressão Confirmada (Sim/Nao) :'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
  end
  object FatDev: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatDev.*,'
      '           GerEmp.ApeEmp,'
      
        '           TextoOcor(IntStrZeros(FatDev.CodCli,7),'#39'-'#39',FinCli.Ape' +
        'Cli,'#39#39','#39#39','#39#39','#39#39') as Cliente,'
      '           FinCli.NomCli,'
      '           FinCli.TefCli,'
      '           FinCli.EnfCli,'
      '           FinCli.NrfCli,'
      '           FinCli.BafCli,'
      '           FinCli.CifCli,'
      '           FinCli.UffCli,'
      '           FinCli.CefCli,'
      '           FinVen.ApeVen,'
      '           FinVen.NomVen'
      'From FatDev LEFT JOIN GerEmp ON (FatDev.CodEmp = GerEmp.CodEmp)'
      
        '                     LEFT JOIN FinCli ON (FatDev.CodCli = FinCli' +
        '.CodCli)'
      
        '                     LEFT JOIN FinVen ON (FatDev.CodVen = FinVen' +
        '.CodVen)'
      'Where FatDev.SitDev = '#39'Devolvido'#39
      '     and FatDev.NroNfs > 0'
      '     and FatDev.DteDev = :DteDev'
      'Order by FatDev.NroNfs')
    UpdateObject = UpDev
    ValidateWithMask = True
    Left = 5
    Top = 262
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteDev'
        ParamType = ptInput
      end>
    object FatDevNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object FatDevDTEDEV: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEDEV'
      EditMask = '!99/99/9999;1;_'
    end
    object FatDevNRONFS: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object FatDevCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 32
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 100
    end
    object FatDevCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vendedor'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object FatDevCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 17
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object FatDevTOTGER: TFloatField
      DisplayLabel = '       Total Devolucao'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object FatDevNOMENT: TStringField
      DisplayWidth = 70
      FieldName = 'NOMENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevCODCLI: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
      Visible = False
    end
    object FatDevTOTDEV: TFloatField
      DisplayLabel = '    Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTDEV'
      Visible = False
    end
    object FatDevTOTIPI: TFloatField
      DisplayLabel = '           Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      Visible = False
    end
    object FatDevCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatDevDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatDevSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatDevSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatDevNUMNFS: TIntegerField
      FieldName = 'NUMNFS'
      Visible = False
    end
    object FatDevHREDEV: TStringField
      FieldName = 'HREDEV'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevUFEDEV: TStringField
      FieldName = 'UFEDEV'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
    end
    object FatDevPERPIS: TFloatField
      FieldName = 'PERPIS'
      Visible = False
    end
    object FatDevPERCOF: TFloatField
      FieldName = 'PERCOF'
      Visible = False
    end
    object FatDevCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object FatDevQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Visible = False
    end
    object FatDevNROSUF: TStringField
      FieldName = 'NROSUF'
      Visible = False
      FixedChar = True
    end
    object FatDevFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevINSCLI: TStringField
      FieldName = 'INSCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCODCF1: TStringField
      FieldName = 'CODCF1'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevCODCF2: TStringField
      FieldName = 'CODCF2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevFRTDEV: TStringField
      FieldName = 'FRTDEV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGENT: TStringField
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevDESNAT: TStringField
      FieldName = 'DESNAT'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDevINSSUB: TStringField
      FieldName = 'INSSUB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevMARDEV: TStringField
      FieldName = 'MARDEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevNRODEV: TStringField
      FieldName = 'NRODEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevESPDEV: TStringField
      FieldName = 'ESPDEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevINSTRA: TStringField
      FieldName = 'INSTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevTENTRA: TStringField
      FieldName = 'TENTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevENDTRA: TStringField
      FieldName = 'ENDTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevREFTRA: TStringField
      FieldName = 'REFTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevBAITRA: TStringField
      FieldName = 'BAITRA'
      Visible = False
      FixedChar = True
    end
    object FatDevCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Visible = False
      FixedChar = True
    end
    object FatDevUFETRA: TStringField
      FieldName = 'UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevTENCLI: TStringField
      FieldName = 'TENCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevENDCLI: TStringField
      FieldName = 'ENDCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevREFCLI: TStringField
      FieldName = 'REFCLI'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevBAICLI: TStringField
      FieldName = 'BAICLI'
      Visible = False
      FixedChar = True
    end
    object FatDevCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Visible = False
      FixedChar = True
    end
    object FatDevUFECLI: TStringField
      FieldName = 'UFECLI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevINECLI: TStringField
      FieldName = 'INECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCGECLI: TStringField
      FieldName = 'CGECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatDevTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatDevOBSDEV: TStringField
      FieldName = 'OBSDEV'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatDevSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object FatDevQTIDEV: TIntegerField
      FieldName = 'QTIDEV'
      Visible = False
    end
    object FatDevLINDEV: TIntegerField
      FieldName = 'LINDEV'
      Visible = False
    end
    object FatDevQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object FatDevINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Visible = False
    end
    object FatDevTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object FatDevINFBRT: TFloatField
      FieldName = 'INFBRT'
      Visible = False
    end
    object FatDevTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object FatDevBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object FatDevBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object FatDevTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object FatDevBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object FatDevTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatDevTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object FatDevTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object FatDevTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Visible = False
    end
    object FatDevTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Visible = False
    end
    object FatDevTOTDES: TFloatField
      FieldName = 'TOTDES'
      Visible = False
    end
    object FatDevICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Visible = False
    end
    object FatDevBSICMF: TFloatField
      FieldName = 'BSICMF'
      Visible = False
    end
    object FatDevBAICMF: TFloatField
      FieldName = 'BAICMF'
      Visible = False
    end
    object FatDevTOICMF: TFloatField
      FieldName = 'TOICMF'
      Visible = False
    end
    object FatDevICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Visible = False
    end
    object FatDevBSICMS: TFloatField
      FieldName = 'BSICMS'
      Visible = False
    end
    object FatDevBAICMS: TFloatField
      FieldName = 'BAICMS'
      Visible = False
    end
    object FatDevTOICMS: TFloatField
      FieldName = 'TOICMS'
      Visible = False
    end
    object FatDevICMDES: TFloatField
      FieldName = 'ICMDES'
      Visible = False
    end
    object FatDevBSICMD: TFloatField
      FieldName = 'BSICMD'
      Visible = False
    end
    object FatDevBAICMD: TFloatField
      FieldName = 'BAICMD'
      Visible = False
    end
    object FatDevTOICMD: TFloatField
      FieldName = 'TOICMD'
      Visible = False
    end
    object FatDevIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Visible = False
    end
    object FatDevBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Visible = False
    end
    object FatDevBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Visible = False
    end
    object FatDevTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Visible = False
    end
    object FatDevIPISEG: TFloatField
      FieldName = 'IPISEG'
      Visible = False
    end
    object FatDevBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Visible = False
    end
    object FatDevBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Visible = False
    end
    object FatDevTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Visible = False
    end
    object FatDevIPIDES: TFloatField
      FieldName = 'IPIDES'
      Visible = False
    end
    object FatDevBSIPID: TFloatField
      FieldName = 'BSIPID'
      Visible = False
    end
    object FatDevBAIPID: TFloatField
      FieldName = 'BAIPID'
      Visible = False
    end
    object FatDevTOIPID: TFloatField
      FieldName = 'TOIPID'
      Visible = False
    end
    object FatDevTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatDevDESREG: TStringField
      FieldName = 'DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDevCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object FatDevATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDevTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object FatDevBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object FatDevCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object FatDevTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object FatDevBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object FatDevINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object FatDevINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object FatDevOBSMDV: TMemoField
      FieldName = 'OBSMDV'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatDevSEQREG: TStringField
      FieldName = 'SEQREG'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object FatDevSITDEV: TStringField
      FieldName = 'SITDEV'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object FatDevNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
      FixedChar = True
    end
    object FatDevNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevENFCLI: TStringField
      FieldName = 'ENFCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Visible = False
      FixedChar = True
    end
    object FatDevCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Visible = False
      FixedChar = True
    end
    object FatDevUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevSEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Visible = False
    end
    object FatDevQTDDEV: TIntegerField
      FieldName = 'QTDDEV'
      Visible = False
    end
    object FatDevBASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object FatDevTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object FatDevFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGDEV: TStringField
      FieldName = 'FLGDEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevMODPFA: TStringField
      DisplayWidth = 20
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object FatDevFLGNFS: TStringField
      DisplayWidth = 1
      FieldName = 'FLGNFS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevHRCDEV: TStringField
      DisplayWidth = 8
      FieldName = 'HRCDEV'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevDTCDEV: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCDEV'
      Visible = False
    end
    object FatDevUSUCFT: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUCFT'
      Visible = False
    end
    object FatDevOBSCFT: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSCFT'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatDevFLGSIN: TStringField
      DisplayWidth = 3
      FieldName = 'FLGSIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGFSC: TStringField
      DisplayWidth = 3
      FieldName = 'FLGFSC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevSERNOT: TStringField
      DisplayWidth = 3
      FieldName = 'SERNOT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevMODDEV: TStringField
      DisplayWidth = 20
      FieldName = 'MODDEV'
      Visible = False
      FixedChar = True
    end
    object FatDevOB1DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB1DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB2DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB2DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB3DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB3DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB4DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB4DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB5DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB5DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB6DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB6DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB7DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB7DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB8DEV: TStringField
      DisplayWidth = 80
      FieldName = 'OB8DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevFLGIMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevQTDDSE: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDDSE'
      Visible = False
    end
    object FatDevSEQDSE: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQDSE'
      Visible = False
    end
    object FatDevTOTDSE: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDSE'
      Visible = False
    end
    object FatDevBASISS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASISS'
      Visible = False
    end
    object FatDevTOTISS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTISS'
      Visible = False
    end
    object FatDevTOTFAT: TFloatField
      FieldName = 'TOTFAT'
      Visible = False
    end
    object FatDevFLGTOT: TStringField
      FieldName = 'FLGTOT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevAPEEMP: TStringField
      FieldName = 'APEEMP'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDevCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Visible = False
    end
    object FatDevFLGENV: TStringField
      FieldName = 'FLGENV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevNFSCLI: TIntegerField
      FieldName = 'NFSCLI'
      Visible = False
    end
  end
  object FatDv2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsDev
    SQL.Strings = (
      'Select FatDv2.*,'
      
        '           TextoOcor(FatDv2.CodGru,'#39'.'#39',FatDv2.CodSub,'#39'.'#39',FatDv2.' +
        'CodPro,'#39'-'#39',FatDv2.DesDv2) as DscPro From FatDv2'
      'Where FatDv2.CodEmp = :CodEmp'
      '     and FatDv2.DteRes = :DteRes'
      '     and FatDv2.NumRes = :NumRes'
      '     and FatDv2.SeqLib = :SeqLib'
      '     and FatDv2.SeqFat = :SeqFat'
      '     and FatDv2.SeqDev = :SeqDev'
      '     and FatDv2.UltQtd > 0'
      
        'Order by FatDv2.CodEmp,FatDv2.DteRes,FatDv2.NumRes,FatDv2.SeqLib' +
        ',FatDv2.SeqFat,FatDv2.SeqDev,FatDv2.SeqDv2')
    ValidateWithMask = True
    Left = 5
    Top = 450
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
    object FatDv2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 58
      FieldName = 'DSCPRO'
      Size = 8
    end
    object FatDv2ULTQTD: TFloatField
      DisplayLabel = 'Qtde. devolvida'
      DisplayWidth = 10
      FieldName = 'ULTQTD'
    end
    object FatDv2VLQDV2: TFloatField
      DisplayLabel = '          Unitario'
      DisplayWidth = 10
      FieldName = 'VLQDV2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2IPIDV2: TFloatField
      DisplayLabel = '  IPI'
      DisplayWidth = 3
      FieldName = 'IPIDV2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatDv2ICMDV2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 4
      FieldName = 'ICMDV2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatDv2TOTDV2: TFloatField
      DisplayLabel = '        Total Item'
      DisplayWidth = 10
      FieldName = 'TOTDV2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatDv2QTPDV2: TFloatField
      DisplayLabel = '            Quant'
      DisplayWidth = 10
      FieldName = 'QTPDV2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2TOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
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
    object FatDv2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FatDv2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
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
    object FatDv2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDv2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
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
    object FatDv2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
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
  end
  object DsDv2: TwwDataSource
    DataSet = FatDv2
    Left = 33
    Top = 450
  end
  object DsDev: TwwDataSource
    DataSet = FatDev
    OnDataChange = DsDevDataChange
    Left = 33
    Top = 262
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 290
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
      'ICMFRT, '
      
        '   BSICMF, BAICMF, TOICMF, ICMSEG, BSICMS, BAICMS, TOICMS, ICMDE' +
        'S, '
      'BSICMD, '
      
        '   BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPIF, TOIPIF, IPISEG, BSIPI' +
        'S, BAIPIS, '
      
        '   TOIPIS, IPIDES, BSIPID, BAIPID, TOIPID, TOTGER, BASCOM, TOTCO' +
        'M, '
      'TOTDSR, '
      
        '   DESREG, CODUSU, ATUEST, LANEST, INTFIN, CONSUM, FLGCTB, CODIP' +
        'I, '
      'TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      
        '   INCFIN, OBSMDV, SEQREG, FLGDIF, FLGDEV, FLGATU, SITDEV, CODCL' +
        'I, '
      'CODVEN, '
      
        '   MODPFA, FLGNFS, HRCDEV, DTCDEV, USUCFT, OBSCFT, FLGSIN, FLGFS' +
        'C, '
      'SERNOT, '
      
        '   MODDEV, OB1DEV, OB2DEV, OB3DEV, OB4DEV, OB5DEV, OB6DEV, OB7DE' +
        'V, '
      'OB8DEV, '
      
        '   FLGIMP, NOMENT, QTDDSE, SEQDSE, TOTDSE, BASISS, TOTISS, TOTFA' +
        'T, '
      'FLGTOT, '
      '   CODTCL, FLGENV, NFSCLI)'
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
      
        '   :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS, :BAICMS' +
        ', :TOICMS, '
      
        '   :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF, :BAIPIF' +
        ', :TOIPIF, '
      
        '   :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID, :BAIPID' +
        ', :TOIPID, '
      
        '   :TOTGER, :BASCOM, :TOTCOM, :TOTDSR, :DESREG, :CODUSU, :ATUEST' +
        ', '
      ':LANEST, '
      
        '   :INTFIN, :CONSUM, :FLGCTB, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :OBSMDV, '
      
        '   :SEQREG, :FLGDIF, :FLGDEV, :FLGATU, :SITDEV, :CODCLI, :CODVEN' +
        ', '
      ':MODPFA, '
      
        '   :FLGNFS, :HRCDEV, :DTCDEV, :USUCFT, :OBSCFT, :FLGSIN, :FLGFSC' +
        ', '
      ':SERNOT, '
      
        '   :MODDEV, :OB1DEV, :OB2DEV, :OB3DEV, :OB4DEV, :OB5DEV, :OB6DEV' +
        ', '
      ':OB7DEV, '
      
        '   :OB8DEV, :FLGIMP, :NOMENT, :QTDDSE, :SEQDSE, :TOTDSE, :BASISS' +
        ', '
      ':TOTISS, '
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
    Left = 5
    Top = 290
  end
end
