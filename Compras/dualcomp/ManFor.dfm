inherited fmManFor: TfmManFor
  Left = 20
  Caption = 'Fornecedores'
  ClientHeight = 471
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
        Top = 109
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 4
        Top = 111
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
        Top = 117
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
      object Bbselecionar: TBitBtn
        Left = 313
        Top = 70
        Width = 162
        Height = 43
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
        Top = 17
        Width = 128
        Height = 96
        Caption = ' Exibido Por '
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Fantasia'
          'Razão Social')
        TabOrder = 4
      end
      object rgBusca: TRadioGroup
        Left = 609
        Top = 17
        Width = 122
        Height = 96
        Caption = ' Tipo de Busca'
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        TabOrder = 5
      end
      object Panel3: TPanel
        Left = 0
        Top = 130
        Width = 732
        Height = 289
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 6
        object grFor: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 730
          Height = 287
          Selected.Strings = (
            'CODFOR'#9'9'#9'Código'
            'NOMFOR'#9'46'#9'Razão Social'
            'APEFOR'#9'28'#9'Apelido'
            'PRTFOR'#9'7'#9'Prefixo'
            'FONFOR'#9'25'#9'Telefone                                   ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
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
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Shape15: TShape
        Left = 0
        Top = 189
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 0
        Top = 283
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
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
      object Label8: TLabel
        Left = 0
        Top = 73
        Width = 44
        Height = 13
        Caption = 'C.N.P.J :'
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
      object Label12: TLabel
        Left = 320
        Top = 73
        Width = 94
        Height = 13
        Caption = 'Inscrição Estadual :'
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
        Left = 5
        Top = 285
        Width = 94
        Height = 13
        Caption = 'Email / Web-Site'
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
        Left = 189
        Top = 292
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label24: TLabel
        Left = 0
        Top = 308
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
        Left = 0
        Top = 332
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
      object Label27: TLabel
        Left = 0
        Top = 144
        Width = 36
        Height = 13
        Caption = 'Conta :'
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
        Left = 0
        Top = 168
        Width = 58
        Height = 13
        Caption = 'Sub-Conta :'
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
      object Shape13: TShape
        Left = 0
        Top = 119
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label26: TLabel
        Left = 5
        Top = 121
        Width = 90
        Height = 13
        Caption = 'Plano de Contas'
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
      object Shape14: TShape
        Left = 189
        Top = 127
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label29: TLabel
        Left = 5
        Top = 191
        Width = 130
        Height = 13
        Caption = 'Informações Bancárias'
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
      object Label33: TLabel
        Left = 211
        Top = 261
        Width = 60
        Height = 13
        Caption = 'Favorecido :'
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
        Left = 0
        Top = 261
        Width = 71
        Height = 13
        Caption = 'No. da Conta :'
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
        Left = 0
        Top = 237
        Width = 45
        Height = 13
        Caption = 'Agência :'
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
        Left = 0
        Top = 214
        Width = 36
        Height = 13
        Caption = 'Banco :'
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
      object Shape16: TShape
        Left = 189
        Top = 197
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label16: TLabel
        Left = 0
        Top = 356
        Width = 58
        Height = 13
        Caption = 'Supervisor :'
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
        Left = 0
        Top = 97
        Width = 27
        Height = 13
        Caption = 'Tipo :'
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
      object EdCodFor: TdxDBColorEdit
        Left = 101
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
      object EdCgcFor: TdxDBColorEdit
        Left = 101
        Top = 69
        Width = 139
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
        OnExit = EdCgcForExit
        CharCase = ecUpperCase
        DataField = 'CGCFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdNomFor: TdxDBColorEdit
        Left = 101
        Top = 45
        Width = 632
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
        DataField = 'NOMFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdApeFor: TdxDBColorEdit
        Left = 257
        Top = 21
        Width = 476
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
        DataField = 'APEFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdInsFor: TdxDBColorEdit
        Left = 418
        Top = 69
        Width = 139
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
        CharCase = ecUpperCase
        DataField = 'INSFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdEmaFor: TdxDBColorEdit
        Left = 101
        Top = 304
        Width = 632
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
        TabOrder = 16
        OnDblClick = EdEmaForDblClick
        CharCase = ecLowerCase
        DataField = 'EMAFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdWebFor: TdxDBColorHyperLinkEdit
        Left = 101
        Top = 328
        Width = 632
        Color = 16577773
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 17
        CharCase = ecLowerCase
        DataField = 'WEBFOR'
        DataSource = dsFor
        SingleClick = True
        StartKey = 0
        CorDeFoco = clInfoBk
      end
      object EdConPlc: TdxDBColorEdit
        Left = 101
        Top = 140
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
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        DataField = 'CONPLC'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object CbNomPlc: TdxDBColorLookupEdit
        Left = 211
        Top = 140
        Width = 522
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
        TabOrder = 8
        TabStop = False
        DataField = 'CONPLC'
        DataSource = dsFor
        ListFieldName = 'NOMPLC;CONPLC'
        KeyFieldName = 'CONPLC'
        ListSource = DsPlc
        LookupKeyValue = 100
        CorDeFoco = clInfoBk
      end
      object CbNomSub: TdxDBColorLookupEdit
        Left = 211
        Top = 164
        Width = 522
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
        TabOrder = 10
        TabStop = False
        DataField = 'SUBPLC'
        DataSource = dsFor
        ListFieldName = 'NOMSUB'
        KeyFieldName = 'SUBPLC'
        ListSource = DsSub
        LookupKeyValue = 1
        CorDeFoco = clInfoBk
      end
      object CbNomBan: TdxDBColorLookupEdit
        Left = 211
        Top = 210
        Width = 522
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
        TabStop = False
        DataField = 'CODBAN'
        DataSource = dsFor
        ListFieldName = 'NOMBAN'
        KeyFieldName = 'CODBAN'
        ListSource = DsBan
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object EdCodBan: TdxDBColorEdit
        Left = 101
        Top = 210
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
        TabOrder = 11
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        DataField = 'CODBAN'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCodAgb: TdxDBColorEdit
        Left = 101
        Top = 233
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
        TabOrder = 13
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODAGB'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodCnb: TdxDBColorEdit
        Left = 101
        Top = 257
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
        TabOrder = 14
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODCNB'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomCnb: TdxDBColorEdit
        Left = 275
        Top = 257
        Width = 458
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
        DataField = 'NOMCNB'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdSubPlc: TdxDBColorEdit
        Left = 101
        Top = 164
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
        TabOrder = 9
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        DataField = 'SUBPLC'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCodSup: TdxDBColorEdit
        Left = 101
        Top = 352
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
        TabOrder = 18
        OnKeyPress = EdPsqCodForKeyPress
        CharCase = ecUpperCase
        DataField = 'CODSUP'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object CbNomSup: TdxDBColorLookupEdit
        Left = 211
        Top = 352
        Width = 522
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
        TabOrder = 19
        TabStop = False
        DataField = 'CODSUP'
        DataSource = dsFor
        ListFieldName = 'LOGUSU;CODUSU'
        KeyFieldName = 'CODUSU'
        ListSource = DsUsu
        LookupKeyValue = 96
        CorDeFoco = clInfoBk
      end
      object EdCodTFo: TdxDBColorEdit
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
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODTFO'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomTFo: TdxDBColorLookupEdit
        Left = 211
        Top = 93
        Width = 522
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
        DataField = 'CODTFO'
        DataSource = dsFor
        DropDownWidth = 400
        ListFieldName = 'NOMTFO'
        KeyFieldName = 'CODTFO'
        ListSource = DsTFo
        LookupKeyValue = 1
        CorDeFoco = clInfoBk
      end
    end
    object pcPag3: TTabSheet
      Caption = '&Endereços'
      ImageIndex = 2
      OnShow = pcPag3Show
      object Shape18: TShape
        Left = 0
        Top = 238
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 119
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label36: TLabel
        Left = 4
        Top = 2
        Width = 103
        Height = 13
        Caption = 'Endereço Principal'
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
      object Label37: TLabel
        Left = 0
        Top = 25
        Width = 26
        Height = 13
        Caption = 'Cep :'
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
        Left = 0
        Top = 49
        Width = 52
        Height = 13
        Caption = 'Endereço :'
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
      object Label45: TLabel
        Left = 0
        Top = 73
        Width = 72
        Height = 13
        Caption = 'Complemento :'
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
        Top = 97
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
      object sbPsqCep1: TSpeedButton
        Left = 163
        Top = 22
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
        OnClick = sbPsqCep1Click
      end
      object Shape3: TShape
        Left = 189
        Top = 7
        Width = 542
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label63: TLabel
        Left = 228
        Top = 25
        Width = 100
        Height = 13
        Caption = 'Tipo de Logradouro :'
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
      object Label85: TLabel
        Left = 635
        Top = 49
        Width = 24
        Height = 13
        Caption = 'No. :'
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
      object Label84: TLabel
        Left = 635
        Top = 72
        Width = 20
        Height = 13
        Caption = 'UF :'
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
      object Label83: TLabel
        Left = 463
        Top = 73
        Width = 40
        Height = 13
        Caption = 'Cidade :'
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
      object Label82: TLabel
        Left = 229
        Top = 73
        Width = 35
        Height = 13
        Caption = 'Bairro :'
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
        Left = 229
        Top = 97
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
        Left = 463
        Top = 97
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
      object Label42: TLabel
        Left = 4
        Top = 121
        Width = 107
        Height = 13
        Caption = 'Endereço de Retira'
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
      object Label43: TLabel
        Left = 0
        Top = 144
        Width = 26
        Height = 13
        Caption = 'Cep :'
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
        Left = 0
        Top = 168
        Width = 52
        Height = 13
        Caption = 'Endereço :'
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
      object Label46: TLabel
        Left = 0
        Top = 192
        Width = 72
        Height = 13
        Caption = 'Complemento :'
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
      object Label47: TLabel
        Left = 0
        Top = 216
        Width = 49
        Height = 13
        Caption = 'Telefone :'
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
      object sbPsqCep2: TSpeedButton
        Left = 163
        Top = 141
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
        OnClick = sbPsqCep2Click
      end
      object Label48: TLabel
        Left = 229
        Top = 216
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
      object Label49: TLabel
        Left = 229
        Top = 192
        Width = 35
        Height = 13
        Caption = 'Bairro :'
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
      object Label50: TLabel
        Left = 228
        Top = 144
        Width = 100
        Height = 13
        Caption = 'Tipo de Logradouro :'
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
      object Label51: TLabel
        Left = 463
        Top = 193
        Width = 40
        Height = 13
        Caption = 'Cidade :'
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
      object Label52: TLabel
        Left = 463
        Top = 216
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
      object Label53: TLabel
        Left = 635
        Top = 192
        Width = 20
        Height = 13
        Caption = 'UF :'
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
      object Label54: TLabel
        Left = 635
        Top = 168
        Width = 24
        Height = 13
        Caption = 'No. :'
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
      object Shape17: TShape
        Left = 189
        Top = 127
        Width = 542
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label10: TLabel
        Left = 5
        Top = 240
        Width = 113
        Height = 13
        Caption = 'Outras Informações'
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
      object Shape19: TShape
        Left = 189
        Top = 246
        Width = 543
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label13: TLabel
        Left = 0
        Top = 287
        Width = 39
        Height = 13
        Caption = 'Moeda :'
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
      object Label108: TLabel
        Left = 0
        Top = 313
        Width = 79
        Height = 13
        Caption = 'Padrão de Fat. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 0
        Top = 263
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
      object EdPrtFor: TdxDBColorEdit
        Left = 99
        Top = 93
        Width = 40
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
        DataField = 'PRTFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdRefFor: TdxDBColorEdit
        Left = 99
        Top = 69
        Width = 128
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
        DataField = 'REFFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdEndFor: TdxDBColorEdit
        Left = 99
        Top = 45
        Width = 531
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
        DataField = 'ENDFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCepFor: TdxDBColorEdit
        Left = 99
        Top = 21
        Width = 63
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
        OnExit = EdCepForExit
        CharCase = ecUpperCase
        DataField = 'CEPFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdTenFor: TdxDBColorEdit
        Left = 332
        Top = 21
        Width = 128
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
        DataField = 'TENFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object CbNomTit1: TdxDBColorLookupEdit
        Left = 461
        Top = 21
        Width = 271
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
        TabOrder = 2
        TabStop = False
        DataField = 'TENFOR'
        DataSource = dsFor
        ListFieldName = 'NOMTIT;ABRTIT'
        KeyFieldName = 'ABRTIT'
        ListSource = DsTit
        LookupKeyValue = 'AL'
        CorDeFoco = clInfoBk
      end
      object EdNumFor: TdxDBColorEdit
        Left = 665
        Top = 45
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
        TabOrder = 4
        CharCase = ecUpperCase
        DataField = 'NUMFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdSigUfe: TdxDBColorPickEdit
        Left = 665
        Top = 69
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
        TabOrder = 8
        DataField = 'SIGUFE'
        DataSource = dsFor
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
          'TO'
          'EX')
        CorDeFoco = clInfoBk
      end
      object EdCidFor: TdxDBColorEdit
        Left = 514
        Top = 69
        Width = 116
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
        DataField = 'CIDFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdBaiFor: TdxDBColorEdit
        Left = 332
        Top = 69
        Width = 128
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
        DataField = 'BAIFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdFonFor: TdxDBColorEdit
        Left = 139
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
        TabOrder = 10
        CharCase = ecUpperCase
        DataField = 'FONFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdPrfFor: TdxDBColorEdit
        Left = 332
        Top = 93
        Width = 40
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
        DataField = 'PRFFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdFaxFor: TdxDBColorEdit
        Left = 372
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
        TabOrder = 12
        CharCase = ecUpperCase
        DataField = 'FAXFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdConFor: TdxDBColorEdit
        Left = 514
        Top = 93
        Width = 218
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
        DataField = 'CONFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdPtrFor: TdxDBColorEdit
        Left = 99
        Top = 212
        Width = 40
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
        CharCase = ecUpperCase
        DataField = 'PTRFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdRerFor: TdxDBColorEdit
        Left = 99
        Top = 188
        Width = 128
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
        CharCase = ecUpperCase
        DataField = 'RERFOR'
        DataSource = dsFor
        MaxLength = 40
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdEnrFor: TdxDBColorEdit
        Left = 99
        Top = 164
        Width = 531
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
        DataField = 'ENRFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCerFor: TdxDBColorEdit
        Left = 99
        Top = 140
        Width = 63
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
        OnExit = EdCerForExit
        CharCase = ecUpperCase
        DataField = 'CERFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdForFor: TdxDBColorEdit
        Left = 139
        Top = 212
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
        TabOrder = 24
        CharCase = ecUpperCase
        DataField = 'FORFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdTerFor: TdxDBColorEdit
        Left = 332
        Top = 140
        Width = 128
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
        DataField = 'TERFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object CbNomTit2: TdxDBColorLookupEdit
        Left = 461
        Top = 140
        Width = 271
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
        TabOrder = 16
        TabStop = False
        DataField = 'TERFOR'
        DataSource = dsFor
        ListFieldName = 'NOMTIT;ABRTIT'
        KeyFieldName = 'ABRTIT'
        ListSource = DsTit
        LookupKeyValue = 'AL'
        CorDeFoco = clInfoBk
      end
      object EdFarFor: TdxDBColorEdit
        Left = 372
        Top = 212
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
        TabOrder = 26
        CharCase = ecUpperCase
        DataField = 'FARFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdPfrFor: TdxDBColorEdit
        Left = 332
        Top = 212
        Width = 40
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
        TabOrder = 25
        CharCase = ecUpperCase
        DataField = 'PFRFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdBarFor: TdxDBColorEdit
        Left = 332
        Top = 188
        Width = 128
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
        DataField = 'BARFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCirFor: TdxDBColorEdit
        Left = 514
        Top = 188
        Width = 116
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
        CharCase = ecUpperCase
        DataField = 'CIRFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCorFor: TdxDBColorEdit
        Left = 514
        Top = 212
        Width = 218
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
        TabOrder = 27
        CharCase = ecUpperCase
        DataField = 'CORFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdUfeRet: TdxDBColorPickEdit
        Left = 665
        Top = 188
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
        TabOrder = 22
        DataField = 'UFERET'
        DataSource = dsFor
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
          'TO'
          'EX')
        CorDeFoco = clInfoBk
      end
      object EdNurFor: TdxDBColorEdit
        Left = 665
        Top = 164
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
        TabOrder = 18
        CharCase = ecUpperCase
        DataField = 'NURFOR'
        DataSource = dsFor
        CorDeFoco = clInfoBk
      end
      object EdCodTmo: TdxDBColorEdit
        Left = 101
        Top = 283
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
        TabOrder = 30
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODTMO'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodPfa: TdxDBColorEdit
        Left = 101
        Top = 307
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
        TabOrder = 32
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODPFA'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomPfa: TdxDBColorLookupEdit
        Left = 211
        Top = 307
        Width = 522
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
        TabOrder = 33
        TabStop = False
        DataField = 'CODPFA'
        DataSource = dsFor
        DropDownWidth = 400
        ListFieldName = 'DSCPFA;CODPFA'
        KeyFieldName = 'CODPFA'
        ListSource = DsPfa
        LookupKeyValue = '1.102'
        CorDeFoco = clInfoBk
      end
      object CbNomTmo: TdxDBColorLookupEdit
        Left = 211
        Top = 283
        Width = 522
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
        TabOrder = 31
        TabStop = False
        DataField = 'CODTMO'
        DataSource = dsFor
        DropDownWidth = 400
        ListFieldName = 'NOMTMO;CODTMO'
        KeyFieldName = 'CODTMO'
        ListSource = DsTmo
        LookupKeyValue = 1
        CorDeFoco = clInfoBk
      end
      object EdCodGFo: TdxDBColorEdit
        Left = 101
        Top = 259
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
        TabOrder = 28
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODGFO'
        DataSource = dsFor
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomGfo: TdxDBColorLookupEdit
        Left = 211
        Top = 259
        Width = 522
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
        TabOrder = 29
        TabStop = False
        DataField = 'CODGFO'
        DataSource = dsFor
        DropDownWidth = 400
        ListFieldName = 'NOMGFO;CODGFO'
        KeyFieldName = 'CODGFO'
        ListSource = DsGFo
        LookupKeyValue = 1
        CorDeFoco = clInfoBk
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
      BeforeSalva = nvForBeforeSalva
      OnSalva = nvForSalva
      DataSource = dsFor
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPedFinGFo'
      CampoBusca = ':CGCFOR'
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
    Left = 65
    Top = 596
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
      '  PERACR = :PERACR,'
      '  FLGATI = :FLGATI,'
      '  DCAFOR = :DCAFOR,'
      '  CODUSU = :CODUSU,'
      '  FLGINT = :FLGINT,'
      '  OBSFOR = :OBSFOR,'
      '  CODTFO = :CODTFO'
      'where'
      '  CODFOR = :OLD_CODFOR')
    InsertSQL.Strings = (
      'insert into FinFor'
      
        '  (CODFOR, NOMFOR, APEFOR, CEPFOR, ENDFOR, REFFOR, TENFOR, NUMFO' +
        'R, '
      'BAIFOR, '
      
        '   CIDFOR, SIGUFE, PRTFOR, FONFOR, PRFFOR, FAXFOR, CGCFOR, INSFO' +
        'R, '
      'EMAFOR, '
      '   WEBFOR, CONPLC, SUBPLC, CODBAN, NOMCNB, CONFOR, CERFOR, '
      'ENRFOR, RERFOR, '
      
        '   TERFOR, NURFOR, BARFOR, CIRFOR, UFERET, PTRFOR, FORFOR, PFRFO' +
        'R, '
      'FARFOR, '
      
        '   CORFOR, CODAGB, CODCNB, QTDPFO, SEQPFO, FLGTRG, CODTMO, CODPF' +
        'A, '
      'TIPPFA, '
      
        '   CODGFO, CODSUP, PERACR, FLGATI, DCAFOR, CODUSU, FLGINT, OBSFO' +
        'R, '
      'CODTFO)'
      'values'
      
        '  (:CODFOR, :NOMFOR, :APEFOR, :CEPFOR, :ENDFOR, :REFFOR, :TENFOR' +
        ', '
      ':NUMFOR, '
      
        '   :BAIFOR, :CIDFOR, :SIGUFE, :PRTFOR, :FONFOR, :PRFFOR, :FAXFOR' +
        ', '
      ':CGCFOR, '
      
        '   :INSFOR, :EMAFOR, :WEBFOR, :CONPLC, :SUBPLC, :CODBAN, :NOMCNB' +
        ', '
      ':CONFOR, '
      
        '   :CERFOR, :ENRFOR, :RERFOR, :TERFOR, :NURFOR, :BARFOR, :CIRFOR' +
        ', '
      ':UFERET, '
      
        '   :PTRFOR, :FORFOR, :PFRFOR, :FARFOR, :CORFOR, :CODAGB, :CODCNB' +
        ', '
      ':QTDPFO, '
      
        '   :SEQPFO, :FLGTRG, :CODTMO, :CODPFA, :TIPPFA, :CODGFO, :CODSUP' +
        ', '
      ':PERACR, '
      '   :FLGATI, :DCAFOR, :CODUSU, :FLGINT, :OBSFOR, :CODTFO)')
    DeleteSQL.Strings = (
      'delete from FinFor'
      'where'
      '  CODFOR = :OLD_CODFOR')
    Left = 28
    Top = 540
  end
  object FinPlc: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * from FinPlc'
      'Order by NomPlc')
    ValidateWithMask = True
    Left = 65
    Top = 512
    object FinPlcNOMPLC: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMPLC'
      Origin = 'ISADE.FINPLC.NOMPLC'
      FixedChar = True
      Size = 40
    end
    object FinPlcCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Origin = 'ISADE.FINPLC.CONPLC'
      Visible = False
    end
    object FinPlcCODCEN: TIntegerField
      FieldName = 'CODCEN'
      Origin = 'ISADE.FINPLC.CODCEN'
      Visible = False
    end
    object FinPlcCODAGC: TIntegerField
      FieldName = 'CODAGC'
      Origin = 'ISADE.FINPLC.CODAGC'
      Visible = False
    end
  end
  object CepTit: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select Abrtit,NomTit from CepTit')
    ValidateWithMask = True
    Left = 65
    Top = 484
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
  object FinFor: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = FinForNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select FinFor.*,'
      '           FinPlc.NomPlc,'
      '           FinSub.NomSub,'
      '           FinBan.NomBan,'
      
        '           TextoOcor('#39'('#39',PrtFor,'#39')'#39','#39' '#39',FonFor,'#39#39','#39#39') as Telefon' +
        'e'
      'From FinFor LEFT JOIN FinSub ON (FinFor.ConPlc = FinSub.ConPlc)'
      
        '                                              AND (FinFor.SubPlc' +
        ' = FinSub.SubPlc)'
      
        '                   LEFT JOIN FinPlc ON (FinSub.ConPlc = FinPlc.C' +
        'onPlc)'
      
        '                  LEFT JOIN FinBan ON (FinFor.CodBan = FinBan.Co' +
        'dBan)'
      'Order by CodFor')
    UpdateObject = UpFor
    ValidateWithMask = True
    Top = 484
    object FinForCODFOR: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 9
      FieldName = 'CODFOR'
      Origin = 'ISADE.FINFOR.CODFOR'
    end
    object FinForNOMFOR: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 46
      FieldName = 'NOMFOR'
      Origin = 'ISADE.FINFOR.NOMFOR'
      FixedChar = True
      Size = 40
    end
    object FinForAPEFOR: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 28
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
      DisplayLabel = 'Telefone                                   '
      DisplayWidth = 25
      FieldName = 'FONFOR'
      Origin = 'ISADE.FINFOR.FONFOR'
      FixedChar = True
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
    object FinForNOMPLC: TStringField
      FieldName = 'NOMPLC'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FinForNOMSUB: TStringField
      FieldName = 'NOMSUB'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FinForNOMBAN: TStringField
      FieldName = 'NOMBAN'
      Visible = False
      FixedChar = True
      Size = 40
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
      EditMask = '!\(9999\);0;_'
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
      EditMask = '!\(9999\);0;_'
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
    object FinForCODTMO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTMO'
      Visible = False
    end
    object FinForCODPFA: TStringField
      DisplayWidth = 15
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinForTIPPFA: TStringField
      DisplayWidth = 7
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FinForTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FinForCODGFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODGFO'
      Visible = False
    end
    object FinForCODSUP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODSUP'
      Visible = False
    end
    object FinForPERACR: TFloatField
      DisplayWidth = 10
      FieldName = 'PERACR'
      Visible = False
    end
    object FinForFLGATI: TStringField
      DisplayWidth = 3
      FieldName = 'FLGATI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FinForDCAFOR: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DCAFOR'
      Visible = False
    end
    object FinForCODUSU: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Visible = False
    end
    object FinForFLGINT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FinForOBSFOR: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSFOR'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object FinForCODTFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTFO'
      Visible = False
    end
  end
  object dsFor: TwwDataSource
    DataSet = FinFor
    OnDataChange = dsForDataChange
    Left = 28
    Top = 484
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Top = 540
  end
  object FinSub: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * from FinSub'
      'where ConPlc = :Conplc'
      'Order by NomSub')
    ValidateWithMask = True
    Left = 65
    Top = 540
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Conplc'
        ParamType = ptInput
      end>
    object FinSubNOMSUB: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMSUB'
      Origin = 'ISADE.FINSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
    object FinSubCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Origin = 'ISADE.FINSUB.CONPLC'
      Visible = False
    end
    object FinSubSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Origin = 'ISADE.FINSUB.SUBPLC'
      Visible = False
    end
  end
  object FinBan: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select  *  From FinBan'
      'Order by NomBan')
    ValidateWithMask = True
    Left = 65
    Top = 568
    object FinBanNOMBAN: TStringField
      DisplayLabel = 'Descricao'
      DisplayWidth = 40
      FieldName = 'NOMBAN'
      Origin = 'ISADE.FINBAN.NOMBAN'
      FixedChar = True
      Size = 40
    end
    object FinBanCODBAN: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODBAN'
      Origin = 'ISADE.FINBAN.CODBAN'
      Visible = False
    end
  end
  object DsTit: TwwDataSource
    DataSet = CepTit
    Left = 93
    Top = 484
  end
  object DsUfe: TwwDataSource
    DataSet = GerUfe
    Left = 93
    Top = 596
  end
  object DsPlc: TwwDataSource
    DataSet = FinPlc
    Left = 93
    Top = 512
  end
  object DsSub: TwwDataSource
    DataSet = FinSub
    Left = 93
    Top = 540
  end
  object DsBan: TwwDataSource
    DataSet = FinBan
    Left = 93
    Top = 568
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ficha de Fornecedores'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 284300
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\_WGSYS\Emerion\Financeiro\Relatorios\RFor01.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    Top = 568
    Version = '5.0'
    mmColumnWidth = 284300
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Relação de Fornecedores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 1323
        mmWidth = 44380
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
        mmLeft = 182563
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
        mmLeft = 165629
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
        mmLeft = 134409
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
        mmLeft = 112184
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Código   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 8467
        mmWidth = 12347
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Razão Social   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 18785
        mmTop = 8467
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fantasia   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 91811
        mmTop = 8467
        mmWidth = 14605
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Telefone  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 130969
        mmTop = 8467
        mmWidth = 14041
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CODFOR'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 1588
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOMFOR'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 1588
        mmWidth = 72231
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NOMFOR'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 1588
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'TELEFONE'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 130969
        mmTop = 1588
        mmWidth = 53181
        BandType = 4
      end
    end
  end
  object DsReport: TppDBPipeline
    DataSource = dsFor
    UserName = 'DsReport'
    Left = 28
    Top = 568
    object DsReportppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODFOR'
      FieldName = 'CODFOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 9
      Position = 0
    end
    object DsReportppField2: TppField
      FieldAlias = 'NOMFOR'
      FieldName = 'NOMFOR'
      FieldLength = 40
      DisplayWidth = 46
      Position = 1
    end
    object DsReportppField3: TppField
      FieldAlias = 'APEFOR'
      FieldName = 'APEFOR'
      FieldLength = 20
      DisplayWidth = 28
      Position = 2
    end
    object DsReportppField4: TppField
      FieldAlias = 'PRTFOR'
      FieldName = 'PRTFOR'
      FieldLength = 4
      DisplayWidth = 7
      Position = 3
    end
    object DsReportppField5: TppField
      FieldAlias = 'FONFOR'
      FieldName = 'FONFOR'
      FieldLength = 20
      DisplayWidth = 25
      Position = 4
    end
    object DsReportppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDPFO'
      FieldName = 'QTDPFO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object DsReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQPFO'
      FieldName = 'SEQPFO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object DsReportppField8: TppField
      FieldAlias = 'FLGTRG'
      FieldName = 'FLGTRG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object DsReportppField9: TppField
      FieldAlias = 'CGCFOR'
      FieldName = 'CGCFOR'
      FieldLength = 18
      DisplayWidth = 18
      Position = 8
    end
    object DsReportppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODBAN'
      FieldName = 'CODBAN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object DsReportppField11: TppField
      FieldAlias = 'NOMCNB'
      FieldName = 'NOMCNB'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object DsReportppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONPLC'
      FieldName = 'CONPLC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object DsReportppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBPLC'
      FieldName = 'SUBPLC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object DsReportppField14: TppField
      FieldAlias = 'INSFOR'
      FieldName = 'INSFOR'
      FieldLength = 18
      DisplayWidth = 20
      Position = 13
    end
    object DsReportppField15: TppField
      FieldAlias = 'FAXFOR'
      FieldName = 'FAXFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object DsReportppField16: TppField
      FieldAlias = 'EMAFOR'
      FieldName = 'EMAFOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object DsReportppField17: TppField
      FieldAlias = 'WEBFOR'
      FieldName = 'WEBFOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object DsReportppField18: TppField
      FieldAlias = 'TENFOR'
      FieldName = 'TENFOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object DsReportppField19: TppField
      FieldAlias = 'ENDFOR'
      FieldName = 'ENDFOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
    object DsReportppField20: TppField
      FieldAlias = 'REFFOR'
      FieldName = 'REFFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object DsReportppField21: TppField
      FieldAlias = 'BAIFOR'
      FieldName = 'BAIFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object DsReportppField22: TppField
      FieldAlias = 'CIDFOR'
      FieldName = 'CIDFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object DsReportppField23: TppField
      FieldAlias = 'SIGUFE'
      FieldName = 'SIGUFE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object DsReportppField24: TppField
      FieldAlias = 'CEPFOR'
      FieldName = 'CEPFOR'
      FieldLength = 8
      DisplayWidth = 8
      Position = 23
    end
    object DsReportppField25: TppField
      FieldAlias = 'NUMFOR'
      FieldName = 'NUMFOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
    object DsReportppField26: TppField
      FieldAlias = 'PRFFOR'
      FieldName = 'PRFFOR'
      FieldLength = 4
      DisplayWidth = 4
      Position = 25
    end
    object DsReportppField27: TppField
      FieldAlias = 'CONFOR'
      FieldName = 'CONFOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 26
    end
    object DsReportppField28: TppField
      FieldAlias = 'NOMPLC'
      FieldName = 'NOMPLC'
      FieldLength = 40
      DisplayWidth = 40
      Position = 27
    end
    object DsReportppField29: TppField
      FieldAlias = 'NOMSUB'
      FieldName = 'NOMSUB'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object DsReportppField30: TppField
      FieldAlias = 'NOMBAN'
      FieldName = 'NOMBAN'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object DsReportppField31: TppField
      FieldAlias = 'CERFOR'
      FieldName = 'CERFOR'
      FieldLength = 8
      DisplayWidth = 8
      Position = 30
    end
    object DsReportppField32: TppField
      FieldAlias = 'ENRFOR'
      FieldName = 'ENRFOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object DsReportppField33: TppField
      FieldAlias = 'RERFOR'
      FieldName = 'RERFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object DsReportppField34: TppField
      FieldAlias = 'TERFOR'
      FieldName = 'TERFOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 33
    end
    object DsReportppField35: TppField
      FieldAlias = 'NURFOR'
      FieldName = 'NURFOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 34
    end
    object DsReportppField36: TppField
      FieldAlias = 'BARFOR'
      FieldName = 'BARFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object DsReportppField37: TppField
      FieldAlias = 'CIRFOR'
      FieldName = 'CIRFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object DsReportppField38: TppField
      FieldAlias = 'UFERET'
      FieldName = 'UFERET'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object DsReportppField39: TppField
      FieldAlias = 'PTRFOR'
      FieldName = 'PTRFOR'
      FieldLength = 4
      DisplayWidth = 4
      Position = 38
    end
    object DsReportppField40: TppField
      FieldAlias = 'FORFOR'
      FieldName = 'FORFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object DsReportppField41: TppField
      FieldAlias = 'PFRFOR'
      FieldName = 'PFRFOR'
      FieldLength = 4
      DisplayWidth = 4
      Position = 40
    end
    object DsReportppField42: TppField
      FieldAlias = 'FARFOR'
      FieldName = 'FARFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object DsReportppField43: TppField
      FieldAlias = 'CORFOR'
      FieldName = 'CORFOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 42
    end
    object DsReportppField44: TppField
      FieldAlias = 'CODAGB'
      FieldName = 'CODAGB'
      FieldLength = 15
      DisplayWidth = 15
      Position = 43
    end
    object DsReportppField45: TppField
      FieldAlias = 'CODCNB'
      FieldName = 'CODCNB'
      FieldLength = 15
      DisplayWidth = 15
      Position = 44
    end
    object DsReportppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODTMO'
      FieldName = 'CODTMO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object DsReportppField47: TppField
      FieldAlias = 'CODPFA'
      FieldName = 'CODPFA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 46
    end
    object DsReportppField48: TppField
      FieldAlias = 'TIPPFA'
      FieldName = 'TIPPFA'
      FieldLength = 7
      DisplayWidth = 7
      Position = 47
    end
    object DsReportppField49: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 48
    end
    object DsReportppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODGFO'
      FieldName = 'CODGFO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
  end
  object psFor: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = FinForNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select FinFor.*,NomPlc,NomSub,NomBan'
      'From FinFor LEFT JOIN FinSub ON (FinFor.ConPlc = FinSub.ConPlc)'
      
        '                                              AND (FinFor.SubPlc' +
        ' = FinSub.SubPlc)'
      
        '                   LEFT JOIN FinPlc ON (FinSub.ConPlc = FinPlc.C' +
        'onPlc)'
      
        '                  LEFT JOIN FinBan ON (FinFor.CodBan = FinBan.Co' +
        'dBan)'
      'Where CodFor = :CodFor')
    ValidateWithMask = True
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 9
      FieldName = 'CODFOR'
      Origin = 'ISADE.FINFOR.CODFOR'
    end
    object StringField1: TStringField
      DisplayLabel = 'Razão Social'
      DisplayWidth = 41
      FieldName = 'NOMFOR'
      Origin = 'ISADE.FINFOR.NOMFOR'
      FixedChar = True
      Size = 40
    end
    object StringField2: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 25
      FieldName = 'APEFOR'
      Origin = 'ISADE.FINFOR.APEFOR'
      FixedChar = True
    end
    object StringField3: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'CGCFOR'
      Origin = 'ISADE.FINFOR.CGCFOR'
      EditMask = '!99.999.999/9999\-99;0;_'
      FixedChar = True
      Size = 18
    end
    object StringField4: TStringField
      DisplayLabel = 'Prefixo'
      DisplayWidth = 7
      FieldName = 'PRTFOR'
      Origin = 'ISADE.FINFOR.PRTFOR'
      EditMask = '!\(9999\);0;_'
      FixedChar = True
      Size = 4
    end
    object StringField5: TStringField
      DisplayLabel = 'Telefone             '
      DisplayWidth = 14
      FieldName = 'FONFOR'
      Origin = 'ISADE.FINFOR.FONFOR'
      FixedChar = True
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODBAN'
      Origin = 'ISADE.FINFOR.CODBAN'
      Visible = False
    end
    object StringField6: TStringField
      DisplayWidth = 40
      FieldName = 'NOMCNB'
      Origin = 'ISADE.FINFOR.NOMCNB'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONPLC'
      Origin = 'ISADE.FINFOR.CONPLC'
      Visible = False
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUBPLC'
      Origin = 'ISADE.FINFOR.SUBPLC'
      Visible = False
    end
    object StringField7: TStringField
      DisplayLabel = 'RG/Inscrição Estadual'
      DisplayWidth = 20
      FieldName = 'INSFOR'
      Origin = 'ISADE.FINFOR.INSFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object StringField8: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'FAXFOR'
      Origin = 'ISADE.FINFOR.FAXFOR'
      Visible = False
      FixedChar = True
    end
    object StringField9: TStringField
      DisplayWidth = 50
      FieldName = 'EMAFOR'
      Origin = 'ISADE.FINFOR.EMAFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object StringField10: TStringField
      DisplayWidth = 50
      FieldName = 'WEBFOR'
      Origin = 'ISADE.FINFOR.WEBFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object StringField11: TStringField
      DisplayWidth = 10
      FieldName = 'TENFOR'
      Origin = 'ISADE.FINFOR.CODFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object StringField12: TStringField
      DisplayWidth = 40
      FieldName = 'ENDFOR'
      Origin = 'ISADE.FINFOR.ENDFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object StringField13: TStringField
      DisplayWidth = 20
      FieldName = 'REFFOR'
      Origin = 'ISADE.FINFOR.REFFOR'
      Visible = False
      FixedChar = True
    end
    object StringField14: TStringField
      DisplayWidth = 20
      FieldName = 'BAIFOR'
      Origin = 'ISADE.FINFOR.BAIFOR'
      Visible = False
      FixedChar = True
    end
    object StringField15: TStringField
      DisplayWidth = 20
      FieldName = 'CIDFOR'
      Origin = 'ISADE.FINFOR.CIDFOR'
      Visible = False
      FixedChar = True
    end
    object StringField16: TStringField
      DisplayWidth = 2
      FieldName = 'SIGUFE'
      Origin = 'ISADE.FINFOR.SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object StringField17: TStringField
      FieldName = 'CEPFOR'
      Origin = 'ISADE.FINFOR.CEPFOR'
      Visible = False
      EditMask = '!99999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object StringField18: TStringField
      FieldName = 'NUMFOR'
      Origin = 'ISADE.FINFOR.NUMFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'PRFFOR'
      Origin = 'ISADE.FINFOR.PRFFOR'
      Visible = False
      EditMask = '!\(9999\);0;_'
      FixedChar = True
      Size = 4
    end
    object StringField20: TStringField
      FieldName = 'CONFOR'
      Origin = 'ISADE.FINFOR.CONFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object StringField21: TStringField
      FieldName = 'NOMPLC'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object StringField22: TStringField
      FieldName = 'NOMSUB'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object StringField23: TStringField
      FieldName = 'NOMBAN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object psForCERFOR: TStringField
      FieldName = 'CERFOR'
      FixedChar = True
      Size = 8
    end
    object psForENRFOR: TStringField
      FieldName = 'ENRFOR'
      FixedChar = True
      Size = 40
    end
    object psForRERFOR: TStringField
      FieldName = 'RERFOR'
      FixedChar = True
    end
    object psForTERFOR: TStringField
      FieldName = 'TERFOR'
      FixedChar = True
      Size = 10
    end
    object psForNURFOR: TStringField
      FieldName = 'NURFOR'
      FixedChar = True
      Size = 10
    end
    object psForBARFOR: TStringField
      FieldName = 'BARFOR'
      FixedChar = True
    end
    object psForCIRFOR: TStringField
      FieldName = 'CIRFOR'
      FixedChar = True
    end
    object psForUFERET: TStringField
      FieldName = 'UFERET'
      FixedChar = True
      Size = 2
    end
    object psForPTRFOR: TStringField
      FieldName = 'PTRFOR'
      FixedChar = True
      Size = 4
    end
    object psForFORFOR: TStringField
      FieldName = 'FORFOR'
      FixedChar = True
    end
    object psForPFRFOR: TStringField
      FieldName = 'PFRFOR'
      FixedChar = True
      Size = 4
    end
    object psForFARFOR: TStringField
      FieldName = 'FARFOR'
      FixedChar = True
    end
    object psForCORFOR: TStringField
      FieldName = 'CORFOR'
      FixedChar = True
      Size = 70
    end
    object psForCODAGB: TStringField
      FieldName = 'CODAGB'
      FixedChar = True
      Size = 15
    end
    object psForCODCNB: TStringField
      FieldName = 'CODCNB'
      FixedChar = True
      Size = 15
    end
    object psForQTDPFO: TIntegerField
      FieldName = 'QTDPFO'
    end
    object psForSEQPFO: TIntegerField
      FieldName = 'SEQPFO'
    end
    object psForFLGTRG: TStringField
      FieldName = 'FLGTRG'
      FixedChar = True
      Size = 1
    end
  end
  object dsPsFor: TwwDataSource
    DataSet = psFor
    Left = 28
    Top = 512
  end
  object EstPfa: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodPfa,TipPfa,DscPfa  From EstPfa'
      'Where TipPfa = '#39'Entrada'#39
      '     and LocPfa = :LocPfa')
    ValidateWithMask = True
    Left = 65
    Top = 624
    ParamData = <
      item
        DataType = ftString
        Name = 'LocPfa'
        ParamType = ptInput
      end>
    object EstPfaCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object EstPfaTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object EstPfaDSCPFA: TStringField
      FieldName = 'DSCPFA'
      FixedChar = True
      Size = 100
    end
  end
  object DsPfa: TwwDataSource
    DataSet = EstPfa
    Left = 93
    Top = 624
  end
  object FinTmo: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinTmo')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 65
    Top = 652
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
    Left = 93
    Top = 652
  end
  object FinGFo: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinGFo'
      '')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 65
    Top = 680
    object FinGFoCODGFO: TIntegerField
      FieldName = 'CODGFO'
      Origin = 'ISADE.FINGFO.CODGFO'
    end
    object FinGFoNOMGFO: TStringField
      FieldName = 'NOMGFO'
      Origin = 'ISADE.FINGFO.NOMGFO'
      FixedChar = True
      Size = 40
    end
  end
  object DsGFo: TwwDataSource
    DataSet = FinGFo
    Left = 93
    Top = 680
  end
  object GerUsu: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodUsu,LogUsu From GerUsu'
      'Order by LogUsu'
      '')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 65
    Top = 708
    object GerUsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object GerUsuLOGUSU: TStringField
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
  end
  object DsUsu: TwwDataSource
    DataSet = GerUsu
    Left = 93
    Top = 708
  end
  object FinTFo: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FinTFo'
      '')
    PictureMasks.Strings = (
      'NUMCRE'#9'#[#][#]'#9'T'#9'T')
    ValidateWithMask = True
    Left = 65
    Top = 736
    object FinTFoCODTFO: TIntegerField
      FieldName = 'CODTFO'
      Origin = 'ISADE.FINTFO.CODTFO'
    end
    object FinTFoNOMTFO: TStringField
      FieldName = 'NOMTFO'
      Origin = 'ISADE.FINTFO.NOMTFO'
      FixedChar = True
      Size = 40
    end
  end
  object DsTFo: TwwDataSource
    DataSet = FinTFo
    Left = 93
    Top = 736
  end
end
