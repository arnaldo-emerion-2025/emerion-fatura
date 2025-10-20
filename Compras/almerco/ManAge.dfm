inherited fmManAge: TfmManAge
  Left = 20
  Caption = 'Agentes'
  ClientHeight = 474
  ClientWidth = 737
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcAge: TPageControl
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
    TabWidth = 93
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
        Left = 184
        Top = 8
        Width = 548
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape6: TShape
        Left = 0
        Top = 0
        Width = 183
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
        Left = 190
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
        Top = 125
        Width = 183
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 2
        Top = 127
        Width = 123
        Height = 13
        Caption = 'Agentes selecionados'
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
        Left = 184
        Top = 133
        Width = 548
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
      object EdPsqNomAge: TdxColorEdit
        Left = 96
        Top = 45
        Width = 380
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
      object EdPsqId_CmpAge: TdxColorEdit
        Left = 96
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
        OnKeyPress = EdPsqId_CmpAgeKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqApeAge: TdxColorEdit
        Left = 242
        Top = 21
        Width = 234
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
        Top = 85
        Width = 135
        Height = 43
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
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
        Height = 55
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
        Height = 55
        Caption = ' Tipo de Busca'
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        TabOrder = 5
      end
      object Panel3: TPanel
        Left = 0
        Top = 145
        Width = 730
        Height = 278
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 8
        object grAge: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 728
          Height = 276
          Selected.Strings = (
            'ID_CMPAGE'#9'10'#9'Código'
            'APEAGE'#9'30'#9'Fantasia'
            'NOMAGE'#9'43'#9'Razão Social'
            'TELEFONE'#9'22'#9'Telefone                         '
            'TIPAGE'#9'13'#9'Tipo                  ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsAge
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
          OnDblClick = grAgeDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object rgStatus: TRadioGroup
        Left = 609
        Top = 74
        Width = 122
        Height = 55
        Caption = ' Ativos '
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'Não'
          'Todos')
        TabOrder = 6
      end
      object rgTipo: TRadioGroup
        Left = 477
        Top = 74
        Width = 128
        Height = 55
        Caption = ' Exibido Por '
        ItemIndex = 2
        Items.Strings = (
          'Interno'
          'Externo'
          'Todos')
        TabOrder = 4
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Shape9: TShape
        Left = 0
        Top = 0
        Width = 183
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 0
        Top = 73
        Width = 183
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
        Left = 184
        Top = 8
        Width = 548
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
        Left = 190
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
        Left = 184
        Top = 81
        Width = 548
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object sbPsqCep: TSpeedButton
        Left = 186
        Top = 97
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
        Top = 100
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
        Top = 124
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
        Top = 148
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
        Top = 172
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
        Top = 196
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
        Top = 220
        Width = 32
        Height = 13
        Caption = 'E-mail:'
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
        Top = 244
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
        Left = 299
        Top = 100
        Width = 97
        Height = 13
        Caption = 'Tipo de Logradouro:'
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
        Left = 637
        Top = 124
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
        Left = 640
        Top = 171
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
        Top = 172
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
        Top = 196
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
        Left = 590
        Top = 49
        Width = 24
        Height = 13
        Caption = 'Tipo:'
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
        Top = 268
        Width = 43
        Height = 13
        Caption = 'Contato:'
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
        Top = 292
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
      object EdId_CmpAge: TdxDBColorEdit
        Left = 96
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
        DataField = 'ID_CMPAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomAge: TdxDBColorEdit
        Left = 96
        Top = 45
        Width = 489
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
        DataField = 'NOMAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdApeAge: TdxDBColorEdit
        Left = 242
        Top = 21
        Width = 418
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
        DataField = 'APEAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdCepAge: TdxDBColorEdit
        Left = 96
        Top = 96
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
        OnExit = EdCepAgeExit
        CharCase = ecUpperCase
        DataField = 'CEPAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdWebAge: TdxDBColorHyperLinkEdit
        Left = 96
        Top = 240
        Width = 636
        Color = 16577773
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 19
        CharCase = ecLowerCase
        DataField = 'WEBAGE'
        DataSource = dsAge
        SingleClick = True
        StartKey = 0
        CorDeFoco = clInfoBk
      end
      object EdEmaAge: TdxDBColorEdit
        Left = 96
        Top = 216
        Width = 636
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
        TabOrder = 18
        OnDblClick = EdEmaAgeDblClick
        CharCase = ecLowerCase
        DataField = 'EMAAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdPrtAge: TdxDBColorEdit
        Left = 96
        Top = 192
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
        TabOrder = 14
        CharCase = ecUpperCase
        DataField = 'PRTAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdFonAge: TdxDBColorEdit
        Left = 152
        Top = 192
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
        TabOrder = 15
        CharCase = ecUpperCase
        DataField = 'FONAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdBaiAge: TdxDBColorEdit
        Left = 96
        Top = 168
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
        DataField = 'BAIAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdRefAge: TdxDBColorEdit
        Left = 96
        Top = 144
        Width = 636
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
        DataField = 'REFAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdEndAge: TdxDBColorEdit
        Left = 96
        Top = 120
        Width = 534
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
        DataField = 'ENDAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdTenAge: TdxDBColorEdit
        Left = 403
        Top = 96
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
        CharCase = ecUpperCase
        DataField = 'TENAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object CbNomTit: TdxDBColorLookupEdit
        Left = 503
        Top = 96
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
        TabOrder = 7
        TabStop = False
        DataField = 'TENAGE'
        DataSource = dsAge
        ListFieldName = 'NOMTIT'
        KeyFieldName = 'ABRTIT'
        ListSource = DsTit
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object EdNumAge: TdxDBColorEdit
        Left = 665
        Top = 120
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
        TabOrder = 9
        CharCase = ecUpperCase
        DataField = 'NUMAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdSigUfe: TdxDBColorLookupEdit
        Left = 665
        Top = 168
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
        TabOrder = 13
        DataField = 'SIGUFE'
        DataSource = dsAge
        ListFieldName = 'SIGUFE'
        KeyFieldName = 'SIGUFE'
        ListSource = DsUfe
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object EdCidAge: TdxDBColorEdit
        Left = 403
        Top = 168
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
        TabOrder = 12
        CharCase = ecUpperCase
        DataField = 'CIDAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdPrfAge: TdxDBColorEdit
        Left = 403
        Top = 192
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
        TabOrder = 16
        CharCase = ecUpperCase
        DataField = 'PRFAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdFaxAge: TdxDBColorEdit
        Left = 459
        Top = 192
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
        TabOrder = 17
        CharCase = ecUpperCase
        DataField = 'FAXAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdFlgAti: TdxDBCheckEdit
        Left = 712
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
        DataSource = dsAge
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
      object EdTipAge: TdxDBColorPickEdit
        Left = 621
        Top = 45
        Width = 110
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
        DataField = 'TIPAGE'
        DataSource = dsAge
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Interno'
          'Externo')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdConAge: TdxDBColorEdit
        Left = 96
        Top = 264
        Width = 360
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
        CharCase = ecUpperCase
        DataField = 'CONAGE'
        DataSource = dsAge
        CorDeFoco = clInfoBk
      end
      object EdObsPor: TdxDBColorMemo
        Left = 96
        Top = 288
        Width = 636
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
    object nvAge: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnImprime = nvAgeImprime
      BeforeSalva = nvAgeBeforeSalva
      DataSource = dsAge
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
  object UpAge: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpAge'
      'set'
      '  NOMAGE = :NOMAGE,'
      '  APEAGE = :APEAGE,'
      '  CEPAGE = :CEPAGE,'
      '  ENDAGE = :ENDAGE,'
      '  REFAGE = :REFAGE,'
      '  TENAGE = :TENAGE,'
      '  NUMAGE = :NUMAGE,'
      '  BAIAGE = :BAIAGE,'
      '  CIDAGE = :CIDAGE,'
      '  SIGUFE = :SIGUFE,'
      '  CGCAGE = :CGCAGE,'
      '  INSAGE = :INSAGE,'
      '  PRTAGE = :PRTAGE,'
      '  FONAGE = :FONAGE,'
      '  PRFAGE = :PRFAGE,'
      '  FAXAGE = :FAXAGE,'
      '  EMAAGE = :EMAAGE,'
      '  WEBAGE = :WEBAGE,'
      '  TIPAGE = :TIPAGE,'
      '  CONAGE = :CONAGE,'
      '  OBSAGE = :OBSAGE,'
      '  FLGATI = :FLGATI,'
      '  FLGINT = :FLGINT'
      'where'
      '  ID_CMPAGE = :OLD_ID_CMPAGE')
    InsertSQL.Strings = (
      'insert into CmpAge'
      '  (ID_CMPAGE, NOMAGE, APEAGE, CEPAGE, ENDAGE, REFAGE, TENAGE, '
      'NUMAGE, BAIAGE, '
      
        '   CIDAGE, SIGUFE, CGCAGE, INSAGE, PRTAGE, FONAGE, PRFAGE, FAXAG' +
        'E, '
      'EMAAGE, '
      '   WEBAGE, TIPAGE, CONAGE, OBSAGE, FLGATI, FLGINT)'
      'values'
      
        '  (:ID_CMPAGE, :NOMAGE, :APEAGE, :CEPAGE, :ENDAGE, :REFAGE, :TEN' +
        'AGE, '
      ':NUMAGE, '
      
        '   :BAIAGE, :CIDAGE, :SIGUFE, :CGCAGE, :INSAGE, :PRTAGE, :FONAGE' +
        ', :PRFAGE, '
      
        '   :FAXAGE, :EMAAGE, :WEBAGE, :TIPAGE, :CONAGE, :OBSAGE, :FLGATI' +
        ', '
      ':FLGINT)')
    DeleteSQL.Strings = (
      'delete from CmpAge'
      'where'
      '  ID_CMPAGE = :OLD_ID_CMPAGE')
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
  object CmpAge: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpAgeNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpAge.*,'
      '           FormatCgcCpf(CgcAge) as CgcCpf,'
      
        '           Endereco(TenAge,EndAge,NumAge,RefAge,BaiAge,CidAge,Si' +
        'gUfe) as Endereco,'
      
        '           TextoOcor('#39'('#39',PrtAge,'#39')'#39','#39' '#39',FonAge,'#39#39','#39#39') as Telefon' +
        'e'
      'From CmpAge'
      'Where CmpAge.FlgAti = '#39'Sim'#39
      'Order by CmpAge.Id_CmpAge')
    UpdateObject = UpAge
    ValidateWithMask = True
    Top = 476
    object CmpAgeID_CMPAGE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'ID_CMPAGE'
    end
    object CmpAgeAPEAGE: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 30
      FieldName = 'APEAGE'
    end
    object CmpAgeNOMAGE: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 43
      FieldName = 'NOMAGE'
      Size = 40
    end
    object CmpAgeTELEFONE: TStringField
      DisplayLabel = 'Telefone                         '
      DisplayWidth = 22
      FieldName = 'TELEFONE'
      FixedChar = True
      Size = 100
    end
    object CmpAgeTIPAGE: TStringField
      DisplayLabel = 'Tipo                  '
      DisplayWidth = 13
      FieldName = 'TIPAGE'
      FixedChar = True
      Size = 7
    end
    object CmpAgeCEPAGE: TStringField
      FieldName = 'CEPAGE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpAgeENDAGE: TStringField
      FieldName = 'ENDAGE'
      Visible = False
      Size = 40
    end
    object CmpAgeREFAGE: TStringField
      FieldName = 'REFAGE'
      Visible = False
    end
    object CmpAgeTENAGE: TStringField
      FieldName = 'TENAGE'
      Visible = False
      Size = 10
    end
    object CmpAgeNUMAGE: TStringField
      FieldName = 'NUMAGE'
      Visible = False
      Size = 10
    end
    object CmpAgeBAIAGE: TStringField
      FieldName = 'BAIAGE'
      Visible = False
    end
    object CmpAgeCIDAGE: TStringField
      FieldName = 'CIDAGE'
      Visible = False
    end
    object CmpAgeSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpAgeCGCAGE: TStringField
      FieldName = 'CGCAGE'
      Visible = False
      Size = 18
    end
    object CmpAgeINSAGE: TStringField
      FieldName = 'INSAGE'
      Visible = False
      Size = 18
    end
    object CmpAgePRTAGE: TStringField
      FieldName = 'PRTAGE'
      Visible = False
      EditMask = '!\(9999\);0;_'
      Size = 4
    end
    object CmpAgeFONAGE: TStringField
      FieldName = 'FONAGE'
      Visible = False
    end
    object CmpAgePRFAGE: TStringField
      FieldName = 'PRFAGE'
      Visible = False
      EditMask = '!\(9999\);0;_'
      Size = 4
    end
    object CmpAgeFAXAGE: TStringField
      FieldName = 'FAXAGE'
      Visible = False
    end
    object CmpAgeEMAAGE: TStringField
      FieldName = 'EMAAGE'
      Visible = False
      Size = 70
    end
    object CmpAgeWEBAGE: TStringField
      FieldName = 'WEBAGE'
      Visible = False
      Size = 70
    end
    object CmpAgeFLGATI: TStringField
      FieldName = 'FLGATI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpAgeFLGINT: TStringField
      FieldName = 'FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpAgeCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpAgeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      FixedChar = True
      Size = 172
    end
    object CmpAgeCONAGE: TStringField
      DisplayWidth = 40
      FieldName = 'CONAGE'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpAgeOBSAGE: TMemoField
      FieldName = 'OBSAGE'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
  end
  object dsAge: TwwDataSource
    DataSet = CmpAge
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
    Template.FileName = 'C:\_WGSYS\Emerion\Compras\Almerco\Relatorios\RManAge.rtm'
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
        Caption = 'Agentes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 14552
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
      object ppId_CmpAge: TppDBText
        UserName = 'Id_CmpAge'
        DataField = 'ID_CMPAGE'
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
      object ppNomAge: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMAGE'
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
      object ppCgcAge: TppDBText
        UserName = 'CgcAge'
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
      object ppEndAge: TppDBText
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
      object ppCepAge: TppDBText
        UserName = 'CepAge'
        DataField = 'CEPAGE'
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
      object ppFonAge: TppDBText
        UserName = 'FonAge'
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
    DataSource = dsAge
    UserName = 'pDBPipeline'
    Left = 28
    Top = 532
    object pDBPipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CMPAGE'
      FieldName = 'ID_CMPAGE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pDBPipelineppField2: TppField
      FieldAlias = 'APEAGE'
      FieldName = 'APEAGE'
      FieldLength = 20
      DisplayWidth = 30
      Position = 1
    end
    object pDBPipelineppField3: TppField
      FieldAlias = 'NOMAGE'
      FieldName = 'NOMAGE'
      FieldLength = 40
      DisplayWidth = 43
      Position = 2
    end
    object pDBPipelineppField4: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 100
      DisplayWidth = 22
      Position = 3
    end
    object pDBPipelineppField5: TppField
      FieldAlias = 'TIPAGE'
      FieldName = 'TIPAGE'
      FieldLength = 7
      DisplayWidth = 13
      Position = 4
    end
    object pDBPipelineppField6: TppField
      FieldAlias = 'CEPAGE'
      FieldName = 'CEPAGE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object pDBPipelineppField7: TppField
      FieldAlias = 'ENDAGE'
      FieldName = 'ENDAGE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 6
    end
    object pDBPipelineppField8: TppField
      FieldAlias = 'REFAGE'
      FieldName = 'REFAGE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object pDBPipelineppField9: TppField
      FieldAlias = 'TENAGE'
      FieldName = 'TENAGE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object pDBPipelineppField10: TppField
      FieldAlias = 'NUMAGE'
      FieldName = 'NUMAGE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object pDBPipelineppField11: TppField
      FieldAlias = 'BAIAGE'
      FieldName = 'BAIAGE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object pDBPipelineppField12: TppField
      FieldAlias = 'CIDAGE'
      FieldName = 'CIDAGE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object pDBPipelineppField13: TppField
      FieldAlias = 'SIGUFE'
      FieldName = 'SIGUFE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object pDBPipelineppField14: TppField
      FieldAlias = 'CGCAGE'
      FieldName = 'CGCAGE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 13
    end
    object pDBPipelineppField15: TppField
      FieldAlias = 'INSAGE'
      FieldName = 'INSAGE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 14
    end
    object pDBPipelineppField16: TppField
      FieldAlias = 'PRTAGE'
      FieldName = 'PRTAGE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 15
    end
    object pDBPipelineppField17: TppField
      FieldAlias = 'FONAGE'
      FieldName = 'FONAGE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object pDBPipelineppField18: TppField
      FieldAlias = 'PRFAGE'
      FieldName = 'PRFAGE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 17
    end
    object pDBPipelineppField19: TppField
      FieldAlias = 'FAXAGE'
      FieldName = 'FAXAGE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object pDBPipelineppField20: TppField
      FieldAlias = 'EMAAGE'
      FieldName = 'EMAAGE'
      FieldLength = 70
      DisplayWidth = 70
      Position = 19
    end
    object pDBPipelineppField21: TppField
      FieldAlias = 'WEBAGE'
      FieldName = 'WEBAGE'
      FieldLength = 70
      DisplayWidth = 70
      Position = 20
    end
    object pDBPipelineppField22: TppField
      FieldAlias = 'FLGATI'
      FieldName = 'FLGATI'
      FieldLength = 3
      DisplayWidth = 3
      Position = 21
    end
    object pDBPipelineppField23: TppField
      FieldAlias = 'FLGINT'
      FieldName = 'FLGINT'
      FieldLength = 3
      DisplayWidth = 3
      Position = 22
    end
    object pDBPipelineppField24: TppField
      FieldAlias = 'CGCCPF'
      FieldName = 'CGCCPF'
      FieldLength = 18
      DisplayWidth = 18
      Position = 23
    end
    object pDBPipelineppField25: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 172
      DisplayWidth = 172
      Position = 24
    end
    object pDBPipelineppField26: TppField
      FieldAlias = 'CONAGE'
      FieldName = 'CONAGE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 25
    end
    object pDBPipelineppField27: TppField
      FieldAlias = 'OBSAGE'
      FieldName = 'OBSAGE'
      FieldLength = 300
      DataType = dtMemo
      DisplayWidth = 10
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
  object FinGTr: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *  From FinGtr')
    ValidateWithMask = True
    Left = 75
    Top = 532
    object FinGTrCODGTR: TIntegerField
      FieldName = 'CODGTR'
      Origin = 'ISADE.FINGTR.CODGTR'
    end
    object FinGTrNOMGTR: TStringField
      FieldName = 'NOMGTR'
      Origin = 'ISADE.FINGTR.NOMGTR'
      FixedChar = True
      Size = 40
    end
  end
  object DsGTr: TwwDataSource
    DataSet = FinGTr
    Left = 103
    Top = 532
  end
end
