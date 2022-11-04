inherited fmManCmp: TfmManCmp
  Left = 0
  Caption = 'Pedidos de Compras Pendentes'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
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
  object Label28: TLabel
    Left = 4
    Top = 52
    Width = 181
    Height = 13
    Caption = 'Previsto para Entregar no Periodo de '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel
    Left = 299
    Top = 52
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
  object Label20: TLabel
    Left = 4
    Top = 29
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
  object bPsqFor: TSpeedButton
    Left = 291
    Top = 26
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
    OnClick = bPsqForClick
  end
  object Label6: TLabel
    Left = 191
    Top = 29
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
    Left = 191
    Top = 52
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
  object Label2: TLabel
    Left = 4
    Top = 88
    Width = 131
    Height = 14
    Caption = 'Pedidos Selecionados'
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
  object Bevel2: TBevel
    Left = 206
    Top = 96
    Width = 577
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 248
    Width = 98
    Height = 14
    Caption = 'Itens do Pedido'
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
  object Bevel3: TBevel
    Left = 206
    Top = 255
    Width = 54
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label16: TLabel
    Left = 4
    Top = 6
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
    Left = 191
    Top = 6
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
  object bImprimir: TSpeedButton
    Left = 554
    Top = 439
    Width = 231
    Height = 42
    Hint = 'Imprimir Via de Separação dos Itens do Pedido'
    Caption = 'F5 - Imprimir'
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
  object EdPsqDpePed1: TdxColorDateEdit
    Left = 203
    Top = 48
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDpePed2: TdxColorDateEdit
    Left = 314
    Top = 48
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqCodFor: TdxColorEdit
    Left = 203
    Top = 25
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
    OnExit = EdPsqCodForExit
    OnKeyDown = EdPsqCodForKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomFor: TdxColorEdit
    Left = 314
    Top = 25
    Width = 471
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
    TabOrder = 2
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bSelecionar: TBitBtn
    Left = 403
    Top = 50
    Width = 190
    Height = 44
    Caption = '&Selecionar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
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
  object dbRes: TdxDBGraphicEdit
    Left = 2
    Top = 103
    Width = 784
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
    Height = 142
  end
  object grPed: ThGrid
    Tag = 1
    Left = 4
    Top = 105
    Width = 778
    Height = 136
    Selected.Strings = (
      'DPEPED'#9'12'#9'Entregar Em'
      'NUMPED'#9'10'#9'No. Pedido'
      'DTEPED'#9'10'#9'Emissão'
      'HREPED'#9'8'#9'Hora'
      'NOMFOR'#9'40'#9'Fornecedor'
      'SITPED'#9'25'#9'Situação                               '#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPed
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnLogUsu: TPanel
    Left = 262
    Top = 245
    Width = 300
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Responsavel  : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnCodFor: TPanel
    Left = 564
    Top = 245
    Width = 219
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do Fornecedor :  0000000'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object dbRe2: TdxDBGraphicEdit
    Left = 3
    Top = 268
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
    TabOrder = 10
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 171
  end
  object grPe2: ThGrid
    Tag = 1
    Left = 5
    Top = 270
    Width = 777
    Height = 165
    Selected.Strings = (
      'DSCPRO'#9'69'#9'Item'
      'SLDPE2'#9'10'#9'        A Receber'
      'VLQPE2'#9'10'#9'      Valor Item'
      'ICMPE2'#9'4'#9'  ICMS'
      'IPIPE2'#9'3'#9'    IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 11
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object EdPsqNumPed: TdxColorEdit
    Left = 203
    Top = 2
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
    OnExit = EdPsqNumPedExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object CmpPed: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPed.*,'
      '           FinFor.ApeFor as NomFor,'
      '           FinFor.EmaFor,'
      '           GerUsu.LogUsu'
      'From CmpPed INNER JOIN FinFor ON (CmpPed.CodFor = FinFor.CodFor)'
      
        '                       LEFT JOIN GerUsu ON (CmpPed.CodUsu = GerU' +
        'su.CodUsu)'
      'Where CmpPed.DpePed >= :DpePed1'
      '     and CmpPed.DpePed <= :DpePed2'
      
        '     and (CmpPed.SitPed = '#39'Concluido'#39' or CmpPed.SitPed = '#39'Recebi' +
        'do Parcialmente'#39')'
      'Order by CmpPed.DpePed,CmpPed.NumPed')
    ValidateWithMask = True
    Left = 7
    Top = 183
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DpePed1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DpePed2'
        ParamType = ptInput
      end>
    object CmpPedDPEPED: TDateTimeField
      DisplayLabel = 'Entregar Em'
      DisplayWidth = 12
      FieldName = 'DPEPED'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPedNUMPED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 10
      FieldName = 'NUMPED'
    end
    object CmpPedDTEPED: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEPED'
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPedHREPED: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREPED'
      FixedChar = True
      Size = 8
    end
    object CmpPedNOMFOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 40
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 40
    end
    object CmpPedSITPED: TStringField
      DisplayLabel = 'Situação                               '
      DisplayWidth = 25
      FieldName = 'SITPED'
      FixedChar = True
      Size = 45
    end
    object CmpPedCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 20
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpPedTOTGER: TFloatField
      DisplayLabel = '            Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTPED: TFloatField
      DisplayLabel = 'Total Itens'
      DisplayWidth = 12
      FieldName = 'TOTPED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTIPI: TFloatField
      DisplayLabel = '            Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpPedCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpPedCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Visible = False
    end
    object CmpPedSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Visible = False
    end
    object CmpPedTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedPREPED: TIntegerField
      FieldName = 'PREPED'
      Visible = False
    end
    object CmpPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object CmpPedUFEPED: TStringField
      FieldName = 'UFEPED'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPedCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedNOMCON: TStringField
      FieldName = 'NOMCON'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedCEPENT: TStringField
      FieldName = 'CEPENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpPedTENENT: TStringField
      FieldName = 'TENENT'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPedENDENT: TStringField
      FieldName = 'ENDENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpPedREFENT: TStringField
      FieldName = 'REFENT'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedNUMENT: TStringField
      FieldName = 'NUMENT'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPedBAIENT: TStringField
      FieldName = 'BAIENT'
      Visible = False
      FixedChar = True
    end
    object CmpPedCIDENT: TStringField
      FieldName = 'CIDENT'
      Visible = False
      FixedChar = True
    end
    object CmpPedUFEENT: TStringField
      FieldName = 'UFEENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPedFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedOBSPED: TStringField
      FieldName = 'OBSPED'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpPedQTIPED: TIntegerField
      FieldName = 'QTIPED'
      Visible = False
    end
    object CmpPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object CmpPedBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPedTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object CmpPedTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpPedTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object CmpPedSEQPED: TStringField
      FieldName = 'SEQPED'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object CmpPedOBSCND: TStringField
      FieldName = 'OBSCND'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPedEMAFOR: TStringField
      FieldName = 'EMAFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object CmpPedCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Visible = False
    end
    object CmpPedFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedVALTMO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALTMO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPedFLGTAB: TStringField
      DisplayWidth = 25
      FieldName = 'FLGTAB'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object CmpPedTOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object CmpPedTOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object CmpPedDTEFPE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEFPE'
      Visible = False
    end
    object CmpPedHREFPE: TStringField
      DisplayWidth = 8
      FieldName = 'HREFPE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpPedOBSFPE: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSFPE'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object CmpPedUSUFPE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUFPE'
      Visible = False
    end
    object CmpPedLOGUSU: TStringField
      FieldName = 'LOGUSU'
      Visible = False
      FixedChar = True
      Size = 15
    end
  end
  object CmpPe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPed
    SQL.Strings = (
      'Select CmpPe2.*,'
      '           CmpPed.NomCon,'
      '           CmpPed.NomVen,'
      '           CmpPed.ObsCnd,'
      '           CmpPed.TotGer,'
      '           CmpPed.DpePed,'
      '           CmpPed.PrePed,'
      '           CmpPed.ObsPed,'
      '           CmpPed.CodFor,'
      '           FinFor.NomFor,'
      '           GerUsu.LogUsu,'
      '           FinFor.BaiFor,'
      '           FinFor.CidFor,'
      '           FinFor.SigUfe,'
      '           EstPro.RefPro,'
      
        '           Endereco(TenFor,EndFor,NumFor,RefFor,'#39#39','#39#39','#39#39') as End' +
        'For,'
      
        '           TextoOcor('#39'('#39',FinFor.PrtFor,'#39')'#39','#39' '#39',FinFor.FonFor,'#39#39',' +
        #39#39') as FonFor,'
      
        '           TextoOcor('#39'('#39',FinFor.PrfFor,'#39')'#39','#39' '#39',FinFor.FaxFor,'#39#39',' +
        #39#39') as FaxFor,'
      
        '           TextoOcor(CmpPe2.CodGru,'#39'.'#39',CmpPe2.CodSub,'#39'.'#39',CmpPe2.' +
        'CodPro,'#39' - '#39',CmpPe2.DesPe2) as DscPro'
      'From CmpPe2 INNER JOIN CmpPed ON (CmpPe2.CodEmp = CmpPed.CodEmp)'
      
        '                                                        AND (Cmp' +
        'Pe2.DtePed = CmpPed.DtePed)'
      
        '                                                        AND (Cmp' +
        'Pe2.NumPed = CmpPed.NumPed)'
      
        '                             LEFT JOIN FinFor ON (CmpPed.CodFor ' +
        '= FinFor.CodFor)'
      
        '                            LEFT JOIN EstPro ON (CmpPe2.CodClp =' +
        ' EstPro.CodClp)'
      
        '                                                        AND (Cmp' +
        'Pe2.CodGru = EstPro.CodGru)'
      
        '                                                        AND (Cmp' +
        'Pe2.CodSub = EstPro.CodSub)'
      
        '                                                        AND (Cmp' +
        'Pe2.CodPro = EstPro.CodPro)'
      
        '                           LEFT JOIN GerUsu ON (CmpPed.CodUsu = ' +
        'GerUsu.CodUsu)'
      'Where CmpPe2.CodEmp = :CodEmp'
      '     and CmpPe2.DtePed = :DtePed'
      '     and CmpPe2.NumPed = :NumPed'
      '     and CmpPe2.SldPe2 > 0'
      'Order by CmpPe2.CodEmp,CmpPe2.DtePed,CmpPe2.NumPed,CmpPe2.NroPe2')
    ValidateWithMask = True
    Left = 73
    Top = 183
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEPED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMPED'
        ParamType = ptInput
      end>
    object CmpPe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 69
      FieldName = 'DSCPRO'
      Size = 87
    end
    object CmpPe2SLDPE2: TFloatField
      DisplayLabel = '        A Receber'
      DisplayWidth = 10
      FieldName = 'SLDPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2VLQPE2: TFloatField
      DisplayLabel = '      Valor Item'
      DisplayWidth = 10
      FieldName = 'VLQPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2ICMPE2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 4
      FieldName = 'ICMPE2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpPe2IPIPE2: TFloatField
      DisplayLabel = '    IPI'
      DisplayWidth = 3
      FieldName = 'IPIPE2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpPe2QTPPE2: TFloatField
      DisplayLabel = '     Qtd. Pedido'
      DisplayWidth = 10
      FieldName = 'QTPPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTPE2: TFloatField
      DisplayLabel = '        Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTPE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2QTRPE2: TFloatField
      DisplayLabel = '     Atendido'
      DisplayWidth = 10
      FieldName = 'QTRPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2QTNPE2: TFloatField
      DisplayLabel = '         Não Atendido'
      DisplayWidth = 10
      FieldName = 'QTNPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2QTEPE2: TFloatField
      DisplayLabel = ' Qtd. Nao Atendida'
      DisplayWidth = 10
      FieldName = 'QTEPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpPe2DTEPED: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEPED'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPe2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Visible = False
    end
    object CmpPe2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
    object CmpPe2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object CmpPe2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpPe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpPe2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpPe2OBSPE2: TStringField
      FieldName = 'OBSPE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPe2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2VLUPE2: TFloatField
      FieldName = 'VLUPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2DSCPE2: TFloatField
      FieldName = 'DSCPE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2VDSPE2: TFloatField
      FieldName = 'VDSPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2PACPE2: TFloatField
      FieldName = 'PACPE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2VACPE2: TFloatField
      FieldName = 'VACPE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2NROPE2: TIntegerField
      FieldName = 'NROPE2'
      Visible = False
    end
    object CmpPe2NOMCON: TStringField
      FieldName = 'NOMCON'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPe2NOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPe2OBSCND: TStringField
      FieldName = 'OBSCND'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2TOTGER: TFloatField
      FieldName = 'TOTGER'
      Visible = False
    end
    object CmpPe2DPEPED: TDateTimeField
      FieldName = 'DPEPED'
      Visible = False
    end
    object CmpPe2PREPED: TIntegerField
      FieldName = 'PREPED'
      Visible = False
    end
    object CmpPe2OBSPED: TStringField
      FieldName = 'OBSPED'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpPe2CODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpPe2NOMFOR: TStringField
      FieldName = 'NOMFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPe2ENDFOR: TStringField
      FieldName = 'ENDFOR'
      Visible = False
      FixedChar = True
      Size = 172
    end
    object CmpPe2BAIFOR: TStringField
      FieldName = 'BAIFOR'
      Visible = False
      FixedChar = True
    end
    object CmpPe2CIDFOR: TStringField
      FieldName = 'CIDFOR'
      Visible = False
      FixedChar = True
    end
    object CmpPe2SIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPe2FONFOR: TStringField
      FieldName = 'FONFOR'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2FAXFOR: TStringField
      FieldName = 'FAXFOR'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2REFPRO: TStringField
      FieldName = 'REFPRO'
      Visible = False
      FixedChar = True
    end
    object CmpPe2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2LOGUSU: TStringField
      FieldName = 'LOGUSU'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpPe2QTIPE3: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTIPE3'
      Visible = False
    end
    object CmpPe2SEQPE3: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPE3'
      Visible = False
    end
    object CmpPe2FLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2VLQITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VLQITE'
      Visible = False
    end
    object CmpPe2FLGVAL: TStringField
      DisplayWidth = 3
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2FLGLAN: TStringField
      DisplayWidth = 1
      FieldName = 'FLGLAN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2VALVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'VALVEN'
      Visible = False
    end
    object CmpPe2TOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object CmpPe2TOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object CmpPe2CODPFO: TStringField
      DisplayWidth = 30
      FieldName = 'CODPFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object DsPe2: TwwDataSource
    DataSet = CmpPe2
    Left = 101
    Top = 183
  end
  object DsPed: TwwDataSource
    DataSet = CmpPed
    OnDataChange = DsPedDataChange
    Left = 35
    Top = 183
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 7
    Top = 211
  end
  object rdprint: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Pedidos de Compras Pendentes'
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
    TitulodoRelatorio = 'Pedidos de Compras Pendentes'
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
    OnNewPage = rdprintNewPage
    Left = 35
    Top = 211
  end
end
