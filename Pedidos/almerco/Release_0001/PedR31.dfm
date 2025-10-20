inherited fmPedR31: TfmPedR31
  Left = 0
  Caption = 'Relação de pedidos liberados pelo depto. financeiro no periodo'
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
  object Label28: TLabel
    Left = 4
    Top = 87
    Width = 112
    Height = 13
    Caption = 'Emitidos no periodo de:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel
    Left = 290
    Top = 87
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
    Left = 4
    Top = 17
    Width = 45
    Height = 13
    Caption = 'Empresa:'
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
    Top = 41
    Width = 37
    Height = 13
    Caption = 'Cliente:'
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
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
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
  object bPsqEmp: TSpeedButton
    Left = 282
    Top = 15
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
    OnClick = bPsqEmpClick
  end
  object bPsqCli: TSpeedButton
    Left = 282
    Top = 38
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
    OnClick = bPsqCliClick
  end
  object bPsqVen: TSpeedButton
    Left = 282
    Top = 61
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
    OnClick = bPsqVenClick
  end
  object Label10: TLabel
    Left = 4
    Top = 0
    Width = 154
    Height = 13
    Caption = 'Informações para pesquisa'
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
    Left = 195
    Top = 6
    Width = 589
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 4
    Top = 131
    Width = 120
    Height = 13
    Caption = 'Pedidos selecionados'
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
    Left = 195
    Top = 138
    Width = 589
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 4
    Top = 110
    Width = 175
    Height = 13
    Caption = 'Liberações realizadas no periodo de:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 290
    Top = 110
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
  object EdPsqDteRes1: TdxColorDateEdit
    Left = 194
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
    TabOrder = 6
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDteRes2: TdxColorDateEdit
    Left = 306
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
    TabOrder = 7
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqCodVen: TdxColorEdit
    Left = 194
    Top = 60
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
    OnExit = EdPsqCodVenExit
    OnKeyDown = EdPsqCodVenKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqCodCli: TdxColorEdit
    Left = 194
    Top = 37
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
    OnExit = EdPsqCodCliExit
    OnKeyDown = EdPsqCodCliKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 194
    Top = 14
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
    OnExit = EdPsqCodEmpExit
    OnKeyDown = EdPsqCodEmpKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqNomVen: TdxColorEdit
    Left = 306
    Top = 60
    Width = 480
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
    TabOrder = 5
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomCli: TdxColorEdit
    Left = 306
    Top = 37
    Width = 480
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
    TabOrder = 3
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomEmp: TdxColorEdit
    Left = 306
    Top = 14
    Width = 480
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
    TabOrder = 1
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bbPesquisa: TBitBtn
    Left = 400
    Top = 84
    Width = 191
    Height = 44
    Caption = '&Selecionar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = bbPesquisaClick
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
  object bImprimir: TBitBtn
    Left = 594
    Top = 84
    Width = 191
    Height = 44
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = bImprimirClick
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
  object EdPsqDteFin1: TdxColorDateEdit
    Left = 194
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
    TabOrder = 8
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDteFin2: TdxColorDateEdit
    Left = 306
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
    TabOrder = 9
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object grFin: TdxDBGrid
    Left = 3
    Top = 146
    Width = 782
    Height = 336
    Bands = <
      item
        Width = 1656
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'DTEFIN'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            ColumnName = 'CLIENTE'
            SummaryFormat = 'Qtd de Pedidos 0'
            SummaryType = cstCount
          end
          item
            ColumnName = 'TOTRES'
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'TOTIPI'
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'TOTGER'
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end>
        Name = 'grFatSummaryGroup1'
      end>
    SummarySeparator = ', '
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopUpMenu
    TabOrder = 12
    BandColor = clMenu
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = [fsBold]
    DataSource = DsFin
    DefaultRowHeight = 19
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    GroupPanelColor = clAppWorkSpace
    GroupPanelFontColor = clInfoBk
    GroupNodeColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoExtCustomizing, edgoFullSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoPreview, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    PreviewLines = 0
    RowFooterColor = clInfoBk
    RowFooterTextColor = clRed
    ShowGrid = False
    ShowHiddenInCustomizeBox = True
    ShowRowFooter = True
    OnReloadGroupList = grFinReloadGroupList
    object DTEFIN: TdxDBGridDateColumn
      Caption = 'Liberado Em'
      Sorted = csUp
      Visible = False
      Width = 207
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DTEFIN'
      GroupIndex = 0
    end
    object ID_PEDRES: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'No. Pedido'
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_PEDRES'
    end
    object DTERES: TdxDBGridDateColumn
      Caption = 'Emitido Em'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DTERES'
    end
    object CLIENTE: TdxDBGridMaskColumn
      Caption = 'Cliente'
      Width = 305
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CLIENTE'
      SummaryFooterType = cstCount
      SummaryFooterFormat = 'Qtd de Pedidos 0'
    end
    object VENDEDOR: TdxDBGridMaskColumn
      Caption = 'Vendedor'
      Width = 244
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VENDEDOR'
    end
    object TOTRES: TdxDBGridMaskColumn
      Caption = 'Total de Itens'
      HeaderAlignment = taRightJustify
      Width = 128
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TOTRES'
      SummaryFooterType = cstSum
      SummaryFooterFormat = '###,###,##0.00'
    end
    object TOTIPI: TdxDBGridMaskColumn
      Caption = 'Total IPI'
      HeaderAlignment = taRightJustify
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TOTIPI'
      SummaryFooterType = cstSum
      SummaryFooterFormat = '###,###,##0.00'
    end
    object TOTGER: TdxDBGridMaskColumn
      Caption = 'Total Pedido'
      HeaderAlignment = taRightJustify
      Width = 104
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TOTGER'
      SummaryFooterType = cstSum
      SummaryFooterFormat = '###,###,##0.00'
    end
    object HREFIN: TdxDBGridMaskColumn
      Caption = 'Liberado as'
      Width = 102
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HREFIN'
    end
    object OB1FIN: TdxDBGridMemoColumn
      Caption = 'Observações'
      Width = 346
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OB1FIN'
    end
    object LOGUSU: TdxDBGridMaskColumn
      Caption = 'Responsável'
      Width = 163
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOGUSU'
    end
  end
  object PedFin: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedFin.Id_PedRes,'
      '           PedFin.DteFin,'
      '           PedFin.HreFin,'
      '           PedFin.Ob1Fin,'
      '           PedRes.DteRes,'
      '           PedRes.TotRes,'
      '           PedRes.TotIpi,'
      '           PedRes.TotGer,'
      '           GerUsu.LogUsu,'
      
        '           TextoOcor(IntStrZeros(PedRes.CodCli,5),'#39'-'#39',FinCli.Ape' +
        'Cli,'#39#39','#39#39','#39#39','#39#39') as Cliente,'
      
        '           TextoOcor(IntStrZeros(PedRes.CodVen,3),'#39'-'#39',FinVen.Ape' +
        'Ven,'#39#39','#39#39','#39#39','#39#39') as Vendedor'
      
        'From PedFin LEFT JOIN PedRes ON (PedFin.Id_PedRes = PedRes.Id_Pe' +
        'dRes)'
      
        '                    LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.' +
        'CodVen)'
      
        '                    LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.' +
        'CodCli)'
      
        '                    LEFT JOIN GerUsu ON (PedFin.CodUsu = GerUsu.' +
        'CodUsu)'
      'Where PedFin.DteFin = :DteFin'
      'Order by PedFin.DteFin,PedFin.Id_PedRes')
    ValidateWithMask = True
    Left = 4
    Top = 358
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteFin'
        ParamType = ptInput
      end>
    object PedFinDTERES: TDateTimeField
      FieldName = 'DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedFinDTEFIN: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEFIN'
      EditMask = '!99/99/9999;1;_'
    end
    object PedFinHREFIN: TStringField
      FieldName = 'HREFIN'
      FixedChar = True
      Size = 8
    end
    object PedFinLOGUSU: TStringField
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object PedFinCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 100
    end
    object PedFinVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 100
    end
    object PedFinTOTRES: TFloatField
      FieldName = 'TOTRES'
      DisplayFormat = '###,###,##0.00'
    end
    object PedFinTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedFinTOTGER: TFloatField
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object PedFinID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
    end
    object PedFinOB1FIN: TStringField
      FieldName = 'OB1FIN'
      Size = 80
    end
  end
  object DsFin: TwwDataSource
    DataSet = PedFin
    Left = 32
    Top = 358
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 4
    Top = 386
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 32
    Top = 386
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    DateFormat = 1
    PreviewOptions.Caption = 'Visualizando relatorio'
    PreviewOptions.RegistryPath = 'Software\Developer Express\PrintingSystem\DesignTime'
    TimeFormat = 1
    Left = 32
    Top = 414
    object dxComponentPrinterLink1: TdxDBGridReportLink
      Active = True
      Component = grFin
      DateTime = 39937.8348274306
      DesignerHelpContext = 0
      PrinterPage.DMPaper = 149
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 13200
      PrinterPage.Margins.Top = 42600
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        'Emerion Consultoria e Sistemas de Informatica Ltda')
      PrinterPage.PageFooter.RightTitle.Strings = (
        'Pagina No. [Page #]')
      PrinterPage.PageHeader.Background.Brush.Color = clBlack
      PrinterPage.PageHeader.Background.PictureMode = ppmTile
      PrinterPage.PageHeader.CenterTextAlignY = taTop
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageHeader.LeftTextAlignY = taTop
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'VMP PAPEIS'
        'VMP PAPEIS PARA EMBALAGENS LTDA'
        
          'RUA TEIXEIRA SOARES - JD DAS ACACIAS - GUARULHOS - SP CEP 03701-' +
          '010'
        ''
        'Empresa :'
        'Cliente :'
        'Vendedor :'
        'Emitido Em :'
        'Faturado Em :')
      PrinterPage.PageHeader.RightTextAlignY = taTop
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date Printed][Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 284300
      PrinterPage.PaperSource = 4
      PrinterPage.ScaleFactor = 58
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -15
      ReportTitle.Font.Name = 'Tahoma'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = 
        #13#10'Relação de pedidos liberados pelo depto. financeiro no periodo' +
        #13#10#13#10
      BandColor = clWhite
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      EvenFont.Charset = ANSI_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Tahoma'
      EvenFont.Style = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clNavy
      FooterFont.Height = -13
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = [fsBold]
      GridLineColor = clWhite
      GroupNodeFont.Charset = ANSI_CHARSET
      GroupNodeFont.Color = clNavy
      GroupNodeFont.Height = -13
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = [fsBold]
      GroupNodeColor = clWhite
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clNavy
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      OddFont.Charset = ANSI_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Tahoma'
      OddFont.Style = []
      Options = [tlpoHeaders, tlpoFooters, tlpoRowFooters, tlpoFlatCheckMarks]
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = clWhite
      RowFooterFont.Charset = ANSI_CHARSET
      RowFooterFont.Color = clRed
      RowFooterFont.Height = -13
      RowFooterFont.Name = 'Tahoma'
      RowFooterFont.Style = [fsBold]
    end
  end
  object PopUpMenu: TPopupMenu
    OwnerDraw = True
    Left = 4
    Top = 414
    object Exportarpara1: TMenuItem
      Caption = 'Exportar para...           '
      Hint = 'Exportar para...'
      object HTML: TMenuItem
        Caption = 'HTML'
        Hint = 'Exportar Relatorio no Formato HTML'
        OnClick = HTMLClick
      end
      object Excel: TMenuItem
        Caption = 'EXCEL'
        Hint = 'Exportar Relatorio no Formato EXCEL'
        OnClick = ExcelClick
      end
      object XML: TMenuItem
        Caption = 'XML && XSL'
        Hint = 'Exportar Relatorio no Formato XML '
        OnClick = XMLClick
      end
    end
    object Colunas1: TMenuItem
      Caption = 'Colunas...'
      Hint = 'Colunas...'
      OnClick = Colunas1Click
    end
  end
end
