inherited fmManPrm: TfmManPrm
  Left = 20
  Caption = 'Promoções'
  ClientHeight = 436
  ClientWidth = 646
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
  object pcPedPrm: TPageControl
    Left = -2
    Top = 0
    Width = 660
    Height = 440
    ActivePage = pcPag2
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
        Width = 652
        Height = 409
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape3: TShape
          Left = 0
          Top = 179
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
        object Label10: TLabel
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
        object Label3: TLabel
          Left = 4
          Top = 181
          Width = 139
          Height = 13
          Caption = 'Promoções selecionadas'
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
          Top = 387
          Width = 644
          Height = 21
          Brush.Color = 14789952
          Pen.Color = 11764252
          Shape = stRoundRect
        end
        object Label4: TLabel
          Left = 1
          Top = 47
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
        object Label12: TLabel
          Left = 4
          Top = 391
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
          Width = 443
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Shape2: TShape
          Left = 202
          Top = 187
          Width = 442
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label20: TLabel
          Left = 1
          Top = 139
          Width = 100
          Height = 13
          Caption = 'Periodo promocional:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 213
          Top = 139
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label48: TLabel
          Left = 1
          Top = 70
          Width = 36
          Height = 13
          Caption = 'Grupo :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label49: TLabel
          Left = 1
          Top = 93
          Width = 58
          Height = 13
          Caption = 'Sub-Grupo :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 1
          Top = 116
          Width = 29
          Height = 13
          Caption = 'Item :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object SpeedButton1: TSpeedButton
          Left = 204
          Top = 67
          Width = 23
          Height = 21
          Hint = 'Pesquisar Grupos Existentes'
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
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 204
          Top = 90
          Width = 23
          Height = 21
          Hint = 'Pesquisar Sub-Grupos Existentes'
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
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 204
          Top = 114
          Width = 23
          Height = 20
          Hint = 'Pesquisar Grupos Existentes'
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
          OnClick = SpeedButton3Click
        end
        object EdPsqId_PedPrm: TdxColorEdit
          Left = 107
          Top = 20
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
          OnKeyPress = EdPsqId_PedPrmKeyPress
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object rgOrdem: TRadioGroup
          Left = 513
          Top = 73
          Width = 130
          Height = 62
          Caption = ' Exibido Por '
          ItemIndex = 0
          Items.Strings = (
            'Codigo'
            'Descrição')
          TabOrder = 12
        end
        object bSelecionar: TBitBtn
          Left = 513
          Top = 137
          Width = 130
          Height = 47
          Caption = '&Selecionar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = bSelecionarClick
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
          Top = 200
          Width = 644
          Height = 185
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 13
          object grPedPrm: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 642
            Height = 183
            Selected.Strings = (
              'ID_PEDPRM'#9'10'#9'Código'
              'NOMPRM'#9'43'#9'Descrição'
              'DTIPRM'#9'14'#9'    Inicio'
              'DTFPRM'#9'14'#9' Término'
              'SITPRM'#9'20'#9'Situação                             ')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsPedPrm
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
            OnDblClick = grPedPrmDblClick
            IndicatorColor = icYellow
            CorDeFoco = clInfoBk
          end
        end
        object EdPsqNomPrm: TdxColorEdit
          Left = 107
          Top = 43
          Width = 405
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
        object EdPsqDtiPrm: TdxColorDateEdit
          Left = 107
          Top = 135
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
          Date = -700000
          SaveTime = False
          UseEditMask = True
          CorDeFoco = clInfoBk
          StoredValues = 4
        end
        object EdPsqDtfPrm: TdxColorDateEdit
          Left = 228
          Top = 135
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
          TabOrder = 9
          Date = -700000
          SaveTime = False
          UseEditMask = True
          CorDeFoco = clInfoBk
          StoredValues = 4
        end
        object rgStatus: TRadioGroup
          Left = 513
          Top = 13
          Width = 130
          Height = 61
          Caption = ' Situação '
          ItemIndex = 2
          Items.Strings = (
            'Em Trânsito'
            'Concluida'
            'Todos')
          TabOrder = 10
        end
        object EdPsqCodPro: TdxColorEdit
          Left = 107
          Top = 112
          Width = 96
          Hint = 'Item'
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
          OnExit = EdPsqCodProExit
          OnKeyDown = EdPsqCodProKeyDown
          CharCase = ecUpperCase
          MaxLength = 5
          CorDeFoco = clInfoBk
          StoredValues = 2
        end
        object EdPsqCodSub: TdxColorEdit
          Left = 107
          Top = 89
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
          TabOrder = 4
          OnExit = EdPsqCodSubExit
          OnKeyDown = EdPsqCodSubKeyDown
          OnKeyPress = EdPsqId_PedPrmKeyPress
          CharCase = ecUpperCase
          MaxLength = 4
          CorDeFoco = clInfoBk
          StoredValues = 2
        end
        object EdPsqCodGru: TdxColorEdit
          Left = 107
          Top = 66
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
          TabOrder = 2
          OnExit = EdPsqCodGruExit
          OnKeyDown = EdPsqCodGruKeyDown
          OnKeyPress = EdPsqId_PedPrmKeyPress
          CharCase = ecUpperCase
          MaxLength = 3
          CorDeFoco = clInfoBk
          StoredValues = 2
        end
        object EdPsqNomPro: TdxColorEdit
          Left = 228
          Top = 112
          Width = 284
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
          TabOrder = 7
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object EdPsqNomSub: TdxColorEdit
          Left = 228
          Top = 89
          Width = 284
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
          CharCase = ecUpperCase
          CorDeFoco = clInfoBk
        end
        object EdPsqNomGru: TdxColorEdit
          Left = 228
          Top = 66
          Width = 284
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
        Width = 652
        Height = 409
        Align = alClient
        BevelOuter = bvNone
        Color = 15788249
        TabOrder = 0
        object Shape5: TShape
          Left = 0
          Top = 90
          Width = 643
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
          Left = 202
          Top = 8
          Width = 441
          Height = 3
          Brush.Color = 11106843
          Pen.Color = 14789952
        end
        object Label7: TLabel
          Left = 1
          Top = 47
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
        object Label9: TLabel
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
        object Label21: TLabel
          Left = 1
          Top = 70
          Width = 100
          Height = 13
          Caption = 'Periodo promocional:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 4
          Top = 97
          Width = 30
          Height = 13
          Caption = 'Itens'
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
        object Label11: TLabel
          Left = 210
          Top = 70
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 448
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Situação:'
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
        object Panel1: TPanel
          Left = -1
          Top = 225
          Width = 644
          Height = 183
          BevelOuter = bvNone
          Color = 15788249
          TabOrder = 6
          OnExit = Panel1Exit
          object Label8: TLabel
            Left = 1
            Top = 3
            Width = 33
            Height = 13
            Caption = 'Grupo:'
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
            Top = 26
            Width = 50
            Height = 13
            Caption = 'Subgrupo:'
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
            Left = 1
            Top = 48
            Width = 26
            Height = 13
            Caption = 'Item:'
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
            Top = 71
            Width = 95
            Height = 13
            Caption = '(%) Desc. tabela 1:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 1
            Top = 93
            Width = 95
            Height = 13
            Caption = '(%) Desc. tabela 2:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 1
            Top = 117
            Width = 95
            Height = 13
            Caption = '(%) Desc. tabela 3:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 1
            Top = 139
            Width = 95
            Height = 13
            Caption = '(%) Desc. tabela 4:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 1
            Top = 163
            Width = 95
            Height = 13
            Caption = '(%) Desc. tabela 5:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 229
            Top = 71
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 229
            Top = 94
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 229
            Top = 117
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 229
            Top = 140
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 229
            Top = 163
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 506
            Top = 71
            Width = 42
            Height = 13
            Caption = 'Vendido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 506
            Top = 94
            Width = 42
            Height = 13
            Caption = 'Vendido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 506
            Top = 117
            Width = 42
            Height = 13
            Caption = 'Vendido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 506
            Top = 140
            Width = 42
            Height = 13
            Caption = 'Vendido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 506
            Top = 162
            Width = 42
            Height = 13
            Caption = 'Vendido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object EdDs5Pr2: TdxDBColorCurrencyEdit
            Left = 107
            Top = 158
            Width = 95
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
            TabOrder = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DS5PR2'
            DataSource = DsPedPr2
            DisplayFormat = '###,###,##0.00'
            MaxValue = 100
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdDs4Pr2: TdxDBColorCurrencyEdit
            Left = 107
            Top = 135
            Width = 95
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
            TabOrder = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DS4PR2'
            DataSource = DsPedPr2
            DisplayFormat = '###,###,##0.00'
            MaxValue = 100
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdDs3Pr2: TdxDBColorCurrencyEdit
            Left = 107
            Top = 112
            Width = 95
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
            TabOrder = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DS3PR2'
            DataSource = DsPedPr2
            DisplayFormat = '###,###,##0.00'
            MaxValue = 100
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdDs2Pr2: TdxDBColorCurrencyEdit
            Left = 107
            Top = 89
            Width = 95
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
            TabOrder = 8
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DS2PR2'
            DataSource = DsPedPr2
            DisplayFormat = '###,###,##0.00'
            MaxValue = 100
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdDs1Pr2: TdxDBColorCurrencyEdit
            Left = 107
            Top = 66
            Width = 95
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
            TabOrder = 6
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DS1PR2'
            DataSource = DsPedPr2
            DisplayFormat = '###,###,##0.00'
            MaxValue = 100
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdCodPro: TdxDBColorEdit
            Left = 107
            Top = 44
            Width = 95
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
            TabOrder = 4
            OnExit = EdCodProExit
            OnKeyDown = EdCodProKeyDown
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODPRO'
            DataSource = DsPedPr2
            MaxLength = 4
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object EdCodSub: TdxDBColorEdit
            Left = 107
            Top = 22
            Width = 95
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
            OnExit = EdCodSubExit
            OnKeyDown = EdCodSubKeyDown
            OnKeyPress = EdPsqId_PedPrmKeyPress
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODSUB'
            DataSource = DsPedPr2
            MaxLength = 4
            CorDeFoco = clInfoBk
            StoredValues = 3
          end
          object EdCodGru: TdxDBColorEdit
            Left = 107
            Top = 0
            Width = 95
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
            OnExit = EdCodGruExit
            OnKeyDown = EdCodGruKeyDown
            OnKeyPress = EdPsqId_PedPrmKeyPress
            Alignment = taLeftJustify
            CharCase = ecUpperCase
            DataField = 'CODGRU'
            DataSource = DsPedPr2
            CorDeFoco = clInfoBk
            StoredValues = 1
          end
          object CbNomGru: TdxDBColorLookupEdit
            Left = 228
            Top = 0
            Width = 417
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
            DataSource = DsPedPr2
            ReadOnly = False
            ListFieldName = 'NOMGRU;CODGRU'
            KeyFieldName = 'CODGRU'
            ListSource = DsEstGru
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object CbNomSub: TdxDBColorLookupEdit
            Left = 228
            Top = 22
            Width = 417
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
            DataSource = DsPedPr2
            ReadOnly = False
            ListFieldName = 'NOMSUB;CODSUB'
            KeyFieldName = 'CODSUB'
            ListSource = DsEstSub
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object CbNomPro: TdxDBColorLookupEdit
            Left = 228
            Top = 44
            Width = 417
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
            DataSource = DsPedPr2
            ReadOnly = False
            ListFieldName = 'DSCPRO;CODPRO'
            KeyFieldName = 'CODPRO'
            ListSource = DsEstPro
            LookupKeyValue = Null
            CorDeFoco = clInfoBk
            StoredValues = 64
          end
          object EdQt1Pr2: TdxDBColorCurrencyEdit
            Left = 291
            Top = 66
            Width = 95
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
            TabOrder = 7
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QT1PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdQt2Pr2: TdxDBColorCurrencyEdit
            Left = 291
            Top = 89
            Width = 95
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
            TabOrder = 9
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QT2PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdQt3Pr2: TdxDBColorCurrencyEdit
            Left = 291
            Top = 112
            Width = 95
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
            TabOrder = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QT3PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdQt4Pr2: TdxDBColorCurrencyEdit
            Left = 291
            Top = 135
            Width = 95
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
            TabOrder = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QT4PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdQt5Pr2: TdxDBColorCurrencyEdit
            Left = 291
            Top = 158
            Width = 95
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
            TabOrder = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QT5PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdRe5Pr2: TdxDBColorCurrencyEdit
            Left = 550
            Top = 158
            Width = 95
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
            TabOrder = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RE5PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdRe4Pr2: TdxDBColorCurrencyEdit
            Left = 550
            Top = 135
            Width = 95
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
            TabOrder = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RE4PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdRe3Pr2: TdxDBColorCurrencyEdit
            Left = 550
            Top = 112
            Width = 95
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
            TabOrder = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RE3PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdRe2Pr2: TdxDBColorCurrencyEdit
            Left = 550
            Top = 89
            Width = 95
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
            TabOrder = 19
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RE2PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
          object EdRe1Pr2: TdxDBColorCurrencyEdit
            Left = 550
            Top = 66
            Width = 95
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
            TabOrder = 20
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RE1PR2'
            DataSource = DsPedPr2
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0.0000'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 17
          end
        end
        object EdNomPrm: TdxDBColorEdit
          Left = 107
          Top = 43
          Width = 537
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
          DataField = 'NOMPRM'
          DataSource = DsPedPrm
          CorDeFoco = clInfoBk
        end
        object EdId_PedPrm: TdxDBColorEdit
          Left = 107
          Top = 20
          Width = 95
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
          DataField = 'ID_PEDPRM'
          DataSource = DsPedPrm
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object Panel5: TPanel
          Left = 0
          Top = 120
          Width = 642
          Height = 102
          BevelOuter = bvNone
          Color = 14789952
          TabOrder = 4
          object grPedPr2: ThGrid
            Tag = 1
            Left = 1
            Top = 1
            Width = 640
            Height = 100
            Selected.Strings = (
              'CODITE'#9'15'#9'Item'
              'DSCPRO'#9'41'#9' '
              'DS1PR2'#9'8'#9'   Tabela 1'
              'DS2PR2'#9'8'#9' Tabela 2'
              'DS3PR2'#9'8'#9'  Tabela 3'#9'F'
              'DS4PR2'#9'8'#9'  Tabela 4'
              'DS5PR2'#9'8'#9'    Tabela 5')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            ShowVertScrollBar = False
            BorderStyle = bsNone
            Color = 16577773
            DataSource = DsPedPr2
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
        object EdDtiPrm: TdxDBColorDateEdit
          Left = 107
          Top = 66
          Width = 95
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
          DataField = 'DTIPRM'
          DataSource = DsPedPrm
          PopupBorder = pbFlat
          DateButtons = []
          DateValidation = True
          SaveTime = False
          CorDeFoco = clInfoBk
        end
        object EdDtfPrm: TdxDBColorDateEdit
          Left = 224
          Top = 66
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
          TabOrder = 3
          DataField = 'DTFPRM'
          DataSource = DsPedPrm
          PopupBorder = pbFlat
          DateButtons = []
          DateValidation = True
          SaveTime = False
          CorDeFoco = clInfoBk
        end
        object Panel6: TPanel
          Left = 416
          Top = 92
          Width = 225
          Height = 25
          BevelOuter = bvNone
          Color = clNavy
          TabOrder = 5
          object nvPedPr2: ThDBNavigator
            Left = -56
            Top = -6
            Width = 281
            Height = 31
            BevelOuter = bvNone
            Caption = ' '
            Color = 14789952
            TabOrder = 0
            OnExclui = nvPedPr2Salva
            BeforeSalva = nvPedPr2BeforeSalva
            OnSalva = nvPedPr2Salva
            DataSource = DsPedPr2
            BaseAtualizar = 'EstClpEstGruEstSub'
            UsaAppend = True
            Salvar = False
            EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
          end
        end
        object EdSitPrm: TdxDBColorEdit
          Left = 495
          Top = 20
          Width = 149
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
          TabOrder = 7
          Alignment = taLeftJustify
          DataField = 'SITPRM'
          DataSource = DsPedPrm
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
      end
    end
  end
  object nvPedPrm: ThDBNavigator
    Left = 277
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    DataSource = DsPedPrm
    BaseAtualizar = 'CepTitFinPlcFinSubFinBanGerUfeCmpPed'
    UsaAppend = False
    Salvar = False
  end
  object UpPedPrm: TUpdateSQL
    ModifySQL.Strings = (
      'update PedPrm'
      'set'
      '  NOMPRM = :NOMPRM,'
      '  DTIPRM = :DTIPRM,'
      '  DTFPRM = :DTFPRM,'
      '  FLGATU = :FLGATU,'
      '  USUCON = :USUCON,'
      '  DTECON = :DTECON,'
      '  HRECON = :HRECON'
      'where'
      '  ID_PEDPRM = :OLD_ID_PEDPRM')
    InsertSQL.Strings = (
      'insert into PedPrm'
      '  (ID_PEDPRM, NOMPRM, DTIPRM, DTFPRM, QTIPR2, FLGATU, USUCON, '
      'DTECON, HRECON, '
      '   SITPRM)'
      'values'
      
        '  (:ID_PEDPRM, :NOMPRM, :DTIPRM, :DTFPRM, :QTIPR2, :FLGATU, :USU' +
        'CON, '
      ':DTECON, '
      '   :HRECON, :SITPRM)')
    DeleteSQL.Strings = (
      'delete from PedPrm'
      'where'
      '  ID_PEDPRM = :OLD_ID_PEDPRM')
    Top = 498
  end
  object PedPrm: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = PedPrmBeforeEdit
    AfterPost = PedPrmAfterPost
    AfterCancel = PedPrmAfterCancel
    OnNewRecord = PedPrmNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From PedPrm'
      'Order by PedPrm.Id_PedPrm')
    UpdateObject = UpPedPrm
    ValidateWithMask = True
    Top = 442
    object PedPrmID_PEDPRM: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'ID_PEDPRM'
      Origin = 'ISADE.PEDPRM.ID_PEDPRM'
    end
    object PedPrmNOMPRM: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 43
      FieldName = 'NOMPRM'
      Origin = 'ISADE.PEDPRM.NOMPRM'
      Size = 40
    end
    object PedPrmDTIPRM: TDateTimeField
      DisplayLabel = '    Inicio'
      DisplayWidth = 14
      FieldName = 'DTIPRM'
      Origin = 'ISADE.PEDPRM.DTIPRM'
    end
    object PedPrmDTFPRM: TDateTimeField
      DisplayLabel = ' Término'
      DisplayWidth = 14
      FieldName = 'DTFPRM'
      Origin = 'ISADE.PEDPRM.DTFPRM'
    end
    object PedPrmSITPRM: TStringField
      DisplayLabel = 'Situação                             '
      DisplayWidth = 20
      FieldName = 'SITPRM'
      Origin = 'ISADE.PEDPRM.SITPRM'
      Size = 45
    end
    object PedPrmQTIPR2: TIntegerField
      FieldName = 'QTIPR2'
      Origin = 'ISADE.PEDPRM.QTIPR2'
      Visible = False
    end
    object PedPrmFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDPRM.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedPrmUSUCON: TIntegerField
      FieldName = 'USUCON'
      Origin = 'ISADE.PEDPRM.USUCON'
      Visible = False
    end
    object PedPrmDTECON: TDateTimeField
      FieldName = 'DTECON'
      Origin = 'ISADE.PEDPRM.DTECON'
      Visible = False
    end
    object PedPrmHRECON: TStringField
      FieldName = 'HRECON'
      Origin = 'ISADE.PEDPRM.HRECON'
      Visible = False
      FixedChar = True
      Size = 8
    end
  end
  object DsPedPrm: TwwDataSource
    DataSet = PedPrm
    OnDataChange = DsPedPrmDataChange
    Left = 28
    Top = 442
  end
  object PedPr2: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = PedPr2BeforeEdit
    AfterPost = PedPr2AfterPost
    AfterCancel = PedPr2AfterCancel
    OnNewRecord = PedPr2NewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    DataSource = DsPedPrm
    SQL.Strings = (
      'Select PedPr2.*,'
      '           EstPro.DscPro,'
      
        '           PedPr2.CodClp || _UNICODE_FSS '#39'-'#39' || PedPr2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedPr2.CodSub || _UNICODE_FSS '#39'.'#39' || PedPr2' +
        '.CodPro as CodIte'
      'From PedPr2 LEFT JOIN EstPro ON (PedPr2.CodClp = EstPro.CodClp '
      
        '                                                  AND PedPr2.Cod' +
        'Gru = EstPro.CodGru '
      
        '                                                  AND PedPr2.Cod' +
        'Sub = EstPro.CodSub'
      
        '                                                  AND PedPr2.Cod' +
        'Pro = EstPro.CodPro)'
      'Where PedPr2.Id_PedPrm = :Id_PedPrm'
      'Order by PedPr2.NroPr2')
    UpdateObject = UpPedPr2
    ValidateWithMask = True
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDPRM'
        ParamType = ptUnknown
      end>
    object PedPr2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object PedPr2DSCPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 41
      FieldName = 'DSCPRO'
      Size = 70
    end
    object PedPr2DS1PR2: TFloatField
      DisplayLabel = '   Tabela 1'
      DisplayWidth = 8
      FieldName = 'DS1PR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedPr2DS2PR2: TFloatField
      DisplayLabel = ' Tabela 2'
      DisplayWidth = 8
      FieldName = 'DS2PR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedPr2DS3PR2: TFloatField
      DisplayLabel = '  Tabela 3'
      DisplayWidth = 8
      FieldName = 'DS3PR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedPr2DS4PR2: TFloatField
      DisplayLabel = '  Tabela 4'
      DisplayWidth = 8
      FieldName = 'DS4PR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedPr2DS5PR2: TFloatField
      DisplayLabel = '    Tabela 5'
      DisplayWidth = 8
      FieldName = 'DS5PR2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedPr2ID_PEDPR2: TIntegerField
      FieldName = 'ID_PEDPR2'
      Visible = False
    end
    object PedPr2ID_PEDPRM: TIntegerField
      FieldName = 'ID_PEDPRM'
      Visible = False
    end
    object PedPr2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedPr2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedPr2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedPr2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedPr2QT1PR2: TFloatField
      FieldName = 'QT1PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2RE1PR2: TFloatField
      FieldName = 'RE1PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2SL1PR2: TFloatField
      FieldName = 'SL1PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2QT2PR2: TFloatField
      FieldName = 'QT2PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2RE2PR2: TFloatField
      FieldName = 'RE2PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2SL2PR2: TFloatField
      FieldName = 'SL2PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2QT3PR2: TFloatField
      FieldName = 'QT3PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2RE3PR2: TFloatField
      FieldName = 'RE3PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2SL3PR2: TFloatField
      FieldName = 'SL3PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2QT4PR2: TFloatField
      FieldName = 'QT4PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2RE4PR2: TFloatField
      FieldName = 'RE4PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2SL4PR2: TFloatField
      FieldName = 'SL4PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2QT5PR2: TFloatField
      FieldName = 'QT5PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2RE5PR2: TFloatField
      FieldName = 'RE5PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2SL5PR2: TFloatField
      FieldName = 'SL5PR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedPr2NROPR2: TIntegerField
      FieldName = 'NROPR2'
      Visible = False
    end
    object PedPr2FLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsPedPr2: TwwDataSource
    DataSet = PedPr2
    OnDataChange = DsPedPr2DataChange
    Left = 28
    Top = 470
  end
  object UpPedPr2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedPr2'
      'set'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DS1PR2 = :DS1PR2,'
      '  QT1PR2 = :QT1PR2,'
      '  DS2PR2 = :DS2PR2,'
      '  QT2PR2 = :QT2PR2,'
      '  DS3PR2 = :DS3PR2,'
      '  QT3PR2 = :QT3PR2,'
      '  DS4PR2 = :DS4PR2,'
      '  QT4PR2 = :QT4PR2,'
      '  DS5PR2 = :DS5PR2,'
      '  QT5PR2 = :QT5PR2,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_PEDPR2 = :OLD_ID_PEDPR2')
    InsertSQL.Strings = (
      'insert into PedPr2'
      
        '  (ID_PEDPR2, ID_PEDPRM, CODCLP, CODGRU, CODSUB, CODPRO, DS1PR2,' +
        ' '
      'QT1PR2, '
      
        '   RE1PR2, SL1PR2, DS2PR2, QT2PR2, RE2PR2, SL2PR2, DS3PR2, QT3PR' +
        '2, '
      'RE3PR2, '
      
        '   SL3PR2, DS4PR2, QT4PR2, RE4PR2, SL4PR2, DS5PR2, QT5PR2, RE5PR' +
        '2, '
      'SL5PR2, '
      '   NROPR2, FLGATU)'
      'values'
      '  (:ID_PEDPR2, :ID_PEDPRM, :CODCLP, :CODGRU, :CODSUB, :CODPRO, '
      ':DS1PR2, '
      
        '   :QT1PR2, :RE1PR2, :SL1PR2, :DS2PR2, :QT2PR2, :RE2PR2, :SL2PR2' +
        ', :DS3PR2, '
      
        '   :QT3PR2, :RE3PR2, :SL3PR2, :DS4PR2, :QT4PR2, :RE4PR2, :SL4PR2' +
        ', :DS5PR2, '
      '   :QT5PR2, :RE5PR2, :SL5PR2, :NROPR2, :FLGATU)')
    DeleteSQL.Strings = (
      'delete from PedPr2'
      'where'
      '  ID_PEDPR2 = :OLD_ID_PEDPR2')
    Left = 28
    Top = 498
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 66
    Top = 442
  end
  object EstGru: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstGru'
      'Where EstGru.CodGru = :CodGru')
    ValidateWithMask = True
    Top = 526
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
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
      'Where EstSub.CodGru = :CodGru'
      '     and EstSub.CodSub = :CodSub')
    ValidateWithMask = True
    Top = 554
    ParamData = <
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
  object DsEstSub: TwwDataSource
    DataSet = EstSub
    Left = 28
    Top = 554
  end
  object DsEstGru: TwwDataSource
    DataSet = EstGru
    Left = 28
    Top = 526
  end
  object EstPro: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select EstPro.CodClp,'
      '           EstPro.CodGru,'
      '           EstPro.CodSub,'
      '           EstPro.CodPro,'
      '           EstPro.DscPro'
      'From EstPro'
      'Where EstPro.CodClp = :CodClp'
      '    and EstPro.CodGru = :CodGru'
      '    and EstPro.CodSub = :CodSub'
      '    and EstPro.CodPro = :CodPro')
    ValidateWithMask = True
    Top = 582
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
      end
      item
        DataType = ftString
        Name = 'CodPro'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.ESTSUB.CODGRU'
      FixedChar = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.ESTSUB.CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProDSCPRO: TStringField
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 70
    end
  end
  object DsEstPro: TwwDataSource
    DataSet = EstPro
    Left = 28
    Top = 582
  end
end
