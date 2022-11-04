inherited fmManStr: TfmManStr
  Left = 43
  Top = 49
  Caption = 'Regras de substituição tributária'
  ClientHeight = 449
  ClientWidth = 767
  Color = 15788249
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcStr: TPageControl
    Left = -1
    Top = 0
    Width = 775
    Height = 455
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 118
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape1: TShape
        Left = 0
        Top = 109
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 399
        Width = 762
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 4
        Top = 403
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
        Left = 4
        Top = 111
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
        Left = 2
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
      object Label6: TLabel
        Left = 2
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
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 238
        Top = 117
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 284
        Top = 24
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
        Top = 130
        Width = 762
        Height = 268
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grStr: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 760
          Height = 266
          Selected.Strings = (
            'CODSTR'#9'25'#9'Código'
            'NOMSTR'#9'78'#9'Descrição'
            'TIPSTR'#9'17'#9'Tipo de Operação     ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsStr
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
          OnDblClick = grStrDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomStr: TdxColorEdit
        Left = 134
        Top = 44
        Width = 356
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
      object EdPsqCodStr: TdxColorEdit
        Left = 134
        Top = 20
        Width = 105
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
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 336
        Top = 70
        Width = 152
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
        Left = 490
        Top = 11
        Width = 137
        Height = 104
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
        Left = 630
        Top = 11
        Width = 132
        Height = 104
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
      object EdPsqTipStr: TdxColorPickEdit
        Left = 373
        Top = 20
        Width = 117
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
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
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
      object Label14: TLabel
        Left = 2
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
      object Label15: TLabel
        Left = 2
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
        Left = 537
        Top = 24
        Width = 87
        Height = 13
        Caption = 'Tipo de operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape6: TShape
        Left = 0
        Top = 69
        Width = 762
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label73: TLabel
        Left = 4
        Top = 76
        Width = 129
        Height = 13
        Caption = 'Unidades da federação'
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
      object EdCodStr: TdxDBColorEdit
        Left = 134
        Top = 20
        Width = 105
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
        DataField = 'CODSTR'
        DataSource = DsStr
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdNomStr: TdxDBColorEdit
        Left = 134
        Top = 44
        Width = 628
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
        DataField = 'NOMSTR'
        DataSource = DsStr
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdTipStr: TdxDBColorPickEdit
        Left = 626
        Top = 20
        Width = 136
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
        DataField = 'TIPSTR'
        DataSource = DsStr
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object Panel8: TPanel
        Left = 534
        Top = 70
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 3
        object nvUfe: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          BeforeSalva = nvUfeBeforeSalva
          DataSource = DsEstUfe
          BaseAtualizar = 'EstIcmEstTxf'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 98
        Width = 761
        Height = 92
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 4
        object grUfe: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 759
          Height = 90
          Selected.Strings = (
            'SIGUFE'#9'2'#9'Sigla'
            'NOMUFE'#9'60'#9'Unidade da federação'
            'ICMSUB'#9'10'#9'      Aliquota interna'
            'MRGSUB'#9'10'#9'                    % IVA'
            'BASESB'#9'10'#9'               % Base de cálculo'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsEstUfe
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
        Top = 192
        Width = 763
        Height = 232
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 5
        OnExit = Panel4Exit
        object Label2: TLabel
          Left = 2
          Top = 26
          Width = 145
          Height = 13
          Caption = 'Aliquota interna de ICMS (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 2
          Top = 49
          Width = 112
          Height = 13
          Caption = 'Percentual de IVA (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 288
          Top = 49
          Width = 133
          Height = 13
          Caption = '(Índice de valor adicionado)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 2
          Top = 72
          Width = 99
          Height = 13
          Caption = 'Base de cálculo (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 288
          Top = 72
          Width = 444
          Height = 13
          Caption = 
            '(Participação percentual da base de calculo de ICMS para cálculo' +
            ' do imposto de substituição)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 2
          Top = 95
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 288
          Top = 95
          Width = 131
          Height = 13
          Caption = '(Código fiscal da operação)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label107: TLabel
          Left = 2
          Top = 118
          Width = 82
          Height = 13
          Caption = 'Regra de ICMS : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 2
          Top = 141
          Width = 141
          Height = 13
          Caption = 'Texto fiscal para a operação:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 2
          Top = 3
          Width = 134
          Height = 13
          Caption = 'Unidade da federação (UF):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 2
          Top = 164
          Width = 95
          Height = 13
          Caption = 'Tipo da mercadoria:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 2
          Top = 210
          Width = 90
          Height = 13
          Caption = 'Data para o envio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 288
          Top = 210
          Width = 475
          Height = 13
          Caption = 
            '(Data limite para o envio da posição de estoques atendendo a por' +
            't. CAT de No. 69 de 09/05/2008)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label48: TLabel
          Left = 2
          Top = 187
          Width = 73
          Height = 13
          Caption = 'Tipo de cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object EdIcmSub1: TdxDBColorCurrencyEdit
          Left = 159
          Top = 22
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 2
          Alignment = taRightJustify
          DataField = 'ICMSUB'
          DataSource = DsEstUfe
          DecimalPlaces = 0
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdMrgSub1: TdxDBColorCurrencyEdit
          Left = 159
          Top = 45
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'MRGSUB'
          DataSource = DsEstUfe
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdBasesb1: TdxDBColorCurrencyEdit
          Left = 159
          Top = 68
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 4
          Alignment = taRightJustify
          DataField = 'BASESB'
          DataSource = DsEstUfe
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdCodCfo1: TdxDBColorEdit
          Left = 159
          Top = 91
          Width = 68
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
          OnKeyPress = EdCodCfo1KeyPress
          Alignment = taCenter
          CharCase = ecUpperCase
          DataField = 'CODCFO'
          DataSource = DsEstUfe
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdRegIcm1: TdxDBColorEdit
          Left = 159
          Top = 114
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
          OnExit = EdRegIcm1Exit
          OnKeyDown = EdRegIcm1KeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'REGICM'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomIcm1: TdxDBColorLookupEdit
          Left = 288
          Top = 114
          Width = 474
          Color = 16577773
          DragMode = dmAutomatic
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
          TabOrder = 7
          TabStop = False
          DataField = 'REGICM'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMICM'
          KeyFieldName = 'CODICM'
          ListSource = dsEstIcm
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodTxf1: TdxDBColorEdit
          Left = 159
          Top = 137
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
          TabOrder = 8
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODTXF'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomTxf1: TdxDBColorLookupEdit
          Left = 288
          Top = 137
          Width = 474
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
          TabOrder = 9
          TabStop = False
          DataField = 'CODTXF'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'DSRTXF'
          KeyFieldName = 'CODTXF'
          ListSource = DsTxf
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdSigUfe: TdxDBColorEdit
          Left = 159
          Top = -1
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
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'SIGUFE'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomUfe: TdxDBColorLookupEdit
          Left = 288
          Top = -1
          Width = 474
          Color = 16577773
          DragMode = dmAutomatic
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
          TabStop = False
          DataField = 'SIGUFE'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMUFE'
          KeyFieldName = 'SIGUFE'
          ListSource = DsGerUfe
          LookupKeyValue = 'SP'
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodTme1: TdxDBColorEdit
          Left = 159
          Top = 160
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
          DataField = 'CODTME'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomTme: TdxDBColorLookupEdit
          Left = 288
          Top = 160
          Width = 474
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
          TabOrder = 11
          TabStop = False
          DataField = 'CODTME'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMTME'
          KeyFieldName = 'CODTME'
          ListSource = DsTme
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdDteEnv1: TdxDBColorDateEdit
          Left = 159
          Top = 206
          Width = 96
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
          TabOrder = 14
          DataField = 'DTEENV'
          DataSource = DsEstUfe
          PopupBorder = pbFlat
          SaveTime = False
          UseEditMask = True
          CorDeFoco = clInfoBk
          StoredValues = 4
        end
        object EdCodTCl1: TdxDBColorEdit
          Left = 159
          Top = 183
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
          OnKeyPress = EdCodTCl1KeyPress
          Alignment = taRightJustify
          CharCase = ecUpperCase
          DataField = 'CODTCL'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomTCl: TdxDBColorLookupEdit
          Left = 288
          Top = 183
          Width = 474
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
          TabStop = False
          DataField = 'CODTCL'
          DataSource = DsEstUfe
          DropDownWidth = 400
          ListFieldName = 'NOMTCL;CODTCL'
          KeyFieldName = 'CODTCL'
          ListSource = DsTCl
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Outras ocorrências'
      ImageIndex = 2
      object Shape8: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label23: TLabel
        Left = 2
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
      object Label24: TLabel
        Left = 2
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
      object Label25: TLabel
        Left = 537
        Top = 24
        Width = 87
        Height = 13
        Caption = 'Tipo de operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
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
      object Shape9: TShape
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape10: TShape
        Left = 0
        Top = 69
        Width = 762
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label27: TLabel
        Left = 4
        Top = 76
        Width = 45
        Height = 13
        Caption = 'Clientes'
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
      object EdNomStr1: TdxDBColorEdit
        Left = 134
        Top = 44
        Width = 628
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
        DataField = 'NOMSTR'
        DataSource = DsStr
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodStr1: TdxDBColorEdit
        Left = 134
        Top = 20
        Width = 105
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSTR'
        DataSource = DsStr
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdTipStr1: TdxDBColorPickEdit
        Left = 626
        Top = 20
        Width = 136
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
        DataField = 'TIPSTR'
        DataSource = DsStr
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object Panel1: TPanel
        Left = 534
        Top = 70
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 3
        object nvUfc: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          BeforeSalva = nvUfcBeforeSalva
          DataSource = dsEstUfc
          BaseAtualizar = 'FinCliEstIccEstTxf'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 98
        Width = 761
        Height = 92
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 4
        object grUfc: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 759
          Height = 90
          Selected.Strings = (
            'CODCLI'#9'10'#9'Código'
            'NOMCLI'#9'55'#9'Nome completo/Razão social'
            'ICMSUB'#9'10'#9'      Aliquota interna'
            'MRGSUB'#9'10'#9'                    % IVA'
            'BASESB'#9'10'#9'              % Base de cálculo')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          ShowVertScrollBar = False
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsEstUfc
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
      object Panel6: TPanel
        Left = 0
        Top = 192
        Width = 761
        Height = 232
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 5
        OnExit = Panel6Exit
        object Label28: TLabel
          Left = 2
          Top = 3
          Width = 37
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 2
          Top = 26
          Width = 145
          Height = 13
          Caption = 'Aliquota interna de ICMS (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 2
          Top = 49
          Width = 112
          Height = 13
          Caption = 'Percentual de IVA (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 288
          Top = 49
          Width = 133
          Height = 13
          Caption = '(Índice de valor adicionado)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 2
          Top = 72
          Width = 99
          Height = 13
          Caption = 'Base de cálculo (%):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 288
          Top = 72
          Width = 444
          Height = 13
          Caption = 
            '(Participação percentual da base de calculo de ICMS para cálculo' +
            ' do imposto de substituição)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 2
          Top = 95
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 288
          Top = 95
          Width = 131
          Height = 13
          Caption = '(Código fiscal da operação)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 2
          Top = 118
          Width = 82
          Height = 13
          Caption = 'Regra de ICMS : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 2
          Top = 141
          Width = 141
          Height = 13
          Caption = 'Texto fiscal para a operação:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object EdCodCli: TdxDBColorEdit
          Left = 159
          Top = -1
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
          OnKeyDown = EdCodCliKeyDown
          OnKeyPress = EdCodTCl1KeyPress
          Alignment = taRightJustify
          CharCase = ecUpperCase
          DataField = 'CODCLI'
          DataSource = dsEstUfc
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomCli: TdxDBColorLookupEdit
          Left = 288
          Top = -1
          Width = 474
          Color = 16577773
          DragMode = dmAutomatic
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
          TabStop = False
          DataField = 'CODCLI'
          DataSource = dsEstUfc
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMCLI'
          KeyFieldName = 'CODCLI'
          ListSource = dsFinCli
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdIcmSub2: TdxDBColorCurrencyEdit
          Left = 159
          Top = 22
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 2
          Alignment = taRightJustify
          DataField = 'ICMSUB'
          DataSource = dsEstUfc
          DecimalPlaces = 0
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdMrgSub2: TdxDBColorCurrencyEdit
          Left = 159
          Top = 45
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'MRGSUB'
          DataSource = dsEstUfc
          MaxValue = 100
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdBasesb2: TdxDBColorCurrencyEdit
          Left = 159
          Top = 68
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = 14859373
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 4
          Alignment = taRightJustify
          DataField = 'BASESB'
          DataSource = dsEstUfc
          MaxValue = 100
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdCodCfo2: TdxDBColorEdit
          Left = 159
          Top = 91
          Width = 68
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
          OnKeyPress = EdCodCfo1KeyPress
          Alignment = taCenter
          CharCase = ecUpperCase
          DataField = 'CODCFO'
          DataSource = dsEstUfc
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object EdRegIcm2: TdxDBColorEdit
          Left = 159
          Top = 114
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
          OnExit = EdRegIcm2Exit
          OnKeyDown = EdRegIcm2KeyDown
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'REGICM'
          DataSource = dsEstUfc
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomIcm2: TdxDBColorLookupEdit
          Left = 288
          Top = 114
          Width = 474
          Color = 16577773
          DragMode = dmAutomatic
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
          TabOrder = 7
          TabStop = False
          DataField = 'REGICM'
          DataSource = dsEstUfc
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMICM'
          KeyFieldName = 'CODICM'
          ListSource = dsEstIcc
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdCodTxf2: TdxDBColorEdit
          Left = 159
          Top = 137
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
          TabOrder = 8
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODTXF'
          DataSource = dsEstUfc
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomTxf2: TdxDBColorLookupEdit
          Left = 288
          Top = 137
          Width = 474
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
          TabOrder = 9
          TabStop = False
          DataField = 'CODTXF'
          DataSource = dsEstUfc
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'DSRTXF'
          KeyFieldName = 'CODTXF'
          ListSource = DsTxf
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
      end
    end
  end
  object nvStr: ThDBNavigator
    Left = 396
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    DataSource = DsStr
    BaseAtualizar = 'EstTxfEstSt1EstSt2ProTxf'
    UsaAppend = False
    Salvar = False
  end
  object quSql: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 28
    Top = 480
  end
  object EstStr: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = EstStrBeforeEdit
    AfterPost = EstStrAfterCancel
    AfterCancel = EstStrAfterCancel
    OnNewRecord = EstStrNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstStr.CodStr,'
      '           EstStr.TipStr,'
      '           EstStr.NomStr'
      'From EstStr'
      'Order by CodStr')
    UpdateObject = UpStr
    ValidateWithMask = True
    Top = 452
    object EstStrCODSTR: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 25
      FieldName = 'CODSTR'
      Origin = 'ISADE.ESTSTR.CODSTR'
      FixedChar = True
    end
    object EstStrNOMSTR: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 78
      FieldName = 'NOMSTR'
      Origin = 'ISADE.ESTSTR.NOMSTR'
      FixedChar = True
      Size = 40
    end
    object EstStrTIPSTR: TStringField
      DisplayLabel = 'Tipo de Operação     '
      DisplayWidth = 17
      FieldName = 'TIPSTR'
      Origin = 'ISADE.ESTSTR.TIPSTR'
      FixedChar = True
      Size = 7
    end
  end
  object DsStr: TwwDataSource
    DataSet = EstStr
    OnDataChange = DsStrDataChange
    Left = 28
    Top = 452
  end
  object UpStr: TUpdateSQL
    ModifySQL.Strings = (
      'update EstStr'
      'set'
      '  NOMSTR = :NOMSTR'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    InsertSQL.Strings = (
      'insert into EstStr'
      '  (CODSTR, TIPSTR, NOMSTR)'
      'values'
      '  (:CODSTR, :TIPSTR, :NOMSTR)')
    DeleteSQL.Strings = (
      'delete from EstStr'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    Top = 480
  end
  object EstUfe: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = EstUfeBeforeEdit
    AfterPost = EstUfeAfterCancel
    AfterCancel = EstUfeAfterCancel
    OnNewRecord = EstUfeNewRecord
    DatabaseName = 'ISade'
    DataSource = DsStr
    SQL.Strings = (
      'Select EstUfe.*,'
      '           GerUfe.NomUfe'
      'From EstUfe LEFT JOIN GerUfe ON (EstUfe.SigUfe = GerUfe.SigUfe)'
      'Where EstUfe.CodStr = :CodStr'
      '    and EstUfe.TipStr = :TipStr'
      'Order by EstUfe.SigUfe')
    UpdateObject = UpEstUfe
    ValidateWithMask = True
    Left = 65
    Top = 452
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CODSTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'TIPSTR'
        ParamType = ptUnknown
      end>
    object EstUfeSIGUFE: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 2
      FieldName = 'SIGUFE'
      Origin = 'ISADE.ESTUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object EstUfeNOMUFE: TStringField
      DisplayLabel = 'Unidade da federação'
      DisplayWidth = 60
      FieldName = 'NOMUFE'
      FixedChar = True
      Size = 40
    end
    object EstUfeICMSUB: TFloatField
      DisplayLabel = '      Aliquota interna'
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      Origin = 'ISADE.ESTUFE.ICMSUB'
      DisplayFormat = '##0'
    end
    object EstUfeMRGSUB: TFloatField
      DisplayLabel = '                    % IVA'
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      Origin = 'ISADE.ESTUFE.MRGSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfeBASESB: TFloatField
      DisplayLabel = '               % Base de cálculo'
      DisplayWidth = 10
      FieldName = 'BASESB'
      Origin = 'ISADE.ESTUFE.BASESB'
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfeCODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.ESTUFE.CODSTR'
      Visible = False
      FixedChar = True
    end
    object EstUfeTIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.ESTUFE.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.ESTUFE.CODCFO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object EstUfeREGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.ESTUFE.REGICM'
      Visible = False
      FixedChar = True
    end
    object EstUfeTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.ESTUFE.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeREGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.ESTUFE.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfeTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.ESTUFE.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTUFE.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfeCODTME: TStringField
      DisplayWidth = 4
      FieldName = 'CODTME'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstUfeDTEENV: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEENV'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object EstUfeCODTCL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTCL'
      Visible = False
    end
  end
  object DsEstUfe: TwwDataSource
    DataSet = EstUfe
    OnDataChange = DsEstUfeDataChange
    Left = 93
    Top = 452
  end
  object UpEstUfe: TUpdateSQL
    ModifySQL.Strings = (
      'update EstUfe'
      'set'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CODCFO = :CODCFO,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  CODTXF = :CODTXF,'
      '  CODTME = :CODTME,'
      '  DTEENV = :DTEENV,'
      '  CODTCL = :CODTCL'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  SIGUFE = :OLD_SIGUFE')
    InsertSQL.Strings = (
      'insert into EstUfe'
      
        '  (CODSTR, TIPSTR, SIGUFE, ICMSUB, MRGSUB, BASESB, CODCFO, REGIC' +
        'M, '
      'TIPICM, '
      '   REGIPI, TIPIPI, CODTXF, CODTME, DTEENV, CODTCL)'
      'values'
      
        '  (:CODSTR, :TIPSTR, :SIGUFE, :ICMSUB, :MRGSUB, :BASESB, :CODCFO' +
        ', '
      ':REGICM, '
      
        '   :TIPICM, :REGIPI, :TIPIPI, :CODTXF, :CODTME, :DTEENV, :CODTCL' +
        ')')
    DeleteSQL.Strings = (
      'delete from EstUfe'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  SIGUFE = :OLD_SIGUFE')
    Left = 65
    Top = 508
  end
  object EstIcm: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 129
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object StringField2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object EstIcmCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object EstIcmPERICM: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object dsEstIcm: TwwDataSource
    DataSet = EstIcm
    Left = 157
    Top = 480
  end
  object EstTxf: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstTxf'
      'Where EstTxf.TipTxf = '#39'Icms'#39)
    ValidateWithMask = True
    Left = 129
    Top = 508
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
    DataSet = EstTxf
    Left = 157
    Top = 508
  end
  object GerUfe: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select GerUfe.SigUfe,GerUfe.NomUfe From GerUfe')
    ValidateWithMask = True
    Left = 129
    Top = 452
    object GerUfeSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      FixedChar = True
      Size = 40
    end
  end
  object DsGerUfe: TwwDataSource
    DataSet = GerUfe
    Left = 157
    Top = 452
  end
  object EstTme: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstTme')
    ValidateWithMask = True
    Left = 129
    Top = 536
    object EstTmeCODTME: TStringField
      FieldName = 'CODTME'
      Origin = 'ISADE.ESTTME.CODTME'
      FixedChar = True
      Size = 4
    end
    object EstTmeNOMTME: TStringField
      FieldName = 'NOMTME'
      Origin = 'ISADE.ESTTME.NOMTME'
      FixedChar = True
      Size = 150
    end
  end
  object DsTme: TwwDataSource
    DataSet = EstTme
    Left = 157
    Top = 536
  end
  object FinTCl: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *  From FinTCl'
      'Order by NomTCl')
    ValidateWithMask = True
    Left = 129
    Top = 564
    object FinTClNOMTCL: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMTCL'
      Origin = 'ISADE.FINTCL.NOMTCL'
      FixedChar = True
      Size = 40
    end
    object FinTClCODTCL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTCL'
      Origin = 'ISADE.FINTCL.CODTCL'
      Visible = False
    end
  end
  object DsTCl: TwwDataSource
    DataSet = FinTCl
    Left = 157
    Top = 564
  end
  object EstUfc: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = EstUfcBeforeEdit
    AfterPost = EstUfcAfterCancel
    AfterCancel = EstUfcAfterCancel
    OnNewRecord = EstUfcNewRecord
    DatabaseName = 'ISade'
    DataSource = DsStr
    SQL.Strings = (
      'Select EstUfc.*,'
      '           FinCli.NomCli'
      'From EstUfc LEFT JOIN FinCli ON (EstUfc.CodCli = FinCli.CodCli)'
      'Where EstUfc.CodStr = :CodStr'
      '    and EstUfc.TipStr = :TipStr'
      'Order by EstUfc.CodCli')
    UpdateObject = UpEstUfc
    ValidateWithMask = True
    Left = 65
    Top = 480
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CODSTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'TIPSTR'
        ParamType = ptUnknown
      end>
    object EstUfcCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object EstUfcNOMCLI: TStringField
      DisplayLabel = 'Nome completo/Razão social'
      DisplayWidth = 55
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object EstUfcICMSUB: TFloatField
      DisplayLabel = '      Aliquota interna'
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      DisplayFormat = '##0'
    end
    object EstUfcMRGSUB: TFloatField
      DisplayLabel = '                    % IVA'
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      DisplayFormat = '##0.00'
    end
    object EstUfcBASESB: TFloatField
      DisplayLabel = '              % Base de cálculo'
      DisplayWidth = 10
      FieldName = 'BASESB'
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfcCODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object EstUfcTIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcCODCFO: TStringField
      FieldName = 'CODCFO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object EstUfcREGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object EstUfcTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcREGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfcTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcCODTXF: TStringField
      FieldName = 'CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object UpEstUfc: TUpdateSQL
    ModifySQL.Strings = (
      'update EstUfc'
      'set'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CODCFO = :CODCFO,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  CODTXF = :CODTXF'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  CODCLI = :OLD_CODCLI')
    InsertSQL.Strings = (
      'insert into EstUfc'
      
        '  (CODSTR, TIPSTR, CODCLI, ICMSUB, MRGSUB, BASESB, CODCFO, REGIC' +
        'M, '
      'TIPICM, '
      '   REGIPI, TIPIPI, CODTXF)'
      'values'
      
        '  (:CODSTR, :TIPSTR, :CODCLI, :ICMSUB, :MRGSUB, :BASESB, :CODCFO' +
        ', '
      ':REGICM, '
      '   :TIPICM, :REGIPI, :TIPIPI, :CODTXF)')
    DeleteSQL.Strings = (
      'delete from EstUfc'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  CODCLI = :OLD_CODCLI')
    Left = 93
    Top = 508
  end
  object dsEstUfc: TwwDataSource
    DataSet = EstUfc
    OnDataChange = dsEstUfcDataChange
    Left = 93
    Top = 480
  end
  object FinCli: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FinCli.CodCli,FinCli.NomCli'
      'From FinCli'
      'Where FinCli.CodCli = :CodCli')
    ValidateWithMask = True
    Left = 129
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptInput
      end>
    object FinCliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object FinCliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
  end
  object dsFinCli: TwwDataSource
    DataSet = FinCli
    Left = 157
    Top = 592
  end
  object EstIcc: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 129
    Top = 620
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object FloatField1: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object dsEstIcc: TwwDataSource
    DataSet = EstIcc
    Left = 157
    Top = 620
  end
end
