inherited fmManPfa: TfmManPfa
  Left = 30
  Top = 3
  Caption = 'Padrões de faturamento'
  ClientHeight = 464
  ClientWidth = 739
  Color = 15788249
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcPfa: TPageControl
    Left = -1
    Top = 0
    Width = 743
    Height = 472
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 124
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape3: TShape
        Left = 0
        Top = 132
        Width = 249
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 249
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label8: TLabel
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
      object Shape2: TShape
        Left = 250
        Top = 7
        Width = 485
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label24: TLabel
        Left = 4
        Top = 134
        Width = 122
        Height = 13
        Caption = 'Padrões selecionados'
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
        Left = 250
        Top = 140
        Width = 489
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape11: TShape
        Left = 0
        Top = 415
        Width = 735
        Height = 20
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label25: TLabel
        Left = 4
        Top = 418
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
        Left = 1
        Top = 24
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
        Left = 1
        Top = 47
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
      object Label26: TLabel
        Left = 1
        Top = 70
        Width = 130
        Height = 13
        Caption = 'Descrição consulta interna:'
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
      object bbPesquisa: TBitBtn
        Left = 329
        Top = 94
        Width = 180
        Height = 43
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
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
        Left = 512
        Top = 17
        Width = 109
        Height = 121
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descrição')
        ParentFont = False
        TabOrder = 1
      end
      object rgBusca: TRadioGroup
        Left = 624
        Top = 17
        Width = 110
        Height = 121
        Caption = ' Tipo de Busca '
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
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 0
        Top = 152
        Width = 734
        Height = 261
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 3
        object grPfa: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 732
          Height = 259
          Selected.Strings = (
            'CODPFA'#9'17'#9'Código'
            'DSCPFA'#9'58'#9'Descrição'
            'TIPPFA'#9'8'#9'Tipo'
            'LOCPFA'#9'25'#9'Origem/Destino'
            'CODCF1'#9'10'#9'C F O P         ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsPfa
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
      object EdPsqCodPfa: TdxColorEdit
        Left = 149
        Top = 20
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
        TabOrder = 4
        CharCase = ecUpperCase
        MaxLength = 15
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqDscPfa: TdxColorEdit
        Left = 149
        Top = 66
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
        TabOrder = 5
        CharCase = ecUpperCase
        MaxLength = 100
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqTipPfa: TdxColorPickEdit
        Left = 149
        Top = 43
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
        TabOrder = 6
        HideSelection = False
        MaxLength = 7
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada'
          'Todos')
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      OnShow = pcPag2Show
      object Shape8: TShape
        Left = 369
        Top = 345
        Width = 366
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 345
        Width = 366
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 250
        Top = 7
        Width = 485
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 249
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label27: TLabel
        Left = 4
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
      object Label28: TLabel
        Left = 1
        Top = 24
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
      object Label29: TLabel
        Left = 1
        Top = 47
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
      object Label30: TLabel
        Left = 1
        Top = 70
        Width = 130
        Height = 13
        Caption = 'Descrição consulta interna:'
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
        Left = 1
        Top = 116
        Width = 130
        Height = 13
        Caption = 'Código fiscal da operação :'
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
      object Label34: TLabel
        Left = 1
        Top = 139
        Width = 121
        Height = 13
        Caption = 'Integra com o financeiro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 1
        Top = 185
        Width = 81
        Height = 13
        Caption = 'Origem/Destino :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 345
        Top = 116
        Width = 84
        Height = 13
        Caption = 'Atualiza estoque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 1
        Top = 162
        Width = 110
        Height = 13
        Caption = 'Para consumidor final ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 347
        Width = 135
        Height = 13
        Caption = 'Base de calculo do ICMS'
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
      object Label3: TLabel
        Left = 1
        Top = 368
        Width = 55
        Height = 13
        Caption = '(%) Frete :'
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
        Left = 1
        Top = 392
        Width = 63
        Height = 13
        Caption = '(%) Seguro :'
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
        Left = 1
        Top = 416
        Width = 111
        Height = 13
        Caption = '(%) Outras Despesas :'
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
        Left = 373
        Top = 347
        Width = 123
        Height = 13
        Caption = 'Base de calculo do IPI'
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
      object Label22: TLabel
        Left = 370
        Top = 368
        Width = 55
        Height = 13
        Caption = '(%) Frete :'
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
        Left = 370
        Top = 392
        Width = 63
        Height = 13
        Caption = '(%) Seguro :'
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
        Left = 370
        Top = 416
        Width = 111
        Height = 13
        Caption = '(%) Outras Despesas :'
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
        Left = 1
        Top = 93
        Width = 126
        Height = 13
        Caption = 'Descrição para impressão:'
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
        Left = 1
        Top = 254
        Width = 84
        Height = 13
        Caption = 'Texto fiscal (IPI):'
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
        Left = 1
        Top = 277
        Width = 95
        Height = 13
        Caption = 'Texto fiscal (ICMS):'
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
        Left = 1
        Top = 231
        Width = 76
        Height = 13
        Caption = 'Regra de ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 1
        Top = 208
        Width = 65
        Height = 13
        Caption = 'Regra de IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 345
        Top = 185
        Width = 101
        Height = 13
        Caption = 'Tipo de classificação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 345
        Top = 139
        Width = 65
        Height = 13
        Caption = 'Calcular PIS ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 345
        Top = 162
        Width = 87
        Height = 13
        Caption = 'Calcular COFINS ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 300
        Width = 126
        Height = 13
        Caption = 'Situação tributária do PIS:'
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
        Left = 1
        Top = 323
        Width = 148
        Height = 13
        Caption = 'Situação tributária do COFINS:'
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
      object EdTipPfa: TdxDBColorPickEdit
        Left = 149
        Top = 43
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
        OnExit = EdTipPfaExit
        DataField = 'TIPPFA'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdDscPfa: TdxDBColorEdit
        Left = 149
        Top = 66
        Width = 586
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
        DataField = 'DSCPFA'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdCodPfa: TdxDBColorEdit
        Left = 149
        Top = 20
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
        CharCase = ecUpperCase
        DataField = 'CODPFA'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdCodCf1: TdxDBColorEdit
        Left = 149
        Top = 112
        Width = 78
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
        OnExit = EdCodCf1Exit
        CharCase = ecUpperCase
        DataField = 'CODCF1'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdIntFin: TdxDBColorPickEdit
        Left = 149
        Top = 135
        Width = 78
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
        DataField = 'INTFIN'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdLocPfa: TdxDBColorPickEdit
        Left = 149
        Top = 181
        Width = 188
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
        OnExit = EdLocPfaExit
        DataField = 'LOCPFA'
        DataSource = DsPfa
        MaxLength = 24
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Mesmo Estado'
          'Outros Estados'
          'Importacao ou Exportacao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdAtuEst: TdxDBColorPickEdit
        Left = 476
        Top = 112
        Width = 78
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
        DataField = 'ATUEST'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdConSum: TdxDBColorPickEdit
        Left = 149
        Top = 158
        Width = 78
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
        DataField = 'CONSUM'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdFrtIcm: TdxDBColorCurrencyEdit
        Left = 149
        Top = 364
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        TabOrder = 24
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FRTICM'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdSegIcm: TdxDBColorCurrencyEdit
        Left = 149
        Top = 388
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        TabOrder = 25
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SEGICM'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdDesIcm: TdxDBColorCurrencyEdit
        Left = 149
        Top = 412
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        TabOrder = 26
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESICM'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdFrtIpi: TdxDBColorCurrencyEdit
        Left = 518
        Top = 364
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        TabOrder = 27
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FRTIPI'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdSegIpi: TdxDBColorCurrencyEdit
        Left = 518
        Top = 388
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        TabOrder = 28
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SEGIPI'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdDesIpi: TdxDBColorCurrencyEdit
        Left = 518
        Top = 412
        Width = 68
        Hint = 'Quantidade Pedida para o Item'
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
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESIPI'
        DataSource = DsPfa
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdDsrPfa: TdxDBColorEdit
        Left = 149
        Top = 89
        Width = 244
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
        DataField = 'DSRPFA'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdTxfIpi: TdxDBColorEdit
        Left = 149
        Top = 250
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
        TabOrder = 16
        CharCase = ecUpperCase
        DataField = 'TXFIPI'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdTxfIcm: TdxDBColorEdit
        Left = 149
        Top = 273
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
        TabOrder = 18
        CharCase = ecUpperCase
        DataField = 'TXFICM'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object CbNomTxfIpi: TdxDBColorLookupEdit
        Left = 288
        Top = 250
        Width = 447
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
        TabOrder = 17
        TabStop = False
        DataField = 'TXFIPI'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'DSRTXF;CODTXF'
        KeyFieldName = 'CODTXF'
        ListSource = DsIpi
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomTxfIcm: TdxDBColorLookupEdit
        Left = 288
        Top = 273
        Width = 447
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
        TabOrder = 19
        TabStop = False
        DataField = 'TXFICM'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'DSRTXF;CODTXF'
        KeyFieldName = 'CODTXF'
        ListSource = DsIcm
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdModPfa: TdxDBColorPickEdit
        Left = 476
        Top = 181
        Width = 167
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
        OnExit = EdLocPfaExit
        DataField = 'MODPFA'
        DataSource = DsPfa
        MaxLength = 24
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'RMA'
          'Vales'
          'Trocas'
          'Vendas'
          'Compras'
          'Consumo'
          'Retornos'
          'Servicos'
          'Remessas'
          'Anulacoes'
          'Aquisicoes'
          'Importacao'
          'Devolucoes'
          'Complemento'
          'Transferencias'
          'Industrializacoes'
          'Importacao direta'
          'Outros')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdCodIpi: TdxDBColorEdit
        Left = 149
        Top = 204
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
        TabOrder = 12
        CharCase = ecUpperCase
        DataField = 'CODIPI'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object EdCodIcm: TdxDBColorEdit
        Left = 149
        Top = 227
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
        TabOrder = 14
        CharCase = ecUpperCase
        DataField = 'CODICM'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
      end
      object CbNomIpi: TdxDBColorLookupEdit
        Left = 288
        Top = 204
        Width = 447
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
        DataField = 'CODIPI'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMIPI;CODIPI'
        KeyFieldName = 'CODIPI'
        ListSource = DsEstIpi
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomIcm: TdxDBColorLookupEdit
        Left = 288
        Top = 227
        Width = 447
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
        TabOrder = 15
        TabStop = False
        DataField = 'CODICM'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMICM;CODICM'
        KeyFieldName = 'CODICM'
        ListSource = DsEstIcm
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdTrbCof: TdxDBColorPickEdit
        Left = 476
        Top = 158
        Width = 78
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
        Alignment = taCenter
        DataField = 'TRBCOF'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object EdTrbPis: TdxDBColorPickEdit
        Left = 476
        Top = 135
        Width = 78
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
        Alignment = taCenter
        DataField = 'TRBPIS'
        DataSource = DsPfa
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object EdId_EstPis: TdxDBColorEdit
        Left = 149
        Top = 296
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
        TabOrder = 20
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'ID_ESTPIS'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomPis: TdxDBColorLookupEdit
        Left = 288
        Top = 296
        Width = 447
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
        TabOrder = 21
        TabStop = False
        DataField = 'ID_ESTPIS'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMPIS'
        KeyFieldName = 'ID_ESTPIS'
        ListSource = dsEstPis
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdId_EstCof: TdxDBColorEdit
        Left = 149
        Top = 319
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
        TabOrder = 22
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'ID_ESTCOF'
        DataSource = DsPfa
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCof: TdxDBColorLookupEdit
        Left = 288
        Top = 319
        Width = 447
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
        TabOrder = 23
        TabStop = False
        DataField = 'ID_ESTCOF'
        DataSource = DsPfa
        ReadOnly = False
        DropDownWidth = 430
        ListFieldName = 'NOMCOF'
        KeyFieldName = 'ID_ESTCOF'
        ListSource = DsEstCof
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvPfa: ThDBNavigator
    Left = 370
    Top = -5
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvPfaImprime
    BeforeSalva = nvPfaBeforeSalva
    DataSource = DsPfa
    BaseAtualizar = 'TxfIpiTxfIcmEstIcmEstIpi'
    UsaAppend = True
    Salvar = False
  end
  object EstPfa: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstPfaNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstPfa '
      'Order by CodPfa')
    UpdateObject = UpPfa
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 1
    Top = 466
    object EstPfaCODPFA: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 17
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDPFA.CODPFA'
      FixedChar = True
      Size = 15
    end
    object EstPfaDSCPFA: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 58
      FieldName = 'DSCPFA'
      Origin = 'ISADE.ESTPFA.DSCPFA'
      FixedChar = True
      Size = 100
    end
    object EstPfaTIPPFA: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 8
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDPFA.TIPPFA'
      FixedChar = True
      Size = 7
    end
    object EstPfaLOCPFA: TStringField
      DisplayLabel = 'Origem/Destino'
      DisplayWidth = 25
      FieldName = 'LOCPFA'
      Origin = 'ISADE.PEDPFA.LOCPFA'
      FixedChar = True
      Size = 24
    end
    object EstPfaCODCF1: TStringField
      DisplayLabel = 'C F O P         '
      DisplayWidth = 10
      FieldName = 'CODCF1'
      Origin = 'ISADE.PEDPFA.CODCF1'
      FixedChar = True
      Size = 10
    end
    object EstPfaNROPFA: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROPFA'
      Origin = 'ISADE.ESTPFA.NROPFA'
      Visible = False
    end
    object EstPfaINTFIN: TStringField
      Alignment = taCenter
      DisplayLabel = 'Financeiro'
      DisplayWidth = 10
      FieldName = 'INTFIN'
      Origin = 'ISADE.PEDPFA.INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaATUEST: TStringField
      Alignment = taCenter
      DisplayLabel = '  Estoque'
      DisplayWidth = 10
      FieldName = 'ATUEST'
      Origin = 'ISADE.PEDPFA.ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaCODCF2: TStringField
      DisplayLabel = 'CFOP2'
      DisplayWidth = 5
      FieldName = 'CODCF2'
      Origin = 'ISADE.PEDPFA.CODCF2'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object EstPfaGERLIV: TStringField
      Alignment = taCenter
      DisplayLabel = 'Livros Fiscais'
      DisplayWidth = 3
      FieldName = 'GERLIV'
      Origin = 'ISADE.PEDPFA.GERLIV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaFRTICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'FRTICM'
      Origin = 'ISADE.PEDPFA.FRTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaICMFRT: TFloatField
      DisplayLabel = ' '
      FieldName = 'ICMFRT'
      Origin = 'ISADE.PEDPFA.ICMFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaSEGICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'SEGICM'
      Origin = 'ISADE.PEDPFA.SEGICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaICMSEG: TFloatField
      DisplayLabel = ' '
      FieldName = 'ICMSEG'
      Origin = 'ISADE.PEDPFA.ICMSEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaDESICM: TFloatField
      DisplayLabel = ' '
      FieldName = 'DESICM'
      Origin = 'ISADE.PEDPFA.DESICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaICMDES: TFloatField
      DisplayLabel = ' '
      FieldName = 'ICMDES'
      Origin = 'ISADE.PEDPFA.ICMDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaFRTIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'FRTIPI'
      Origin = 'ISADE.PEDPFA.FRTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaIPIFRT: TFloatField
      DisplayLabel = ' '
      FieldName = 'IPIFRT'
      Origin = 'ISADE.PEDPFA.IPIFRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaSEGIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'SEGIPI'
      Origin = 'ISADE.PEDPFA.SEGIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaIPISEG: TFloatField
      DisplayLabel = ' '
      FieldName = 'IPISEG'
      Origin = 'ISADE.PEDPFA.IPISEG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaDESIPI: TFloatField
      DisplayLabel = ' '
      FieldName = 'DESIPI'
      Origin = 'ISADE.PEDPFA.DESIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaIPIDES: TFloatField
      DisplayLabel = ' '
      FieldName = 'IPIDES'
      Origin = 'ISADE.PEDPFA.IPIDES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstPfaCONSUM: TStringField
      Alignment = taCenter
      FieldName = 'CONSUM'
      Origin = 'ISADE.PEDPFA.CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaDSRPFA: TStringField
      FieldName = 'DSRPFA'
      Origin = 'ISADE.ESTPFA.DSRPFA'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPfaTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.ESTPFA.TXFICM'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPfaTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.ESTPFA.TXFIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPfaMODPFA: TStringField
      DisplayWidth = 20
      FieldName = 'MODPFA'
      Origin = 'ISADE.ESTPFA.MODPFA'
      Visible = False
      FixedChar = True
    end
    object EstPfaCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTPFA.CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstPfaTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.ESTPFA.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPfaCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTPFA.CODICM'
      Visible = False
      FixedChar = True
    end
    object EstPfaTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.ESTPFA.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstPfaTRBPIS: TStringField
      DisplayWidth = 3
      FieldName = 'TRBPIS'
      Origin = 'ISADE.ESTPFA.TRBPIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaTRBCOF: TStringField
      DisplayWidth = 3
      FieldName = 'TRBCOF'
      Origin = 'ISADE.ESTPFA.TRBCOF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstPfaID_ESTPIS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTPIS'
      Origin = 'ISADE.ESTPFA.ID_ESTPIS'
      Visible = False
    end
    object EstPfaID_ESTCOF: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTCOF'
      Origin = 'ISADE.ESTPFA.ID_ESTCOF'
      Visible = False
    end
  end
  object DsPfa: TwwDataSource
    AutoEdit = False
    DataSet = EstPfa
    OnDataChange = DsPfaDataChange
    Left = 29
    Top = 466
  end
  object UpPfa: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPfa'
      'set'
      '  DSCPFA = :DSCPFA,'
      '  DSRPFA = :DSRPFA,'
      '  INTFIN = :INTFIN,'
      '  GERLIV = :GERLIV,'
      '  ATUEST = :ATUEST,'
      '  CONSUM = :CONSUM,'
      '  LOCPFA = :LOCPFA,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTICM = :FRTICM,'
      '  ICMFRT = :ICMFRT,'
      '  SEGICM = :SEGICM,'
      '  ICMSEG = :ICMSEG,'
      '  DESICM = :DESICM,'
      '  ICMDES = :ICMDES,'
      '  FRTIPI = :FRTIPI,'
      '  IPIFRT = :IPIFRT,'
      '  SEGIPI = :SEGIPI,'
      '  IPISEG = :IPISEG,'
      '  DESIPI = :DESIPI,'
      '  IPIDES = :IPIDES,'
      '  TXFICM = :TXFICM,'
      '  TXFIPI = :TXFIPI,'
      '  CODIPI = :CODIPI,'
      '  TIPIPI = :TIPIPI,'
      '  CODICM = :CODICM,'
      '  TIPICM = :TIPICM,'
      '  MODPFA = :MODPFA,'
      '  NROPFA = :NROPFA,'
      '  TRBPIS = :TRBPIS,'
      '  TRBCOF = :TRBCOF,'
      '  ID_ESTPIS = :ID_ESTPIS,'
      '  ID_ESTCOF = :ID_ESTCOF'
      'where'
      '  CODPFA = :OLD_CODPFA and'
      '  TIPPFA = :OLD_TIPPFA')
    InsertSQL.Strings = (
      'insert into EstPfa'
      
        '  (CODPFA, TIPPFA, DSCPFA, DSRPFA, INTFIN, GERLIV, ATUEST, CONSU' +
        'M, LOCPFA, '
      
        '   CODCF1, CODCF2, FRTICM, ICMFRT, SEGICM, ICMSEG, DESICM, ICMDE' +
        'S, FRTIPI, '
      
        '   IPIFRT, SEGIPI, IPISEG, DESIPI, IPIDES, TXFICM, TXFIPI, CODIP' +
        'I, TIPIPI, '
      
        '   CODICM, TIPICM, MODPFA, NROPFA, TRBPIS, TRBCOF, ID_ESTPIS, ID' +
        '_ESTCOF)'
      'values'
      
        '  (:CODPFA, :TIPPFA, :DSCPFA, :DSRPFA, :INTFIN, :GERLIV, :ATUEST' +
        ', :CONSUM, '
      
        '   :LOCPFA, :CODCF1, :CODCF2, :FRTICM, :ICMFRT, :SEGICM, :ICMSEG' +
        ', :DESICM, '
      
        '   :ICMDES, :FRTIPI, :IPIFRT, :SEGIPI, :IPISEG, :DESIPI, :IPIDES' +
        ', :TXFICM, '
      
        '   :TXFIPI, :CODIPI, :TIPIPI, :CODICM, :TIPICM, :MODPFA, :NROPFA' +
        ', :TRBPIS, '
      '   :TRBCOF, :ID_ESTPIS, :ID_ESTCOF)')
    DeleteSQL.Strings = (
      'delete from EstPfa'
      'where'
      '  CODPFA = :OLD_CODPFA and'
      '  TIPPFA = :OLD_TIPPFA')
    Left = 29
    Top = 494
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 1
    Top = 494
  end
  object FinTCl: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *  From FinTCl')
    ValidateWithMask = True
    Left = 1
    Top = 550
    object FinTClNOMTCL: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMTCL'
      Origin = 'ISADE.FINTCL.NOMTCL'
      FixedChar = True
      Size = 40
    end
    object FinTClCODTCL: TIntegerField
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CODTCL'
      Origin = 'ISADE.FINTCL.CODTCL'
    end
  end
  object TxfIpi: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstPfaNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstTxf'
      'Where TipTxf = '#39'Ipi'#39
      'Order by CodTxf')
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 66
    Top = 466
    object TxfIpiCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object TxfIpiTIPTXF: TStringField
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      FixedChar = True
      Size = 4
    end
    object TxfIpiDSRTXF: TStringField
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 50
    end
    object TxfIpiDSCTXF: TStringField
      FieldName = 'DSCTXF'
      Origin = 'ISADE.ESTTXF.DSCTXF'
      FixedChar = True
      Size = 160
    end
  end
  object DsIpi: TwwDataSource
    AutoEdit = False
    DataSet = TxfIpi
    Left = 94
    Top = 466
  end
  object DsIcm: TwwDataSource
    AutoEdit = False
    DataSet = TxfIcm
    Left = 94
    Top = 494
  end
  object TxfIcm: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstPfaNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstTxf'
      'Where TipTxf = '#39'Icms'#39
      'Order by CodTxf')
    ControlType.Strings = (
      'INTFIN;CheckBox;Sim;Nao'
      'GERLIV;CheckBox;Sim;Nao'
      'ATUEST;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 66
    Top = 494
    object StringField1: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'DSCTXF'
      Origin = 'ISADE.ESTTXF.DSCTXF'
      FixedChar = True
      Size = 160
    end
  end
  object EstIcm: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstIcm '
      'Where TipIcm = :TipIcm'
      'Order by CodIcm')
    ValidateWithMask = True
    Left = 66
    Top = 522
    ParamData = <
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object EstIcmNOMICM: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object EstIcmPERICM: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 5
      FieldName = 'PERICM'
      Origin = 'ISADE.ESTICM.PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIcmCODICM: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 20
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
  end
  object EstIpi: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstIpi'
      'Where TipIpi = :TipIpi'
      'Order by CodIpi')
    ValidateWithMask = True
    Left = 66
    Top = 550
    ParamData = <
      item
        DataType = ftString
        Name = 'TipIpi'
        ParamType = ptInput
      end>
    object EstIpiNOMIPI: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMIPI'
      Origin = 'ISADE.ESTIPI.NOMIPI'
      FixedChar = True
      Size = 100
    end
    object EstIpiPERIPI: TFloatField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 5
      FieldName = 'PERIPI'
      Origin = 'ISADE.ESTIPI.PERIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstIpiCODIPI: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 30
      FieldName = 'CODIPI'
      Origin = 'ISADE.ESTIPI.CODIPI'
      FixedChar = True
      Size = 30
    end
  end
  object DsEstIpi: TwwDataSource
    DataSet = EstIpi
    Left = 94
    Top = 550
  end
  object DsEstIcm: TwwDataSource
    DataSet = EstIcm
    Left = 94
    Top = 522
  end
  object DsReport: TppDBPipeline
    DataSource = DsPfa
    UserName = 'DsReport'
    Left = 29
    Top = 522
    object DsReportppField1: TppField
      FieldAlias = 'CODPFA'
      FieldName = 'CODPFA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object DsReportppField2: TppField
      FieldAlias = 'DSCPFA'
      FieldName = 'DSCPFA'
      FieldLength = 100
      DisplayWidth = 58
      Position = 1
    end
    object DsReportppField3: TppField
      FieldAlias = 'TIPPFA'
      FieldName = 'TIPPFA'
      FieldLength = 7
      DisplayWidth = 8
      Position = 2
    end
    object DsReportppField4: TppField
      FieldAlias = 'LOCPFA'
      FieldName = 'LOCPFA'
      FieldLength = 24
      DisplayWidth = 25
      Position = 3
    end
    object DsReportppField5: TppField
      FieldAlias = 'CODCF1'
      FieldName = 'CODCF1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object DsReportppField6: TppField
      FieldAlias = 'INTFIN'
      FieldName = 'INTFIN'
      FieldLength = 3
      DisplayWidth = 10
      Position = 5
    end
    object DsReportppField7: TppField
      FieldAlias = 'ATUEST'
      FieldName = 'ATUEST'
      FieldLength = 3
      DisplayWidth = 10
      Position = 6
    end
    object DsReportppField8: TppField
      FieldAlias = 'CODCF2'
      FieldName = 'CODCF2'
      FieldLength = 10
      DisplayWidth = 5
      Position = 7
    end
    object DsReportppField9: TppField
      FieldAlias = 'GERLIV'
      FieldName = 'GERLIV'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object DsReportppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRTICM'
      FieldName = 'FRTICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object DsReportppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMFRT'
      FieldName = 'ICMFRT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object DsReportppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGICM'
      FieldName = 'SEGICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object DsReportppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMSEG'
      FieldName = 'ICMSEG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DsReportppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESICM'
      FieldName = 'DESICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object DsReportppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMDES'
      FieldName = 'ICMDES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object DsReportppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRTIPI'
      FieldName = 'FRTIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object DsReportppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPIFRT'
      FieldName = 'IPIFRT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object DsReportppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGIPI'
      FieldName = 'SEGIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object DsReportppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPISEG'
      FieldName = 'IPISEG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object DsReportppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESIPI'
      FieldName = 'DESIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object DsReportppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPIDES'
      FieldName = 'IPIDES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object DsReportppField23: TppField
      FieldAlias = 'CONSUM'
      FieldName = 'CONSUM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 21
    end
    object DsReportppField24: TppField
      FieldAlias = 'DSRPFA'
      FieldName = 'DSRPFA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 22
    end
    object DsReportppField25: TppField
      FieldAlias = 'TXFICM'
      FieldName = 'TXFICM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object DsReportppField26: TppField
      FieldAlias = 'TXFIPI'
      FieldName = 'TXFIPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object DsReportppField27: TppField
      FieldAlias = 'MODPFA'
      FieldName = 'MODPFA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object DsReportppField28: TppField
      FieldAlias = 'CODIPI'
      FieldName = 'CODIPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
    object DsReportppField29: TppField
      FieldAlias = 'TIPIPI'
      FieldName = 'TIPIPI'
      FieldLength = 7
      DisplayWidth = 7
      Position = 27
    end
    object DsReportppField31: TppField
      FieldAlias = 'TIPICM'
      FieldName = 'TIPICM'
      FieldLength = 7
      DisplayWidth = 7
      Position = 28
    end
    object DsReportppField30: TppField
      FieldAlias = 'CODICM'
      FieldName = 'CODICM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Ficha de Clientes'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 
      'C:\_WGSYS\Emerion\Fatura\DualComp\Nota Fiscal\Relatorios\RManPfa' +
      '.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 1
    Top = 522
    Version = '5.0'
    mmColumnWidth = 197300
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Padrões de Faturamento'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 529
        mmTop = 1323
        mmWidth = 43688
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label7'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 102129
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 124354
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Página No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 155575
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 112977
      mmPrintPosition = 0
      object ppLabel64: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = 'Padrão de Faturamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 3175
        mmWidth = 40217
        BandType = 4
      end
      object ppCodCli: TppDBText
        UserName = 'CodCli'
        DataField = 'CODPFA'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 3175
        mmWidth = 20638
        BandType = 4
      end
      object ppNomCli: TppDBText
        UserName = 'NomCli'
        DataField = 'DSCPFA'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 63236
        mmTop = 3175
        mmWidth = 116946
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        AutoSize = False
        Caption = 'Código fiscal da operação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 21167
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        AutoSize = False
        Caption = 'Tipo de operação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 16140
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'Integrar com o financeiro ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 25929
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Caption = 'Atualizar estoque ? '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 30692
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        AutoSize = False
        Caption = 'Para consumidor final ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 35454
        mmWidth = 40217
        BandType = 4
      end
      object ppApeCli: TppDBText
        UserName = 'ApeCli'
        DataField = 'TIPPFA'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 16140
        mmWidth = 56886
        BandType = 4
      end
      object ppCgcCli: TppDBText
        UserName = 'DBText6'
        DataField = 'CODCF1'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 21167
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Origem/Destino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 40217
        mmWidth = 40217
        BandType = 4
      end
      object ppIntFin: TppDBText
        UserName = 'IntFin'
        DataField = 'INTFIN'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 25929
        mmWidth = 20638
        BandType = 4
      end
      object ppAtuEst: TppDBText
        UserName = 'IntFin1'
        DataField = 'ATUEST'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 30692
        mmWidth = 20638
        BandType = 4
      end
      object ppConSum: TppDBText
        UserName = 'IntFin2'
        DataField = 'CONSUM'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 35454
        mmWidth = 20638
        BandType = 4
      end
      object ppLocPfa: TppDBText
        UserName = 'LocPfa'
        DataField = 'LOCPFA'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 41804
        mmTop = 40217
        mmWidth = 97896
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Regra de IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 50271
        mmWidth = 40217
        BandType = 4
      end
      object ppCodIpi: TppDBText
        UserName = 'CodCli1'
        DataField = 'CODIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 50271
        mmWidth = 29369
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Regra de ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 55033
        mmWidth = 40217
        BandType = 4
      end
      object ppCodIcm: TppDBText
        UserName = 'CodIcm'
        DataField = 'CODICM'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 55033
        mmWidth = 29369
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Texto Fiscal (IPI)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 62442
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Texto Fiscal (ICMS)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 67204
        mmWidth = 40217
        BandType = 4
      end
      object ppTxfIcm: TppDBText
        UserName = 'CodIcm1'
        DataField = 'TXFICM'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 67204
        mmWidth = 29369
        BandType = 4
      end
      object ppTxfIpi: TppDBText
        UserName = 'TxfIpi'
        DataField = 'TXFIPI'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 62442
        mmWidth = 29369
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Base de calculo de ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 80433
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = '*%) Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 86254
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = '(%) Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 91017
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = '(%) Outras Despesas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 95779
        mmWidth = 40217
        BandType = 4
      end
      object ppIcmFrt: TppDBText
        UserName = 'CodCli2'
        Alignment = taRightJustify
        DataField = 'ICMFRT'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 86254
        mmWidth = 20638
        BandType = 4
      end
      object ppIcmSeg: TppDBText
        UserName = 'IcmSeg'
        Alignment = taRightJustify
        DataField = 'ICMSEG'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 91017
        mmWidth = 20638
        BandType = 4
      end
      object ppIcmDes: TppDBText
        UserName = 'IcmDes'
        Alignment = taRightJustify
        DataField = 'ICMDES'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 41804
        mmTop = 95779
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 'Base de calculo de IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 83873
        mmTop = 80433
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = '(%) Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 83873
        mmTop = 86254
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Caption = '(%) Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 83873
        mmTop = 91017
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = '(%) Outras Despesas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 83873
        mmTop = 95779
        mmWidth = 40217
        BandType = 4
      end
      object ppIpiDes: TppDBText
        UserName = 'IcmDes1'
        Alignment = taRightJustify
        DataField = 'IPIDES'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 125148
        mmTop = 95779
        mmWidth = 20638
        BandType = 4
      end
      object ppIpiSeg: TppDBText
        UserName = 'IcmSeg1'
        Alignment = taRightJustify
        DataField = 'IPISEG'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 125148
        mmTop = 91017
        mmWidth = 20638
        BandType = 4
      end
      object ppIpiFrt: TppDBText
        UserName = 'IpiFrt'
        Alignment = taRightJustify
        DataField = 'IPIFRT'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 125148
        mmTop = 86254
        mmWidth = 20638
        BandType = 4
      end
    end
  end
  object EstPis: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstPis'
      'Order by EstPis.Id_EstPis')
    ValidateWithMask = True
    Left = 66
    Top = 578
    object EstPisID_ESTPIS: TIntegerField
      FieldName = 'ID_ESTPIS'
      Origin = 'ISADE.ESTPIS.ID_ESTPIS'
    end
    object EstPisNOMPIS: TStringField
      FieldName = 'NOMPIS'
      Origin = 'ISADE.ESTPIS.NOMPIS'
      Size = 100
    end
    object EstPisSIGNFE: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTPIS.SIGNFE'
      Size = 2
    end
  end
  object dsEstPis: TwwDataSource
    DataSet = EstPis
    Left = 94
    Top = 578
  end
  object EstCof: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstCof'
      'Order by EstCof.Id_EstCof')
    ValidateWithMask = True
    Left = 66
    Top = 606
    object EstCofID_ESTCOF: TIntegerField
      FieldName = 'ID_ESTCOF'
      Origin = 'ISADE.ESTCOF.ID_ESTCOF'
    end
    object EstCofNOMCOF: TStringField
      FieldName = 'NOMCOF'
      Origin = 'ISADE.ESTCOF.NOMCOF'
      Size = 100
    end
    object EstCofSIGNFE: TStringField
      FieldName = 'SIGNFE'
      Origin = 'ISADE.ESTCOF.SIGNFE'
      Size = 2
    end
  end
  object DsEstCof: TwwDataSource
    DataSet = EstCof
    Left = 94
    Top = 606
  end
end
