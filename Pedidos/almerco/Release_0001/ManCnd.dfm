inherited fmManCnd: TfmManCnd
  Left = 125
  Top = 82
  Caption = 'Condições de Pagamento'
  ClientHeight = 411
  ClientWidth = 681
  Color = 15788249
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcCnd: TPageControl
    Left = -2
    Top = 0
    Width = 687
    Height = 417
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 111
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape11: TShape
        Left = 0
        Top = 361
        Width = 679
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 0
        Top = 111
        Width = 223
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 223
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
      object Shape2: TShape
        Left = 224
        Top = 7
        Width = 454
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label1: TLabel
        Left = 1
        Top = 23
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
      object Label26: TLabel
        Left = 1
        Top = 46
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
      object Label24: TLabel
        Left = 4
        Top = 113
        Width = 134
        Height = 13
        Caption = 'Condições Selecionadas'
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
        Left = 224
        Top = 119
        Width = 453
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label25: TLabel
        Left = 4
        Top = 365
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
      object Label41: TLabel
        Left = 1
        Top = 70
        Width = 141
        Height = 13
        Caption = 'Somente p/Pedidos de Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 242
        Top = 69
        Width = 6
        Height = 13
        Caption = 'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 131
        Width = 682
        Height = 228
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 7
        object grCnd: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 677
          Height = 226
          Selected.Strings = (
            'ID_PEDCND'#9'8'#9'Código'
            'NOMCND'#9'25'#9'Descrição'
            'QTDCND'#9'10'#9'    Parcelas'
            'TAXCND'#9'15'#9'Taxa Financimento'
            'PRACND'#9'10'#9'  Prazo Médio'
            'VALINI'#9'10'#9'    Valor Inicial'
            'VALFIN'#9'10'#9'         Valor Final'#9'F'
            'FLGATI'#9'4'#9'  Ativa  ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsCnd
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
          TitleLines = 3
          TitleButtons = False
          OnDblClick = grCndDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomCnd: TdxColorEdit
        Left = 148
        Top = 42
        Width = 282
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
      object EdPsqId_PedCnd: TdxColorEdit
        Left = 148
        Top = 19
        Width = 77
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
        OnKeyPress = EdPsqId_PedCndKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object bbPesquisa: TBitBtn
        Left = 432
        Top = 68
        Width = 134
        Height = 48
        Caption = '&Selecionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
        Left = 432
        Top = 13
        Width = 134
        Height = 52
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
        TabOrder = 5
      end
      object rgBusca: TRadioGroup
        Left = 568
        Top = 13
        Width = 110
        Height = 50
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
        TabOrder = 6
      end
      object EdPsqValIni: TdxColorCurrencyEdit
        Left = 148
        Top = 65
        Width = 88
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DisplayFormat = '###,###,##0.00'
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object EdPsqValFin: TdxColorCurrencyEdit
        Left = 254
        Top = 65
        Width = 88
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DisplayFormat = '###,###,##0.00'
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object rgStatus: TRadioGroup
        Left = 568
        Top = 63
        Width = 111
        Height = 54
        Caption = ' Status '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Bloqueados'
          'Todos')
        ParentFont = False
        TabOrder = 8
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      OnShow = pcPag2Show
      object Shape7: TShape
        Left = 0
        Top = 204
        Width = 223
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 223
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label4: TLabel
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
      object Shape6: TShape
        Left = 224
        Top = 7
        Width = 454
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label28: TLabel
        Left = 1
        Top = 23
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
      object Label30: TLabel
        Left = 1
        Top = 46
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
      object Label6: TLabel
        Left = 1
        Top = 69
        Width = 93
        Height = 13
        Caption = 'Qtde. de parcelas :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 1
        Top = 92
        Width = 95
        Height = 13
        Caption = 'Prazo medio (dias) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 1
        Top = 138
        Width = 130
        Height = 13
        Caption = '% Taxa de financiamento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 1
        Top = 161
        Width = 116
        Height = 13
        Caption = '% Acréscimo calculado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 4
        Top = 206
        Width = 73
        Height = 13
        Caption = 'Vencimentos'
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
        Left = 224
        Top = 211
        Width = 454
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label7: TLabel
        Left = 1
        Top = 227
        Width = 82
        Height = 13
        Caption = '01º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 1
        Top = 250
        Width = 82
        Height = 13
        Caption = '02º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 1
        Top = 273
        Width = 82
        Height = 13
        Caption = '03º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 1
        Top = 296
        Width = 82
        Height = 13
        Caption = '04º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 1
        Top = 319
        Width = 82
        Height = 13
        Caption = '05º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 1
        Top = 342
        Width = 82
        Height = 13
        Caption = '06º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 303
        Top = 342
        Width = 82
        Height = 13
        Caption = '12º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 303
        Top = 319
        Width = 82
        Height = 13
        Caption = '11º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 303
        Top = 296
        Width = 82
        Height = 13
        Caption = '10º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 303
        Top = 273
        Width = 82
        Height = 13
        Caption = '09º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 303
        Top = 229
        Width = 82
        Height = 13
        Caption = '07º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 303
        Top = 250
        Width = 82
        Height = 13
        Caption = '08º  Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 228
        Top = 227
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 228
        Top = 251
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 228
        Top = 273
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 228
        Top = 296
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 228
        Top = 319
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 228
        Top = 342
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 530
        Top = 227
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 530
        Top = 251
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 530
        Top = 273
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 530
        Top = 296
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 530
        Top = 319
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 530
        Top = 342
        Width = 28
        Height = 13
        Caption = '(Dias)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 364
        Top = 23
        Width = 146
        Height = 13
        Caption = 'Taxa de financiamento (mês) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 1
        Top = 184
        Width = 129
        Height = 13
        Caption = 'Somente para pedidos de :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 257
        Top = 184
        Width = 6
        Height = 13
        Caption = 'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 1
        Top = 115
        Width = 66
        Height = 13
        Caption = '% Desconto :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 618
        Top = 23
        Width = 39
        Height = 13
        Caption = 'Ativa ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdId_PedCnd: TdxDBColorEdit
        Left = 148
        Top = 19
        Width = 77
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
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'ID_PEDCND'
        DataSource = DsCnd
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomCnd: TdxDBColorEdit
        Left = 148
        Top = 42
        Width = 530
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
        DataField = 'NOMCND'
        DataSource = DsCnd
        CorDeFoco = clInfoBk
      end
      object EdQtdCnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 65
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        OnExit = EdQtdCndExit
        DataField = 'QTDCND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        MaxValue = 12
        MinValue = 1
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdPraCnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 88
        Width = 77
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'PRACND'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdFinCnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 134
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'ACRCND'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdTaxCnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 157
        Width = 77
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'TAXCND'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdTaxFin: TdxDBColorCurrencyEdit
        Left = 514
        Top = 19
        Width = 95
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'TAXFIN'
        DataSource = DsPar
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdValIni: TdxDBColorCurrencyEdit
        Left = 148
        Top = 180
        Width = 102
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'VALINI'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP01Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 223
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P01CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP02Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 246
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P02CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP03Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 269
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P03CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP04Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 292
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P04CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP05Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 315
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P05CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP06Cnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 338
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P06CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP12Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 338
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P12CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP11Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 315
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P11CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP10Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 292
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P10CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP09Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 269
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P09CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP08Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 246
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P08CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdP07Cnd: TdxDBColorCurrencyEdit
        Left = 450
        Top = 223
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'P07CND'
        DataSource = DsCnd
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdValFin: TdxDBColorCurrencyEdit
        Left = 270
        Top = 180
        Width = 102
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'VALFIN'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdDscCnd: TdxDBColorCurrencyEdit
        Left = 148
        Top = 111
        Width = 77
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        DataField = 'DSCCND'
        DataSource = DsCnd
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 48
      end
      object EdFlgAti: TdxDBCheckEdit
        Left = 658
        Top = 21
        Width = 20
        Cursor = crHandPoint
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        AutoSize = False
        DataField = 'FLGATI'
        DataSource = DsCnd
        ValueChecked = 'Sim'
        ValueGrayed = 'Nao'
        ValueUnchecked = 'Nao'
        Height = 18
      end
    end
  end
  object nvCnd: ThDBNavigator
    Left = 312
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvCndImprime
    BeforeSalva = nvCndBeforeSalva
    DataSource = DsCnd
    BaseAtualizar = 'PedPar'
    UsaAppend = False
    Salvar = False
  end
  object PedCnd: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = PedCndNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From PedCnd'
      'Where PedCnd.FlgAti = '#39'Sim'#39
      'Order by PedCnd.Id_PedCnd')
    UpdateObject = upCnd
    ControlType.Strings = (
      'FLGATI;CheckBox;Sim;Nao')
    ValidateWithMask = True
    Left = 4
    Top = 414
    object PedCndID_PEDCND: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 8
      FieldName = 'ID_PEDCND'
      Origin = 'ISADE.PEDCND.ID_PEDCND'
    end
    object PedCndNOMCND: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 25
      FieldName = 'NOMCND'
      Origin = 'ISADE.PEDCND.NOMCND'
      Size = 40
    end
    object PedCndQTDCND: TIntegerField
      DisplayLabel = '    Parcelas'
      DisplayWidth = 10
      FieldName = 'QTDCND'
      Origin = 'ISADE.PEDCND.QTDCND'
      DisplayFormat = '##0'
    end
    object PedCndTAXCND: TFloatField
      DisplayLabel = 'Taxa Financimento'
      DisplayWidth = 15
      FieldName = 'TAXCND'
      Origin = 'ISADE.PEDCND.TAXCND'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCndPRACND: TIntegerField
      DisplayLabel = '  Prazo Médio'
      DisplayWidth = 10
      FieldName = 'PRACND'
      Origin = 'ISADE.PEDCND.PRACND'
      DisplayFormat = '##0'
    end
    object PedCndVALINI: TFloatField
      DisplayLabel = '    Valor Inicial'
      DisplayWidth = 10
      FieldName = 'VALINI'
      Origin = 'ISADE.PEDCND.VALINI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCndVALFIN: TFloatField
      DisplayLabel = '         Valor Final'
      DisplayWidth = 10
      FieldName = 'VALFIN'
      Origin = 'ISADE.PEDCND.VALFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedCndFLGATI: TStringField
      DisplayLabel = '  Ativa  '
      DisplayWidth = 4
      FieldName = 'FLGATI'
      Origin = 'ISADE.PEDCND.FLGATI'
      FixedChar = True
      Size = 3
    end
    object PedCndP01CND: TIntegerField
      FieldName = 'P01CND'
      Origin = 'ISADE.PEDCND.P01CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP02CND: TIntegerField
      FieldName = 'P02CND'
      Origin = 'ISADE.PEDCND.P02CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP03CND: TIntegerField
      FieldName = 'P03CND'
      Origin = 'ISADE.PEDCND.P03CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP04CND: TIntegerField
      FieldName = 'P04CND'
      Origin = 'ISADE.PEDCND.P04CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP05CND: TIntegerField
      FieldName = 'P05CND'
      Origin = 'ISADE.PEDCND.P05CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP06CND: TIntegerField
      FieldName = 'P06CND'
      Origin = 'ISADE.PEDCND.P06CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP07CND: TIntegerField
      FieldName = 'P07CND'
      Origin = 'ISADE.PEDCND.P07CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP08CND: TIntegerField
      FieldName = 'P08CND'
      Origin = 'ISADE.PEDCND.P08CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP09CND: TIntegerField
      FieldName = 'P09CND'
      Origin = 'ISADE.PEDCND.P09CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP10CND: TIntegerField
      FieldName = 'P10CND'
      Origin = 'ISADE.PEDCND.P10CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP11CND: TIntegerField
      FieldName = 'P11CND'
      Origin = 'ISADE.PEDCND.P11CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndP12CND: TIntegerField
      FieldName = 'P12CND'
      Origin = 'ISADE.PEDCND.P12CND'
      Visible = False
      DisplayFormat = '##0'
    end
    object PedCndDSCCND: TFloatField
      FieldName = 'DSCCND'
      Origin = 'ISADE.PEDCND.DSCCND'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedCndACRCND: TFloatField
      FieldName = 'ACRCND'
      Origin = 'ISADE.PEDCND.ACRCND'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsCnd: TwwDataSource
    AutoEdit = False
    DataSet = PedCnd
    OnDataChange = DsCndDataChange
    Left = 32
    Top = 414
  end
  object upCnd: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCnd'
      'set'
      '  NOMCND = :NOMCND,'
      '  QTDCND = :QTDCND,'
      '  P01CND = :P01CND,'
      '  P02CND = :P02CND,'
      '  P03CND = :P03CND,'
      '  P04CND = :P04CND,'
      '  P05CND = :P05CND,'
      '  P06CND = :P06CND,'
      '  P07CND = :P07CND,'
      '  P08CND = :P08CND,'
      '  P09CND = :P09CND,'
      '  P10CND = :P10CND,'
      '  P11CND = :P11CND,'
      '  P12CND = :P12CND,'
      '  PRACND = :PRACND,'
      '  VALINI = :VALINI,'
      '  VALFIN = :VALFIN,'
      '  TAXCND = :TAXCND,'
      '  ACRCND = :ACRCND,'
      '  DSCCND = :DSCCND,'
      '  FLGATI = :FLGATI'
      'where'
      '  ID_PEDCND = :OLD_ID_PEDCND')
    InsertSQL.Strings = (
      'insert into PedCnd'
      
        '  (ID_PEDCND, NOMCND, QTDCND, P01CND, P02CND, P03CND, P04CND, P0' +
        '5CND, P06CND, '
      
        '   P07CND, P08CND, P09CND, P10CND, P11CND, P12CND, PRACND, VALIN' +
        'I, VALFIN, '
      '   TAXCND, ACRCND, DSCCND, FLGATI)'
      'values'
      
        '  (:ID_PEDCND, :NOMCND, :QTDCND, :P01CND, :P02CND, :P03CND, :P04' +
        'CND, :P05CND, '
      
        '   :P06CND, :P07CND, :P08CND, :P09CND, :P10CND, :P11CND, :P12CND' +
        ', :PRACND, '
      '   :VALINI, :VALFIN, :TAXCND, :ACRCND, :DSCCND, :FLGATI)')
    DeleteSQL.Strings = (
      'delete from PedCnd'
      'where'
      '  ID_PEDCND = :OLD_ID_PEDCND')
    Left = 4
    Top = 442
  end
  object DsReport: TppDBPipeline
    DataSource = DsCnd
    UserName = 'DsReport'
    Left = 63
    Top = 442
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\_WGSYS\Emerion\Pedidos\Elefer\Relatorios\RManCnd.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 91
    Top = 442
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Condições de Pagamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Código'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 8202
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descrição'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 11113
        mmTop = 8202
        mmWidth = 13829
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Alignment = taRightJustify
        Caption = 'Qtd. Parcelas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 74877
        mmTop = 8202
        mmWidth = 18768
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taRightJustify
        Caption = '% Acrescimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 94456
        mmTop = 8202
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Alignment = taRightJustify
        Caption = 'Total Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 138642
        mmTop = 8202
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = 'Total Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 164836
        mmTop = 8202
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Alignment = taRightJustify
        Caption = '% Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 114036
        mmTop = 8202
        mmWidth = 17357
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
      object ppLabel8: TppLabel
        UserName = 'Label8'
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
        UserName = 'SystemVariable1'
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
      mmHeight = 5292
      mmPrintPosition = 0
      object ppCodCnd: TppDBText
        UserName = 'CodCnd'
        DataField = 'ID_PEDCND'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 794
        mmWidth = 9737
        BandType = 4
      end
      object ppNomCnd: TppDBText
        UserName = 'CodCnd1'
        DataField = 'NOMCND'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 794
        mmWidth = 62971
        BandType = 4
      end
      object ppQtdCnd: TppDBText
        UserName = 'CodCnd2'
        Alignment = taRightJustify
        DataField = 'QTDCND'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 74877
        mmTop = 794
        mmWidth = 18768
        BandType = 4
      end
      object ppAcrCnd: TppDBText
        UserName = 'AcrCnd'
        Alignment = taRightJustify
        DataField = 'ACRCND'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 94456
        mmTop = 794
        mmWidth = 18785
        BandType = 4
      end
      object ppValIni: TppDBText
        UserName = 'FinCnd1'
        Alignment = taRightJustify
        DataField = 'VALINI'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 132292
        mmTop = 794
        mmWidth = 23283
        BandType = 4
      end
      object ppValFin: TppDBText
        UserName = 'ValFin'
        Alignment = taRightJustify
        DataField = 'VALFIN'
        DataPipeline = DsReport
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 156369
        mmTop = 794
        mmWidth = 23283
        BandType = 4
      end
      object ppDscCnd: TppDBText
        UserName = 'FinCnd2'
        Alignment = taRightJustify
        DataField = 'DSCCND'
        DataPipeline = DsReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 114036
        mmTop = 794
        mmWidth = 17357
        BandType = 4
      end
    end
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    OnNewRecord = PedCndNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select PedPar.TaxFin From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 414
    object PedParTAXFIN: TFloatField
      FieldName = 'TAXFIN'
      Origin = 'ISADE.PEDPAR.TAXFIN'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsPar: TwwDataSource
    AutoEdit = False
    DataSet = PedPar
    OnDataChange = DsCndDataChange
    Left = 91
    Top = 414
  end
end
