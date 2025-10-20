inherited fmManArm: TfmManArm
  Left = 20
  Caption = 'Armadores'
  ClientHeight = 475
  ClientWidth = 737
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcArm: TPageControl
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
    TabWidth = 124
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
        Left = 248
        Top = 8
        Width = 484
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape6: TShape
        Left = 0
        Top = 0
        Width = 247
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
      object Shape4: TShape
        Left = 0
        Top = 110
        Width = 247
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 2
        Top = 112
        Width = 139
        Height = 13
        Caption = 'Armadores selecionados'
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
        Left = 248
        Top = 118
        Width = 484
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
      object EdPsqNomArm: TdxColorEdit
        Left = 160
        Top = 45
        Width = 316
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
      object EdPsqId_CmpArm: TdxColorEdit
        Left = 160
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
        OnKeyPress = EdPsqId_CmpArmKeyPress
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
        TabOrder = 5
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
          'Descrição')
        TabOrder = 2
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
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 0
        Top = 131
        Width = 730
        Height = 292
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 6
        object grCmpArm: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 728
          Height = 290
          Selected.Strings = (
            'ID_CMPARM'#9'10'#9'Código'
            'NOMARM'#9'110'#9'Descrição'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsCmpArm
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
          OnDblClick = grCmpArmDblClick
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
        Width = 247
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
        Caption = 'Informações principais'
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
        Left = 248
        Top = 8
        Width = 484
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
      object Label12: TLabel
        Left = 252
        Top = 73
        Width = 60
        Height = 13
        Caption = '(demurrage)'
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
        Left = 2
        Top = 73
        Width = 145
        Height = 13
        Caption = 'Qtde de dias limite de estadia:'
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
        Left = 446
        Top = 73
        Width = 172
        Height = 13
        Caption = 'Valor diário por sobreestadia (USD):'
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
        Left = 2
        Top = 98
        Width = 149
        Height = 13
        Caption = 'Valor de liberação de BL (USD):'
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
        Left = 275
        Top = 98
        Width = 143
        Height = 13
        Caption = '(conhecimento de transporte)'
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
        Left = 2
        Top = 123
        Width = 155
        Height = 13
        Caption = 'Valor de desconsolidação (USD):'
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
      object Shape7: TShape
        Left = 0
        Top = 146
        Width = 733
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label18: TLabel
        Left = 2
        Top = 153
        Width = 37
        Height = 13
        Caption = 'Portos'
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
      object EdId_CmpArm: TdxDBColorEdit
        Left = 160
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
        DataField = 'ID_CMPARM'
        DataSource = dsCmpArm
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomArm: TdxDBColorEdit
        Left = 160
        Top = 45
        Width = 572
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
        DataField = 'NOMARM'
        DataSource = dsCmpArm
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
        TabOrder = 1
        TabStop = False
        AutoSize = False
        DataField = 'FLGATI'
        DataSource = dsCmpArm
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        NullStyle = nsUnchecked
        Height = 18
      end
      object EdQtdArm: TdxDBColorCurrencyEdit
        Left = 160
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
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDARM'
        DataSource = dsCmpArm
        DecimalPlaces = 0
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdDemArm: TdxDBColorCurrencyEdit
        Left = 621
        Top = 69
        Width = 111
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
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DEMARM'
        DataSource = dsCmpArm
        DecimalPlaces = 4
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdVblArm: TdxDBColorCurrencyEdit
        Left = 160
        Top = 94
        Width = 111
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
        AutoSize = False
        DataField = 'VBLARM'
        DataSource = dsCmpArm
        DecimalPlaces = 4
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdDesArm: TdxDBColorCurrencyEdit
        Left = 160
        Top = 119
        Width = 111
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
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESARM'
        DataSource = dsCmpArm
        DecimalPlaces = 4
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object Panel6: TPanel
        Left = 530
        Top = 147
        Width = 200
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 7
        object nvCmpAr2: ThDBNavigator
          Left = -81
          Top = -6
          Width = 281
          Height = 32
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          DataSource = DsCmpAr2
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 175
        Width = 731
        Height = 146
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 8
        object grCmpAr2: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 729
          Height = 144
          Selected.Strings = (
            'ID_CMPPOR'#9'8'#9'Código'
            'APEPOR'#9'35'#9'Porto'
            'MSCAR2'#9'10'#9'          Valor MSC (USD)'
            'THCAR2'#9'10'#9'             Valor THC (USD)'
            'PESMAX'#9'10'#9'    Peso máximo'
            'CUBMAX'#9'10'#9'  Cubagem máxima')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsCmpAr2
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
      object Panel4: TPanel
        Left = 0
        Top = 325
        Width = 733
        Height = 121
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 9
        object Label19: TLabel
          Left = 2
          Top = 3
          Width = 30
          Height = 13
          Caption = 'Porto:'
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
          Left = 2
          Top = 27
          Width = 83
          Height = 13
          Caption = 'Valor MSC (USD):'
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
          Left = 2
          Top = 52
          Width = 82
          Height = 13
          Caption = 'Valor THC (USD):'
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
          Left = 275
          Top = 27
          Width = 169
          Height = 13
          Caption = '(Mediterranean Shipping Company)'
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
          Left = 275
          Top = 52
          Width = 130
          Height = 13
          Caption = '(Terminal Handling Charge)'
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
          Left = 2
          Top = 102
          Width = 88
          Height = 13
          Caption = 'Cugabem máxima:'
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
          Left = 2
          Top = 77
          Width = 66
          Height = 13
          Caption = 'Peso máximo:'
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
          Left = 275
          Top = 77
          Width = 53
          Height = 13
          Caption = '(contâiner)'
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
          Left = 275
          Top = 102
          Width = 53
          Height = 13
          Caption = '(contâiner)'
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
        object EdId_CmpPor: TdxDBColorEdit
          Left = 160
          Top = -1
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
          TabOrder = 0
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'ID_CMPPOR'
          DataSource = DsCmpAr2
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbApePor: TdxDBColorLookupEdit
          Left = 271
          Top = -1
          Width = 463
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
          TabOrder = 1
          TabStop = False
          DataField = 'ID_CMPPOR'
          DataSource = DsCmpAr2
          DropDownWidth = 400
          ListFieldName = 'APEPOR'
          KeyFieldName = 'ID_CMPPOR'
          ListSource = dsCmpPor
          LookupKeyValue = 3
          CorDeFoco = clInfoBk
        end
        object EdMscAr2: TdxDBColorCurrencyEdit
          Left = 160
          Top = 23
          Width = 111
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
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MSCAR2'
          DataSource = DsCmpAr2
          DecimalPlaces = 4
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object EdThcAr2: TdxDBColorCurrencyEdit
          Left = 160
          Top = 48
          Width = 111
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
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'THCAR2'
          DataSource = DsCmpAr2
          DecimalPlaces = 4
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object EdPesMax: TdxDBColorCurrencyEdit
          Left = 160
          Top = 73
          Width = 111
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
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PESMAX'
          DataSource = DsCmpAr2
          DecimalPlaces = 6
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object EdCubMax: TdxDBColorCurrencyEdit
          Left = 160
          Top = 98
          Width = 111
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
          OnKeyDown = EdCubMaxKeyDown
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CUBMAX'
          DataSource = DsCmpAr2
          DecimalPlaces = 6
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
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
    object nvCmpArm: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      BeforeSalva = nvCmpArmBeforeSalva
      DataSource = dsCmpArm
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = False
      Salvar = False
    end
  end
  object UpCmpArm: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpArm'
      'set'
      '  NOMARM = :NOMARM,'
      '  PESMAX = :PESMAX,'
      '  CUBMAX = :CUBMAX,'
      '  QTDARM = :QTDARM,'
      '  DEMARM = :DEMARM,'
      '  VBLARM = :VBLARM,'
      '  DESARM = :DESARM,'
      '  FLGATI = :FLGATI,'
      '  FLGINT = :FLGINT'
      'where'
      '  ID_CMPARM = :OLD_ID_CMPARM')
    InsertSQL.Strings = (
      'insert into CmpArm'
      
        '  (ID_CMPARM, NOMARM, QTDAR2, PESMAX, CUBMAX, QTDARM, DEMARM, VB' +
        'LARM, DESARM, '
      '   FLGATI, FLGINT)'
      'values'
      
        '  (:ID_CMPARM, :NOMARM, :QTDAR2, :PESMAX, :CUBMAX, :QTDARM, :DEM' +
        'ARM, :VBLARM, '
      '   :DESARM, :FLGATI, :FLGINT)')
    DeleteSQL.Strings = (
      'delete from CmpArm'
      'where'
      '  ID_CMPARM = :OLD_ID_CMPARM')
    Top = 504
  end
  object CmpArm: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = CmpArmBeforeEdit
    AfterPost = CmpArmAfterCancel
    AfterCancel = CmpArmAfterCancel
    OnNewRecord = CmpArmNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From CmpArm'
      'Where CmpArm.FlgAti = '#39'Sim'#39
      'Order by CmpArm.Id_CmpArm')
    UpdateObject = UpCmpArm
    ValidateWithMask = True
    Top = 476
    object CmpArmID_CMPARM: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'ID_CMPARM'
      Origin = 'ISADE.CMPARM.ID_CMPARM'
    end
    object CmpArmNOMARM: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 110
      FieldName = 'NOMARM'
      Origin = 'ISADE.CMPARM.NOMARM'
      Size = 70
    end
    object CmpArmQTDAR2: TIntegerField
      FieldName = 'QTDAR2'
      Origin = 'ISADE.CMPARM.QTDAR2'
      Visible = False
    end
    object CmpArmQTDARM: TIntegerField
      FieldName = 'QTDARM'
      Origin = 'ISADE.CMPARM.QTDARM'
      Visible = False
      DisplayFormat = '###0'
    end
    object CmpArmDEMARM: TFloatField
      FieldName = 'DEMARM'
      Origin = 'ISADE.CMPARM.DEMARM'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpArmVBLARM: TFloatField
      FieldName = 'VBLARM'
      Origin = 'ISADE.CMPARM.VBLARM'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpArmFLGATI: TStringField
      FieldName = 'FLGATI'
      Origin = 'ISADE.CMPARM.FLGATI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpArmFLGINT: TStringField
      FieldName = 'FLGINT'
      Origin = 'ISADE.CMPARM.FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpArmDESARM: TFloatField
      DisplayWidth = 10
      FieldName = 'DESARM'
      Origin = 'ISADE.CMPARM.DESARM'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
  end
  object dsCmpArm: TwwDataSource
    DataSet = CmpArm
    OnDataChange = dsCmpArmDataChange
    Left = 28
    Top = 476
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 28
    Top = 504
  end
  object CmpAr2: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = CmpAr2BeforeEdit
    AfterPost = CmpAr2AfterCancel
    AfterCancel = CmpAr2AfterCancel
    OnNewRecord = CmpAr2NewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = dsCmpArm
    SQL.Strings = (
      'Select CmpAr2.*,'
      '           CmpPor.ApePor'
      
        'From CmpAr2 LEFT JOIN CmpPor ON (CmpAr2.Id_CmpPor = CmpPor.Id_Cm' +
        'pPor)'
      'Where CmpAr2.Id_CmpArm = :Id_CmpArm'
      'Order by CmpAr2.Id_CmpAr2')
    UpdateObject = UpCmpAr2
    ValidateWithMask = True
    Left = 62
    Top = 476
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPARM'
        ParamType = ptInput
      end>
    object CmpAr2ID_CMPPOR: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'ID_CMPPOR'
      Origin = 'ISADE.CMPAR2.ID_CMPPOR'
    end
    object CmpAr2APEPOR: TStringField
      DisplayLabel = 'Porto'
      DisplayWidth = 35
      FieldName = 'APEPOR'
      Size = 30
    end
    object CmpAr2MSCAR2: TFloatField
      DisplayLabel = '          Valor MSC (USD)'
      DisplayWidth = 10
      FieldName = 'MSCAR2'
      Origin = 'ISADE.CMPAR2.MSCAR2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpAr2THCAR2: TFloatField
      DisplayLabel = '             Valor THC (USD)'
      DisplayWidth = 10
      FieldName = 'THCAR2'
      Origin = 'ISADE.CMPAR2.THCAR2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpAr2PESMAX: TFloatField
      DisplayLabel = '    Peso máximo'
      DisplayWidth = 10
      FieldName = 'PESMAX'
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpAr2CUBMAX: TFloatField
      DisplayLabel = '  Cubagem máxima'
      DisplayWidth = 10
      FieldName = 'CUBMAX'
      DisplayFormat = '###,###,##0.000000'
    end
    object CmpAr2ID_CMPAR2: TIntegerField
      FieldName = 'ID_CMPAR2'
      Origin = 'ISADE.CMPAR2.ID_CMPAR2'
      Visible = False
    end
    object CmpAr2ID_CMPARM: TIntegerField
      FieldName = 'ID_CMPARM'
      Origin = 'ISADE.CMPAR2.ID_CMPARM'
      Visible = False
    end
    object CmpAr2FLGINT: TStringField
      FieldName = 'FLGINT'
      Origin = 'ISADE.CMPAR2.FLGINT'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object UpCmpAr2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpAr2'
      'set'
      '  ID_CMPPOR = :ID_CMPPOR,'
      '  MSCAR2 = :MSCAR2,'
      '  THCAR2 = :THCAR2,'
      '  FLGINT = :FLGINT,'
      '  PESMAX = :PESMAX,'
      '  CUBMAX = :CUBMAX'
      'where'
      '  ID_CMPAR2 = :OLD_ID_CMPAR2')
    InsertSQL.Strings = (
      'insert into CmpAr2'
      
        '(ID_CMPAR2, ID_CMPARM, ID_CMPPOR, MSCAR2, THCAR2, FLGINT, PESMAX' +
        ', '
      'CUBMAX)'
      'values'
      '(:ID_CMPAR2, :ID_CMPARM, :ID_CMPPOR, :MSCAR2, :THCAR2, :FLGINT, '
      ':PESMAX, :CUBMAX)')
    DeleteSQL.Strings = (
      'delete from CmpAr2'
      'where'
      '  ID_CMPAR2 = :OLD_ID_CMPAR2')
    Left = 62
    Top = 504
  end
  object DsCmpAr2: TwwDataSource
    DataSet = CmpAr2
    OnDataChange = DsCmpAr2DataChange
    Left = 90
    Top = 476
  end
  object CmpPor: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select CmpPor.Id_CmpPor,'
      '           CmpPor.ApePor'
      'From CmpPor'
      'Where CmpPor.FlgAti = '#39'Sim'#39
      'Order by CmpPor.ApePor')
    ValidateWithMask = True
    Left = 122
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
  end
  object dsCmpPor: TwwDataSource
    DataSet = CmpPor
    Left = 150
    Top = 476
  end
end
