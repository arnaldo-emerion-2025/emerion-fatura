inherited fmManGru: TfmManGru
  Left = 21
  Caption = 'Grupo e Sub-Grupos'
  ClientHeight = 422
  ClientWidth = 654
  Color = 15788249
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 78
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
  object pcGru: TPageControl
    Left = -2
    Top = 0
    Width = 663
    Height = 429
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 94
    object pcPag1: TTabSheet
      Caption = ' &Visualizar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnShow = pcPag1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 655
        Height = 398
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape4: TShape
          Left = 0
          Top = 256
          Width = 190
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 0
          Top = 106
          Width = 190
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 0
          Top = 3
          Width = 190
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 191
          Top = 11
          Width = 460
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label10: TLabel
          Left = 3
          Top = 28
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
        object Label3: TLabel
          Left = 5
          Top = 108
          Width = 117
          Height = 13
          Caption = 'Grupos Selecionados'
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
          Left = 191
          Top = 114
          Width = 460
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Shape11: TShape
          Left = 2
          Top = 373
          Width = 650
          Height = 20
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label4: TLabel
          Left = 3
          Top = 52
          Width = 53
          Height = 13
          Caption = 'Descrição :'
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
          Left = 6
          Top = 376
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
        object Label2: TLabel
          Left = 5
          Top = 5
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
        object Label14: TLabel
          Left = 5
          Top = 258
          Width = 66
          Height = 13
          Caption = 'Sub-Grupos'
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
        object Shape8: TShape
          Left = 191
          Top = 264
          Width = 460
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object EdPsqCodGru: TdxColorEdit
          Left = 93
          Top = 24
          Width = 101
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
          OnExit = EdPsqCodGruExit
          OnKeyPress = EdPsqCodGruKeyPress
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object rgOrdem: TRadioGroup
          Left = 399
          Top = 20
          Width = 122
          Height = 92
          Caption = ' Exibido Por '
          ItemIndex = 0
          Items.Strings = (
            'Código'
            'Descrição')
          TabOrder = 2
        end
        object rgBusca: TRadioGroup
          Left = 526
          Top = 20
          Width = 126
          Height = 92
          Caption = ' Tipo de Busca'
          ItemIndex = 0
          Items.Strings = (
            'Iniciais'
            'Inteligente')
          TabOrder = 3
        end
        object Bbselecionar: TBitBtn
          Left = 261
          Top = 71
          Width = 135
          Height = 40
          Caption = '&Selecionar'
          Default = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
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
        object Panel3: TPanel
          Left = 2
          Top = 127
          Width = 650
          Height = 126
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 4
          object grGru: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 648
            Height = 124
            Selected.Strings = (
              'CODGRU'#9'14'#9'Código'
              'NOMGRU'#9'90'#9'Descrição'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsGru
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
            OnDblClick = grGruDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPsqNomGru: TdxColorEdit
          Left = 93
          Top = 48
          Width = 304
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
          CorDeFoco = clInfoBk
        end
        object Panel7: TPanel
          Left = 2
          Top = 277
          Width = 650
          Height = 93
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 6
          object grSub1: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 648
            Height = 91
            Selected.Strings = (
              'CODSUB'#9'14'#9'Código'
              'NOMSUB'#9'90'#9'Descrição')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsSub
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
            OnDblClick = grGruDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 655
        Height = 398
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape9: TShape
          Left = 1
          Top = 3
          Width = 190
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label5: TLabel
          Left = 5
          Top = 5
          Width = 105
          Height = 13
          Caption = 'Grupo Selecionado'
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
          Left = 192
          Top = 11
          Width = 460
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label7: TLabel
          Left = 3
          Top = 52
          Width = 53
          Height = 13
          Caption = 'Descrição :'
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
          Left = 3
          Top = 28
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
        object Label8: TLabel
          Left = 3
          Top = 351
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
        object Label15: TLabel
          Left = 3
          Top = 376
          Width = 53
          Height = 13
          Caption = 'Descrição :'
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
        object Shape3: TShape
          Left = 1
          Top = 74
          Width = 652
          Height = 27
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label73: TLabel
          Left = 5
          Top = 80
          Width = 66
          Height = 13
          Caption = 'Sub-Grupos'
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
        object Label105: TLabel
          Left = 479
          Top = 351
          Width = 58
          Height = 13
          Caption = 'Pontuação :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object EdNomGru: TdxDBColorEdit
          Left = 93
          Top = 48
          Width = 561
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
          DataField = 'NOMGRU'
          DataSource = DsGru
          CorDeFoco = clInfoBk
        end
        object EdCodGru: TdxDBColorEdit
          Left = 93
          Top = 24
          Width = 101
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
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODGRU'
          DataSource = DsGru
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object Panel5: TPanel
          Left = 1
          Top = 104
          Width = 651
          Height = 240
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 5
          object grSub2: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 649
            Height = 238
            Selected.Strings = (
              'CODSUB'#9'14'#9'Código'
              'NOMSUB'#9'90'#9'Descrição')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsSub
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
            OnDblClick = grGruDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdCodSub: TdxDBColorEdit
          Left = 93
          Top = 347
          Width = 101
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
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODSUB'
          DataSource = DsSub
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdNomSub: TdxDBColorEdit
          Left = 93
          Top = 372
          Width = 560
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
          OnKeyDown = EdNomSubKeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'NOMSUB'
          DataSource = DsSub
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object Panel8: TPanel
          Left = 425
          Top = 75
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 6
          object nvSub: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            DataSource = DsSub
            BaseAtualizar = 'EstClpEstGruEstSub'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object EdQtdPon: TdxDBColorCurrencyEdit
          Left = 542
          Top = 347
          Width = 111
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
          TabOrder = 3
          DataField = 'QTDPON'
          DataSource = DsSub
          Nullable = False
          CorDeFoco = clInfoBk
        end
      end
    end
  end
  object nvGru: ThDBNavigator
    Left = 285
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvGruImprime
    DataSource = DsGru
    UsaAppend = True
    Salvar = False
  end
  object UpGru: TUpdateSQL
    ModifySQL.Strings = (
      'update EstGru'
      'set'
      '  NOMGRU = :NOMGRU'
      'where'
      '  CODGRU = :OLD_CODGRU')
    InsertSQL.Strings = (
      'insert into EstGru'
      '  (CODGRU, NOMGRU)'
      'values'
      '  (:CODGRU, :NOMGRU)')
    DeleteSQL.Strings = (
      'delete from EstGru'
      'where'
      '  CODGRU = :OLD_CODGRU')
    Top = 488
  end
  object EstGru: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = EstGruBeforeEdit
    AfterCancel = EstGruAfterCancel
    OnNewRecord = EstGruNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstGru'
      'Order by CodGru'
      '')
    UpdateObject = UpGru
    ValidateWithMask = True
    Top = 432
    object EstGruCODGRU: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 14
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTGRU.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstGruNOMGRU: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 90
      FieldName = 'NOMGRU'
      Origin = 'ISADE.ESTGRU.NOMGRU'
      FixedChar = True
      Size = 40
    end
  end
  object DsGru: TwwDataSource
    DataSet = EstGru
    OnDataChange = DsGruDataChange
    Left = 28
    Top = 432
  end
  object EstSub: TwwQuery
    Tag = 1
    Active = True
    CachedUpdates = True
    BeforeEdit = EstSubBeforeEdit
    AfterCancel = EstSubAfterCancel
    OnNewRecord = EstSubNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstSub'
      'Where CodGru = :CodGru'
      'Order by CodGru,NomSub')
    UpdateObject = UpSub
    ValidateWithMask = True
    Top = 460
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
        Value = '001'
      end>
    object EstSubCODSUB: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 14
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstSubNOMSUB: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 90
      FieldName = 'NOMSUB'
      Origin = 'ISADE.ESTSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
    object EstSubCODGRU: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstSubNROSUB: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROSUB'
      Origin = 'ISADE.ESTSUB.NROSUB'
      Visible = False
    end
    object EstSubQTDPON: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDPON'
      Origin = 'ISADE.ESTSUB.QTDPON'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    OnDataChange = DsSubDataChange
    Left = 28
    Top = 460
  end
  object UpSub: TUpdateSQL
    ModifySQL.Strings = (
      'update EstSub'
      'set'
      '  NOMSUB = :NOMSUB,'
      '  NROSUB = :NROSUB,'
      '  QTDPON = :QTDPON'
      'where'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB')
    InsertSQL.Strings = (
      'insert into EstSub'
      '  (CODGRU, CODSUB, NOMSUB, NROSUB, QTDPON)'
      'values'
      '  (:CODGRU, :CODSUB, :NOMSUB, :NROSUB, :QTDPON)')
    DeleteSQL.Strings = (
      'delete from EstSub'
      'where'
      '  CODGRU = :OLD_CODGRU and'
      '  CODSUB = :OLD_CODSUB')
    Left = 28
    Top = 488
  end
  object quSql: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 56
    Top = 432
  end
  object quPsq: TwwQuery
    Tag = 1
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodSub,NomSub,CodGru,NomGru'
      'From EstSub INNER JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'
      'Where EstSub.CodGru = :CodGru'
      'Order by EstSub.CodGru,EstSub.CodSub')
    ValidateWithMask = True
    Left = 100
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end>
    object quPsqCODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object quPsqNOMSUB: TStringField
      FieldName = 'NOMSUB'
      FixedChar = True
      Size = 40
    end
    object quPsqCODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object quPsqNOMGRU: TStringField
      FieldName = 'NOMGRU'
      FixedChar = True
      Size = 40
    end
  end
  object dsPsq: TwwDataSource
    DataSet = quPsq
    Left = 128
    Top = 432
  end
  object plOcoCr1: TppDBPipeline
    DataSource = dsPsq
    UserName = 'plOcoCr1'
    Left = 100
    Top = 461
    object plOcoCr1ppField1: TppField
      FieldAlias = 'CODSUB'
      FieldName = 'CODSUB'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object plOcoCr1ppField2: TppField
      FieldAlias = 'NOMSUB'
      FieldName = 'NOMSUB'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plOcoCr1ppField3: TppField
      FieldAlias = 'CODGRU'
      FieldName = 'CODGRU'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object plOcoCr1ppField4: TppField
      FieldAlias = 'NOMGRU'
      FieldName = 'NOMGRU'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plOcoCr1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 270000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\Relatorios\RManGru.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 128
    Top = 461
    Version = '5.0'
    mmColumnWidth = 197300
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Grupos & Sub-Grupos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4304
        mmLeft = 529
        mmTop = 1323
        mmWidth = 37465
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
        mmLeft = 173832
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label14'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 156898
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
        mmLeft = 125677
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
        mmLeft = 103452
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppSubPlc: TppDBText
        UserName = 'SubPlc'
        DataField = 'CODSUB'
        DataPipeline = plOcoCr1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppNomSub: TppDBText
        UserName = 'NomSub'
        DataField = 'NOMSUB'
        DataPipeline = plOcoCr1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 18256
        mmTop = 265
        mmWidth = 157163
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CODGRU'
      DataPipeline = plOcoCr1
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 19315
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 529
          mmTop = 5027
          mmWidth = 8678
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Sub-Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 529
          mmTop = 15081
          mmWidth = 15240
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Descrição'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 18256
          mmTop = 15081
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppConPlc: TppDBText
          UserName = 'ConPlc'
          DataField = 'CODGRU'
          DataPipeline = plOcoCr1
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 20373
          mmTop = 5027
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppNomPlc: TppDBText
          UserName = 'NomPlc'
          DataField = 'NOMGRU'
          DataPipeline = plOcoCr1
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 38365
          mmTop = 5027
          mmWidth = 101071
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 15346
          mmTop = 5027
          mmWidth = 2681
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 794
          mmTop = 2117
          mmWidth = 174625
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
