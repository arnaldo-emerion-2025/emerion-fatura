inherited fmManIpi: TfmManIpi
  Left = 522
  Top = 148
  Caption = 'Regras de IPI'
  ClientHeight = 386
  ClientWidth = 624
  Color = 15788249
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcIpi: TPageControl
    Left = -1
    Top = 0
    Width = 639
    Height = 387
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 93
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape1: TShape
        Left = 0
        Top = 112
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
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
        Top = 335
        Width = 621
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 3
        Top = 339
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
      object Label1: TLabel
        Left = 3
        Top = 114
        Width = 116
        Height = 13
        Caption = 'Regras selecionadas'
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
      object Label4: TLabel
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
      object Label6: TLabel
        Left = 3
        Top = 48
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
      object Label8: TLabel
        Left = 3
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
      object Shape2: TShape
        Left = 189
        Top = 8
        Width = 431
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 189
        Top = 120
        Width = 431
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 229
        Top = 25
        Width = 87
        Height = 13
        Caption = 'Tipo de operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 133
        Width = 620
        Height = 201
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grIpi: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 618
          Height = 199
          Selected.Strings = (
            'CODIPI'#9'30'#9'Código'
            'TIPIPI'#9'12'#9'Tipo'
            
              'NOMIPI'#9'59'#9'Descrição                                             ' +
              '                                                 ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsIpi
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
          OnDblClick = grIpiDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomIpi: TdxColorEdit
        Left = 78
        Top = 44
        Width = 343
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
      object EdPsqCodIpi: TdxColorEdit
        Left = 78
        Top = 21
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
        TabOrder = 2
        CharCase = ecUpperCase
        MaxLength = 30
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 254
        Top = 71
        Width = 166
        Height = 45
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
      object rgOrdem: TRadioGroup
        Left = 422
        Top = 18
        Width = 94
        Height = 101
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descrição'
          'Tipo')
        ParentFont = False
        TabOrder = 4
      end
      object rgBusca: TRadioGroup
        Left = 518
        Top = 18
        Width = 103
        Height = 101
        Caption = ' Tipo de Busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 5
      end
      object EdPsqTipIpi: TdxColorPickEdit
        Left = 318
        Top = 21
        Width = 103
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
        HideSelection = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada'
          'Todos')
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      object Shape5: TShape
        Left = 189
        Top = 8
        Width = 431
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 188
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 3
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
      object Label14: TLabel
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
      object Label15: TLabel
        Left = 3
        Top = 48
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
      object Label16: TLabel
        Left = 431
        Top = 25
        Width = 87
        Height = 13
        Caption = 'Tipo de operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 71
        Width = 50
        Height = 13
        Caption = 'Tributado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 3
        Top = 117
        Width = 75
        Height = 13
        Caption = 'Aliquota do IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 3
        Top = 140
        Width = 150
        Height = 13
        Caption = '(%) Redução valor do imposto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 3
        Top = 163
        Width = 131
        Height = 13
        Caption = '(%) Recuperação do valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 3
        Top = 186
        Width = 99
        Height = 13
        Caption = '(%) Base de cálculo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 3
        Top = 209
        Width = 92
        Height = 13
        Caption = 'Classificação fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 94
        Width = 69
        Height = 13
        Caption = 'Aliquota do II:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 3
        Top = 232
        Width = 59
        Height = 13
        Caption = 'Texto fiscal:'
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
        Top = 255
        Width = 39
        Height = 13
        Caption = 'Genero:'
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
      object EdCodIpi: TdxDBColorEdit
        Left = 159
        Top = 21
        Width = 152
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
        DataField = 'CODIPI'
        DataSource = DsIpi
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomIpi: TdxDBColorEdit
        Left = 159
        Top = 44
        Width = 463
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'NOMIPI'
        DataSource = DsIpi
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdTipIpi: TdxDBColorPickEdit
        Left = 520
        Top = 21
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
        TabOrder = 1
        DataField = 'TIPIPI'
        DataSource = DsIpi
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdTrbIpi: TdxDBColorPickEdit
        Left = 159
        Top = 67
        Width = 59
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
        DataField = 'TRBIPI'
        DataSource = DsIpi
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdPerIpi: TdxDBColorCurrencyEdit
        Left = 159
        Top = 113
        Width = 94
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
        DataField = 'PERIPI'
        DataSource = DsIpi
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdRedIpi: TdxDBColorCurrencyEdit
        Left = 159
        Top = 136
        Width = 94
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
        DataField = 'REDIPI'
        DataSource = DsIpi
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdRecIpi: TdxDBColorCurrencyEdit
        Left = 159
        Top = 159
        Width = 94
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
        DataField = 'RECIPI'
        DataSource = DsIpi
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdBasIpi: TdxDBColorCurrencyEdit
        Left = 159
        Top = 182
        Width = 94
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
        DataField = 'BASIPI'
        DataSource = DsIpi
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdClsIpi: TdxDBColorEdit
        Left = 159
        Top = 205
        Width = 94
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CLSIPI'
        DataSource = DsIpi
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdPerImp: TdxDBColorCurrencyEdit
        Left = 159
        Top = 90
        Width = 94
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
        DataField = 'PERIMP'
        DataSource = DsIpi
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object CbNomTxf: TdxDBColorLookupEdit
        Left = 283
        Top = 228
        Width = 339
        Color = 16577773
        DragMode = dmAutomatic
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
        TabStop = False
        DataField = 'CODTXF'
        DataSource = DsIpi
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'DSRTXF;CODTXF'
        KeyFieldName = 'CODTXF'
        ListSource = DsTxf
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodTxf: TdxDBColorEdit
        Left = 159
        Top = 228
        Width = 94
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
        DataField = 'CODTXF'
        DataSource = DsIpi
        CorDeFoco = clInfoBk
      end
      object EdId_EstNcm: TdxDBColorEdit
        Left = 159
        Top = 251
        Width = 94
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
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'ID_ESTNCM'
        DataSource = DsIpi
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomNcm: TdxDBColorLookupEdit
        Left = 283
        Top = 251
        Width = 339
        Color = 16577773
        DragMode = dmAutomatic
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
        TabStop = False
        DataField = 'ID_ESTNCM'
        DataSource = DsIpi
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMNCM'
        KeyFieldName = 'ID_ESTNCM'
        ListSource = DsEstNcm
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvIpi: ThDBNavigator
    Left = 255
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvIpiImprime
    BeforeSalva = nvIpiBeforeSalva
    DataSource = DsIpi
    BaseAtualizar = 'EstTxfProTxf'
    UsaAppend = False
    Salvar = False
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 30
    Top = 417
  end
  object EstIpi: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstIpiNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstIpi'
      'Order by CodIpi')
    UpdateObject = UpIpi
    ValidateWithMask = True
    Left = 2
    Top = 389
    object EstIpiCODIPI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 30
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTIPI.CODIPI'
      FixedChar = True
      Size = 30
    end
    object EstIpiTIPIPI: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 12
      FieldName = 'TIPIPI'
      Origin = 'ISADE.ESTIPI.TIPIPI'
      FixedChar = True
      Size = 70
    end
    object EstIpiNOMIPI: TStringField
      DisplayLabel = 
        'Descrição                                                       ' +
        '                                       '
      DisplayWidth = 59
      FieldName = 'NOMIPI'
      Origin = 'ISADE.ESTIPI.NOMIPI'
      FixedChar = True
      Size = 100
    end
    object EstIpiCLSIPI: TStringField
      DisplayWidth = 30
      FieldName = 'CLSIPI'
      Origin = 'ISADE.ESTIPI.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstIpiREGIPI: TStringField
      DisplayLabel = ' '
      FieldName = 'REGIPI'
      Origin = 'ISADE.ESTIPI.REGIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIpiTRBIPI: TStringField
      DisplayLabel = ' '
      FieldName = 'TRBIPI'
      Origin = 'ISADE.ESTIPI.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIpiPERIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'PERIPI'
      Origin = 'ISADE.ESTIPI.PERIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiREDIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'REDIPI'
      Origin = 'ISADE.ESTIPI.REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiRECIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'RECIPI'
      Origin = 'ISADE.ESTIPI.RECIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiBASIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'BASIPI'
      Origin = 'ISADE.ESTIPI.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiPERIMP: TFloatField
      DisplayWidth = 10
      FieldName = 'PERIMP'
      Origin = 'ISADE.ESTIPI.PERIMP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiCODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTIPI.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstIpiID_ESTNCM: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTNCM'
      Origin = 'ISADE.ESTIPI.ID_ESTNCM'
      Visible = False
    end
  end
  object DsIpi: TwwDataSource
    DataSet = EstIpi
    OnDataChange = DsIpiDataChange
    Left = 30
    Top = 389
  end
  object UpIpi: TUpdateSQL
    ModifySQL.Strings = (
      'update EstIpi'
      'set'
      '  NOMIPI = :NOMIPI,'
      '  REGIPI = :REGIPI,'
      '  TRBIPI = :TRBIPI,'
      '  PERIPI = :PERIPI,'
      '  REDIPI = :REDIPI,'
      '  RECIPI = :RECIPI,'
      '  BASIPI = :BASIPI,'
      '  CLSIPI = :CLSIPI,'
      '  PERIMP = :PERIMP,'
      '  CODTXF = :CODTXF,'
      '  ID_ESTNCM = :ID_ESTNCM'
      'where'
      '  CODIPI = :OLD_CODIPI and'
      '  TIPIPI = :OLD_TIPIPI')
    InsertSQL.Strings = (
      'insert into EstIpi'
      
        '  (CODIPI, TIPIPI, NOMIPI, REGIPI, TRBIPI, PERIPI, REDIPI, RECIP' +
        'I, BASIPI, '
      '   CLSIPI, PERIMP, CODTXF, ID_ESTNCM)'
      'values'
      
        '  (:CODIPI, :TIPIPI, :NOMIPI, :REGIPI, :TRBIPI, :PERIPI, :REDIPI' +
        ', :RECIPI, '
      '   :BASIPI, :CLSIPI, :PERIMP, :CODTXF, :ID_ESTNCM)')
    DeleteSQL.Strings = (
      'delete from EstIpi'
      'where'
      '  CODIPI = :OLD_CODIPI and'
      '  TIPIPI = :OLD_TIPIPI')
    Left = 2
    Top = 417
  end
  object DsReport: TppDBPipeline
    DataSource = DsIpi
    UserName = 'DsReport'
    Left = 2
    Top = 445
    object DsReportppField1: TppField
      FieldAlias = 'CODIPI'
      FieldName = 'CODIPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object DsReportppField2: TppField
      FieldAlias = 'TIPIPI'
      FieldName = 'TIPIPI'
      FieldLength = 70
      DisplayWidth = 12
      Position = 1
    end
    object DsReportppField3: TppField
      FieldAlias = 'NOMIPI'
      FieldName = 'NOMIPI'
      FieldLength = 100
      DisplayWidth = 40
      Position = 2
    end
    object DsReportppField4: TppField
      FieldAlias = 'CLSIPI'
      FieldName = 'CLSIPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object DsReportppField5: TppField
      FieldAlias = 'REGIPI'
      FieldName = 'REGIPI'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object DsReportppField6: TppField
      FieldAlias = 'TRBIPI'
      FieldName = 'TRBIPI'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object DsReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERIPI'
      FieldName = 'PERIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object DsReportppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDIPI'
      FieldName = 'REDIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object DsReportppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECIPI'
      FieldName = 'RECIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object DsReportppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASIPI'
      FieldName = 'BASIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
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
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\DualComp\Relatorios\RManIpi.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 30
    Top = 445
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Regras de IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 24412
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
        mmTop = 10848
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
        mmLeft = 50006
        mmTop = 10848
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Tipo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 17463
        mmTop = 10848
        mmWidth = 6068
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Alignment = taRightJustify
        Caption = '% Aliquota'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 126207
        mmTop = 10848
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taRightJustify
        Caption = 'Recuperação do Valor'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 177536
        mmTop = 10848
        mmWidth = 31327
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = '% Redução do Imposto'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 143140
        mmTop = 10848
        mmWidth = 33726
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Alignment = taRightJustify
        Caption = '% Base Calculo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 209550
        mmTop = 10848
        mmWidth = 22154
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Classificação Fiscal'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 232569
        mmTop = 10848
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Tributado'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 34131
        mmTop = 10848
        mmWidth = 15081
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
        mmLeft = 188648
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 210609
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 242094
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 259292
        mmTop = 1323
        mmWidth = 1552
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      BeforePrint = dbReportBeforePrint
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppCodIpi: TppDBText
        UserName = 'CodIpi'
        DataField = 'CODIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 1058
        mmWidth = 16140
        BandType = 4
      end
      object ppNomIpi: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 50006
        mmTop = 1058
        mmWidth = 75406
        BandType = 4
      end
      object ppTipIpi: TppDBText
        UserName = 'CodIpi1'
        DataField = 'TIPIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 1058
        mmWidth = 15875
        BandType = 4
      end
      object ppPerIPi: TppDBText
        UserName = 'PerIPi'
        Alignment = taRightJustify
        DataField = 'PERIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 1058
        mmWidth = 16087
        BandType = 4
      end
      object ppRedIpi: TppDBText
        UserName = 'PerIPi1'
        Alignment = taRightJustify
        DataField = 'REDIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 1058
        mmWidth = 33726
        BandType = 4
      end
      object ppRecIpi: TppDBText
        UserName = 'RecIpi'
        Alignment = taRightJustify
        DataField = 'RECIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 1058
        mmWidth = 31221
        BandType = 4
      end
      object ppBasIpi: TppDBText
        UserName = 'BasIpi'
        Alignment = taRightJustify
        DataField = 'BASIPI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 209550
        mmTop = 1058
        mmWidth = 22154
        BandType = 4
      end
      object ppClsIpi: TppDBText
        UserName = 'BasIpi1'
        DataField = 'CLSIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 232569
        mmTop = 1058
        mmWidth = 28575
        BandType = 4
      end
      object ppTrbIpi: TppDBText
        UserName = 'TrbIpi'
        DataField = 'TRBIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 34131
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
    end
  end
  object EstTxf: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstTxf'
      'Where TipTxf = '#39'Ipi'#39
      'Order by CodTxf')
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'PISCOF;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 69
    Top = 389
    object EstTxfCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object EstTxfTIPTXF: TStringField
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      FixedChar = True
      Size = 4
    end
    object EstTxfDSRTXF: TStringField
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 50
    end
    object EstTxfDSCTXF: TStringField
      FieldName = 'DSCTXF'
      Origin = 'ISADE.ESTTXF.DSCTXF'
      FixedChar = True
      Size = 160
    end
  end
  object DsTxf: TwwDataSource
    AutoEdit = False
    DataSet = EstTxf
    Left = 97
    Top = 389
  end
  object EstNcm: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstNcm'
      'Order by EstNcm.Id_EstNcm')
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'PISCOF;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 69
    Top = 417
    object EstNcmID_ESTNCM: TIntegerField
      FieldName = 'ID_ESTNCM'
      Origin = 'ISADE.ESTNCM.ID_ESTNCM'
    end
    object EstNcmNOMNCM: TStringField
      FieldName = 'NOMNCM'
      Origin = 'ISADE.ESTNCM.NOMNCM'
      Size = 70
    end
    object EstNcmID_ESTSEC: TIntegerField
      FieldName = 'ID_ESTSEC'
      Origin = 'ISADE.ESTNCM.ID_ESTSEC'
    end
  end
  object DsEstNcm: TwwDataSource
    AutoEdit = False
    DataSet = EstNcm
    Left = 97
    Top = 417
  end
end
