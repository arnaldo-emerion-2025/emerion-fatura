inherited fmManPco: TfmManPco
  Left = 4
  Top = 42
  Caption = 'Preço de Fornecedores'
  ClientHeight = 472
  ClientWidth = 737
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcFor: TPageControl
    Left = 0
    Top = 0
    Width = 742
    Height = 474
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 95
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnShow = pcPag1Show
      object Shape6: TShape
        Left = 0
        Top = 0
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 421
        Width = 732
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 4
        Top = 2
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
      object Label1: TLabel
        Left = 0
        Top = 25
        Width = 40
        Height = 13
        Caption = 'Código :'
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
        Left = 0
        Top = 49
        Width = 67
        Height = 13
        Caption = 'Razão Social :'
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
        Left = 205
        Top = 25
        Width = 48
        Height = 13
        Caption = 'Fantasia :'
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
      object Shape2: TShape
        Left = 189
        Top = 8
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 167
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 4
        Top = 169
        Width = 154
        Height = 13
        Caption = 'Fornecedores Selecionados'
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
      object Shape5: TShape
        Left = 189
        Top = 175
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label34: TLabel
        Left = 5
        Top = 425
        Width = 253
        Height = 13
        Caption = 'Crtl+'#39'I'#39'-Incluir Ctrl+'#39'E'#39'-Excluir Ctrl+'#39'S'#39'-Salvar'
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
      object Label47: TLabel
        Left = 0
        Top = 73
        Width = 68
        Height = 13
        Caption = 'Classificação :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 0
        Top = 97
        Width = 36
        Height = 13
        Caption = 'Grupo :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label49: TLabel
        Left = 0
        Top = 121
        Width = 58
        Height = 13
        Caption = 'Sub-Grupo :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 0
        Top = 145
        Width = 29
        Height = 13
        Caption = 'Item :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object bPsqPro: TSpeedButton
        Left = 191
        Top = 143
        Width = 23
        Height = 20
        Hint = 'Pesquisar Grupos Existentes'
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
        OnClick = bPsqProClick
      end
      object bPsqSub: TSpeedButton
        Left = 191
        Top = 118
        Width = 23
        Height = 21
        Hint = 'Pesquisar Sub-Grupos Existentes'
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
        OnClick = bPsqSubClick
      end
      object bPsqGru: TSpeedButton
        Left = 191
        Top = 94
        Width = 23
        Height = 21
        Hint = 'Pesquisar Grupos Existentes'
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
        OnClick = bPsqGruClick
      end
      object bPsqClp: TSpeedButton
        Left = 191
        Top = 70
        Width = 23
        Height = 21
        Hint = 'Pesquisar Classificações de Itens Existentes'
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
        OnClick = bPsqClpClick
      end
      object EdPsqNomFor: TdxColorEdit
        Left = 101
        Top = 45
        Width = 375
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
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodFor: TdxColorEdit
        Left = 101
        Top = 21
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
        TabOrder = 0
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqApeFor: TdxColorEdit
        Left = 257
        Top = 21
        Width = 219
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
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object bselecionar: TBitBtn
        Left = 569
        Top = 117
        Width = 162
        Height = 46
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = bselecionarClick
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
        Left = 477
        Top = 17
        Width = 128
        Height = 99
        Caption = ' Exibido Por '
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Fantasia'
          'Razão Social')
        TabOrder = 11
      end
      object rgBusca: TRadioGroup
        Left = 609
        Top = 17
        Width = 122
        Height = 99
        Caption = ' Tipo de Busca'
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        TabOrder = 12
      end
      object Panel3: TPanel
        Left = 0
        Top = 187
        Width = 731
        Height = 232
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 14
        object grFor: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 729
          Height = 230
          Selected.Strings = (
            'CODFOR'#9'9'#9'Código'
            'NOMFOR'#9'49'#9'Razão Social'
            'APEFOR'#9'27'#9'Apelido'
            'PRTFOR'#9'7'#9'Prefixo'
            'FONFOR'#9'25'#9'Telefone                                    '#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsFor
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 3
          TitleButtons = False
          OnDblClick = grForDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqCodClp: TdxColorEdit
        Left = 101
        Top = 69
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
        TabOrder = 3
        OnExit = EdPsqCodClpExit
        OnKeyDown = EdPsqCodClpKeyDown
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        MaxLength = 1
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodGru: TdxColorEdit
        Left = 101
        Top = 93
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
        TabOrder = 5
        OnExit = EdPsqCodGruExit
        OnKeyDown = EdPsqCodGruKeyDown
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        MaxLength = 3
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodSub: TdxColorEdit
        Left = 101
        Top = 117
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
        TabOrder = 7
        OnExit = EdPsqCodSubExit
        OnKeyDown = EdPsqCodSubKeyDown
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        MaxLength = 4
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqCodPro: TdxColorEdit
        Left = 101
        Top = 141
        Width = 88
        Hint = 'Item'
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
        OnExit = EdPsqCodProExit
        OnKeyDown = EdPsqCodProKeyDown
        CharCase = ecUpperCase
        MaxLength = 5
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqNomClp: TdxColorEdit
        Left = 215
        Top = 69
        Width = 261
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
        TabOrder = 4
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomGru: TdxColorEdit
        Left = 215
        Top = 93
        Width = 261
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
      object EdPsqNomSub: TdxColorEdit
        Left = 215
        Top = 117
        Width = 353
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
      object EdPsqNomPro: TdxColorEdit
        Left = 215
        Top = 141
        Width = 353
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
    end
    object pcPag2: TTabSheet
      Caption = '&Preços'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Shape9: TShape
        Left = 0
        Top = 0
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label5: TLabel
        Left = 5
        Top = 2
        Width = 129
        Height = 13
        Caption = 'Informações Principais'
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
      object Shape10: TShape
        Left = 189
        Top = 8
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label9: TLabel
        Left = 0
        Top = 25
        Width = 40
        Height = 13
        Caption = 'Código :'
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
        Left = 0
        Top = 49
        Width = 67
        Height = 13
        Caption = 'Razão Social :'
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
        Left = 228
        Top = 25
        Width = 48
        Height = 13
        Caption = 'Fantasia :'
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
      object Label24: TLabel
        Left = 0
        Top = 97
        Width = 31
        Height = 13
        Caption = 'Email :'
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
      object Label25: TLabel
        Left = 451
        Top = 97
        Width = 51
        Height = 13
        Caption = 'Web-Site :'
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
      object Label39: TLabel
        Left = 0
        Top = 73
        Width = 52
        Height = 13
        Caption = 'Telefone  :'
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
      object Label40: TLabel
        Left = 283
        Top = 73
        Width = 28
        Height = 13
        Caption = 'Fax  :'
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
      object Label41: TLabel
        Left = 456
        Top = 73
        Width = 46
        Height = 13
        Caption = 'Contato :'
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
      object Shape1: TShape
        Left = 0
        Top = 113
        Width = 732
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 4
        Top = 120
        Width = 38
        Height = 13
        Caption = 'Preços'
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
      object EdCodFor: TdxDBColorEdit
        Left = 124
        Top = 21
        Width = 88
        Color = 16577773
        Enabled = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        DataField = 'CODFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomFor: TdxDBColorEdit
        Left = 124
        Top = 45
        Width = 608
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
        DataField = 'NOMFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdApeFor: TdxDBColorEdit
        Left = 280
        Top = 21
        Width = 452
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
        DataField = 'APEFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdPrtFor: TdxDBColorEdit
        Left = 124
        Top = 69
        Width = 46
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
        DataField = 'PRTFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdFonFor: TdxDBColorEdit
        Left = 171
        Top = 69
        Width = 88
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
        TabOrder = 4
        CharCase = ecUpperCase
        DataField = 'FONFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdPrfFor: TdxDBColorEdit
        Left = 317
        Top = 69
        Width = 45
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
        DataField = 'PRFFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdFaxFor: TdxDBColorEdit
        Left = 362
        Top = 69
        Width = 88
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
        DataField = 'FAXFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdConFor: TdxDBColorEdit
        Left = 512
        Top = 69
        Width = 220
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
        DataField = 'CONFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object Panel2: TPanel
        Left = 506
        Top = 114
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = clNavy
        TabOrder = 8
        object nvPfo: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          OnExclui = nvPfoSalva
          OnSalva = nvPfoSalva
          DataSource = DsPfo
          BaseAtualizar = 'EstClpEstGruEstSubEstProFinTmo'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel4: TPanel
        Left = -3
        Top = 213
        Width = 739
        Height = 229
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 9
        OnExit = Panel4Exit
        object Label15: TLabel
          Left = 3
          Top = 27
          Width = 36
          Height = 13
          Caption = 'Grupo :'
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
        object Label16: TLabel
          Left = 3
          Top = 50
          Width = 58
          Height = 13
          Caption = 'Sub-Grupo :'
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
          Top = 73
          Width = 29
          Height = 13
          Caption = 'Item :'
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
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Classificação :'
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
          Left = 3
          Top = 96
          Width = 113
          Height = 13
          Caption = 'Código do Fornecedor :'
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
          Left = 246
          Top = 96
          Width = 82
          Height = 13
          Caption = 'Preço praticado :'
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
          Top = 119
          Width = 71
          Height = 13
          Caption = '% Descontos :'
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
        object Label19: TLabel
          Left = 3
          Top = 165
          Width = 70
          Height = 13
          Caption = 'Observações :'
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
        object Label10: TLabel
          Left = 479
          Top = 119
          Width = 35
          Height = 13
          Caption = '% IPI :'
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
        object Label18: TLabel
          Left = 577
          Top = 142
          Width = 28
          Height = 13
          Caption = 'Custo'
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
        object Label27: TLabel
          Left = 577
          Top = 119
          Width = 59
          Height = 13
          Caption = 'Qtde Mínima'
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
          Top = 188
          Width = 94
          Height = 13
          Caption = 'Dt. Ultima Compra :'
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
        object Label23: TLabel
          Left = 360
          Top = 188
          Width = 103
          Height = 13
          Caption = 'Valor Última Compra :'
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
          Left = 563
          Top = 188
          Width = 87
          Height = 13
          Caption = 'Qtde Últ Compra :'
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
        object Label30: TLabel
          Left = 3
          Top = 212
          Width = 220
          Height = 13
          Caption = 'Preço Praticado Anterior ao Último Alteração :'
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
        object Label31: TLabel
          Left = 457
          Top = 212
          Width = 193
          Height = 13
          Caption = '% Variação em Relação ao Preço Atual :'
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
        object Label26: TLabel
          Left = 353
          Top = 142
          Width = 59
          Height = 13
          Caption = '% Margem :'
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
        object Label32: TLabel
          Left = 179
          Top = 119
          Width = 13
          Height = 13
          Caption = '- 1'
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
        object Label33: TLabel
          Left = 259
          Top = 119
          Width = 13
          Height = 13
          Caption = '- 2'
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
        object Label35: TLabel
          Left = 342
          Top = 119
          Width = 13
          Height = 13
          Caption = '- 3'
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
        object Label36: TLabel
          Left = 427
          Top = 119
          Width = 13
          Height = 13
          Caption = '- 4'
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
        object Label21: TLabel
          Left = 3
          Top = 142
          Width = 104
          Height = 13
          Caption = '% Juros Financeiros :'
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
        object Label37: TLabel
          Left = 182
          Top = 142
          Width = 110
          Height = 13
          Caption = '% Outros Acrescimos :'
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
        object Label38: TLabel
          Left = 468
          Top = 96
          Width = 46
          Height = 13
          Caption = '% ICMS :'
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
        object Label42: TLabel
          Left = 472
          Top = 142
          Width = 42
          Height = 13
          Caption = '% MVA :'
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
        object Label43: TLabel
          Left = 646
          Top = 119
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
        object Label44: TLabel
          Left = 646
          Top = 142
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
        object EdCodPro: TdxDBColorEdit
          Left = 120
          Top = 69
          Width = 92
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
          OnEnter = EdCodGruEnter
          OnExit = EdCodProExit
          OnKeyDown = EdCodProKeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODPRO'
          DataSource = DsPfo
          MaxLength = 5
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdCodSub: TdxDBColorEdit
          Left = 120
          Top = 46
          Width = 92
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
          TabOrder = 4
          OnEnter = EdCodGruEnter
          OnExit = EdCodSubExit
          OnKeyDown = EdCodSubKeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODSUB'
          DataSource = DsPfo
          MaxLength = 4
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdCodGru: TdxDBColorEdit
          Left = 120
          Top = 23
          Width = 92
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
          OnEnter = EdCodGruEnter
          OnExit = EdCodGruExit
          OnKeyDown = EdCodGruKeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODGRU'
          DataSource = DsPfo
          MaxLength = 3
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object CbNomPro: TdxDBColorLookupEdit
          Left = 245
          Top = 69
          Width = 492
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
          TabStop = False
          DataField = 'CODPRO'
          DataSource = DsPfo
          ReadOnly = False
          ListFieldName = 'DSCPRO'
          KeyFieldName = 'CODPRO'
          ListSource = DsPro
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object CbNomSub: TdxDBColorLookupEdit
          Left = 245
          Top = 46
          Width = 492
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
          TabStop = False
          DataField = 'CODSUB'
          DataSource = DsPfo
          ReadOnly = False
          ListFieldName = 'NOMSUB'
          KeyFieldName = 'CODSUB'
          ListSource = DsSub
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object CbNomGru: TdxDBColorLookupEdit
          Left = 245
          Top = 23
          Width = 492
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
          TabStop = False
          DataField = 'CODGRU'
          DataSource = DsPfo
          ReadOnly = False
          ListFieldName = 'NOMGRU'
          KeyFieldName = 'CODGRU'
          ListSource = DsGru
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodClp: TdxDBColorEdit
          Left = 120
          Top = 0
          Width = 92
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
          TabOrder = 0
          OnEnter = EdCodClpEnter
          OnKeyDown = EdCodClpKeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODCLP'
          DataSource = DsPfo
          MaxLength = 1
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object CbNomClp: TdxDBColorLookupEdit
          Left = 245
          Top = 0
          Width = 492
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
          TabStop = False
          DataField = 'CODCLP'
          DataSource = DsPfo
          ReadOnly = False
          ListFieldName = 'NOMCLP'
          KeyFieldName = 'CODCLP'
          ListSource = DsClp
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodPfo: TdxDBColorEdit
          Left = 120
          Top = 92
          Width = 113
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
          OnEnter = EdCodPfoEnter
          OnExit = EdCodPfoExit
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODPFO'
          DataSource = DsPfo
          MaxLength = 30
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdValPfo: TdxDBColorCurrencyEdit
          Left = 332
          Top = 92
          Width = 93
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
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'VALPFO'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 6
          DisplayFormat = '###,###,##0.000000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdDscPfo: TdxDBColorCurrencyEdit
          Left = 120
          Top = 115
          Width = 57
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'DSCPFO'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdObsPfo: TdxDBColorEdit
          Left = 120
          Top = 161
          Width = 616
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
          TabOrder = 23
          OnEnter = EdCodPfoEnter
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'OBSPFO'
          DataSource = DsPfo
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object pnText: TPanel
          Left = 590
          Top = 95
          Width = 144
          Height = 17
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'F1-Iniciais F2-Inteligente'
          Color = 15788249
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object EdPerIpi: TdxDBColorCurrencyEdit
          Left = 516
          Top = 115
          Width = 52
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
          TabOrder = 16
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'PERIPI'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdValFin: TdxDBColorCurrencyEdit
          Left = 651
          Top = 138
          Width = 86
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
          TabOrder = 22
          Alignment = taRightJustify
          DataField = 'VALFIN'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 6
          DisplayFormat = '###,###,##0.000000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdDulCmp: TdxDBColorDateEdit
          Left = 120
          Top = 184
          Width = 92
          Color = 16577773
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14065456
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 24
          DataField = 'DULCMP'
          DataSource = DsPfo
          PopupBorder = pbFlat
          DateButtons = []
          DateValidation = True
          SaveTime = False
          CorDeFoco = clInfoBk
        end
        object EdUltCmp: TdxDBColorCurrencyEdit
          Left = 466
          Top = 184
          Width = 88
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
          TabOrder = 25
          Alignment = taRightJustify
          DataField = 'ULTCMP'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 4
          DisplayFormat = '###,###,##0.0000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdUltQtd: TdxDBColorCurrencyEdit
          Left = 651
          Top = 184
          Width = 86
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
          TabOrder = 26
          Alignment = taRightJustify
          DataField = 'ULTQTD'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 4
          DisplayFormat = '###,###,##0.0000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdUltPfo: TdxDBColorCurrencyEdit
          Left = 224
          Top = 207
          Width = 97
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
          TabOrder = 27
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'ULTPFO'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 6
          DisplayFormat = '###,###,##0.000000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdVarPfo: TdxDBColorCurrencyEdit
          Left = 651
          Top = 207
          Width = 86
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
          TabOrder = 28
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'VARPFO'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdMarkup: TdxDBColorCurrencyEdit
          Left = 414
          Top = 138
          Width = 52
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 20
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'MARKUP'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdDscPf1: TdxDBColorCurrencyEdit
          Left = 200
          Top = 115
          Width = 57
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'DSCPF1'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdDscPf2: TdxDBColorCurrencyEdit
          Left = 283
          Top = 115
          Width = 57
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'DSCPF2'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdDscPf3: TdxDBColorCurrencyEdit
          Left = 368
          Top = 115
          Width = 57
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 15
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'DSCPF3'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdJurPfo: TdxDBColorCurrencyEdit
          Left = 120
          Top = 138
          Width = 57
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 18
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'JURPFO'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdAcrPfo: TdxDBColorCurrencyEdit
          Left = 294
          Top = 138
          Width = 52
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 19
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'ACRPFO'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdPerIcm: TdxDBColorCurrencyEdit
          Left = 516
          Top = 92
          Width = 52
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
          TabOrder = 10
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'PERICM'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdPerMva: TdxDBColorCurrencyEdit
          Left = 516
          Top = 138
          Width = 52
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
          TabOrder = 21
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'PERMVA'
          DataSource = DsPfo
          ReadOnly = False
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdQtdMin: TdxDBColorCurrencyEdit
          Left = 651
          Top = 115
          Width = 86
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
          TabOrder = 17
          OnEnter = EdCodPfoEnter
          OnExit = EdValPfoExit
          Alignment = taRightJustify
          DataField = 'QTDMIN'
          DataSource = DsPfo
          ReadOnly = False
          DecimalPlaces = 6
          DisplayFormat = '###,###,##0.000000'
          Nullable = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 142
        Width = 731
        Height = 69
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 10
        object grCco: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 729
          Height = 67
          Selected.Strings = (
            'CODPFO'#9'30'#9'Código do Fornecedor'
            'CODITE'#9'18'#9'Nosso Código'
            'DSCPRO'#9'51'#9'Descrição do Item'
            'VALFIN'#9'10'#9'                             Custo')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsPfo
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object pnEmaFor: TPanel
        Left = 126
        Top = 95
        Width = 301
        Height = 17
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'ronaldo@emerion.com.br'
        Color = 15788249
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 11
        OnDblClick = pnEmaForDblClick
      end
      object pnWebFor: TPanel
        Left = 513
        Top = 95
        Width = 605
        Height = 17
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'www.emerion.com.br'
        Color = 15788249
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 12
        OnDblClick = pnWebForDblClick
      end
    end
  end
  object Panel1: TPanel
    Left = 424
    Top = 0
    Width = 313
    Height = 25
    BevelOuter = bvNone
    Color = clNavy
    TabOrder = 1
    object nvFor: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnImprime = nvForImprime
      DataSource = dsFor
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = False
      Salvar = False
    end
  end
  object FinFor: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From FinFor'
      'Order by CodFor')
    UpdateObject = UpFor
    ValidateWithMask = True
    Left = 1
    Top = 473
    object FinForCODFOR: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 9
      FieldName = 'CODFOR'
      Origin = 'ISADE.FINFOR.CODFOR'
    end
    object FinForNOMFOR: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 49
      FieldName = 'NOMFOR'
      Origin = 'ISADE.FINFOR.NOMFOR'
      FixedChar = True
      Size = 40
    end
    object FinForAPEFOR: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 27
      FieldName = 'APEFOR'
      Origin = 'ISADE.FINFOR.APEFOR'
      FixedChar = True
    end
    object FinForPRTFOR: TStringField
      DisplayLabel = 'Prefixo'
      DisplayWidth = 7
      FieldName = 'PRTFOR'
      Origin = 'ISADE.FINFOR.PRTFOR'
      EditMask = '!\(9999\);0;_'
      FixedChar = True
      Size = 4
    end
    object FinForFONFOR: TStringField
      DisplayLabel = 'Telefone                                    '
      DisplayWidth = 25
      FieldName = 'FONFOR'
      Origin = 'ISADE.FINFOR.FONFOR'
      FixedChar = True
    end
    object FinForCODGFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODGFO'
      Origin = 'ISADE.FINFOR.CODGFO'
      Visible = False
    end
    object FinForCGCFOR: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'CGCFOR'
      Origin = 'ISADE.FINFOR.CGCFOR'
      Visible = False
      EditMask = '!99.999.999/9999\-99;0;_'
      FixedChar = True
      Size = 18
    end
    object FinForCODBAN: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODBAN'
      Origin = 'ISADE.FINFOR.CODBAN'
      Visible = False
    end
    object FinForNOMCNB: TStringField
      DisplayWidth = 40
      FieldName = 'NOMCNB'
      Origin = 'ISADE.FINFOR.NOMCNB'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FinForCONPLC: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONPLC'
      Origin = 'ISADE.FINFOR.CONPLC'
      Visible = False
    end
    object FinForSUBPLC: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUBPLC'
      Origin = 'ISADE.FINFOR.SUBPLC'
      Visible = False
    end
    object FinForINSFOR: TStringField
      DisplayLabel = 'RG/Inscrição Estadual'
      DisplayWidth = 20
      FieldName = 'INSFOR'
      Origin = 'ISADE.FINFOR.INSFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FinForFAXFOR: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'FAXFOR'
      Origin = 'ISADE.FINFOR.FAXFOR'
      Visible = False
      FixedChar = True
    end
    object FinForEMAFOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMAFOR'
      Origin = 'ISADE.FINFOR.EMAFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object FinForWEBFOR: TStringField
      DisplayWidth = 50
      FieldName = 'WEBFOR'
      Origin = 'ISADE.FINFOR.WEBFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object FinForTENFOR: TStringField
      DisplayWidth = 10
      FieldName = 'TENFOR'
      Origin = 'ISADE.FINFOR.CODFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FinForENDFOR: TStringField
      DisplayWidth = 40
      FieldName = 'ENDFOR'
      Origin = 'ISADE.FINFOR.ENDFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FinForREFFOR: TStringField
      DisplayWidth = 20
      FieldName = 'REFFOR'
      Origin = 'ISADE.FINFOR.REFFOR'
      Visible = False
      FixedChar = True
    end
    object FinForBAIFOR: TStringField
      DisplayWidth = 20
      FieldName = 'BAIFOR'
      Origin = 'ISADE.FINFOR.BAIFOR'
      Visible = False
      FixedChar = True
    end
    object FinForCIDFOR: TStringField
      DisplayWidth = 20
      FieldName = 'CIDFOR'
      Origin = 'ISADE.FINFOR.CIDFOR'
      Visible = False
      FixedChar = True
    end
    object FinForSIGUFE: TStringField
      DisplayWidth = 2
      FieldName = 'SIGUFE'
      Origin = 'ISADE.FINFOR.SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FinForCEPFOR: TStringField
      FieldName = 'CEPFOR'
      Origin = 'ISADE.FINFOR.CEPFOR'
      Visible = False
      EditMask = '!99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object FinForNUMFOR: TStringField
      FieldName = 'NUMFOR'
      Origin = 'ISADE.FINFOR.NUMFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FinForPRFFOR: TStringField
      FieldName = 'PRFFOR'
      Origin = 'ISADE.FINFOR.PRFFOR'
      Visible = False
      EditMask = '!\(9999\);0;_'
      FixedChar = True
      Size = 4
    end
    object FinForCONFOR: TStringField
      FieldName = 'CONFOR'
      Origin = 'ISADE.FINFOR.CONFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FinForCERFOR: TStringField
      DisplayWidth = 8
      FieldName = 'CERFOR'
      Visible = False
      EditMask = '!99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object FinForENRFOR: TStringField
      DisplayWidth = 40
      FieldName = 'ENRFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FinForRERFOR: TStringField
      DisplayWidth = 20
      FieldName = 'RERFOR'
      Visible = False
      FixedChar = True
    end
    object FinForTERFOR: TStringField
      DisplayWidth = 10
      FieldName = 'TERFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FinForNURFOR: TStringField
      DisplayWidth = 10
      FieldName = 'NURFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FinForBARFOR: TStringField
      DisplayWidth = 20
      FieldName = 'BARFOR'
      Visible = False
      FixedChar = True
    end
    object FinForCIRFOR: TStringField
      DisplayWidth = 20
      FieldName = 'CIRFOR'
      Visible = False
      FixedChar = True
    end
    object FinForUFERET: TStringField
      DisplayWidth = 2
      FieldName = 'UFERET'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FinForPTRFOR: TStringField
      DisplayWidth = 4
      FieldName = 'PTRFOR'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FinForFORFOR: TStringField
      DisplayWidth = 20
      FieldName = 'FORFOR'
      Visible = False
      FixedChar = True
    end
    object FinForPFRFOR: TStringField
      DisplayWidth = 4
      FieldName = 'PFRFOR'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FinForFARFOR: TStringField
      DisplayWidth = 20
      FieldName = 'FARFOR'
      Visible = False
      FixedChar = True
    end
    object FinForCORFOR: TStringField
      DisplayWidth = 70
      FieldName = 'CORFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FinForCODAGB: TStringField
      FieldName = 'CODAGB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinForCODCNB: TStringField
      FieldName = 'CODCNB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinForQTDPFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDPFO'
      Visible = False
    end
    object FinForSEQPFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPFO'
      Visible = False
    end
    object FinForFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinForCODTMO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTMO'
      Origin = 'ISADE.FINFOR.CODTMO'
      Visible = False
    end
    object FinForCODPFA: TStringField
      DisplayWidth = 15
      FieldName = 'CODPFA'
      Origin = 'ISADE.FINFOR.CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinForTIPPFA: TStringField
      DisplayWidth = 7
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FINFOR.TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FinForCODSUP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODSUP'
      Origin = 'ISADE.FINFOR.CODSUP'
      Visible = False
    end
    object FinForPERACR: TFloatField
      DisplayWidth = 10
      FieldName = 'PERACR'
      Origin = 'ISADE.FINFOR.PERACR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object dsFor: TwwDataSource
    DataSet = FinFor
    OnDataChange = dsForDataChange
    Left = 29
    Top = 473
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 66
    Top = 529
  end
  object CmpPfo: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpPfoNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpPfo.*,'
      '           EstPro.DscPro'
      'From CmpPfo LEFT JOIN EstPro ON (CmpPfo.CodClp = EstPro.CodClp)'
      
        '                                                  AND (CmpPfo.Co' +
        'dGru = EstPro.CodGru)'
      
        '                                                  AND (CmpPfo.Co' +
        'dSub = EstPro.CodSub)'
      
        '                                                  AND (CmpPfo.Co' +
        'dPro = EstPro.CodPro)'
      'Where CmpPfo.CodFor = :CodFor'
      'Order by CmpPfo.CodFor,CmpPfo.CodPfo')
    UpdateObject = UpPfo
    ValidateWithMask = True
    Left = 1
    Top = 501
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object CmpPfoCODPFO: TStringField
      DisplayLabel = 'Código do Fornecedor'
      DisplayWidth = 30
      FieldName = 'CODPFO'
      FixedChar = True
      Size = 30
    end
    object CmpPfoCODITE: TStringField
      DisplayLabel = 'Nosso Código'
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = CmpPfoCODITEGetText
      Calculated = True
    end
    object CmpPfoDSCPRO: TStringField
      DisplayLabel = 'Descrição do Item'
      DisplayWidth = 51
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 70
    end
    object CmpPfoVALFIN: TFloatField
      DisplayLabel = '                             Custo'
      DisplayWidth = 10
      FieldName = 'VALFIN'
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPfoVALPFO: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'VALPFO'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPfoDSCPFO: TFloatField
      DisplayLabel = '  % Desconto'
      DisplayWidth = 10
      FieldName = 'DSCPFO'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
      Precision = 2
    end
    object CmpPfoCODFOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpPfoCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPfoCODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPfoCODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpPfoCODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpPfoNROPFO: TIntegerField
      FieldName = 'NROPFO'
      Visible = False
    end
    object CmpPfoPERIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'PERIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPfoMARKUP: TFloatField
      DisplayWidth = 10
      FieldName = 'MARKUP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPfoULTCMP: TFloatField
      FieldName = 'ULTCMP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPfoULTQTD: TFloatField
      FieldName = 'ULTQTD'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPfoDULCMP: TDateTimeField
      FieldName = 'DULCMP'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object CmpPfoDIFICM: TFloatField
      DisplayWidth = 10
      FieldName = 'DIFICM'
      Visible = False
    end
    object CmpPfoULTPFO: TFloatField
      DisplayWidth = 10
      FieldName = 'ULTPFO'
      Visible = False
      DisplayFormat = '###,###,##0.000000'
      Precision = 6
    end
    object CmpPfoVARPFO: TFloatField
      DisplayWidth = 10
      FieldName = 'VARPFO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPfoDSCPF1: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPF1'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoDSCPF2: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPF2'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoDSCPF3: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPF3'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoDSCPF4: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCPF4'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoJURPFO: TFloatField
      DisplayWidth = 10
      FieldName = 'JURPFO'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoACRPFO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRPFO'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
    end
    object CmpPfoPERMVA: TFloatField
      DisplayWidth = 10
      FieldName = 'PERMVA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPfoPERICM: TFloatField
      DisplayWidth = 10
      FieldName = 'PERICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPfoTOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPfoTOTSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPfoID_CMPPFO: TIntegerField
      FieldName = 'ID_CMPPFO'
      Visible = False
    end
    object CmpPfoQTDMIN: TFloatField
      FieldName = 'QTDMIN'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPfoFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPfoLOTPFO: TStringField
      FieldName = 'LOTPFO'
      Visible = False
      Size = 15
    end
    object CmpPfoOBSPFO: TStringField
      FieldName = 'OBSPFO'
      Visible = False
      Size = 100
    end
  end
  object DsPfo: TwwDataSource
    DataSet = CmpPfo
    OnDataChange = dsForDataChange
    Left = 29
    Top = 501
  end
  object UpPfo: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPfo'
      'set'
      '  CODFOR = :CODFOR,'
      '  CODPFO = :CODPFO,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  ULTPFO = :ULTPFO,'
      '  VALPFO = :VALPFO,'
      '  VARPFO = :VARPFO,'
      '  DIFICM = :DIFICM,'
      '  DSCPFO = :DSCPFO,'
      '  DSCPF1 = :DSCPF1,'
      '  DSCPF2 = :DSCPF2,'
      '  DSCPF3 = :DSCPF3,'
      '  DSCPF4 = :DSCPF4,'
      '  JURPFO = :JURPFO,'
      '  ACRPFO = :ACRPFO,'
      '  PERIPI = :PERIPI,'
      '  PERICM = :PERICM,'
      '  MARKUP = :MARKUP,'
      '  PERMVA = :PERMVA,'
      '  TOTICM = :TOTICM,'
      '  TOTSUB = :TOTSUB,'
      '  VALFIN = :VALFIN,'
      '  QTDMIN = :QTDMIN,'
      '  LOTPFO = :LOTPFO,'
      '  OBSPFO = :OBSPFO,'
      '  NROPFO = :NROPFO,'
      '  ULTCMP = :ULTCMP,'
      '  ULTQTD = :ULTQTD,'
      '  DULCMP = :DULCMP,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_CMPPFO = :OLD_ID_CMPPFO')
    InsertSQL.Strings = (
      'insert into CmpPfo'
      '  (ID_CMPPFO, CODFOR, CODPFO, CODCLP, CODGRU, CODSUB, CODPRO, '
      'ULTPFO, VALPFO, '
      
        '   VARPFO, DIFICM, DSCPFO, DSCPF1, DSCPF2, DSCPF3, DSCPF4, JURPF' +
        'O, '
      'ACRPFO, '
      
        '   PERIPI, PERICM, MARKUP, PERMVA, TOTICM, TOTSUB, VALFIN, QTDMI' +
        'N, '
      'LOTPFO, '
      '   OBSPFO, NROPFO, ULTCMP, ULTQTD, DULCMP, FLGATU)'
      'values'
      
        '  (:ID_CMPPFO, :CODFOR, :CODPFO, :CODCLP, :CODGRU, :CODSUB, :COD' +
        'PRO, '
      ':ULTPFO, '
      
        '   :VALPFO, :VARPFO, :DIFICM, :DSCPFO, :DSCPF1, :DSCPF2, :DSCPF3' +
        ', :DSCPF4, '
      
        '   :JURPFO, :ACRPFO, :PERIPI, :PERICM, :MARKUP, :PERMVA, :TOTICM' +
        ', '
      ':TOTSUB, '
      
        '   :VALFIN, :QTDMIN, :LOTPFO, :OBSPFO, :NROPFO, :ULTCMP, :ULTQTD' +
        ', '
      ':DULCMP, '
      '   :FLGATU)')
    DeleteSQL.Strings = (
      'delete from CmpPfo'
      'where'
      '  ID_CMPPFO = :OLD_ID_CMPPFO')
    Left = 29
    Top = 529
  end
  object EstClp: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select Distinct * From EstClp'
      'Where Exists(Select * From EstPro Where CodClp = EstPro.CodClp)'
      'Order by CodClp'
      '')
    ValidateWithMask = True
    Left = 1
    Top = 557
    object EstClpCODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstClpNOMCLP: TStringField
      FieldName = 'NOMCLP'
      FixedChar = True
      Size = 40
    end
  end
  object DsClp: TwwDataSource
    DataSet = EstClp
    Left = 29
    Top = 557
  end
  object DsGru: TwwDataSource
    DataSet = EstGru
    Left = 29
    Top = 585
  end
  object EstGru: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstGru'
      'Where Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstGru.CodGru)'
      'Order by NomGru'
      '')
    ValidateWithMask = True
    Left = 1
    Top = 585
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstGruCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTGRU.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstGruNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'ISADE.ESTGRU.NOMGRU'
      FixedChar = True
      Size = 40
    end
  end
  object EstSub: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstSub'
      'Where CodGru = :CodGru'
      '     and Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstSub.CodGru'
      
        '                                                            and ' +
        'CodSub = EstSub.CodSub)'
      'Order by NomSub'
      '')
    ValidateWithMask = True
    Left = 1
    Top = 613
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstSubCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstSubCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstSubNOMSUB: TStringField
      FieldName = 'NOMSUB'
      Origin = 'ISADE.ESTSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    Left = 29
    Top = 613
  end
  object DsPro: TwwDataSource
    DataSet = EstPro
    Left = 29
    Top = 641
  end
  object EstPro: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstPro'
      'Where CodClp = :CodClp'
      '     and CodGru = :CodGru'
      '     and CodSub = :CodSub'
      'Order by DscPro'
      '')
    ValidateWithMask = True
    Left = 1
    Top = 641
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end>
    object EstProCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProDSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstProDSRPRO: TStringField
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      FixedChar = True
      Size = 40
    end
  end
  object qrReport: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpPfo.*,'
      '           EstPro.DscPro,'
      
        '           CodClp || _UNICODE_FSS '#39' - '#39' || CodGru || _UNICODE_FS' +
        'S '#39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte,'
      
        '           TextoOcor(IntStrZeros(CmpPfo.CodFor,7),'#39'-'#39',FinFor.Nom' +
        'For,'#39#39','#39#39','#39#39','#39#39') as NomFor'
      'From CmpPfo INNER JOIN FinFor ON (CmpPfo.CodFor = FinFor.CodFor)'
      
        '                        LEFT JOIN EstPro ON (CmpPfo.CodClp = Est' +
        'Pro.CodClp)'
      
        '                                                    AND (CmpPfo.' +
        'CodGru = EstPro.CodGru)'
      
        '                                                    AND (CmpPfo.' +
        'CodSub = EstPro.CodSub)'
      
        '                                                    AND (CmpPfo.' +
        'CodPro = EstPro.CodPro)'
      'Where CmpPfo.CodFor = :CodFor'
      'Order by CmpPfo.CodFor,CmpPfo.NroPfo')
    ValidateWithMask = True
    Left = 66
    Top = 473
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object qrReportCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object qrReportSEQPFO: TIntegerField
      FieldName = 'SEQPFO'
    end
    object qrReportCODPFO: TStringField
      FieldName = 'CODPFO'
      FixedChar = True
      Size = 30
    end
    object qrReportCODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object qrReportCODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object qrReportCODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object qrReportCODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object qrReportVALPFO: TFloatField
      FieldName = 'VALPFO'
    end
    object qrReportDSCPFO: TFloatField
      FieldName = 'DSCPFO'
    end
    object qrReportOBSPFO: TStringField
      FieldName = 'OBSPFO'
      FixedChar = True
      Size = 100
    end
    object qrReportNROPFO: TIntegerField
      FieldName = 'NROPFO'
    end
    object qrReportFLGTRG: TStringField
      FieldName = 'FLGTRG'
      FixedChar = True
      Size = 1
    end
    object qrReportDSCPRO: TStringField
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 70
    end
    object qrReportCODITE: TStringField
      FieldName = 'CODITE'
      Size = 18
    end
    object qrReportNOMFOR: TStringField
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 100
    end
    object qrReportPERIPI: TFloatField
      FieldName = 'PERIPI'
    end
    object qrReportVALFIN: TFloatField
      FieldName = 'VALFIN'
    end
  end
  object DsReport: TwwDataSource
    DataSet = qrReport
    Left = 94
    Top = 473
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ficha de Fornecedores'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 12350
    PrinterSetup.mmMarginLeft = 16350
    PrinterSetup.mmMarginRight = 11350
    PrinterSetup.mmMarginTop = 8350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 284300
    Template.FileName = 'C:\_WGSYS\Emerion\Compras\Comwatts\Relatorios\RManPco.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 66
    Top = 501
    Version = '5.0'
    mmColumnWidth = 284300
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Preços de Fornecedores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 1323
        mmWidth = 42263
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 238919
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label14'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 221986
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 190765
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label13'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 168540
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppCodPfo: TppDBText
        UserName = 'CodPfo'
        DataField = 'CODPFO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 1058
        mmWidth = 33602
        BandType = 4
      end
      object ppObsPfo: TppDBText
        UserName = 'DscPro1'
        DataField = 'OBSPFO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 5556
        mmWidth = 145521
        BandType = 4
      end
      object ppCodIte: TppDBText
        UserName = 'CodIte'
        DataField = 'CODITE'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 39158
        mmTop = 1058
        mmWidth = 28310
        BandType = 4
      end
      object ppDscPro: TppDBText
        UserName = 'DscPro'
        DataField = 'DSCPRO'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 1058
        mmWidth = 78052
        BandType = 4
      end
      object ppValPfo: TppDBText
        UserName = 'ValPfo'
        Alignment = taRightJustify
        DataField = 'VALPFO'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 147373
        mmTop = 1058
        mmWidth = 27252
        BandType = 4
      end
      object ppDscPfo: TppDBText
        UserName = 'CodIte1'
        Alignment = taRightJustify
        DataField = 'DSCPFO'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 1058
        mmWidth = 17568
        BandType = 4
      end
      object ppPerIpi: TppDBText
        UserName = 'PerIpi'
        Alignment = taRightJustify
        DataField = 'PERIPI'
        DataPipeline = ppDBPipeline
        DisplayFormat = '####0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 193675
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'PerIpi1'
        Alignment = taRightJustify
        DataField = 'VALFIN'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 212196
        mmTop = 1058
        mmWidth = 27252
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CODFOR'
      DataPipeline = ppDBPipeline
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 23548
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Código do Fornecedor   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 794
          mmTop = 19315
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Nosso Código   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 39158
          mmTop = 19315
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Descrição do Item    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 68263
          mmTop = 19315
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 147373
          mmTop = 19315
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Alignment = taRightJustify
          Caption = '% Desconto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 175419
          mmTop = 19315
          mmWidth = 17568
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Fornecedor  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 794
          mmTop = 6350
          mmWidth = 19967
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'CodPfo1'
          DataField = 'NOMFOR'
          DataPipeline = ppDBPipeline
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 21960
          mmTop = 6350
          mmWidth = 162719
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Alignment = taRightJustify
          Caption = '% IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 193675
          mmTop = 19315
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Alignment = taRightJustify
          Caption = 'Valor Calculado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 212196
          mmTop = 19315
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Total de Itens  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 21661
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          Alignment = taRightJustify
          DataField = 'CODPFO'
          DataPipeline = ppDBPipeline
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3440
          mmLeft = 212196
          mmTop = 1323
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = DsReport
    UserName = 'DsReport'
    Left = 94
    Top = 501
    object ppDBPipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODFOR'
      FieldName = 'CODFOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipelineppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQPFO'
      FieldName = 'SEQPFO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipelineppField3: TppField
      FieldAlias = 'CODPFO'
      FieldName = 'CODPFO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppDBPipelineppField4: TppField
      FieldAlias = 'CODCLP'
      FieldName = 'CODCLP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBPipelineppField5: TppField
      FieldAlias = 'CODGRU'
      FieldName = 'CODGRU'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object ppDBPipelineppField6: TppField
      FieldAlias = 'CODSUB'
      FieldName = 'CODSUB'
      FieldLength = 4
      DisplayWidth = 4
      Position = 5
    end
    object ppDBPipelineppField7: TppField
      FieldAlias = 'CODPRO'
      FieldName = 'CODPRO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 6
    end
    object ppDBPipelineppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALPFO'
      FieldName = 'VALPFO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipelineppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'DSCPFO'
      FieldName = 'DSCPFO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipelineppField10: TppField
      FieldAlias = 'OBSPFO'
      FieldName = 'OBSPFO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDBPipelineppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NROPFO'
      FieldName = 'NROPFO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipelineppField12: TppField
      FieldAlias = 'FLGTRG'
      FieldName = 'FLGTRG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipelineppField13: TppField
      FieldAlias = 'DSCPRO'
      FieldName = 'DSCPRO'
      FieldLength = 70
      DisplayWidth = 70
      Position = 12
    end
    object ppDBPipelineppField14: TppField
      FieldAlias = 'CODITE'
      FieldName = 'CODITE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 13
    end
    object ppDBPipelineppField15: TppField
      FieldAlias = 'NOMFOR'
      FieldName = 'NOMFOR'
      FieldLength = 100
      DisplayWidth = 100
      Position = 14
    end
    object ppDBPipelineppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIPI'
      FieldName = 'PERIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipelineppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALFIN'
      FieldName = 'VALFIN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
  end
  object FinTmo: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinTmo')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 1
    Top = 669
    object FinTmoNOMTMO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMTMO'
      Origin = 'ISADE.FINTMO.NOMTMO'
      FixedChar = True
      Size = 40
    end
    object FinTmoCODTMO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTMO'
      Origin = 'ISADE.FINTMO.CODTMO'
      Visible = False
    end
  end
  object DsTmo: TwwDataSource
    DataSet = FinTmo
    Left = 29
    Top = 669
  end
  object UpFor: TUpdateSQL
    ModifySQL.Strings = (
      'update FinFor'
      'set'
      '  NOMFOR = :NOMFOR,'
      '  APEFOR = :APEFOR,'
      '  CEPFOR = :CEPFOR,'
      '  ENDFOR = :ENDFOR,'
      '  REFFOR = :REFFOR,'
      '  TENFOR = :TENFOR,'
      '  NUMFOR = :NUMFOR,'
      '  BAIFOR = :BAIFOR,'
      '  CIDFOR = :CIDFOR,'
      '  SIGUFE = :SIGUFE,'
      '  PRTFOR = :PRTFOR,'
      '  FONFOR = :FONFOR,'
      '  PRFFOR = :PRFFOR,'
      '  FAXFOR = :FAXFOR,'
      '  CGCFOR = :CGCFOR,'
      '  INSFOR = :INSFOR,'
      '  EMAFOR = :EMAFOR,'
      '  WEBFOR = :WEBFOR,'
      '  CONPLC = :CONPLC,'
      '  SUBPLC = :SUBPLC,'
      '  CODBAN = :CODBAN,'
      '  NOMCNB = :NOMCNB,'
      '  CONFOR = :CONFOR,'
      '  CERFOR = :CERFOR,'
      '  ENRFOR = :ENRFOR,'
      '  RERFOR = :RERFOR,'
      '  TERFOR = :TERFOR,'
      '  NURFOR = :NURFOR,'
      '  BARFOR = :BARFOR,'
      '  CIRFOR = :CIRFOR,'
      '  UFERET = :UFERET,'
      '  PTRFOR = :PTRFOR,'
      '  FORFOR = :FORFOR,'
      '  PFRFOR = :PFRFOR,'
      '  FARFOR = :FARFOR,'
      '  CORFOR = :CORFOR,'
      '  CODAGB = :CODAGB,'
      '  CODCNB = :CODCNB,'
      '  QTDPFO = :QTDPFO,'
      '  SEQPFO = :SEQPFO,'
      '  FLGTRG = :FLGTRG,'
      '  CODTMO = :CODTMO,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODGFO = :CODGFO,'
      '  CODSUP = :CODSUP,'
      '  PERACR = :PERACR'
      'where'
      '  CODFOR = :OLD_CODFOR')
    InsertSQL.Strings = (
      'insert into FinFor'
      
        '  (CODFOR, NOMFOR, APEFOR, CEPFOR, ENDFOR, REFFOR, TENFOR, NUMFO' +
        'R, BAIFOR, '
      
        '   CIDFOR, SIGUFE, PRTFOR, FONFOR, PRFFOR, FAXFOR, CGCFOR, INSFO' +
        'R, EMAFOR, '
      
        '   WEBFOR, CONPLC, SUBPLC, CODBAN, NOMCNB, CONFOR, CERFOR, ENRFO' +
        'R, RERFOR, '
      
        '   TERFOR, NURFOR, BARFOR, CIRFOR, UFERET, PTRFOR, FORFOR, PFRFO' +
        'R, FARFOR, '
      
        '   CORFOR, CODAGB, CODCNB, QTDPFO, SEQPFO, FLGTRG, CODTMO, CODPF' +
        'A, TIPPFA, '
      '   CODGFO, CODSUP, PERACR)'
      'values'
      
        '  (:CODFOR, :NOMFOR, :APEFOR, :CEPFOR, :ENDFOR, :REFFOR, :TENFOR' +
        ', :NUMFOR, '
      
        '   :BAIFOR, :CIDFOR, :SIGUFE, :PRTFOR, :FONFOR, :PRFFOR, :FAXFOR' +
        ', :CGCFOR, '
      
        '   :INSFOR, :EMAFOR, :WEBFOR, :CONPLC, :SUBPLC, :CODBAN, :NOMCNB' +
        ', :CONFOR, '
      
        '   :CERFOR, :ENRFOR, :RERFOR, :TERFOR, :NURFOR, :BARFOR, :CIRFOR' +
        ', :UFERET, '
      
        '   :PTRFOR, :FORFOR, :PFRFOR, :FARFOR, :CORFOR, :CODAGB, :CODCNB' +
        ', :QTDPFO, '
      
        '   :SEQPFO, :FLGTRG, :CODTMO, :CODPFA, :TIPPFA, :CODGFO, :CODSUP' +
        ', :PERACR)')
    DeleteSQL.Strings = (
      'delete from FinFor'
      'where'
      '  CODFOR = :OLD_CODFOR')
    Left = 1
    Top = 529
  end
end
