inherited fmManMve: TfmManMve
  Left = 80
  Top = 7
  Caption = 'Metas mensais por vendedor'
  ClientHeight = 462
  ClientWidth = 654
  Color = 15788249
  Position = poDesigned
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
  object pcMve: TPageControl
    Left = -2
    Top = 0
    Width = 662
    Height = 464
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 100
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
        Width = 654
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape3: TShape
          Left = 0
          Top = 61
          Width = 201
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 201
          Height = 18
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
        object Label3: TLabel
          Left = 4
          Top = 63
          Width = 112
          Height = 13
          Caption = 'Metas Selecionadas'
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
        object Shape11: TShape
          Left = 0
          Top = 411
          Width = 650
          Height = 21
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label12: TLabel
          Left = 4
          Top = 415
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
        object Shape4: TShape
          Left = 202
          Top = 8
          Width = 449
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Shape2: TShape
          Left = 202
          Top = 69
          Width = 449
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label10: TLabel
          Left = 1
          Top = 25
          Width = 49
          Height = 13
          Caption = 'Mês/Ano :'
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
        object Panel3: TPanel
          Left = 0
          Top = 81
          Width = 651
          Height = 328
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 3
          object grMve: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 649
            Height = 326
            Selected.Strings = (
              'ANOMVE'#9'10'#9'Ano'
              'MESMVE'#9'55'#9'Mês'
              'DTIMVE'#9'10'#9'Inicio           '
              'DTFMVE'#9'10'#9'Termino      '
              'TOTMVE'#9'10'#9'                 Meta total'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsMve
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
            OnDblClick = grMveDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPsqMesMve: TdxColorPickEdit
          Left = 107
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
          HideSelection = False
          DropDownListStyle = True
          Items.Strings = (
            ''
            'Janeiro'
            'Fevereiro'
            'Marco'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          CorDeFoco = clInfoBk
        end
        object bselecionar: TBitBtn
          Left = 487
          Top = 21
          Width = 164
          Height = 44
          Caption = '&Selecionar'
          Default = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = bselecionarClick
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
        object EdPsqAnoMve: TdxColorEdit
          Left = 227
          Top = 21
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
          TabOrder = 1
          OnKeyPress = EdPsqAnoMveKeyPress
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape5: TShape
          Left = 0
          Top = 47
          Width = 652
          Height = 28
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 0
          Top = 0
          Width = 201
          Height = 18
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label5: TLabel
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
        object Shape10: TShape
          Left = 202
          Top = 8
          Width = 449
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label6: TLabel
          Left = 4
          Top = 54
          Width = 67
          Height = 13
          Caption = 'Vendedores'
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
        object Label7: TLabel
          Left = 1
          Top = 25
          Width = 49
          Height = 13
          Caption = 'Mês/Ano :'
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
        object Panel6: TPanel
          Left = 425
          Top = 49
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = clNavy
          TabOrder = 2
          object nvMv2: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            OnExclui = nvMv2Exclui
            BeforeSalva = nvMv2BeforeSalva
            OnSalva = nvMv2Exclui
            DataSource = DsMv2
            BaseAtualizar = 'FinVen'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object Panel8: TPanel
          Left = -1
          Top = 408
          Width = 655
          Height = 24
          BevelOuter = bvNone
          Color = 15788249
          TabOrder = 4
          OnExit = Panel8Exit
          object Label16: TLabel
            Left = 2
            Top = 5
            Width = 53
            Height = 13
            Caption = 'Vendedor :'
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
            Left = 488
            Top = 5
            Width = 31
            Height = 13
            Caption = 'Meta :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object EdCodVen: TdxDBColorEdit
            Left = 107
            Top = 1
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
            OnExit = EdCodVenExit
            OnKeyDown = EdCodVenKeyDown
            OnKeyPress = EdPsqAnoMveKeyPress
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODVEN'
            DataSource = DsMv2
            CorDeFoco = clInfoBk
            StoredValues = 1
          end
          object CbNomVen: TdxDBColorLookupEdit
            Left = 203
            Top = 1
            Width = 277
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
            TabStop = False
            DataField = 'CODVEN'
            DataSource = DsMv2
            ReadOnly = False
            ListFieldName = 'APEVEN'
            KeyFieldName = 'CODVEN'
            ListSource = DsVen
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object EdTotMv2: TdxDBColorCurrencyEdit
            Left = 533
            Top = 1
            Width = 120
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
            TabOrder = 2
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTMV2'
            DataSource = DsMv2
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 77
          Width = 649
          Height = 330
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 3
          object grMv2: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 647
            Height = 328
            Selected.Strings = (
              'CODVEN'#9'10'#9'Código'
              'APEVEN'#9'80'#9'Nome'
              'TOTMV2'#9'10'#9'                      Meta'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsMv2
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
        object EdMesMve: TdxDBColorPickEdit
          Left = 107
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
          DataField = 'MESMVE'
          DataSource = DsMve
          ReadOnly = False
          DropDownListStyle = True
          Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Marco'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object EdAnoMve: TdxDBColorEdit
          Left = 227
          Top = 21
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
          TabOrder = 1
          OnKeyPress = EdPsqAnoMveKeyPress
          Alignment = taRightJustify
          CharCase = ecUpperCase
          DataField = 'ANOMVE'
          DataSource = DsMve
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object pnTotMve: TPanel
          Left = 78
          Top = 54
          Width = 315
          Height = 14
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Total Lançado : '
          Color = 14789952
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 341
    Top = 1
    Width = 313
    Height = 25
    BevelOuter = bvNone
    Color = clNavy
    TabOrder = 1
    object nvMve: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      BeforeSalva = nvMveBeforeSalva
      DataSource = DsMve
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = True
      Salvar = False
    end
  end
  object UpMve: TUpdateSQL
    ModifySQL.Strings = (
      'update PedMve'
      'set'
      '  ANOMVE = :ANOMVE,'
      '  MESMVE = :MESMVE,'
      '  DTIMVE = :DTIMVE,'
      '  DTFMVE = :DTFMVE,'
      '  QTDMV2 = :QTDMV2,'
      '  TOTMVE = :TOTMVE,'
      '  NROMES = :NROMES,'
      '  FLGTRG = :FLGTRG'
      'where'
      '  ID_PEDMVE = :OLD_ID_PEDMVE')
    InsertSQL.Strings = (
      'insert into PedMve'
      
        '  (ID_PEDMVE, ANOMVE, MESMVE, DTIMVE, DTFMVE, QTDMV2, TOTMVE, NR' +
        'OMES, FLGTRG)'
      'values'
      
        '  (:ID_PEDMVE, :ANOMVE, :MESMVE, :DTIMVE, :DTFMVE, :QTDMV2, :TOT' +
        'MVE, :NROMES, '
      '   :FLGTRG)')
    DeleteSQL.Strings = (
      'delete from PedMve'
      'where'
      '  ID_PEDMVE = :OLD_ID_PEDMVE')
    Top = 519
  end
  object PedMve: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = PedMveBeforeEdit
    AfterPost = PedMveAfterCancel
    AfterCancel = PedMveAfterCancel
    OnNewRecord = PedMveNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From PedMve'
      'Order by PedMve.AnoMve,PedMve.DtiMve')
    UpdateObject = UpMve
    ValidateWithMask = True
    Top = 463
    object PedMveANOMVE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Ano'
      DisplayWidth = 10
      FieldName = 'ANOMVE'
      Origin = 'ISADE.PEDMVE.ANOMVE'
    end
    object PedMveMESMVE: TStringField
      DisplayLabel = 'Mês'
      DisplayWidth = 55
      FieldName = 'MESMVE'
      Origin = 'ISADE.PEDMVE.MESMVE'
      FixedChar = True
      Size = 9
    end
    object PedMveDTIMVE: TDateTimeField
      DisplayLabel = 'Inicio           '
      DisplayWidth = 10
      FieldName = 'DTIMVE'
      Origin = 'ISADE.PEDMVE.DTIMVE'
    end
    object PedMveDTFMVE: TDateTimeField
      DisplayLabel = 'Termino      '
      DisplayWidth = 10
      FieldName = 'DTFMVE'
      Origin = 'ISADE.PEDMVE.DTFMVE'
    end
    object PedMveTOTMVE: TFloatField
      DisplayLabel = '                 Meta total'
      DisplayWidth = 10
      FieldName = 'TOTMVE'
      Origin = 'ISADE.PEDMVE.TOTMVE'
      DisplayFormat = '###,###,##0.00'
    end
    object PedMveFLGTRG: TStringField
      FieldName = 'FLGTRG'
      Origin = 'ISADE.PEDMVE.FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedMveID_PEDMVE: TIntegerField
      FieldName = 'ID_PEDMVE'
      Origin = 'ISADE.PEDMVE.ID_PEDMVE'
      Visible = False
    end
    object PedMveQTDMV2: TIntegerField
      FieldName = 'QTDMV2'
      Origin = 'ISADE.PEDMVE.QTDMV2'
      Visible = False
    end
    object PedMveNROMES: TIntegerField
      FieldName = 'NROMES'
      Origin = 'ISADE.PEDMVE.NROMES'
      Visible = False
    end
  end
  object DsMve: TwwDataSource
    DataSet = PedMve
    OnDataChange = DsMveDataChange
    Left = 28
    Top = 463
  end
  object PedMv2: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = PedMv2BeforeEdit
    AfterPost = PedMv2AfterPost
    AfterCancel = PedMv2AfterPost
    OnNewRecord = PedMv2NewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsMve
    SQL.Strings = (
      'Select PedMv2.*,'
      '           FinVen.ApeVen'
      'From PedMv2 LEFT JOIN FinVen ON (PedMv2.CodVen = FinVen.CodVen)'
      'Where PedMv2.Id_PedMve = :Id_PedMve'
      'Order by PedMv2.NroMv2')
    UpdateObject = UpMv2
    ValidateWithMask = True
    Top = 491
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDMVE'
        ParamType = ptInput
      end>
    object PedMv2CODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object PedMv2APEVEN: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 80
      FieldName = 'APEVEN'
      FixedChar = True
    end
    object PedMv2TOTMV2: TFloatField
      DisplayLabel = '                      Meta'
      DisplayWidth = 10
      FieldName = 'TOTMV2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedMv2FLGTRG: TStringField
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedMv2NROMV2: TIntegerField
      FieldName = 'NROMV2'
      Visible = False
    end
    object PedMv2ID_PEDMV2: TIntegerField
      FieldName = 'ID_PEDMV2'
      Visible = False
    end
    object PedMv2ID_PEDMVE: TIntegerField
      FieldName = 'ID_PEDMVE'
      Visible = False
    end
  end
  object DsMv2: TwwDataSource
    DataSet = PedMv2
    OnDataChange = DsMv2DataChange
    Left = 28
    Top = 491
  end
  object UpMv2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedMv2'
      'set'
      '  ID_PEDMVE = :ID_PEDMVE,'
      '  CODVEN = :CODVEN,'
      '  TOTMV2 = :TOTMV2,'
      '  FLGTRG = :FLGTRG'
      'where'
      '  ID_PEDMV2 = :OLD_ID_PEDMV2')
    InsertSQL.Strings = (
      'insert into PedMv2'
      '(ID_PEDMV2, ID_PEDMVE, CODVEN, TOTMV2, FLGTRG, NROMV2)'
      'values'
      '(:ID_PEDMV2, :ID_PEDMVE, :CODVEN, :TOTMV2, :FLGTRG, :NROMV2)')
    DeleteSQL.Strings = (
      'delete from PedMv2'
      'where'
      '  ID_PEDMV2 = :OLD_ID_PEDMV2')
    Left = 28
    Top = 519
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 65
    Top = 492
  end
  object FinVen: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select FinVen.CodVen,'
      '           FinVen.ApeVen '
      'From FinVen'
      'Where FinVen.CodVen = :CodVen')
    ValidateWithMask = True
    Left = 65
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodVen'
        ParamType = ptInput
      end>
    object FinVenCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FinVenAPEVEN: TStringField
      FieldName = 'APEVEN'
      FixedChar = True
    end
  end
  object DsVen: TwwDataSource
    DataSet = FinVen
    Left = 93
    Top = 464
  end
end
