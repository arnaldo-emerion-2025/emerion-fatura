inherited fmManIcm: TfmManIcm
  Left = 342
  Top = 153
  Caption = 'Regras de ICMS'
  ClientHeight = 385
  ClientWidth = 625
  Color = 15788249
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcIcm: TPageControl
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
        Width = 622
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
        Width = 434
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 189
        Top = 120
        Width = 434
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 227
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
        Height = 200
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grIcm: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 618
          Height = 198
          Selected.Strings = (
            'CODICM'#9'20'#9'Código'
            'TIPICM'#9'10'#9'Tipo'
            
              'NOMICM'#9'71'#9'Descrição                                             ' +
              '                                                                ' +
              '          '#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsIcm
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
          OnDblClick = grIcmDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomIcm: TdxColorEdit
        Left = 78
        Top = 44
        Width = 341
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
      object EdPsqCodIcm: TdxColorEdit
        Left = 78
        Top = 21
        Width = 112
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
      object BbPesquisa: TBitBtn
        Left = 261
        Top = 70
        Width = 157
        Height = 48
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
        Left = 420
        Top = 14
        Width = 96
        Height = 105
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
        Top = 14
        Width = 103
        Height = 105
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
      object EdPsqTipIcm: TdxColorPickEdit
        Left = 316
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
        Top = 94
        Width = 86
        Height = 13
        Caption = 'Aliquota de ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 3
        Top = 117
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
        Top = 140
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
        Top = 163
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
      object Label2: TLabel
        Left = 3
        Top = 186
        Width = 121
        Height = 13
        Caption = '(%) Incidência sobre IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 3
        Top = 209
        Width = 121
        Height = 13
        Caption = '(%) Incidência sobre IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 257
        Top = 186
        Width = 67
        Height = 13
        Caption = '(Revendedor)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 257
        Top = 210
        Width = 89
        Height = 13
        Caption = '(Consumidor Final)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 3
        Top = 232
        Width = 101
        Height = 13
        Caption = 'Situação tributária 1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 3
        Top = 255
        Width = 101
        Height = 13
        Caption = 'Situação tributária 2:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdCodIcm: TdxDBColorEdit
        Left = 159
        Top = 21
        Width = 112
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
        DataField = 'CODICM'
        DataSource = DsIcm
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomIcm: TdxDBColorEdit
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
        DataField = 'NOMICM'
        DataSource = DsIcm
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdTipIcm: TdxDBColorPickEdit
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
        DataField = 'TIPICM'
        DataSource = DsIcm
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdTrbIcm: TdxDBColorPickEdit
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
        DataField = 'TRBICM'
        DataSource = DsIcm
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdPerIcm: TdxDBColorCurrencyEdit
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
        DataField = 'PERICM'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdRedIcm: TdxDBColorCurrencyEdit
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
        DataField = 'REDICM'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdRecIcm: TdxDBColorCurrencyEdit
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
        DataField = 'RECICM'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdBasIcm: TdxDBColorCurrencyEdit
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
        DataField = 'BASICM'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdIncRev: TdxDBColorCurrencyEdit
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
        DataField = 'INCREV'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdIncFin: TdxDBColorCurrencyEdit
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
        DataField = 'INCFIN'
        DataSource = DsIcm
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdCodSt1: TdxDBColorEdit
        Left = 159
        Top = 228
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
        TabOrder = 10
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODST1'
        DataSource = DsIcm
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomSt1: TdxDBColorLookupEdit
        Left = 257
        Top = 228
        Width = 364
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
        TabStop = False
        DataField = 'CODST1'
        DataSource = DsIcm
        ReadOnly = False
        ListFieldName = 'NOMST1;CODST1'
        KeyFieldName = 'CODST1'
        ListSource = DsSt1
        LookupKeyValue = '0'
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodSt2: TdxDBColorEdit
        Left = 159
        Top = 251
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
        TabOrder = 12
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODST2'
        DataSource = DsIcm
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomSt2: TdxDBColorLookupEdit
        Left = 257
        Top = 251
        Width = 364
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
        TabStop = False
        DataField = 'CODST2'
        DataSource = DsIcm
        ReadOnly = False
        ListFieldName = 'NOMST2;CODST2'
        KeyFieldName = 'CODST2'
        ListSource = DsSt2
        LookupKeyValue = '400'
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvIcm: ThDBNavigator
    Left = 256
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvIcmImprime
    DataSource = DsIcm
    BaseAtualizar = 'EstTxfEstSt1EstSt2ProTxf'
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
    Top = 416
  end
  object EstIcm: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstIcmNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstIcm'
      'Order by CodIcm')
    UpdateObject = UpIcm
    ValidateWithMask = True
    Left = 2
    Top = 388
    object EstIcmCODICM: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 20
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object EstIcmTIPICM: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'TIPICM'
      Origin = 'ISADE.ESTICM.TIPICM'
      FixedChar = True
      Size = 7
    end
    object EstIcmNOMICM: TStringField
      DisplayLabel = 
        'Descrição                                                       ' +
        '                                                                '
      DisplayWidth = 71
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object EstIcmTRBICM: TStringField
      DisplayLabel = ' '
      FieldName = 'TRBICM'
      Origin = 'ISADE.ESTICM.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIcmPERICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'PERICM'
      Origin = 'ISADE.ESTICM.PERICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmREDICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'REDICM'
      Origin = 'ISADE.ESTICM.REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmRECICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'RECICM'
      Origin = 'ISADE.ESTICM.RECICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmBASICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'BASICM'
      Origin = 'ISADE.ESTICM.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmINCREV: TFloatField
      DisplayLabel = ' '
      FieldName = 'INCREV'
      Origin = 'ISADE.ESTICM.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmINCFIN: TFloatField
      DisplayLabel = ' '
      FieldName = 'INCFIN'
      Origin = 'ISADE.ESTICM.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmITECON: TStringField
      DisplayLabel = ' '
      FieldName = 'ITECON'
      Origin = 'ISADE.ESTICM.ITECON'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstIcmCODST1: TStringField
      DisplayLabel = ' '
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTICM.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstIcmCODST2: TStringField
      DisplayLabel = ' '
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTICM.CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object DsIcm: TwwDataSource
    DataSet = EstIcm
    OnDataChange = DsIcmDataChange
    Left = 30
    Top = 388
  end
  object UpIcm: TUpdateSQL
    ModifySQL.Strings = (
      'update EstIcm'
      'set'
      '  NOMICM = :NOMICM,'
      '  TRBICM = :TRBICM,'
      '  PERICM = :PERICM,'
      '  REDICM = :REDICM,'
      '  RECICM = :RECICM,'
      '  BASICM = :BASICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  ITECON = :ITECON,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2'
      'where'
      '  CODICM = :OLD_CODICM and'
      '  TIPICM = :OLD_TIPICM')
    InsertSQL.Strings = (
      'insert into EstIcm'
      
        '  (CODICM, TIPICM, NOMICM, TRBICM, PERICM, REDICM, RECICM, BASIC' +
        'M, '
      'INCREV, '
      '   INCFIN, ITECON, CODST1, CODST2)'
      'values'
      
        '  (:CODICM, :TIPICM, :NOMICM, :TRBICM, :PERICM, :REDICM, :RECICM' +
        ', :BASICM, '
      '   :INCREV, :INCFIN, :ITECON, :CODST1, :CODST2)')
    DeleteSQL.Strings = (
      'delete from EstIcm'
      'where'
      '  CODICM = :OLD_CODICM and'
      '  TIPICM = :OLD_TIPICM')
    Left = 2
    Top = 416
  end
  object EstSt2: TwwQuery
    Tag = 1
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstSt2 order by CodSt2')
    ValidateWithMask = True
    Left = 64
    Top = 416
    object EstSt2NOMST2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 90
      FieldName = 'NOMST2'
      Origin = 'ISADE.ESTST2.NOMST2'
      FixedChar = True
      Size = 90
    end
    object EstSt2CODST2: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 2
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTST2.CODST2'
      FixedChar = True
      Size = 2
    end
  end
  object EstSt1: TwwQuery
    Tag = 1
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstSt1 order by CodSt1')
    ValidateWithMask = True
    Left = 64
    Top = 388
    object EstSt1NOMST1: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 60
      FieldName = 'NOMST1'
      Origin = 'ISADE.ESTST1.NOMST1'
      FixedChar = True
      Size = 60
    end
    object EstSt1CODST1: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTST1.CODST1'
      FixedChar = True
      Size = 1
    end
  end
  object DsSt1: TwwDataSource
    DataSet = EstSt1
    Left = 92
    Top = 416
  end
  object DsSt2: TwwDataSource
    DataSet = EstSt2
    Left = 92
    Top = 388
  end
  object DsReport: TppDBPipeline
    DataSource = DsIcm
    UserName = 'DsReport'
    Left = 2
    Top = 444
    object DsReportppField1: TppField
      FieldAlias = 'CODICM'
      FieldName = 'CODICM'
      FieldLength = 7
      DisplayWidth = 9
      Position = 0
    end
    object DsReportppField2: TppField
      FieldAlias = 'TIPICM'
      FieldName = 'TIPICM'
      FieldLength = 7
      DisplayWidth = 10
      Position = 1
    end
    object DsReportppField3: TppField
      FieldAlias = 'NOMICM'
      FieldName = 'NOMICM'
      FieldLength = 100
      DisplayWidth = 79
      Position = 2
    end
    object DsReportppField4: TppField
      FieldAlias = 'TRBICM'
      FieldName = 'TRBICM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object DsReportppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERICM'
      FieldName = 'PERICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DsReportppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDICM'
      FieldName = 'REDICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object DsReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECICM'
      FieldName = 'RECICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object DsReportppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASICM'
      FieldName = 'BASICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object DsReportppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'INCREV'
      FieldName = 'INCREV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object DsReportppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'INCFIN'
      FieldName = 'INCFIN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object DsReportppField11: TppField
      FieldAlias = 'ITECON'
      FieldName = 'ITECON'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object DsReportppField12: TppField
      FieldAlias = 'CODST1'
      FieldName = 'CODST1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object DsReportppField13: TppField
      FieldAlias = 'CODST2'
      FieldName = 'CODST2'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
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
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\DualComp\Relatorios\RManIcm.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 30
    Top = 444
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Regras de ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 28222
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
        mmTop = 14552
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
        mmTop = 14552
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
        mmTop = 14552
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
        mmLeft = 133615
        mmTop = 14552
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taRightJustify
        Caption = 'Rec. do Valor'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 169598
        mmTop = 14552
        mmWidth = 18909
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = '% Redução'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 150548
        mmTop = 14552
        mmWidth = 18256
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
        mmLeft = 189177
        mmTop = 14552
        mmWidth = 22154
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Inscidência IPI'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 214578
        mmTop = 10054
        mmWidth = 22013
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
        mmTop = 14552
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Alignment = taRightJustify
        Caption = 'Revenda'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 212461
        mmTop = 14552
        mmWidth = 12559
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Alignment = taRightJustify
        Caption = 'Consumo'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 225690
        mmTop = 14552
        mmWidth = 12982
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Sit Trib.'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 239448
        mmTop = 14552
        mmWidth = 11148
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
        mmLeft = 177800
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
        mmLeft = 199761
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label9'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 231246
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
        mmLeft = 248444
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
      object ppCodIcm: TppDBText
        UserName = 'CodIcm'
        DataField = 'CODICM'
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
      object ppNomIcm: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMICM'
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
      object ppTipIcm: TppDBText
        UserName = 'CodIpi1'
        DataField = 'TIPICM'
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
      object ppPerIcm: TppDBText
        UserName = 'PerIcm'
        Alignment = taRightJustify
        DataField = 'PERICM'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 1058
        mmWidth = 16087
        BandType = 4
      end
      object ppRedIcm: TppDBText
        UserName = 'PerIPi1'
        Alignment = taRightJustify
        DataField = 'REDICM'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 150548
        mmTop = 1058
        mmWidth = 18256
        BandType = 4
      end
      object ppRecIcm: TppDBText
        UserName = 'RecIcm'
        Alignment = taRightJustify
        DataField = 'RECICM'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 1058
        mmWidth = 18909
        BandType = 4
      end
      object ppBasIcm: TppDBText
        UserName = 'BasIcm'
        Alignment = taRightJustify
        DataField = 'BASICM'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 189177
        mmTop = 1058
        mmWidth = 22154
        BandType = 4
      end
      object ppIncRev: TppDBText
        UserName = 'BasIpi1'
        Alignment = taRightJustify
        DataField = 'INCREV'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 212461
        mmTop = 1058
        mmWidth = 12559
        BandType = 4
      end
      object ppTrbIcm: TppDBText
        UserName = 'TrbIcm'
        DataField = 'TRBICM'
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
      object ppIncFin: TppDBText
        UserName = 'IncFin'
        Alignment = taRightJustify
        DataField = 'INCFIN'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 225690
        mmTop = 1058
        mmWidth = 12982
        BandType = 4
      end
      object ppCodSt1: TppDBText
        UserName = 'TrbIcm1'
        Alignment = taRightJustify
        DataField = 'CODST1'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 239448
        mmTop = 1058
        mmWidth = 4763
        BandType = 4
      end
      object ppCodSt2: TppDBText
        UserName = 'CodSt2'
        Alignment = taRightJustify
        DataField = 'CODST2'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 245005
        mmTop = 1058
        mmWidth = 5292
        BandType = 4
      end
    end
  end
end
