inherited fmManTlc: TfmManTlc
  Left = 43
  Caption = 'Tipos de lançamentos'
  ClientHeight = 474
  ClientWidth = 652
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcTlc: TPageControl
    Left = -2
    Top = 0
    Width = 659
    Height = 484
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 115
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape11: TShape
        Left = 0
        Top = 424
        Width = 649
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 231
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 0
        Top = 136
        Width = 231
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 4
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
      object Shape4: TShape
        Left = 232
        Top = 8
        Width = 417
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label10: TLabel
        Left = 3
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
        Left = 3
        Top = 49
        Width = 50
        Height = 13
        Caption = 'Descrição:'
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
      object Label3: TLabel
        Left = 4
        Top = 138
        Width = 106
        Height = 13
        Caption = 'Tipos selecionados'
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
      object Shape2: TShape
        Left = 232
        Top = 144
        Width = 417
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label12: TLabel
        Left = 4
        Top = 428
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
      object Label6: TLabel
        Left = 3
        Top = 73
        Width = 69
        Height = 13
        Caption = 'Agrupamento:'
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
      object BbPsqAgc: TSpeedButton
        Left = 233
        Top = 70
        Width = 25
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
        OnClick = BbPsqAgcClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 156
        Width = 649
        Height = 266
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 7
        object grTlc: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 647
          Height = 264
          Selected.Strings = (
            'ID_CMPTLC'#9'10'#9'Código'
            'NOMTLC'#9'45'#9'Descrição'
            'TIPTLC'#9'7'#9'Tipo de lançamento'
            
              'NOMMLC'#9'31'#9'Grupo                                                 ' +
              '   '#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsCmpTlc
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          OnDblClick = grTlcDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomTlc: TdxColorEdit
        Left = 136
        Top = 45
        Width = 305
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
      object EdPsqId_CmpTlc: TdxColorEdit
        Left = 136
        Top = 21
        Width = 96
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
        OnKeyPress = EdPsqId_CmpTlcKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object Bbselecionar: TBitBtn
        Left = 272
        Top = 94
        Width = 167
        Height = 45
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
        Left = 442
        Top = 11
        Width = 109
        Height = 129
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descrição'
          'Agrupamento')
        ParentFont = False
        TabOrder = 5
      end
      object rgBusca: TRadioGroup
        Left = 553
        Top = 11
        Width = 96
        Height = 129
        Caption = ' Tipo de Busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 6
      end
      object EdPsqId_CmpMlc: TdxColorEdit
        Left = 136
        Top = 69
        Width = 96
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
        OnKeyPress = EdPsqId_CmpTlcKeyPress
        CharCase = ecUpperCase
        OnChange = EdPsqId_CmpMlcChange
        CorDeFoco = clInfoBk
      end
      object EdPsqNomMlc: TdxColorEdit
        Left = 258
        Top = 69
        Width = 183
        Color = 16577773
        Enabled = False
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
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      OnShow = pcPag2Show
      object Shape6: TShape
        Left = 232
        Top = 8
        Width = 416
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 231
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label7: TLabel
        Left = 4
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
      object Label8: TLabel
        Left = 3
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
      object Label11: TLabel
        Left = 3
        Top = 49
        Width = 50
        Height = 13
        Caption = 'Descrição:'
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
        Left = 3
        Top = 74
        Width = 69
        Height = 13
        Caption = 'Agrupamento:'
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
        Left = 3
        Top = 97
        Width = 125
        Height = 13
        Caption = '(%) Percentual praticado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 3
        Top = 121
        Width = 99
        Height = 13
        Caption = '(%) Base de calculo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 259
        Top = 121
        Width = 159
        Height = 13
        Caption = '(%) Redução de base de calculo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 3
        Top = 145
        Width = 90
        Height = 13
        Caption = 'Tipo de operação :'
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
      object EdNomTlc: TdxDBColorEdit
        Left = 136
        Top = 45
        Width = 513
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
        DataField = 'NOMTLC'
        DataSource = dsCmpTlc
        CorDeFoco = clInfoBk
      end
      object EdId_CmpTlc: TdxDBColorEdit
        Left = 136
        Top = 21
        Width = 96
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
        OnKeyPress = EdPsqId_CmpTlcKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'ID_CMPTLC'
        DataSource = dsCmpTlc
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdId_CmpMlc: TdxDBColorEdit
        Left = 136
        Top = 69
        Width = 96
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
        OnKeyPress = EdPsqId_CmpTlcKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'ID_CMPMLC'
        DataSource = dsCmpTlc
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomMlc: TdxDBColorLookupEdit
        Left = 258
        Top = 69
        Width = 391
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
        TabOrder = 3
        TabStop = False
        DataField = 'ID_CMPMLC'
        DataSource = dsCmpTlc
        DropDownWidth = 400
        ListFieldName = 'NOMMLC'
        KeyFieldName = 'ID_CMPMLC'
        ListSource = DsCmpMlc
        LookupKeyValue = 1
        CorDeFoco = clInfoBk
      end
      object EdAliTlc: TdxDBColorCurrencyEdit
        Left = 136
        Top = 93
        Width = 96
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
        DataField = 'ALITLC'
        DataSource = dsCmpTlc
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 16
      end
      object EdBasTlc: TdxDBColorCurrencyEdit
        Left = 136
        Top = 117
        Width = 96
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
        DataField = 'BASTLC'
        DataSource = dsCmpTlc
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdRedTlc: TdxDBColorCurrencyEdit
        Left = 423
        Top = 117
        Width = 96
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
        DataField = 'REDTLC'
        DataSource = dsCmpTlc
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdTipTcl: TdxDBColorPickEdit
        Left = 136
        Top = 141
        Width = 96
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
        DataField = 'TIPTLC'
        DataSource = dsCmpTlc
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Debito'
          'Credito')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvTlc: ThDBNavigator
    Left = 283
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvTlcImprime
    DataSource = dsCmpTlc
    BaseAtualizar = 'FinCenFinAgc'
    UsaAppend = True
    Salvar = False
  end
  object CmpTlc: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpTlcNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpTlc.*,'
      '           CmpMlc.NomMlc'
      
        'From CmpTlc LEFT JOIN CmpMlc ON (CmpTlc.Id_CmpMlc = CmpMlc.Id_Cm' +
        'pMlc)'
      'Order by Id_CmpTlc')
    UpdateObject = UpCmpTlc
    ValidateWithMask = True
    Left = 2
    Top = 476
    object CmpTlcID_CMPTLC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'ID_CMPTLC'
    end
    object CmpTlcNOMTLC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 45
      FieldName = 'NOMTLC'
      Size = 70
    end
    object CmpTlcTIPTLC: TStringField
      DisplayLabel = 'Tipo de lançamento'
      DisplayWidth = 7
      FieldName = 'TIPTLC'
      Size = 7
    end
    object CmpTlcNOMMLC: TStringField
      DisplayLabel = 'Grupo                                                    '
      DisplayWidth = 31
      FieldName = 'NOMMLC'
      Size = 70
    end
    object CmpTlcID_CMPMLC: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPMLC'
      Visible = False
    end
    object CmpTlcALITLC: TFloatField
      DisplayWidth = 10
      FieldName = 'ALITLC'
      Visible = False
      DisplayFormat = '##0.00'
    end
    object CmpTlcBASTLC: TFloatField
      DisplayWidth = 10
      FieldName = 'BASTLC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpTlcREDTLC: TFloatField
      DisplayWidth = 10
      FieldName = 'REDTLC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object CmpTlcABRTLC: TStringField
      DisplayWidth = 10
      FieldName = 'ABRTLC'
      Visible = False
      Size = 10
    end
  end
  object dsCmpTlc: TwwDataSource
    AutoEdit = False
    DataSet = CmpTlc
    Left = 30
    Top = 476
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 30
    Top = 504
  end
  object UpCmpTlc: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpTlc'
      'set'
      '  NOMTLC = :NOMTLC,'
      '  TIPTLC = :TIPTLC,'
      '  ID_CMPMLC = :ID_CMPMLC,'
      '  ALITLC = :ALITLC,'
      '  BASTLC = :BASTLC,'
      '  REDTLC = :REDTLC,'
      '  ABRTLC = :ABRTLC'
      'where'
      '  ID_CMPTLC = :OLD_ID_CMPTLC')
    InsertSQL.Strings = (
      'insert into CmpTlc'
      '(ID_CMPTLC, NOMTLC, TIPTLC, ID_CMPMLC, ALITLC, BASTLC, REDTLC, '
      'ABRTLC)'
      'values'
      
        '(:ID_CMPTLC, :NOMTLC, :TIPTLC, :ID_CMPMLC, :ALITLC, :BASTLC, :RE' +
        'DTLC, '
      ':ABRTLC)')
    DeleteSQL.Strings = (
      'delete from CmpTlc'
      'where'
      '  ID_CMPTLC = :OLD_ID_CMPTLC')
    Left = 2
    Top = 504
  end
  object CmpMlc: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = CmpTlcNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * from CmpMlc')
    ValidateWithMask = True
    Left = 64
    Top = 476
    object CmpMlcID_CMPMLC: TIntegerField
      FieldName = 'ID_CMPMLC'
      Origin = 'ISADE.CMPMLC.ID_CMPMLC'
    end
    object CmpMlcNOMMLC: TStringField
      FieldName = 'NOMMLC'
      Origin = 'ISADE.CMPMLC.NOMMLC'
      Size = 70
    end
  end
  object quPsq: TwwQuery
    Tag = 1
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpTlc.*,'
      '           CmpMlc.NomMlc'
      
        'From CmpTlc LEFT JOIN CmpMlc ON (CmpTlc.Id_CmpMlc = CmpMlc.Id_Cm' +
        'pMlc)'
      'Where CmpTlc.Id_CmpTlc = :Id_CmpTlc'
      'Order by CmpTlc.Id_CmpTlc')
    ValidateWithMask = True
    Left = 64
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpTlc'
        ParamType = ptInput
      end>
    object quPsqID_CMPTLC: TIntegerField
      FieldName = 'ID_CMPTLC'
    end
    object quPsqNOMTLC: TStringField
      FieldName = 'NOMTLC'
      Size = 70
    end
    object quPsqID_CMPMLC: TIntegerField
      FieldName = 'ID_CMPMLC'
    end
    object quPsqNOMMLC: TStringField
      FieldName = 'NOMMLC'
      Size = 70
    end
    object quPsqTIPTLC: TStringField
      FieldName = 'TIPTLC'
      Size = 7
    end
    object quPsqALITLC: TFloatField
      FieldName = 'ALITLC'
      DisplayFormat = '###,###,##0.00'
    end
    object quPsqBASTLC: TFloatField
      FieldName = 'BASTLC'
      DisplayFormat = '###,###,##0.00'
    end
    object quPsqREDTLC: TFloatField
      FieldName = 'REDTLC'
      DisplayFormat = '###,###,##0.00'
    end
    object quPsqABRTLC: TStringField
      FieldName = 'ABRTLC'
      Size = 10
    end
  end
  object dsPsq: TwwDataSource
    DataSet = quPsq
    Left = 92
    Top = 504
  end
  object DsCmpMlc: TwwDataSource
    AutoEdit = False
    DataSet = CmpMlc
    Left = 92
    Top = 476
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 270000
    Template.FileName = 'C:\_WGSYS\Emerion\Compras\Almerco\Relatorios\RManTlc.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 2
    Top = 532
    Version = '5.0'
    mmColumnWidth = 197300
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Tipos de lançamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 36777
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
        mmTop = 14023
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descrição'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 14023
        mmWidth = 14552
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
        mmLeft = 254530
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label14'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 237596
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
        mmLeft = 206375
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
        mmHeight = 3440
        mmLeft = 184150
        mmTop = 1323
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Alignment = taRightJustify
        Caption = '(%) Percentual praticado'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 100013
        mmTop = 14023
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taRightJustify
        Caption = '(%) Base de calculo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 14023
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label3'
        Alignment = taRightJustify
        Caption = '  (%) Redução'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 169334
        mmTop = 14023
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Agrupamento'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 191559
        mmTop = 14023
        mmWidth = 20638
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppId_CmpMlc: TppDBText
        UserName = 'Id_CmpTlc'
        DataField = 'ID_CMPTLC'
        DataPipeline = ppDBPipeline
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
      object ppNomTlc: TppDBText
        UserName = 'ppNomTlc'
        DataField = 'NOMTLC'
        DataPipeline = ppDBPipeline
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
        mmWidth = 87313
        BandType = 4
      end
      object ppAliTlc: TppDBText
        UserName = 'Id_CmpTlc1'
        Alignment = taRightJustify
        DataField = 'ALITLC'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 100013
        mmTop = 1058
        mmWidth = 38100
        BandType = 4
      end
      object ppBasTlc: TppDBText
        UserName = 'BasTlc'
        Alignment = taRightJustify
        DataField = 'BASTLC'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 1058
        mmWidth = 29633
        BandType = 4
      end
      object ppRedTlc: TppDBText
        UserName = 'BasTlc1'
        Alignment = taRightJustify
        DataField = 'REDTLC'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 169334
        mmTop = 1058
        mmWidth = 21431
        BandType = 4
      end
      object ppNomMlc: TppDBText
        UserName = 'ppNomTlc1'
        DataField = 'NOMMLC'
        DataPipeline = ppDBPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 191559
        mmTop = 1058
        mmWidth = 64823
        BandType = 4
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = dsPsq
    UserName = 'DBPipeline'
    Left = 30
    Top = 532
    object ppDBPipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CMPTLC'
      FieldName = 'ID_CMPTLC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipelineppField2: TppField
      FieldAlias = 'NOMTLC'
      FieldName = 'NOMTLC'
      FieldLength = 70
      DisplayWidth = 70
      Position = 1
    end
    object ppDBPipelineppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CMPMLC'
      FieldName = 'ID_CMPMLC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipelineppField4: TppField
      FieldAlias = 'NOMMLC'
      FieldName = 'NOMMLC'
      FieldLength = 70
      DisplayWidth = 70
      Position = 3
    end
    object ppDBPipelineppField5: TppField
      FieldAlias = 'TIPTLC'
      FieldName = 'TIPTLC'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppDBPipelineppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALITLC'
      FieldName = 'ALITLC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipelineppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASTLC'
      FieldName = 'BASTLC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipelineppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDTLC'
      FieldName = 'REDTLC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipelineppField9: TppField
      FieldAlias = 'ABRTLC'
      FieldName = 'ABRTLC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
  end
end
