inherited fmManLn6: TfmManLn6
  Left = 257
  Top = 126
  Caption = 'Minuta de Despacho'
  ClientHeight = 485
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 178
    Width = 786
    Height = 307
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 4
    Top = 179
    Width = 109
    Height = 13
    Caption = 'Notas Selecionadas'
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
    Left = 129
    Top = 186
    Width = 654
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bIncluir: TSpeedButton
    Left = 281
    Top = 455
    Width = 252
    Height = 27
    Hint = 'Realizar Novo Pedido'
    Caption = 'F4-Informações de Despacho '
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      96040000424D9604000000000000360000002800000012000000140000000100
      18000000000060040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0
      0000C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD00000000000000000000000000000000000000000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000000000C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0000000000000C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF0000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000FFF8FF000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FF000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD00000000000000F0000000000000000000000
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    ParentFont = False
    OnClick = bIncluirClick
  end
  object bImprimir: TSpeedButton
    Left = 534
    Top = 455
    Width = 252
    Height = 27
    Hint = 'Imprimir 2ª Via de Pedidos Existentes'
    Caption = 'F5 - Imprimir Despacho'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000
      000000000000000000000000000000000000000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD080808080808080808080808080808080808080
      8080808080808080808080808080808080808080000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0008000008000C0C0C0808080808080000000000000C0CFD0C0CFD0C0CF
      D0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      FF00008000C0C0C0808080808080808080000000C0CFD0C0CFD0C0CFD0808080
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000FFFFFFFFFFFFC0
      C0C0808080000000C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF000000808080
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000C0C0C0FFFFFFC0C0
      C0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF808080FFFFFFFF
      0000FF0000FF0000FF0000FFFFFF808080000000808080C0C0C0FFFFFF000000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000808080FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080000000000000000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000
      FF0000FFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000FF0000FFFF
      FF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0808080808080808080808080808080808080808080808080C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0}
    ParentFont = False
    OnClick = bImprimirClick
  end
  object Label3: TLabel
    Left = 4
    Top = 318
    Width = 76
    Height = 13
    Caption = 'Itens da Nota'
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
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 2
    Top = 336
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 99
  end
  object dbRes: TdxDBGraphicEdit
    Left = 2
    Top = 192
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 123
  end
  object grPed: ThGrid
    Tag = 1
    Left = 4
    Top = 194
    Width = 780
    Height = 117
    Selected.Strings = (
      'NUMRES'#9'10'#9'Pedido'#9'F'
      'DTEFAT'#9'10'#9'Emissão'#9'F'
      'NRONFS'#9'10'#9'Nota Fiscal'#9'F'
      'CODCLI'#9'10'#9'Cliente'#9'F'
      'CODVEN'#9'10'#9'Vendedor'#9'F'
      'CODPFA'#9'17'#9'Padrão Fat.'#9'F'
      'TOTFAT'#9'10'#9' Total Itens'#9'F'
      'TOTIPI'#9'12'#9'        Total IPI'#9'F'
      'TOTGER'#9'12'#9'      Total Pedido'#9'F'
      'TIP'#9'2'#9'TIP'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRes
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grDes: ThGrid
    Tag = 1
    Left = 4
    Top = 338
    Width = 780
    Height = 111
    Selected.Strings = (
      'QTDVOL'#9'10'#9'Quantidade de Volumes   '
      'NOMUND'#9'30'#9'Unidade'
      'NOMCON'#9'40'#9'Conteudo'
      'PESDES'#9'10'#9'Peso Bruto'
      'PESLIQDES'#9'10'#9'Peso Liq.')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDes
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnHreFat: TPanel
    Left = 721
    Top = 315
    Width = 64
    Height = 20
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object pnNomCli: TPanel
    Left = 265
    Top = 315
    Width = 277
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnApeVen: TPanel
    Left = 543
    Top = 315
    Width = 177
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object pnOrigNF: TPanel
    Left = 87
    Top = 315
    Width = 177
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 178
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    object Label29: TLabel
      Left = 254
      Top = 133
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
    object BbPsqEmp: TSpeedButton
      Left = 246
      Top = 37
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
      Left = 246
      Top = 60
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
      Left = 246
      Top = 107
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
      Left = 270
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
      Left = 4
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
    object Label13: TLabel
      Left = 430
      Top = 17
      Width = 94
      Height = 13
      Caption = 'No. da Nota Fiscal :'
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
    object BbPsqFor: TSpeedButton
      Left = 246
      Top = 84
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
      OnClick = BbPsqForClick
    end
    object Label26: TLabel
      Left = 4
      Top = 39
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
      Left = 4
      Top = 63
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
    object Label8: TLabel
      Left = 4
      Top = 87
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
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
      Left = 4
      Top = 110
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
    object Label28: TLabel
      Left = 4
      Top = 133
      Width = 61
      Height = 13
      Caption = 'Faturado Em'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 4
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
    object Label4: TLabel
      Left = 152
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
      Left = 152
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
    object Label6: TLabel
      Left = 152
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
    object Label9: TLabel
      Left = 152
      Top = 87
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
      Left = 152
      Top = 110
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
    object Label11: TLabel
      Left = 152
      Top = 133
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
    object EdPsqNumRes: TdxColorEdit
      Left = 158
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
    object EdPsqDtfRes1: TdxColorDateEdit
      Left = 158
      Top = 129
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
      TabOrder = 1
      Date = -700000
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      StoredValues = 4
    end
    object EdPsqDtfRes2: TdxColorDateEdit
      Left = 269
      Top = 129
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
      TabOrder = 2
      Date = -700000
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      StoredValues = 4
    end
    object EdPsqCodVen: TdxColorEdit
      Left = 158
      Top = 106
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
      OnExit = EdPsqCodVenExit
      OnKeyDown = EdPsqCodVenKeyDown
      OnKeyPress = EdPsqNumResKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object EdPsqCodCli: TdxColorEdit
      Left = 158
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
      TabOrder = 4
      OnExit = EdPsqCodCliExit
      OnKeyDown = EdPsqCodCliKeyDown
      OnKeyPress = EdPsqNumResKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object EdPsqCodEmp: TdxColorEdit
      Left = 158
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
      TabOrder = 5
      OnExit = EdPsqCodEmpExit
      OnKeyDown = EdPsqCodEmpKeyDown
      OnKeyPress = EdPsqNumResKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object EdPsqNomVen: TdxColorEdit
      Left = 269
      Top = 106
      Width = 348
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
    object EdPsqNomCli: TdxColorEdit
      Left = 269
      Top = 59
      Width = 348
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
      TabOrder = 7
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object EdPsqApeEmp: TdxColorEdit
      Left = 269
      Top = 36
      Width = 348
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
    object bSelecionar: TBitBtn
      Left = 455
      Top = 130
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
      TabOrder = 9
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
    object rgOrdem: TRadioGroup
      Left = 617
      Top = 94
      Width = 168
      Height = 81
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
        'Data de Faturamento'
        'Número da Nota Fiscal')
      ParentFont = False
      TabOrder = 10
    end
    object EdPsqUfeFat: TdxColorPickEdit
      Left = 329
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
      TabOrder = 11
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
    object EdPsqNroNfs: TdxColorEdit
      Left = 529
      Top = 13
      Width = 88
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
      OnExit = EdPsqNroNfsExit
      OnKeyPress = EdPsqNumResKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object GroupBox1: TGroupBox
      Left = 617
      Top = 8
      Width = 168
      Height = 83
      Caption = 'Tipos de NF'
      TabOrder = 13
      object ckFP: TCheckBox
        Left = 8
        Top = 19
        Width = 97
        Height = 17
        Caption = 'NF Comercial'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object ckFG: TCheckBox
        Left = 8
        Top = 40
        Width = 129
        Height = 17
        Caption = 'Outros Tipos de NF'
        TabOrder = 1
      end
      object ckCN: TCheckBox
        Left = 8
        Top = 60
        Width = 97
        Height = 17
        Caption = 'RMA'
        TabOrder = 2
      end
    end
    object EdPsqCodFor: TdxColorEdit
      Left = 158
      Top = 83
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
      OnExit = EdPsqCodForExit
      OnKeyDown = EdPsqCodForKeyDown
      OnKeyPress = EdPsqCodForKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
    object EdPsqNomFor: TdxColorEdit
      Left = 269
      Top = 83
      Width = 348
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
      TabOrder = 15
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
  end
  object FatPed: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select '#39'FP'#39' Tip,'
      '           FatPed.CodEmp,'
      '           FatPed.DteRes,'
      '           FatPed.NumRes,'
      '           FatPed.SeqLib,'
      '           FatPed.SeqFat,'
      '           FatPed.DteFat,'
      '           FatPed.HreFat,'
      '           FatPed.NroNfs,'
      '           FatPed.CodCli,'
      '           FatPed.CodVen,'
      '           FatPed.CodPfa,'
      '           FatPed.TotFat,'
      '           FatPed.TotIpi,'
      '           FatPed.TotSub,'
      '           FatPed.TotDsr,'
      '           FatPed.TotGer,'
      '           Cast(FinCli.NomCli as varchar(70))as NomCli,'
      '           FinVen.ApeVen, '
      '           FatPed.ObsDes'
      'From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)'
      
        '                     LEFT JOIN FinVen ON (FatPed.CodVen = FinVen' +
        '.CodVen)'
      'Where FatPed.DteFat = :DteFat'
      '     and FatPed.SitFat = '#39'Faturado'#39
      '     and FatPed.ENVNFE = '#39'Sim'#39' '
      'Order by FatPed.NroNfs')
    ValidateWithMask = True
    Left = 6
    Top = 254
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteFat'
        ParamType = ptInput
      end>
    object FatPedNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object FatPedDTEFAT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEFAT'
    end
    object FatPedNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object FatPedCODCLI: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object FatPedCODVEN: TIntegerField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object FatPedCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 17
      FieldName = 'CODPFA'
      Size = 15
    end
    object FatPedTOTFAT: TFloatField
      DisplayLabel = ' Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTFAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FatPedTOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FatPedTOTGER: TFloatField
      DisplayLabel = '      Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FatPedTIP: TStringField
      DisplayWidth = 2
      FieldName = 'TIP'
      FixedChar = True
      Size = 2
    end
    object FatPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatPedDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatPedSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatPedSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatPedTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatPedAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
    end
    object FatPedHREFAT: TStringField
      FieldName = 'HREFAT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedOBSDES: TStringField
      FieldName = 'OBSDES'
      Visible = False
      Size = 150
    end
    object FatPedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      Size = 70
    end
  end
  object FatDes: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsRes
    SQL.Strings = (
      'Select FatDes.*,'
      '           EstUnd.NomUnd'
      'From FatDes LEFT JOIN EstUnd ON (FatDes.CodUnd = EstUnd.CodUnd)'
      'Where FatDes.CodEmp = :CodEmp'
      '     and FatDes.DteFat = :DteFat '
      '     and FatDes.NroNfs = :NroNfs '
      'Order by FatDes.SeqDes')
    ValidateWithMask = True
    Left = 5
    Top = 410
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
      Alignment = taLeftJustify
      DisplayLabel = 'Quantidade de Volumes   '
      DisplayWidth = 10
      FieldName = 'QTDVOL'
      DisplayFormat = '####0'
    end
    object FatDesNOMUND: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 30
      FieldName = 'NOMUND'
      FixedChar = True
      Size = 100
    end
    object FatDesNOMCON: TStringField
      DisplayLabel = 'Conteudo'
      DisplayWidth = 40
      FieldName = 'NOMCON'
      FixedChar = True
      Size = 40
    end
    object FatDesPESDES: TFloatField
      DisplayLabel = 'Peso Bruto'
      DisplayWidth = 10
      FieldName = 'PESDES'
      DisplayFormat = '#,##0.0000'
      Precision = 4
    end
    object FatDesPESLIQDES: TFloatField
      DisplayLabel = 'Peso Liq.'
      DisplayWidth = 10
      FieldName = 'PESLIQDES'
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
    object FatDesCODUND: TStringField
      FieldName = 'CODUND'
      Origin = 'ISADE.FATDES.CODUND'
      Visible = False
      Size = 3
    end
    object FatDesNRODES: TIntegerField
      FieldName = 'NRODES'
      Origin = 'ISADE.FATDES.NRODES'
      Visible = False
    end
    object FatDesNRONFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Visible = False
    end
    object FatDesDTEFAT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEFAT'
      Visible = False
    end
  end
  object DsDes: TwwDataSource
    DataSet = FatDes
    Left = 33
    Top = 410
  end
  object DsRes: TwwDataSource
    DataSet = FatPed
    OnDataChange = DsResDataChange
    Left = 34
    Top = 254
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 6
    Top = 282
  end
end
