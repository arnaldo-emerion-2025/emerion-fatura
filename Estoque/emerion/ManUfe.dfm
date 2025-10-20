inherited fmManUfe: TfmManUfe
  Left = 75
  Top = 15
  Caption = 'Aliquotas de ICMS por Unidades da Federação'
  ClientHeight = 465
  ClientWidth = 634
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
  object pcUfe: TPageControl
    Left = -2
    Top = 0
    Width = 640
    Height = 471
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 115
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
        Width = 632
        Height = 440
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape3: TShape
          Left = 0
          Top = 110
          Width = 243
          Height = 18
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
        object Label10: TLabel
          Left = 1
          Top = 25
          Width = 29
          Height = 13
          Caption = 'Sigla :'
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
          Top = 112
          Width = 129
          Height = 13
          Caption = 'Unidades Selecionadas'
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
          Top = 416
          Width = 634
          Height = 21
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label4: TLabel
          Left = 1
          Top = 49
          Width = 40
          Height = 13
          Caption = 'Estado :'
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
          Left = 4
          Top = 420
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
          Left = 232
          Top = 8
          Width = 399
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Shape2: TShape
          Left = 244
          Top = 118
          Width = 389
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object EdPsqSigUfe: TdxColorEdit
          Left = 143
          Top = 21
          Width = 89
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
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object rgOrdem: TRadioGroup
          Left = 430
          Top = 14
          Width = 98
          Height = 102
          Caption = ' Exibido Por '
          ItemIndex = 0
          Items.Strings = (
            'Sigla'
            'Descrição')
          TabOrder = 2
        end
        object rgBusca: TRadioGroup
          Left = 531
          Top = 14
          Width = 101
          Height = 102
          Caption = ' Tipo de Busca'
          ItemIndex = 0
          Items.Strings = (
            'Iniciais'
            'Inteligente')
          TabOrder = 3
        end
        object Bbselecionar: TBitBtn
          Left = 278
          Top = 70
          Width = 149
          Height = 45
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
          Left = 0
          Top = 130
          Width = 634
          Height = 285
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 4
          object grUfe: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 630
            Height = 283
            Selected.Strings = (
              'SIGUFE'#9'5'#9'Sigla'
              'NOMUFE'#9'60'#9'Estado'
              'DSCUFE'#9'10'#9'    (%) Desc. ICMS'
              'DSCCOM'#9'10'#9'    (%) Desc.Comercial'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsUfe
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
            OnDblClick = grUfeDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPsqNomUfe: TdxColorEdit
          Left = 143
          Top = 45
          Width = 286
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
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 440
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape5: TShape
          Left = 0
          Top = 69
          Width = 632
          Height = 28
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 0
          Top = 0
          Width = 231
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
          Left = 232
          Top = 8
          Width = 399
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label7: TLabel
          Left = 1
          Top = 49
          Width = 40
          Height = 13
          Caption = 'Estado :'
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
          Top = 25
          Width = 29
          Height = 13
          Caption = 'Sigla :'
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
          Left = 275
          Top = 24
          Width = 141
          Height = 13
          Caption = '(%) Desc. ICMS Obrigatorio :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 4
          Top = 76
          Width = 111
          Height = 13
          Caption = '(%) Aliquotas ICMS'
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
          Left = 433
          Top = 156
          Width = 96
          Height = 13
          Caption = '(%) Aliquota ICMS :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 364
          Top = 49
          Width = 142
          Height = 13
          Caption = 'Inscrição de Substituto Trib. :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 464
          Top = 24
          Width = 123
          Height = 13
          Caption = '(%) Desconto Comercial :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Shape6: TShape
          Left = 0
          Top = 177
          Width = 632
          Height = 27
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label14: TLabel
          Left = 4
          Top = 183
          Width = 111
          Height = 13
          Caption = 'Descrição dos Itens'
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
        object EdNomUfe: TdxDBColorEdit
          Left = 143
          Top = 45
          Width = 217
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
          DataField = 'NOMUFE'
          DataSource = DsUfe
          CorDeFoco = clInfoBk
        end
        object EdSigUfe: TdxDBColorEdit
          Left = 143
          Top = 21
          Width = 89
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
          DataSource = DsUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdDscUfe: TdxDBColorCurrencyEdit
          Left = 417
          Top = 20
          Width = 43
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
          TabOrder = 1
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DSCUFE'
          DataSource = DsUfe
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object Panel6: TPanel
          Left = 405
          Top = 71
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = clNavy
          TabOrder = 7
          object nvIcm: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            DataSource = DsIcm
            BaseAtualizar = 'EstClpEstGruEstSub'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 99
          Width = 632
          Height = 52
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 6
          object grIcm: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 630
            Height = 50
            Selected.Strings = (
              'SEQICM'#9'80'#9'No. '
              'PERICM'#9'21'#9'            (%) Aliquota ICMS'#9'F')
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
            TitleLines = 1
            TitleButtons = False
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPerIcm: TdxDBColorCurrencyEdit
          Left = 533
          Top = 152
          Width = 100
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
          TabOrder = 5
          OnKeyDown = EdPerIcmKeyDown
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERICM'
          DataSource = DsIcm
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object EdSubTrb: TdxDBColorEdit
          Left = 509
          Top = 45
          Width = 124
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
          DataField = 'SUBTRB'
          DataSource = DsUfe
          CorDeFoco = clInfoBk
        end
        object EdDscCom: TdxDBColorCurrencyEdit
          Left = 590
          Top = 20
          Width = 43
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
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DSCCOM'
          DataSource = DsUfe
          DisplayFormat = '###,###,##0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          Height = 24
          StoredValues = 1
        end
        object Panel7: TPanel
          Left = 405
          Top = 178
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = clNavy
          TabOrder = 8
          object nvPro: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            OnExclui = nvProExclui
            BeforeSalva = nvProBeforeSalva
            OnSalva = nvProSalva
            DataSource = dsGer
            BaseAtualizar = 'EstClpEstGruEstSubEstProFinTmo'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 262
          Width = 635
          Height = 175
          BevelOuter = bvNone
          Color = 15788249
          TabOrder = 9
          OnExit = Panel8Exit
          object Label15: TLabel
            Left = 1
            Top = 3
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
          object Label16: TLabel
            Left = 1
            Top = 25
            Width = 58
            Height = 13
            Caption = 'Sub-Grupo :'
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
            Left = 1
            Top = 47
            Width = 29
            Height = 13
            Caption = 'Item :'
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
          object Label18: TLabel
            Left = 1
            Top = 69
            Width = 56
            Height = 13
            Caption = 'Descrição : '
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
          object Label107: TLabel
            Left = 1
            Top = 91
            Width = 126
            Height = 13
            Caption = 'Regra de ICMS de Saída : '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 1
            Top = 157
            Width = 90
            Height = 13
            Caption = 'Alterar Descrição ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 1
            Top = 113
            Width = 115
            Height = 13
            Caption = 'Regra de IPI de Saída : '
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
            Top = 135
            Width = 34
            Height = 13
            Caption = 'CFOP :'
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
            Left = 266
            Top = 135
            Width = 135
            Height = 13
            Caption = '(Código Fiscal de Operação)'
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
          object EdCodPro: TdxDBColorEdit
            Left = 143
            Top = 43
            Width = 89
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
            OnEnter = EdCodGruEnter
            OnExit = EdCodProExit
            OnKeyDown = EdCodProKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODPRO'
            DataSource = dsGer
            MaxLength = 5
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object EdCodSub: TdxDBColorEdit
            Left = 143
            Top = 21
            Width = 89
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
            OnEnter = EdCodGruEnter
            OnExit = EdCodSubExit
            OnKeyDown = EdCodSubKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODSUB'
            DataSource = dsGer
            MaxLength = 4
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object EdCodGru: TdxDBColorEdit
            Left = 143
            Top = -1
            Width = 89
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
            OnEnter = EdCodGruEnter
            OnExit = EdCodGruExit
            OnKeyDown = EdCodGruKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODGRU'
            DataSource = dsGer
            MaxLength = 3
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object CbNomPro: TdxDBColorLookupEdit
            Left = 264
            Top = 43
            Width = 369
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
            TabOrder = 5
            TabStop = False
            DataField = 'CODPRO'
            DataSource = dsGer
            ReadOnly = False
            ListFieldName = 'DSCPRO'
            KeyFieldName = 'CODPRO'
            ListSource = DsPro
            LookupKeyValue = Null
            CorDeFoco = clBlack
            StoredValues = 64
          end
          object CbNomSub: TdxDBColorLookupEdit
            Left = 264
            Top = 21
            Width = 369
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
            TabOrder = 3
            TabStop = False
            DataField = 'CODSUB'
            DataSource = dsGer
            ReadOnly = False
            ListFieldName = 'NOMSUB'
            KeyFieldName = 'CODSUB'
            ListSource = DsSub
            LookupKeyValue = Null
            CorDeFoco = clBlack
            StoredValues = 64
          end
          object CbNomGru: TdxDBColorLookupEdit
            Left = 264
            Top = -1
            Width = 369
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
            DataField = 'CODGRU'
            DataSource = dsGer
            ReadOnly = False
            ListFieldName = 'NOMGRU'
            KeyFieldName = 'CODGRU'
            ListSource = DsGru
            LookupKeyValue = Null
            CorDeFoco = clBlack
            StoredValues = 64
          end
          object EdDscPro: TdxDBColorEdit
            Left = 143
            Top = 65
            Width = 490
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
            OnEnter = EdDscProEnter
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'DSCPRO'
            DataSource = dsGer
            MaxLength = 30
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object pnText: TPanel
            Left = 486
            Top = 157
            Width = 144
            Height = 17
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = 'F1-Iniciais F2-Inteligente'
            Color = 15788249
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object EdRegIcm: TdxDBColorEdit
            Left = 143
            Top = 87
            Width = 89
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
            OnEnter = EdRegIcmEnter
            OnKeyDown = EdRegIcmKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'REGICM'
            DataSource = dsGer
            CorDeFoco = clInfoBk
            StoredValues = 1
          end
          object CbNomIcm: TdxDBColorLookupEdit
            Left = 264
            Top = 87
            Width = 369
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
            TabOrder = 8
            TabStop = False
            DataField = 'REGICM'
            DataSource = dsGer
            ReadOnly = False
            DropDownWidth = 700
            ListFieldName = 'NOMICM'
            KeyFieldName = 'CODICM'
            ListSource = DsEstIcm
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object EdFlgDes: TdxDBColorPickEdit
            Left = 143
            Top = 153
            Width = 61
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
            OnEnter = EdDscProEnter
            DataField = 'FLGDES'
            DataSource = dsGer
            Items.Strings = (
              'Sim'
              'Nao')
            CorDeFoco = clInfoBk
          end
          object EdRegIpi: TdxDBColorEdit
            Left = 143
            Top = 109
            Width = 89
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
            OnEnter = EdRegIcmEnter
            OnKeyDown = EdRegIpiKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'REGIPI'
            DataSource = dsGer
            CorDeFoco = clInfoBk
            StoredValues = 1
          end
          object CbNomIpi: TdxDBColorLookupEdit
            Left = 264
            Top = 109
            Width = 369
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
            TabOrder = 10
            TabStop = False
            DataField = 'REGICM'
            DataSource = dsGer
            ReadOnly = False
            DropDownWidth = 700
            ListFieldName = 'NOMICM'
            KeyFieldName = 'CODICM'
            ListSource = DsEstIcm
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object EdCodCfo: TdxDBColorEdit
            Left = 143
            Top = 131
            Width = 89
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
            OnEnter = EdCodGruEnter
            OnExit = EdCodGruExit
            OnKeyDown = EdCodGruKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODCFO'
            DataSource = dsGer
            MaxLength = 10
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 206
          Width = 632
          Height = 54
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 10
          object grPro: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 630
            Height = 52
            Selected.Strings = (
              'CODITE'#9'18'#9'Nosso Código'
              
                'DSCPRO'#9'83'#9'Descrição do Item                                     ' +
                '                                                                ' +
                '                                    ')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = dsGer
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
            TitleLines = 1
            TitleButtons = False
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 321
    Top = 0
    Width = 313
    Height = 25
    BevelOuter = bvNone
    Color = clNavy
    TabOrder = 1
    object nvUfe: ThDBNavigator
      Left = -56
      Top = -6
      Width = 369
      Height = 31
      BevelOuter = bvNone
      Caption = ' '
      Color = 15788249
      TabOrder = 0
      OnImprime = nvUfeImprime
      DataSource = DsUfe
      BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
      UsaAppend = False
      Salvar = False
    end
  end
  object UpUfe: TUpdateSQL
    ModifySQL.Strings = (
      'update GerUfe'
      'set'
      '  NOMUFE = :NOMUFE,'
      '  DSCUFE = :DSCUFE,'
      '  NROUFE = :NROUFE,'
      '  SUBTRB = :SUBTRB,'
      '  DSCCOM = :DSCCOM,'
      '  QTDICM = :QTDICM,'
      '  SEQICM = :SEQICM,'
      '  FLGTRG = :FLGTRG,'
      '  QTDPRO = :QTDPRO,'
      '  SEQPRO = :SEQPRO'
      'where'
      '  SIGUFE = :OLD_SIGUFE')
    InsertSQL.Strings = (
      'insert into GerUfe'
      
        '  (SIGUFE, NOMUFE, DSCUFE, NROUFE, SUBTRB, DSCCOM, QTDICM, SEQIC' +
        'M, FLGTRG, '
      '   QTDPRO, SEQPRO)'
      'values'
      
        '  (:SIGUFE, :NOMUFE, :DSCUFE, :NROUFE, :SUBTRB, :DSCCOM, :QTDICM' +
        ', :SEQICM, '
      '   :FLGTRG, :QTDPRO, :SEQPRO)')
    DeleteSQL.Strings = (
      'delete from GerUfe'
      'where'
      '  SIGUFE = :OLD_SIGUFE')
    Top = 548
  end
  object GerUfe: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = GerUfeBeforeEdit
    AfterPost = GerUfeAfterPost
    AfterCancel = GerUfeAfterCancel
    OnNewRecord = GerUfeNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From GerUfe'
      'Order by SigUfe')
    UpdateObject = UpUfe
    ValidateWithMask = True
    Top = 464
    object GerUfeSIGUFE: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 5
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 60
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      FixedChar = True
      Size = 40
    end
    object GerUfeDSCUFE: TFloatField
      DisplayLabel = '    (%) Desc. ICMS'
      DisplayWidth = 10
      FieldName = 'DSCUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerUfeDSCCOM: TFloatField
      DisplayLabel = '    (%) Desc.Comercial'
      DisplayWidth = 10
      FieldName = 'DSCCOM'
      Origin = 'ISADE.GERUFE.DSCCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerUfeNROUFE: TIntegerField
      FieldName = 'NROUFE'
      Origin = 'ISADE.GERUFE.NROUFE'
      Visible = False
    end
    object GerUfeSUBTRB: TStringField
      DisplayWidth = 18
      FieldName = 'SUBTRB'
      Origin = 'ISADE.GERUFE.SUBTRB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object GerUfeQTDICM: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDICM'
      Origin = 'ISADE.GERUFE.QTDICM'
      Visible = False
    end
    object GerUfeSEQICM: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQICM'
      Origin = 'ISADE.GERUFE.SEQICM'
      Visible = False
    end
    object GerUfeFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Origin = 'ISADE.GERUFE.FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerUfeQTDPRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDPRO'
      Origin = 'ISADE.GERUFE.QTDPRO'
      Visible = False
    end
    object GerUfeSEQPRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQPRO'
      Origin = 'ISADE.GERUFE.SEQPRO'
      Visible = False
    end
  end
  object DsUfe: TwwDataSource
    DataSet = GerUfe
    OnDataChange = DsUfeDataChange
    Left = 28
    Top = 464
  end
  object GerIcm: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = GerIcmBeforeEdit
    AfterPost = GerIcmAfterPost
    AfterCancel = GerIcmAfterCancel
    OnNewRecord = GerIcmNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From GerIcm'
      'Where SigUfe = :SigUfe'
      'Order by SigUfe,SeqIcm')
    UpdateObject = UpIcm
    ValidateWithMask = True
    Top = 492
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
        ParamType = ptInput
        Value = 'SP'
      end>
    object GerIcmSEQICM: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. '
      DisplayWidth = 80
      FieldName = 'SEQICM'
      Origin = 'ISADE.GERICM.SEQICM'
    end
    object GerIcmPERICM: TFloatField
      DisplayLabel = '            (%) Aliquota ICMS'
      DisplayWidth = 21
      FieldName = 'PERICM'
      Origin = 'ISADE.GERICM.PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object GerIcmSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERICM.SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object DsIcm: TwwDataSource
    DataSet = GerIcm
    OnDataChange = DsIcmDataChange
    Left = 28
    Top = 492
  end
  object UpIcm: TUpdateSQL
    ModifySQL.Strings = (
      'update GerIcm'
      'set'
      '  PERICM = :PERICM,'
      '  NROICM = :NROICM,'
      '  FLGTRG = :FLGTRG'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQICM = :OLD_SEQICM')
    InsertSQL.Strings = (
      'insert into GerIcm'
      '  (SIGUFE, SEQICM, PERICM, NROICM, FLGTRG)'
      'values'
      '  (:SIGUFE, :SEQICM, :PERICM, :NROICM, :FLGTRG)')
    DeleteSQL.Strings = (
      'delete from GerIcm'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQICM = :OLD_SEQICM')
    Left = 28
    Top = 548
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 28
    Top = 576
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
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
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\DualComp\Relatorios\RManUfe.rtm'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Top = 604
    Version = '5.0'
    mmColumnWidth = 197300
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Aliquotas de ICMS por Unidades da Federação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Sigla'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 9260
        mmWidth = 7056
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Estado'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 9260
        mmWidth = 9454
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = '% Desc ICMS'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Alignment = taRightJustify
        Caption = '% Desc Comercial'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 147902
        mmTop = 9260
        mmWidth = 25964
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
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
      object ppLabel4: TppLabel
        UserName = 'Label4'
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
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSigUfe: TppDBText
        UserName = 'SigUfe'
        DataField = 'SIGUFE'
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
      object ppNomUfe: TppDBText
        UserName = 'CodTdo1'
        DataField = 'NOMUFE'
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
        mmWidth = 114036
        BandType = 4
      end
      object ppDscUfe: TppDBText
        UserName = 'DscUfe'
        Alignment = taRightJustify
        DataField = 'DSCUFE'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 126471
        mmTop = 1058
        mmWidth = 20638
        BandType = 4
      end
      object ppDscCom: TppDBText
        UserName = 'DscUfe1'
        Alignment = taRightJustify
        DataField = 'DSCCOM'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 147902
        mmTop = 1058
        mmWidth = 25964
        BandType = 4
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = DsUfe
    UserName = 'DBPipeline'
    Left = 28
    Top = 604
    object ppDBPipelineppField1: TppField
      FieldAlias = 'SIGUFE'
      FieldName = 'SIGUFE'
      FieldLength = 2
      DisplayWidth = 5
      Position = 0
    end
    object ppDBPipelineppField2: TppField
      FieldAlias = 'NOMUFE'
      FieldName = 'NOMUFE'
      FieldLength = 40
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipelineppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DSCUFE'
      FieldName = 'DSCUFE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipelineppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DSCCOM'
      FieldName = 'DSCCOM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipelineppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NROUFE'
      FieldName = 'NROUFE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipelineppField6: TppField
      FieldAlias = 'SUBTRB'
      FieldName = 'SUBTRB'
      FieldLength = 18
      DisplayWidth = 18
      Position = 5
    end
  end
  object DsGru: TwwDataSource
    DataSet = EstGru
    Left = 93
    Top = 492
  end
  object EstGru: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstGru'
      'Where Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstGru.CodGru)'
      'Order by NomGru'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 492
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstGruCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTGRU.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstGruNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'ISADE.ESTGRU.NOMGRU'
      FixedChar = True
      Size = 40
    end
  end
  object EstSub: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstSub'
      'Where CodGru = :CodGru'
      '     and Exists(Select * From EstPro Where CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstSub.CodGru'
      
        '                                                            and ' +
        'CodSub = EstSub.CodSub)'
      'Order by NomSub'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 520
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstSubCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstSubCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstSubNOMSUB: TStringField
      FieldName = 'NOMSUB'
      Origin = 'ISADE.ESTSUB.NOMSUB'
      FixedChar = True
      Size = 40
    end
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    Left = 93
    Top = 520
  end
  object DsPro: TwwDataSource
    DataSet = EstPro
    Left = 93
    Top = 548
  end
  object EstPro: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstPro'
      'Where CodClp = :CodClp'
      '     and CodGru = :CodGru'
      '     and CodSub = :CodSub'
      'Order by DscPro'
      '')
    ValidateWithMask = True
    Left = 65
    Top = 548
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodSub'
        ParamType = ptInput
      end>
    object EstProCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTPRO.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTPRO.CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTPRO.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.ESTPRO.CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProDSCPRO: TStringField
      FieldName = 'DSCPRO'
      Origin = 'ISADE.ESTPRO.DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstProDSRPRO: TStringField
      FieldName = 'DSRPRO'
      Origin = 'ISADE.ESTPRO.DSRPRO'
      FixedChar = True
      Size = 40
    end
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
    Top = 576
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
    Top = 576
  end
  object GerPro: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = GerProBeforeEdit
    AfterPost = GerProAfterPost
    AfterCancel = GerProAfterCancel
    OnNewRecord = GerProNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select GerPro.*,'
      
        '           CodClp || _UNICODE_FSS '#39' - '#39' || CodGru || _UNICODE_FS' +
        'S '#39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte From Ger' +
        'Pro'
      'Where GerPro.SigUfe = :SigUfe'
      
        'Order by GerPro.SigUfe,GerPro.CodClp,GerPro.CodGru,GerPro.CodSub' +
        ',GerPro.CodPro')
    UpdateObject = UpPro
    ValidateWithMask = True
    Top = 520
    ParamData = <
      item
        DataType = ftString
        Name = 'SigUfe'
        ParamType = ptInput
      end>
    object GerProCODITE: TStringField
      DisplayLabel = 'Nosso Código'
      DisplayWidth = 18
      FieldName = 'CODITE'
      Size = 18
    end
    object GerProDSCPRO: TStringField
      DisplayLabel = 
        'Descrição do Item                                               ' +
        '                                                                ' +
        '                          '
      DisplayWidth = 83
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 40
    end
    object GerProSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object GerProSEQPRO: TIntegerField
      FieldName = 'SEQPRO'
      Visible = False
    end
    object GerProCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerProCODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object GerProCODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object GerProCODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object GerProNROPRO: TIntegerField
      FieldName = 'NROPRO'
      Visible = False
    end
    object GerProFLGTRG: TStringField
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object GerProREGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object GerProFLGDES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object GerProTIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object GerProREGIPI: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object GerProTIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object GerProCODCFO: TStringField
      DisplayWidth = 10
      FieldName = 'CODCFO'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object dsGer: TwwDataSource
    DataSet = GerPro
    OnDataChange = dsGerDataChange
    Left = 28
    Top = 520
  end
  object UpPro: TUpdateSQL
    ModifySQL.Strings = (
      'update GerPro'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DSCPRO = :DSCPRO,'
      '  NROPRO = :NROPRO,'
      '  FLGTRG = :FLGTRG,'
      '  REGICM = :REGICM,'
      '  FLGDES = :FLGDES,'
      '  TIPICM = :TIPICM,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  CODCFO = :CODCFO'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    InsertSQL.Strings = (
      'insert into GerPro'
      
        '  (SIGUFE, SEQPRO, CODCLP, CODGRU, CODSUB, CODPRO, DSCPRO, NROPR' +
        'O, '
      'FLGTRG, '
      '   REGICM, FLGDES, TIPICM, REGIPI, TIPIPI, CODCFO)'
      'values'
      
        '  (:SIGUFE, :SEQPRO, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DSCPRO' +
        ', '
      ':NROPRO, '
      
        '   :FLGTRG, :REGICM, :FLGDES, :TIPICM, :REGIPI, :TIPIPI, :CODCFO' +
        ')')
    DeleteSQL.Strings = (
      'delete from GerPro'
      'where'
      '  SIGUFE = :OLD_SIGUFE and'
      '  SEQPRO = :OLD_SEQPRO')
    Top = 576
  end
  object EstIcm: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 65
    Top = 464
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
  object DsEstIcm: TwwDataSource
    DataSet = EstIcm
    Left = 93
    Top = 464
  end
  object EstIpi: TwwQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstIpi.CodIpi,'
      '           EstIpi.NomIpi,'
      '           EstIpi.PerIpi'
      'From EstIpi'
      'Where EstIpi.CodIpi = :CodIpi'
      '     and EstIpi.TipIpi = :TipIpi')
    ValidateWithMask = True
    Left = 65
    Top = 604
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIpi'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIpi'
        ParamType = ptInput
      end>
    object EstIpiCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object EstIpiNOMIPI: TStringField
      FieldName = 'NOMIPI'
      FixedChar = True
      Size = 100
    end
    object EstIpiPERIPI: TFloatField
      FieldName = 'PERIPI'
    end
  end
  object DsIpi: TwwDataSource
    DataSet = EstIpi
    Left = 93
    Top = 604
  end
end
