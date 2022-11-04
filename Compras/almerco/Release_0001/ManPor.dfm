inherited fmManPor: TfmManPor
  Left = 20
  Caption = 'Portos'
  ClientHeight = 475
  ClientWidth = 737
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPor: TPageControl
    Left = 0
    Top = 0
    Width = 742
    Height = 487
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
    TabWidth = 114
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnShow = pcPag1Show
      object Shape11: TShape
        Left = 0
        Top = 425
        Width = 732
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 228
        Top = 8
        Width = 504
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape6: TShape
        Left = 0
        Top = 0
        Width = 227
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 2
        Top = 2
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
      object Label1: TLabel
        Left = 2
        Top = 25
        Width = 37
        Height = 13
        Caption = 'Código:'
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
        Left = 2
        Top = 49
        Width = 63
        Height = 13
        Caption = 'Razão social:'
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
        Left = 237
        Top = 25
        Width = 45
        Height = 13
        Caption = 'Fantasia:'
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
      object Shape4: TShape
        Left = 0
        Top = 110
        Width = 227
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 2
        Top = 112
        Width = 113
        Height = 13
        Caption = 'Portos selecionados'
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
        Left = 228
        Top = 118
        Width = 504
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label34: TLabel
        Left = 5
        Top = 429
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
      object EdPsqNomPor: TdxColorEdit
        Left = 140
        Top = 45
        Width = 336
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
      object EdPsqId_CmpPor: TdxColorEdit
        Left = 140
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
        OnKeyPress = EdPsqId_CmpPorKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqApePor: TdxColorEdit
        Left = 286
        Top = 21
        Width = 190
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
      object Bbselecionar: TBitBtn
        Left = 340
        Top = 71
        Width = 135
        Height = 42
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = BbselecionarClick
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
        Top = 18
        Width = 128
        Height = 96
        Caption = ' Exibido Por '
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Fantasia'
          'Razão Social')
        TabOrder = 3
      end
      object rgBusca: TRadioGroup
        Left = 609
        Top = 18
        Width = 122
        Height = 43
        Caption = ' Tipo de Busca'
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        TabOrder = 4
      end
      object Panel3: TPanel
        Left = 0
        Top = 131
        Width = 731
        Height = 292
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 7
        object grPor: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 729
          Height = 290
          Selected.Strings = (
            'ID_CMPPOR'#9'8'#9'Código'
            'APEPOR'#9'21'#9'Fantasia'
            'NOMPOR'#9'42'#9'Razão Social'
            'QTDDIA'#9'10'#9'Qtde. dias p/embarque'
            'QTDPER'#9'10'#9'Qtde. dias p/desembarque ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsPor
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
          OnDblClick = grPorDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object rgStatus: TRadioGroup
        Left = 609
        Top = 61
        Width = 122
        Height = 53
        Caption = ' Ativos '
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'Não'
          'Todos')
        TabOrder = 5
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Shape9: TShape
        Left = 0
        Top = 0
        Width = 227
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 0
        Top = 73
        Width = 227
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label5: TLabel
        Left = 2
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
        Left = 228
        Top = 8
        Width = 504
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label9: TLabel
        Left = 2
        Top = 25
        Width = 37
        Height = 13
        Caption = 'Código:'
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
        Left = 2
        Top = 49
        Width = 63
        Height = 13
        Caption = 'Razão social:'
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
        Left = 237
        Top = 25
        Width = 45
        Height = 13
        Caption = 'Fantasia:'
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
        Left = 2
        Top = 75
        Width = 155
        Height = 13
        Caption = 'Endereço/Telefones/Emails'
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
      object Shape12: TShape
        Left = 228
        Top = 81
        Width = 504
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object sbPsqCep: TSpeedButton
        Left = 230
        Top = 95
        Width = 24
        Height = 21
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
        OnClick = sbPsqCepClick
      end
      object Label13: TLabel
        Left = 2
        Top = 98
        Width = 23
        Height = 13
        Caption = 'Cep:'
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
        Left = 2
        Top = 122
        Width = 49
        Height = 13
        Caption = 'Endereço:'
        Color = clBlack
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
        Left = 2
        Top = 146
        Width = 69
        Height = 13
        Caption = 'Complemento:'
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
        Left = 2
        Top = 170
        Width = 32
        Height = 13
        Caption = 'Bairro:'
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
        Left = 2
        Top = 194
        Width = 46
        Height = 13
        Caption = 'Telefone:'
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
        Left = 2
        Top = 218
        Width = 28
        Height = 13
        Caption = 'Email:'
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
        Left = 2
        Top = 242
        Width = 47
        Height = 13
        Caption = 'Web-site:'
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
      object Label15: TLabel
        Left = 300
        Top = 98
        Width = 94
        Height = 13
        Caption = 'Tipo de logradouro:'
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
        Left = 638
        Top = 122
        Width = 21
        Height = 13
        Caption = 'No.:'
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
        Left = 641
        Top = 169
        Width = 17
        Height = 13
        Caption = 'UF:'
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
        Left = 358
        Top = 170
        Width = 37
        Height = 13
        Caption = 'Cidade:'
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
        Left = 373
        Top = 194
        Width = 22
        Height = 13
        Caption = 'Fax:'
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
      object Label63: TLabel
        Left = 670
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Ativo ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 2
        Top = 266
        Width = 115
        Height = 13
        Caption = 'Qtde. dias p/embarque:'
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
        Left = 2
        Top = 290
        Width = 132
        Height = 13
        Caption = 'Qtde. dias p/desembarque:'
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
        Left = 232
        Top = 290
        Width = 64
        Height = 13
        Caption = '(Transit time)'
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
        Left = 2
        Top = 314
        Width = 67
        Height = 13
        Caption = 'Observações:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdId_CmpPor: TdxDBColorEdit
        Left = 140
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
        DataField = 'ID_CMPPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomPor: TdxDBColorEdit
        Left = 140
        Top = 45
        Width = 591
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
        CharCase = ecUpperCase
        DataField = 'NOMPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdApePor: TdxDBColorEdit
        Left = 286
        Top = 21
        Width = 362
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
        DataField = 'APEPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdCepPor: TdxDBColorEdit
        Left = 140
        Top = 94
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
        TabOrder = 4
        OnExit = EdCepPorExit
        CharCase = ecUpperCase
        DataField = 'CEPPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdWebPor: TdxDBColorHyperLinkEdit
        Left = 140
        Top = 238
        Width = 593
        Color = 16577773
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 18
        CharCase = ecLowerCase
        DataField = 'WEBPOR'
        DataSource = dsPor
        SingleClick = True
        StartKey = 0
        CorDeFoco = clInfoBk
      end
      object EdEmaPor: TdxDBColorEdit
        Left = 140
        Top = 214
        Width = 593
        Cursor = crHandPoint
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 17
        OnDblClick = EdEmaPorDblClick
        CharCase = ecLowerCase
        DataField = 'EMAPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdPrtPor: TdxDBColorEdit
        Left = 140
        Top = 190
        Width = 54
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
        CharCase = ecUpperCase
        DataField = 'PRTPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdFonPor: TdxDBColorEdit
        Left = 196
        Top = 190
        Width = 156
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
        CharCase = ecUpperCase
        DataField = 'FONPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdBaiPor: TdxDBColorEdit
        Left = 140
        Top = 166
        Width = 212
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
        CharCase = ecUpperCase
        DataField = 'BAIPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdRefPor: TdxDBColorEdit
        Left = 140
        Top = 142
        Width = 592
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
        CharCase = ecUpperCase
        DataField = 'REFPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdEndPor: TdxDBColorEdit
        Left = 140
        Top = 118
        Width = 490
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
        CharCase = ecUpperCase
        DataField = 'ENDPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdTenPor: TdxDBColorEdit
        Left = 403
        Top = 94
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
        CharCase = ecUpperCase
        DataField = 'TENPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object CbNomTit: TdxDBColorLookupEdit
        Left = 503
        Top = 94
        Width = 229
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        TabStop = False
        DataField = 'TENPOR'
        DataSource = dsPor
        ListFieldName = 'NOMTIT'
        KeyFieldName = 'ABRTIT'
        ListSource = DsTit
        LookupKeyValue = ''
        CorDeFoco = clInfoBk
      end
      object EdNumPor: TdxDBColorEdit
        Left = 665
        Top = 118
        Width = 67
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
        CharCase = ecUpperCase
        DataField = 'NUMPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdSigUfe: TdxDBColorLookupEdit
        Left = 665
        Top = 166
        Width = 52
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 12
        DataField = 'SIGUFE'
        DataSource = dsPor
        ListFieldName = 'SIGUFE'
        KeyFieldName = 'SIGUFE'
        ListSource = DsUfe
        LookupKeyValue = 'EX'
        CorDeFoco = clInfoBk
      end
      object EdCidPor: TdxDBColorEdit
        Left = 403
        Top = 166
        Width = 227
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
        CharCase = ecUpperCase
        DataField = 'CIDPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdPrfPor: TdxDBColorEdit
        Left = 403
        Top = 190
        Width = 54
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
        TabOrder = 15
        CharCase = ecUpperCase
        DataField = 'PRFPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdFaxPor: TdxDBColorEdit
        Left = 459
        Top = 190
        Width = 171
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
        CharCase = ecUpperCase
        DataField = 'FAXPOR'
        DataSource = dsPor
        CorDeFoco = clInfoBk
      end
      object EdFlgAti: TdxDBCheckEdit
        Left = 711
        Top = 22
        Width = 20
        Cursor = crHandPoint
        Style.BorderColor = clRed
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        AutoSize = False
        DataField = 'FLGATI'
        DataSource = dsPor
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        NullStyle = nsUnchecked
        Height = 18
      end
      object EdQtdDia: TdxDBColorEdit
        Left = 140
        Top = 262
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
        TabOrder = 19
        OnKeyPress = EdPsqId_CmpPorKeyPress
        Alignment = taRightJustify
        DataField = 'QTDDIA'
        DataSource = dsPor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdQtdPer: TdxDBColorEdit
        Left = 140
        Top = 286
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
        TabOrder = 20
        OnKeyPress = EdPsqId_CmpPorKeyPress
        Alignment = taRightJustify
        DataField = 'QTDPER'
        DataSource = dsPor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdObsPor: TdxDBColorMemo
        Left = 140
        Top = 310
        Width = 593
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'OBSPOR'
        DataSource = dsPor
        MaxLength = 300
        ScrollBars = ssVertical
        CorDeFoco = clInfoBk
        Height = 137
        StoredValues = 3
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
    object nvPor: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnImprime = nvPorImprime
      BeforeSalva = nvPorBeforeSalva
      DataSource = dsPor
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = False
      Salvar = False
    end
  end
  object GerUfe: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *  From GerUfe')
    ValidateWithMask = True
    Left = 75
    Top = 476
    object GerUfeSIGUFE: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      DisplayWidth = 40
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      Visible = False
      FixedChar = True
      Size = 40
    end
  end
  object UpPor: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPor'
      'set'
      '  NOMPOR = :NOMPOR,'
      '  APEPOR = :APEPOR,'
      '  CEPPOR = :CEPPOR,'
      '  ENDPOR = :ENDPOR,'
      '  REFPOR = :REFPOR,'
      '  TENPOR = :TENPOR,'
      '  NUMPOR = :NUMPOR,'
      '  BAIPOR = :BAIPOR,'
      '  CIDPOR = :CIDPOR,'
      '  SIGUFE = :SIGUFE,'
      '  CGCPOR = :CGCPOR,'
      '  INSPOR = :INSPOR,'
      '  PRTPOR = :PRTPOR,'
      '  FONPOR = :FONPOR,'
      '  PRFPOR = :PRFPOR,'
      '  FAXPOR = :FAXPOR,'
      '  EMAPOR = :EMAPOR,'
      '  WEBPOR = :WEBPOR,'
      '  QTDDIA = :QTDDIA,'
      '  QTDPER = :QTDPER,'
      '  OBSPOR = :OBSPOR,'
      '  FLGATI = :FLGATI,'
      '  FLGINT = :FLGINT'
      'where'
      '  ID_CMPPOR = :OLD_ID_CMPPOR')
    InsertSQL.Strings = (
      'insert into CmpPor'
      '  (ID_CMPPOR, NOMPOR, APEPOR, CEPPOR, ENDPOR, REFPOR, TENPOR, '
      'NUMPOR, BAIPOR, '
      
        '   CIDPOR, SIGUFE, CGCPOR, INSPOR, PRTPOR, FONPOR, PRFPOR, FAXPO' +
        'R, '
      'EMAPOR, '
      '   WEBPOR, QTDDIA, QTDPER, OBSPOR, FLGATI, FLGINT)'
      'values'
      
        '  (:ID_CMPPOR, :NOMPOR, :APEPOR, :CEPPOR, :ENDPOR, :REFPOR, :TEN' +
        'POR, '
      ':NUMPOR, '
      
        '   :BAIPOR, :CIDPOR, :SIGUFE, :CGCPOR, :INSPOR, :PRTPOR, :FONPOR' +
        ', '
      ':PRFPOR, '
      
        '   :FAXPOR, :EMAPOR, :WEBPOR, :QTDDIA, :QTDPER, :OBSPOR, :FLGATI' +
        ', '
      ':FLGINT)')
    DeleteSQL.Strings = (
      'delete from CmpPor'
      'where'
      '  ID_CMPPOR = :OLD_ID_CMPPOR')
    Left = 28
    Top = 504
  end
  object CepTit: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select Abrtit,NomTit from CepTit')
    ValidateWithMask = True
    Left = 75
    Top = 504
    object CepTitNOMTIT: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 30
      FieldName = 'NOMTIT'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CepTitABRTIT: TStringField
      DisplayLabel = 'Abreviação'
      DisplayWidth = 10
      FieldName = 'ABRTIT'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object CmpPor: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpPorNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpPor.*,'
      '           FormatCgcCpf(CgcPor) as CgcCpf,'
      
        '           Endereco(TenPor,EndPor,NumPor,RefPor,BaiPor,CidPor,Si' +
        'gUfe) as Endereco,'
      
        '           TextoOcor('#39'('#39',PrtPor,'#39')'#39','#39' '#39',FonPor,'#39#39','#39#39') as Telefon' +
        'e'
      'From CmpPor'
      'Where CmpPor.FlgAti = '#39'Sim'#39
      'Order by CmpPor.Id_CmpPor')
    UpdateObject = UpPor
    ValidateWithMask = True
    Top = 476
    object CmpPorID_CMPPOR: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'ID_CMPPOR'
    end
    object CmpPorAPEPOR: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 21
      FieldName = 'APEPOR'
      Size = 30
    end
    object CmpPorNOMPOR: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 42
      FieldName = 'NOMPOR'
      Size = 70
    end
    object CmpPorQTDDIA: TIntegerField
      DisplayLabel = 'Qtde. dias p/embarque'
      DisplayWidth = 10
      FieldName = 'QTDDIA'
    end
    object CmpPorQTDPER: TIntegerField
      DisplayLabel = 'Qtde. dias p/desembarque '
      DisplayWidth = 10
      FieldName = 'QTDPER'
    end
    object CmpPorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPorCGCCPF: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'CGCCPF'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpPorCEPPOR: TStringField
      FieldName = 'CEPPOR'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpPorENDPOR: TStringField
      FieldName = 'ENDPOR'
      Visible = False
      Size = 40
    end
    object CmpPorREFPOR: TStringField
      FieldName = 'REFPOR'
      Visible = False
    end
    object CmpPorTENPOR: TStringField
      FieldName = 'TENPOR'
      Visible = False
      Size = 10
    end
    object CmpPorNUMPOR: TStringField
      FieldName = 'NUMPOR'
      Visible = False
      Size = 10
    end
    object CmpPorBAIPOR: TStringField
      FieldName = 'BAIPOR'
      Visible = False
    end
    object CmpPorCIDPOR: TStringField
      FieldName = 'CIDPOR'
      Visible = False
    end
    object CmpPorSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPorCGCPOR: TStringField
      FieldName = 'CGCPOR'
      Visible = False
      Size = 18
    end
    object CmpPorINSPOR: TStringField
      FieldName = 'INSPOR'
      Visible = False
      Size = 18
    end
    object CmpPorPRTPOR: TStringField
      FieldName = 'PRTPOR'
      Visible = False
      EditMask = '!\(9999\);0;_'
      Size = 4
    end
    object CmpPorFONPOR: TStringField
      FieldName = 'FONPOR'
      Visible = False
    end
    object CmpPorPRFPOR: TStringField
      FieldName = 'PRFPOR'
      Visible = False
      EditMask = '!\(9999\);0;_'
      Size = 4
    end
    object CmpPorFAXPOR: TStringField
      FieldName = 'FAXPOR'
      Visible = False
    end
    object CmpPorEMAPOR: TStringField
      FieldName = 'EMAPOR'
      Visible = False
      Size = 70
    end
    object CmpPorWEBPOR: TStringField
      FieldName = 'WEBPOR'
      Visible = False
      Size = 70
    end
    object CmpPorFLGATI: TStringField
      FieldName = 'FLGATI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPorFLGINT: TStringField
      FieldName = 'FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      FixedChar = True
      Size = 172
    end
    object CmpPorOBSPOR: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSPOR'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
  end
  object dsPor: TwwDataSource
    DataSet = CmpPor
    Left = 28
    Top = 476
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Top = 504
  end
  object DsTit: TwwDataSource
    DataSet = CepTit
    Left = 103
    Top = 504
  end
  object DsUfe: TwwDataSource
    DataSet = GerUfe
    Left = 103
    Top = 476
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = pDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    Template.FileName = 'C:\_WGSYS\Emerion\Compras\Ambar\Relatorios\RManPor.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Top = 532
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Portos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Código'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 12435
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Razão Social'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 12435
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'CNPJ/CPF'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 61913
        mmTop = 12435
        mmWidth = 14252
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Endereço'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 92075
        mmTop = 12435
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cep'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 214048
        mmTop = 12435
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Telefone'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 232040
        mmTop = 12435
        mmWidth = 13229
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
        mmLeft = 269346
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label14'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 252413
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
        mmLeft = 221192
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label6'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 198967
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppId_CmpPor: TppDBText
        UserName = 'Id_CmpPor'
        DataField = 'ID_CMPPOR'
        DataPipeline = pDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 1058
        mmWidth = 10054
        BandType = 4
      end
      object ppNomPor: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMPOR'
        DataPipeline = pDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 1058
        mmWidth = 49742
        BandType = 4
      end
      object ppCgcPor: TppDBText
        UserName = 'CgcPor'
        DataField = 'CGCCPF'
        DataPipeline = pDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 61913
        mmTop = 1058
        mmWidth = 29369
        BandType = 4
      end
      object ppEndPor: TppDBText
        UserName = 'CgcCpf1'
        DataField = 'ENDERECO'
        DataPipeline = pDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 92075
        mmTop = 1058
        mmWidth = 120915
        BandType = 4
      end
      object ppCepPor: TppDBText
        UserName = 'CepPor'
        DataField = 'CEPPOR'
        DataPipeline = pDBPipeline
        DisplayFormat = '!99999\-999;0; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 214048
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
      end
      object ppFonPor: TppDBText
        UserName = 'FonPor'
        DataField = 'TELEFONE'
        DataPipeline = pDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 232040
        mmTop = 1058
        mmWidth = 37835
        BandType = 4
      end
    end
  end
  object pDBPipeline: TppDBPipeline
    DataSource = dsPor
    UserName = 'pDBPipeline'
    Left = 28
    Top = 532
    object pDBPipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CMPPOR'
      FieldName = 'ID_CMPPOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 8
      Position = 0
    end
    object pDBPipelineppField2: TppField
      FieldAlias = 'APEPOR'
      FieldName = 'APEPOR'
      FieldLength = 30
      DisplayWidth = 21
      Position = 1
    end
    object pDBPipelineppField3: TppField
      FieldAlias = 'NOMPOR'
      FieldName = 'NOMPOR'
      FieldLength = 70
      DisplayWidth = 42
      Position = 2
    end
    object pDBPipelineppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDDIA'
      FieldName = 'QTDDIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pDBPipelineppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDPER'
      FieldName = 'QTDPER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pDBPipelineppField6: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 100
      DisplayWidth = 15
      Position = 5
    end
    object pDBPipelineppField7: TppField
      FieldAlias = 'CGCCPF'
      FieldName = 'CGCCPF'
      FieldLength = 18
      DisplayWidth = 18
      Position = 6
    end
    object pDBPipelineppField8: TppField
      FieldAlias = 'CEPPOR'
      FieldName = 'CEPPOR'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object pDBPipelineppField9: TppField
      FieldAlias = 'ENDPOR'
      FieldName = 'ENDPOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object pDBPipelineppField10: TppField
      FieldAlias = 'REFPOR'
      FieldName = 'REFPOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object pDBPipelineppField11: TppField
      FieldAlias = 'TENPOR'
      FieldName = 'TENPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object pDBPipelineppField12: TppField
      FieldAlias = 'NUMPOR'
      FieldName = 'NUMPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object pDBPipelineppField13: TppField
      FieldAlias = 'BAIPOR'
      FieldName = 'BAIPOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object pDBPipelineppField14: TppField
      FieldAlias = 'CIDPOR'
      FieldName = 'CIDPOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object pDBPipelineppField15: TppField
      FieldAlias = 'SIGUFE'
      FieldName = 'SIGUFE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object pDBPipelineppField16: TppField
      FieldAlias = 'CGCPOR'
      FieldName = 'CGCPOR'
      FieldLength = 18
      DisplayWidth = 18
      Position = 15
    end
    object pDBPipelineppField17: TppField
      FieldAlias = 'INSPOR'
      FieldName = 'INSPOR'
      FieldLength = 18
      DisplayWidth = 18
      Position = 16
    end
    object pDBPipelineppField18: TppField
      FieldAlias = 'PRTPOR'
      FieldName = 'PRTPOR'
      FieldLength = 4
      DisplayWidth = 4
      Position = 17
    end
    object pDBPipelineppField19: TppField
      FieldAlias = 'FONPOR'
      FieldName = 'FONPOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object pDBPipelineppField20: TppField
      FieldAlias = 'PRFPOR'
      FieldName = 'PRFPOR'
      FieldLength = 4
      DisplayWidth = 4
      Position = 19
    end
    object pDBPipelineppField21: TppField
      FieldAlias = 'FAXPOR'
      FieldName = 'FAXPOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object pDBPipelineppField22: TppField
      FieldAlias = 'EMAPOR'
      FieldName = 'EMAPOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 21
    end
    object pDBPipelineppField23: TppField
      FieldAlias = 'WEBPOR'
      FieldName = 'WEBPOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 22
    end
    object pDBPipelineppField24: TppField
      FieldAlias = 'FLGATI'
      FieldName = 'FLGATI'
      FieldLength = 3
      DisplayWidth = 3
      Position = 23
    end
    object pDBPipelineppField25: TppField
      FieldAlias = 'FLGINT'
      FieldName = 'FLGINT'
      FieldLength = 3
      DisplayWidth = 3
      Position = 24
    end
    object pDBPipelineppField26: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 172
      DisplayWidth = 172
      Position = 25
    end
  end
end
