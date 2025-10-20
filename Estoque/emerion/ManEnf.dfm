inherited fmManEnf: TfmManEnf
  Left = 111
  Top = 171
  Caption = 'Entradas de Estoque'
  ClientHeight = 436
  ClientWidth = 754
  Color = 15788249
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcEnf: TPageControl
    Left = -2
    Top = 0
    Width = 762
    Height = 441
    ActivePage = pcPag2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 99
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape11: TShape
        Left = 0
        Top = 389
        Width = 752
        Height = 19
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape54: TShape
        Left = 0
        Top = 0
        Width = 199
        Height = 19
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label47: TLabel
        Left = 1
        Top = 71
        Width = 68
        Height = 13
        Caption = 'Classificação :'
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
      object Label48: TLabel
        Left = 1
        Top = 94
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
      object Label49: TLabel
        Left = 1
        Top = 117
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
      object Label50: TLabel
        Left = 1
        Top = 140
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
      object BbPsqClp1: TSpeedButton
        Left = 202
        Top = 68
        Width = 23
        Height = 21
        Hint = 'Pesquisar Classificações de Itens Existentes'
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
        OnClick = BbPsqClp1Click
      end
      object BbPsqGru1: TSpeedButton
        Left = 202
        Top = 91
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
        OnClick = BbPsqGru1Click
      end
      object BbPsqSub1: TSpeedButton
        Left = 202
        Top = 114
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
        OnClick = BbPsqSub1Click
      end
      object Label44: TLabel
        Left = 3
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
      object Shape55: TShape
        Left = 200
        Top = 8
        Width = 551
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label1: TLabel
        Left = 1
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Empresa :'
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
      object BbPsqEmp1: TSpeedButton
        Left = 202
        Top = 45
        Width = 23
        Height = 21
        Hint = 'Pesquisar Empresas Existentes'
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
        OnClick = BbPsqEmp1Click
      end
      object BbPsqPro1: TSpeedButton
        Left = 202
        Top = 137
        Width = 23
        Height = 21
        Hint = 'Pesquisar Itens Existentes'
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
        OnClick = BbPsqPro1Click
      end
      object Shape56: TShape
        Left = 0
        Top = 224
        Width = 199
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label45: TLabel
        Left = 4
        Top = 226
        Width = 127
        Height = 13
        Caption = 'Entradas Selecionadas'
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
      object Shape57: TShape
        Left = 200
        Top = 232
        Width = 552
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label31: TLabel
        Left = 210
        Top = 186
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
      object Label30: TLabel
        Left = 1
        Top = 186
        Width = 75
        Height = 13
        Caption = 'Realizadas Em :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 25
        Width = 65
        Height = 13
        Caption = 'No. Entrada :'
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
        Left = 1
        Top = 163
        Width = 54
        Height = 13
        Caption = 'Operação :'
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
      object BbPsqOpe1: TSpeedButton
        Left = 202
        Top = 160
        Width = 23
        Height = 21
        Hint = 'Pesquisar Tipos de Operações de Saidas de Estoque Existentes'
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
        OnClick = BbPsqOpe1Click
      end
      object Label26: TLabel
        Left = 4
        Top = 392
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
      object EdPsqCodPro: TdxColorEdit
        Left = 114
        Top = 136
        Width = 86
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
        OnExit = EdPsqCodProExit
        OnKeyDown = EdPsqCodProKeyDown
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodSub: TdxColorEdit
        Left = 114
        Top = 113
        Width = 86
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
        OnExit = EdPsqCodSubExit
        OnKeyDown = EdPsqCodSubKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodGru: TdxColorEdit
        Left = 114
        Top = 90
        Width = 86
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
        OnExit = EdPsqCodGruExit
        OnKeyDown = EdPsqCodGruKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodClp: TdxColorEdit
        Left = 114
        Top = 67
        Width = 86
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
        OnExit = EdPsqCodClpExit
        OnKeyDown = EdPsqCodClpKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomSub: TdxColorEdit
        Left = 227
        Top = 113
        Width = 348
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
        TabOrder = 9
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomGru: TdxColorEdit
        Left = 227
        Top = 90
        Width = 348
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
      object EdPsqNomClp: TdxColorEdit
        Left = 227
        Top = 67
        Width = 348
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
      object EdPsqCodEmp: TdxColorEdit
        Left = 114
        Top = 44
        Width = 86
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
        OnExit = EdPsqCodEmpExit
        OnKeyDown = EdPsqCodEmpKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomEmp: TdxColorEdit
        Left = 227
        Top = 44
        Width = 348
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
      object EdPsqNomPro: TdxColorEdit
        Left = 227
        Top = 136
        Width = 348
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
        TabOrder = 11
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object BbPesquisa: TBitBtn
        Left = 400
        Top = 184
        Width = 174
        Height = 45
        Caption = '&Selecionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = BbPesquisaClick
        Glyph.Data = {
          F6070000424DF60700000000000036040000280000001E0000001E0000000100
          080000000000C0030000130B0000130B00000001000000010000000000000000
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
          3232320000000000000000EDEDED323232323232323232320000323232323232
          00000031313131FF5C5C5C000000EDEDED323232323232320000323232320000
          31313131313131FF5C5C5C5C5C5C0000EDEDED32323232320000323232005C5C
          31313131313131FF5C5C5C5C5C5C5C5C00EDEDED3232323200003232005C5C5C
          31313131313131FF5C5C5C5C5C5C5C5C5C00EDEDED323232000032005C5C5C5C
          31313100000000000000005C5C5C5C5C5C5C00EDEDED32320000005C5C5C5C5C
          000000FFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED32320000005C5C5C0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED320000005C5C00FFFF
          FFFF000000000000000000FFFFFFFFFF005C5C00EDEDED320000005C00FFFFFF
          00005B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED00000000FFFFFF00
          5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED000000FFFFFF0087
          5B5B5B5B5B5B5B5B5BFFFF5B5B5B5B00FFFFFF00EDEDEDED000000FFFF005C5B
          875B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED32000000FFFF005C5C
          5B8787315B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED32000000FFFF005C5C
          5C5B31FF31878787878787875B5C5C5C00FFFF00EDED323200003200FFFFFF00
          5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF0032323232320000323200FFFFFF
          0000005C5C5C5C5C5C5C5C5C0000FFFFFF00323232323232000032323200FFFF
          FFFFFF000000000000000000FFFFFFFF00EDED32323232320000323232320000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED323232320000323232323232
          000000FFFFFFFFFFFFFFFFFF00000707075D00EDED3232320000323232323232
          32323200000000000000000007FFFF0707070000EDED32320000323232323232
          3232323232323232323232320007FFFF0700000000EDED320000323232323232
          3232323232323232323232323200000000F100000000EDED0000323232323232
          323232323232323232323232323200F0EDF0F100000000ED0000323232323232
          32323232323232323232323232323200F0EDF0F1000000000000323232323232
          3232323232323232323232323232323200F0EDF0F10000000000323232323232
          323232323232323232323232323232323200F0EDF0F100000000323232323232
          32323232323232323232323232323232323200F0EDF0F1000000323232323232
          3232323232323232323232323232323232323200F0EDF0F10000323232323232
          3232323232323232323232323232323232323232000000000000}
      end
      object EdPsqDteEn2: TdxColorDateEdit
        Left = 227
        Top = 182
        Width = 86
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
        TabOrder = 15
        Date = -700000
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        StoredValues = 4
      end
      object EdPsqDteEn1: TdxColorDateEdit
        Left = 114
        Top = 182
        Width = 86
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
        Date = -700000
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        StoredValues = 4
      end
      object rgOrdem: TRadioGroup
        Left = 576
        Top = 17
        Width = 175
        Height = 213
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'No. Entrada'
          'Data de Entrada'
          'Item'
          'Descrição do Item'
          'Operação Realizada')
        ParentFont = False
        TabOrder = 17
      end
      object EdPsqSeqEnf: TdxColorEdit
        Left = 114
        Top = 21
        Width = 86
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
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqAnoEnf: TdxColorEdit
        Left = 227
        Top = 21
        Width = 62
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
        OnKeyPress = EdPsqSeqEnfKeyPress
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodOpe: TdxColorEdit
        Left = 114
        Top = 159
        Width = 86
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
        OnExit = EdPsqCodOpeExit
        OnKeyDown = EdPsqCodOpeKeyDown
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqNomOpe: TdxColorEdit
        Left = 227
        Top = 159
        Width = 348
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
        TabOrder = 13
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object Panel3: TPanel
        Left = -6
        Top = 244
        Width = 758
        Height = 144
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 18
        object grEnf: ThGrid
          Tag = 1
          Left = 7
          Top = 1
          Width = 750
          Height = 142
          Selected.Strings = (
            'NUMENF'#9'23'#9'No. Entrada'
            'DTEENF'#9'10'#9'Data'
            'CODITE'#9'16'#9'Item'
            'DSCPRO'#9'50'#9'Descrição'
            'NOMOPE'#9'20'#9'Operação Realizada')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsEnf
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
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
    end
    object pcPag2: TTabSheet
      Caption = 'Identificação'
      ImageIndex = 1
      OnShow = pcPag2Show
      object Shape3: TShape
        Left = 0
        Top = 367
        Width = 199
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 199
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label3: TLabel
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
      object Shape2: TShape
        Left = 200
        Top = 8
        Width = 551
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label4: TLabel
        Left = 1
        Top = 24
        Width = 65
        Height = 13
        Caption = 'No. Entrada :'
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
      object Label5: TLabel
        Left = 1
        Top = 47
        Width = 48
        Height = 13
        Caption = 'Empresa :'
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
        Top = 70
        Width = 68
        Height = 13
        Caption = 'Classificação :'
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
        Top = 93
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
      object Label8: TLabel
        Left = 1
        Top = 116
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
      object Label9: TLabel
        Left = 1
        Top = 139
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
      object Label10: TLabel
        Left = 1
        Top = 208
        Width = 54
        Height = 13
        Caption = 'Operação :'
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
        Top = 231
        Width = 86
        Height = 13
        Caption = 'Data de Entrada :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 1
        Top = 254
        Width = 31
        Height = 13
        Caption = 'Valor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 1
        Top = 162
        Width = 51
        Height = 13
        Caption = 'Tamanho :'
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
        Top = 185
        Width = 24
        Height = 13
        Caption = 'Cor :'
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
      object BbPsqEmp2: TSpeedButton
        Left = 202
        Top = 44
        Width = 23
        Height = 21
        Hint = 'Pesquisar Empresas Existentes'
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
        OnClick = BbPsqEmp2Click
      end
      object BbPsqClp2: TSpeedButton
        Left = 202
        Top = 67
        Width = 23
        Height = 21
        Hint = 'Pesquisar Classificações de Itens Existentes'
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
        OnClick = BbPsqClp2Click
      end
      object BbPsqGru2: TSpeedButton
        Left = 202
        Top = 90
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
        OnClick = BbPsqGru2Click
      end
      object BbPsqSub2: TSpeedButton
        Left = 202
        Top = 113
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
        OnClick = BbPsqSub2Click
      end
      object BbPsqPro2: TSpeedButton
        Left = 202
        Top = 136
        Width = 23
        Height = 21
        Hint = 'Pesquisar Itens Existentes'
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
        OnClick = BbPsqPro2Click
      end
      object BbPsqOpe2: TSpeedButton
        Left = 202
        Top = 205
        Width = 23
        Height = 21
        Hint = 'Pesquisar Tipos de Operações de Saidas de Estoque Existentes'
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
        OnClick = BbPsqOpe2Click
      end
      object BbPsqCor: TSpeedButton
        Left = 202
        Top = 181
        Width = 23
        Height = 21
        Hint = 'Pesquisar Cores Existentes'
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
        OnClick = BbPsqCorClick
      end
      object Label16: TLabel
        Left = 3
        Top = 369
        Width = 113
        Height = 13
        Caption = 'Outras Informações'
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
        Left = 200
        Top = 375
        Width = 551
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label17: TLabel
        Left = 1
        Top = 391
        Width = 95
        Height = 13
        Caption = 'Data da Operação :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 205
        Top = 391
        Width = 95
        Height = 13
        Caption = 'Hora da Operação :'
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
      object Label19: TLabel
        Left = 396
        Top = 391
        Width = 107
        Height = 13
        Caption = 'Usuário Responsavel :'
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
        Top = 277
        Width = 63
        Height = 13
        Caption = 'Quantidade :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 1
        Top = 300
        Width = 54
        Height = 13
        Caption = 'ICMS (%) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 1
        Top = 323
        Width = 43
        Height = 13
        Caption = 'IPI (%) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 243
        Top = 300
        Width = 31
        Height = 13
        Caption = 'Valor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 243
        Top = 323
        Width = 31
        Height = 13
        Caption = 'Valor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 465
        Top = 323
        Width = 27
        Height = 13
        Caption = 'TIPI :'
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
      object Label27: TLabel
        Left = 1
        Top = 346
        Width = 61
        Height = 13
        Caption = 'Referencial :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 243
        Top = 277
        Width = 88
        Height = 13
        Caption = 'Estoque Anterior :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 463
        Top = 277
        Width = 143
        Height = 13
        Caption = 'Estoque Após o Lançamento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 243
        Top = 346
        Width = 70
        Height = 13
        Caption = 'Observações :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdCodPro: TdxDBColorEdit
        Left = 114
        Top = 135
        Width = 86
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
        TabOrder = 10
        OnExit = EdCodProExit
        OnKeyDown = EdCodProKeyDown
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODPRO'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodSub: TdxDBColorEdit
        Left = 114
        Top = 112
        Width = 86
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
        TabOrder = 8
        OnExit = EdCodSubExit
        OnKeyDown = EdCodSubKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSUB'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodGru: TdxDBColorEdit
        Left = 114
        Top = 89
        Width = 86
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
        TabOrder = 6
        OnExit = EdCodGruExit
        OnKeyDown = EdCodGruKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODGRU'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodClp: TdxDBColorEdit
        Left = 114
        Top = 66
        Width = 86
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
        OnKeyDown = EdCodClpKeyDown
        OnKeyPress = EdPsqSeqEnfKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCLP'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomClp: TdxDBColorLookupEdit
        Left = 227
        Top = 66
        Width = 525
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
        DataField = 'CODCLP'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMCLP;CODCLP'
        KeyFieldName = 'CODCLP'
        ListSource = DsClp
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomGru: TdxDBColorLookupEdit
        Left = 227
        Top = 89
        Width = 525
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
        TabStop = False
        DataField = 'CODGRU'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMGRU;CODGRU'
        KeyFieldName = 'CODGRU'
        ListSource = DsGru
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomSub: TdxDBColorLookupEdit
        Left = 227
        Top = 112
        Width = 525
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
        TabOrder = 9
        TabStop = False
        DataField = 'CODSUB'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMSUB;CODSUB'
        KeyFieldName = 'CODSUB'
        ListSource = DsSub
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object CbNomPro: TdxDBColorLookupEdit
        Left = 227
        Top = 135
        Width = 525
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
        TabOrder = 11
        TabStop = False
        OnExit = EdCodProExit
        DataField = 'CODPRO'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'DSCPRO;CODPRO'
        KeyFieldName = 'CODPRO'
        ListSource = DsPro
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodTam: TdxDBColorEdit
        Left = 114
        Top = 158
        Width = 86
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
        TabOrder = 12
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODTAM'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodCor: TdxDBColorEdit
        Left = 114
        Top = 181
        Width = 86
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
        TabOrder = 13
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODCOR'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomCor: TdxDBColorLookupEdit
        Left = 227
        Top = 181
        Width = 525
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
        TabOrder = 14
        TabStop = False
        DataField = 'CODCOR'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMCOR;CODCOR'
        KeyFieldName = 'CODCOR'
        ListSource = DsCor
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdCodEmp: TdxDBColorEdit
        Left = 114
        Top = 43
        Width = 86
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
        DataField = 'CODEMP'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomEmp: TdxDBColorLookupEdit
        Left = 227
        Top = 43
        Width = 525
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
        DataField = 'CODEMP'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMEMP;CODEMP'
        KeyFieldName = 'CODEMP'
        ListSource = DsEmp
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdSeqEnf: TdxDBColorEdit
        Left = 114
        Top = 20
        Width = 86
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
        DataField = 'SEQENF'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdAnoEnf: TdxDBColorEdit
        Left = 227
        Top = 20
        Width = 86
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
        DataField = 'ANOENF'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodOpe: TdxDBColorEdit
        Left = 114
        Top = 204
        Width = 86
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
        TabOrder = 15
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODOPE'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomOpe: TdxDBColorLookupEdit
        Left = 227
        Top = 204
        Width = 525
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
        TabStop = False
        DataField = 'CODOPE'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'NOMOPE;CODOPE'
        KeyFieldName = 'CODOPE'
        ListSource = DsOpe
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdDteEnf: TdxDBColorDateEdit
        Left = 114
        Top = 227
        Width = 86
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
        TabOrder = 17
        DataField = 'DTEENF'
        DataSource = DsEnf
        PopupBorder = pbFlat
        DateButtons = []
        SaveTime = False
        CorDeFoco = clInfoBk
      end
      object EdValEnf: TdxDBColorCurrencyEdit
        Left = 114
        Top = 250
        Width = 119
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
        OnExit = EdValEnfExit
        DataField = 'VALENF'
        DataSource = DsEnf
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdDteOpe: TdxDBColorDateEdit
        Left = 114
        Top = 387
        Width = 86
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
        TabOrder = 27
        DataField = 'DTEOPE'
        DataSource = DsEnf
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        CorDeFoco = clInfoBk
      end
      object EdHreOpe: TdxDBColorEdit
        Left = 304
        Top = 387
        Width = 86
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
        TabOrder = 28
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'HREOPE'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodUsu: TdxDBColorEdit
        Left = 509
        Top = 387
        Width = 68
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
        TabOrder = 29
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODUSU'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object CbNomUSu: TdxDBColorLookupEdit
        Left = 579
        Top = 387
        Width = 173
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
        TabOrder = 30
        TabStop = False
        DataField = 'CODUSU'
        DataSource = DsEnf
        ReadOnly = False
        ListFieldName = 'LOGUSU'
        KeyFieldName = 'CODUSU'
        ListSource = DsUsu
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object EdQtdEnf: TdxDBColorCurrencyEdit
        Left = 114
        Top = 273
        Width = 119
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
        TabOrder = 19
        OnEnter = EdQtdEnfEnter
        OnExit = EdQtdEnfExit
        DataField = 'QTDENF'
        DataSource = DsEnf
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdPerIcm: TdxDBColorCurrencyEdit
        Left = 114
        Top = 296
        Width = 119
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
        OnExit = EdPerIcmExit
        DataField = 'PERICM'
        DataSource = DsEnf
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdPerIpi: TdxDBColorCurrencyEdit
        Left = 114
        Top = 319
        Width = 119
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
        OnExit = EdPerIpiExit
        DataField = 'PERIPI'
        DataSource = DsEnf
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdValIpi: TdxDBColorCurrencyEdit
        Left = 334
        Top = 319
        Width = 119
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
        TabOrder = 23
        DataField = 'VALIPI'
        DataSource = DsEnf
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdValIcm: TdxDBColorCurrencyEdit
        Left = 334
        Top = 296
        Width = 119
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
        TabOrder = 21
        DataField = 'VALICM'
        DataSource = DsEnf
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdClsIpi: TdxDBColorEdit
        Left = 610
        Top = 319
        Width = 119
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
        TabOrder = 24
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CLSIPI'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdValRef: TdxDBColorCurrencyEdit
        Left = 114
        Top = 342
        Width = 119
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
        TabOrder = 25
        OnExit = EdPerIpiExit
        DataField = 'VALREF'
        DataSource = DsEnf
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0000'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 0
      end
      object dxDBCurrencyEdit1: TdxDBColorCurrencyEdit
        Left = 334
        Top = 273
        Width = 119
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
        TabOrder = 31
        OnExit = EdQtdEnfExit
        DataField = 'QTANTE'
        DataSource = DsEnf
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object dxDBCurrencyEdit2: TdxDBColorCurrencyEdit
        Left = 610
        Top = 273
        Width = 119
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
        TabOrder = 32
        OnExit = EdQtdEnfExit
        DataField = 'QTATUA'
        DataSource = DsEnf
        DecimalPlaces = 4
        Nullable = False
        CorDeFoco = clInfoBk
      end
      object EdObsEnf: TdxDBColorEdit
        Left = 334
        Top = 342
        Width = 395
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
        TabOrder = 26
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'OBSENF'
        DataSource = DsEnf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pnEstoque: TPanel
        Left = 234
        Top = 135
        Width = 303
        Height = 160
        TabOrder = 33
        Visible = False
        object Panel10: TPanel
          Left = 8
          Top = 10
          Width = 288
          Height = 144
          BevelOuter = bvNone
          Color = clRed
          TabOrder = 0
          object Panel4: TPanel
            Left = 2
            Top = 2
            Width = 284
            Height = 140
            BevelOuter = bvNone
            TabOrder = 0
            object Label33: TLabel
              Left = 8
              Top = 11
              Width = 116
              Height = 14
              Caption = 'Estoque adquirido:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label34: TLabel
              Left = 8
              Top = 37
              Width = 89
              Height = 14
              Caption = 'Estoque atual:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label35: TLabel
              Left = 8
              Top = 63
              Width = 118
              Height = 14
              Caption = 'Estoque reservado:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label36: TLabel
              Left = 8
              Top = 115
              Width = 119
              Height = 14
              Caption = 'Estoque disponivel:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label51: TLabel
              Left = 8
              Top = 89
              Width = 87
              Height = 14
              Caption = 'Estoque RMA:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Panel13: TPanel
              Left = 138
              Top = 12
              Width = 142
              Height = 19
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 7
            end
            object Panel12: TPanel
              Left = 138
              Top = 38
              Width = 142
              Height = 19
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 6
            end
            object Panel11: TPanel
              Left = 138
              Top = 64
              Width = 142
              Height = 19
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 5
            end
            object Panel9: TPanel
              Left = 138
              Top = 116
              Width = 142
              Height = 19
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 4
            end
            object Panel8: TPanel
              Left = 135
              Top = 8
              Width = 143
              Height = 20
              BevelOuter = bvNone
              Color = 14859373
              TabOrder = 3
              object EdQtaIte: TPanel
                Left = 1
                Top = 1
                Width = 141
                Height = 18
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0,00 '
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              Left = 135
              Top = 34
              Width = 143
              Height = 20
              BevelOuter = bvNone
              Color = 14859373
              TabOrder = 2
              object EdQtdIte: TPanel
                Left = 1
                Top = 1
                Width = 141
                Height = 18
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0,00 '
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel6: TPanel
              Left = 135
              Top = 60
              Width = 143
              Height = 20
              BevelOuter = bvNone
              Color = 14859373
              TabOrder = 1
              object EdQtrIte: TPanel
                Left = 1
                Top = 1
                Width = 141
                Height = 18
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0,00 '
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel5: TPanel
              Left = 135
              Top = 112
              Width = 143
              Height = 20
              BevelOuter = bvNone
              Color = 14859373
              TabOrder = 0
              object EdSldIte: TPanel
                Left = 1
                Top = 1
                Width = 141
                Height = 18
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0,00 '
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel18: TPanel
              Left = 138
              Top = 90
              Width = 142
              Height = 19
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 8
            end
            object Panel19: TPanel
              Left = 135
              Top = 86
              Width = 143
              Height = 20
              BevelOuter = bvNone
              Color = 14859373
              TabOrder = 9
              object EdQtdRma: TPanel
                Left = 1
                Top = 1
                Width = 141
                Height = 18
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = '0,00 '
                Color = clInfoBk
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object Panel14: TPanel
          Left = 13
          Top = 3
          Width = 128
          Height = 15
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Posição de estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object nvEnf: ThDBNavigator
    Left = 385
    Top = -5
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    BeforeSalva = nvEnfBeforeSalva
    OnSalva = nvEnfSalva
    DataSource = DsEnf
    BaseAtualizar = 'GerEmpEstClpEstGruEstSubEstProEstCorEstOpeGerUsuEstPar'
    CampoBusca = ':FLGENF'
    UsaAppend = False
    Salvar = False
  end
  object EstEnf: TwwQuery
    Active = True
    CachedUpdates = True
    BeforePost = EstEnfBeforePost
    AfterCancel = EstEnfAfterCancel
    OnNewRecord = EstEnfNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstEnf.*,DscPro,'
      
        '           EstEnf.SeqEnf || _UNICODE_FSS '#39'/'#39' || EstEnf.AnoEnf as' +
        ' NumEnf,'
      
        '           EstEnf.CodOpe || _UNICODE_FSS '#39' - '#39' || NomOpe as NomO' +
        'pe,'
      
        '           CodClp || _UNICODE_FSS '#39'.'#39' || CodGru || _UNICODE_FSS ' +
        #39'.'#39' || CodSub || _UNICODE_FSS '#39'.'#39' || CodPro as CodIte'
      'From EstEnf INNER JOIN EstQte ON (EstEnf.CodEmp = EstQte.CodEmp)'
      
        '                                                    AND (EstEnf.' +
        'CodClp = EstQte.CodClp)'
      
        '                                                    AND (EstEnf.' +
        'CodGru = EstQte.CodGru)'
      
        '                                                    AND (EstEnf.' +
        'CodSub = EstQte.CodSub)'
      
        '                                                    AND (EstEnf.' +
        'CodPro = EstQte.CodPro)'
      
        '                                                    AND (EstEnf.' +
        'CodTam = EstQte.CodTam)'
      
        '                                                    AND (EstEnf.' +
        'CodCor = EstQte.CodCor)'
      
        '                       LEFT JOIN EstTam ON (EstQte.CodEmp = EstT' +
        'am.CodEmp)'
      
        '                                                    AND (EstQte.' +
        'CodClp = EstTam.CodClp)'
      
        '                                                    AND (EstQte.' +
        'CodGru = EstTam.CodGru)'
      
        '                                                    AND (EstQte.' +
        'CodSub = EstTam.CodSub)'
      
        '                                                    AND (EstQte.' +
        'CodPro = EstTam.CodPro)'
      
        '                                                    AND (EstQte.' +
        'CodTam = EstTam.CodTam)'
      
        '                          LEFT JOIN EstIte ON (EstTam.CodEmp = E' +
        'stIte.CodEmp)'
      
        '                                                    AND (EstTam.' +
        'CodClp = EstIte.CodClp)'
      
        '                                                    AND (EstTam.' +
        'CodGru = EstIte.CodGru)'
      
        '                                                    AND (EstTam.' +
        'CodSub = EstIte.CodSub)'
      
        '                                                    AND (EstTam.' +
        'CodPro = EstIte.CodPro)'
      
        '                        LEFT JOIN EstPro ON (EstIte.CodClp = Est' +
        'Pro.CodClp)'
      
        '                                                    AND (EstIte.' +
        'CodGru = EstPro.CodGru)'
      
        '                                                    AND (EstIte.' +
        'CodSub = EstPro.CodSub)'
      
        '                                                    AND (EstIte.' +
        'CodPro = EstPro.CodPro)'
      
        '                       LEFT JOIN EstOpe ON (EstEnf.CodOpe = EstO' +
        'pe.CodOpe)'
      'Where EstEnf.AnoEnf = 0'
      'Order by EstEnf.CodClp,EstEnf.CodGru,EstEnf.CodSub,EstEnf.CodPro')
    UpdateObject = UpEnf
    ValidateWithMask = True
    Left = 357
    Top = 47
    object EstEnfNUMENF: TStringField
      DisplayLabel = 'No. Entrada'
      DisplayWidth = 23
      FieldName = 'NUMENF'
      Size = 23
    end
    object EstEnfDTEENF: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DTEENF'
      EditMask = '!99/99/0000;1;_'
    end
    object EstEnfCODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 16
      FieldName = 'CODITE'
      Size = 16
    end
    object EstEnfDSCPRO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstEnfNOMOPE: TStringField
      DisplayLabel = 'Operação Realizada'
      DisplayWidth = 20
      FieldName = 'NOMOPE'
      Size = 45
    end
    object EstEnfVALFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'VALFIN'
      Visible = False
    end
    object EstEnfCLSIPI: TStringField
      DisplayWidth = 30
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstEnfANOENF: TIntegerField
      FieldName = 'ANOENF'
      Visible = False
    end
    object EstEnfSEQENF: TIntegerField
      FieldName = 'SEQENF'
      Visible = False
    end
    object EstEnfCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object EstEnfCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstEnfCODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstEnfCODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstEnfCODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object EstEnfDTEOPE: TDateTimeField
      FieldName = 'DTEOPE'
      Visible = False
      EditMask = '!99/99/0000;1;_'
    end
    object EstEnfHREOPE: TStringField
      FieldName = 'HREOPE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object EstEnfCODOPE: TStringField
      FieldName = 'CODOPE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object EstEnfVALENF: TFloatField
      FieldName = 'VALENF'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfQTDENF: TFloatField
      FieldName = 'QTDENF'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfPERICM: TFloatField
      FieldName = 'PERICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstEnfVALICM: TFloatField
      FieldName = 'VALICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstEnfPERIPI: TFloatField
      FieldName = 'PERIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstEnfVALIPI: TFloatField
      FieldName = 'VALIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object EstEnfVALCST: TFloatField
      FieldName = 'VALCST'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object EstEnfFLGENF: TStringField
      FieldName = 'FLGENF'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object EstEnfFLGTRG: TStringField
      DisplayWidth = 1
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstEnfFLGSEQ: TStringField
      DisplayWidth = 1
      FieldName = 'FLGSEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstEnfVALREF: TFloatField
      DisplayWidth = 10
      FieldName = 'VALREF'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfCODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object EstEnfCODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object EstEnfFLGOPE: TStringField
      DisplayWidth = 1
      FieldName = 'FLGOPE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstEnfQTANTE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTANTE'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfQTATUA: TFloatField
      DisplayWidth = 10
      FieldName = 'QTATUA'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object EstEnfOBSENF: TStringField
      DisplayWidth = 100
      FieldName = 'OBSENF'
      Visible = False
      Size = 100
    end
  end
  object DsEnf: TwwDataSource
    DataSet = EstEnf
    OnDataChange = DsEnfDataChange
    Left = 385
    Top = 47
  end
  object UpEnf: TUpdateSQL
    ModifySQL.Strings = (
      'update EstEnf'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DTEENF = :DTEENF,'
      '  DTEOPE = :DTEOPE,'
      '  HREOPE = :HREOPE,'
      '  CODOPE = :CODOPE,'
      '  VALENF = :VALENF,'
      '  QTDENF = :QTDENF,'
      '  PERICM = :PERICM,'
      '  VALICM = :VALICM,'
      '  PERIPI = :PERIPI,'
      '  VALIPI = :VALIPI,'
      '  VALCST = :VALCST,'
      '  CODUSU = :CODUSU,'
      '  FLGENF = :FLGENF,'
      '  FLGTRG = :FLGTRG,'
      '  VALREF = :VALREF,'
      '  FLGSEQ = :FLGSEQ,'
      '  FLGOPE = :FLGOPE,'
      '  CLSIPI = :CLSIPI,'
      '  VALFIN = :VALFIN,'
      '  QTANTE = :QTANTE,'
      '  QTATUA = :QTATUA,'
      '  OBSENF = :OBSENF'
      'where'
      '  ANOENF = :OLD_ANOENF and'
      '  SEQENF = :OLD_SEQENF')
    InsertSQL.Strings = (
      'insert into EstEnf'
      '  (ANOENF, SEQENF, CODEMP, CODCLP, CODGRU, CODSUB, CODPRO, '
      'CODTAM, CODCOR, '
      
        '   DTEENF, DTEOPE, HREOPE, CODOPE, VALENF, QTDENF, PERICM, VALIC' +
        'M, '
      'PERIPI, '
      
        '   VALIPI, VALCST, CODUSU, FLGENF, FLGTRG, VALREF, FLGSEQ, FLGOP' +
        'E, '
      'CLSIPI, '
      '   VALFIN, QTANTE, QTATUA, OBSENF)'
      'values'
      
        '  (:ANOENF, :SEQENF, :CODEMP, :CODCLP, :CODGRU, :CODSUB, :CODPRO' +
        ', '
      ':CODTAM, '
      
        '   :CODCOR, :DTEENF, :DTEOPE, :HREOPE, :CODOPE, :VALENF, :QTDENF' +
        ', '
      ':PERICM, '
      
        '   :VALICM, :PERIPI, :VALIPI, :VALCST, :CODUSU, :FLGENF, :FLGTRG' +
        ', :VALREF, '
      
        '   :FLGSEQ, :FLGOPE, :CLSIPI, :VALFIN, :QTANTE, :QTATUA, :OBSENF' +
        ')')
    DeleteSQL.Strings = (
      'delete from EstEnf'
      'where'
      '  ANOENF = :OLD_ANOENF and'
      '  SEQENF = :OLD_SEQENF')
    Left = 357
    Top = 75
  end
  object quSql: TwwQuery
    Tag = 1
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 385
    Top = 75
  end
  object GerEmp: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From GerEmp'
      'Order by NomEmp')
    ValidateWithMask = True
    Left = 421
    Top = 47
    object GerEmpCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.GEREMP.CODEMP'
    end
    object GerEmpNOMEMP: TStringField
      FieldName = 'NOMEMP'
      Origin = 'ISADE.GEREMP.NOMEMP'
      FixedChar = True
      Size = 40
    end
  end
  object DsEmp: TwwDataSource
    DataSet = GerEmp
    Left = 449
    Top = 47
  end
  object EstClp: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstClp'
      'Where Exists(Select * From EstQte Where CodEmp = :CodEmp'
      
        '                                                            and ' +
        'CodClp = EstClp.CodClp)'
      'Order by NomClp')
    ValidateWithMask = True
    Left = 421
    Top = 75
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end>
    object EstClpCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.ESTCLP.CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstClpNOMCLP: TStringField
      FieldName = 'NOMCLP'
      Origin = 'ISADE.ESTCLP.NOMCLP'
      FixedChar = True
      Size = 40
    end
  end
  object DsClp: TwwDataSource
    DataSet = EstClp
    Left = 449
    Top = 75
  end
  object EstGru: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select Distinct * From EstGru'
      'Where Exists(Select * From EstQte Where CodEmp = :CodEmp'
      
        '                                                            and ' +
        'CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstGru.CodGru)'
      'Order by NomGru')
    ValidateWithMask = True
    Left = 421
    Top = 103
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
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
    Left = 449
    Top = 103
  end
  object DsSub: TwwDataSource
    DataSet = EstSub
    Left = 449
    Top = 131
  end
  object EstSub: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select Distinct * From EstSub'
      'Where CodGru = :CodGru'
      '     and Exists(Select * From EstQte Where CodEmp = :CodEmp'
      
        '                                                            and ' +
        'CodClp = :CodClp'
      
        '                                                            and ' +
        'CodGru = EstSub.CodGru'
      
        '                                                            and ' +
        'CodSub = EstSub.CodSub)'
      ''
      'Order by NomSub')
    ValidateWithMask = True
    Left = 421
    Top = 131
    ParamData = <
      item
        DataType = ftString
        Name = 'CodGru'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodEmp'
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
  object DsPro: TwwDataSource
    DataSet = EstPro
    Left = 511
    Top = 47
  end
  object EstPro: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select Distinct CodClp,CodGru,CodSub,DscPro,CodPro From EstPro'
      'Where CodClp = :CodClp'
      '     and CodGru = :CodGru'
      '     and CodSub = :CodSub'
      '     and FlbPro = '#39' '#39
      '     and Exists(Select * From EstQte Where CodEmp = :CodEmp'
      
        '                                                            and ' +
        'CodClp = EstPro.CodClp'
      
        '                                                            and ' +
        'CodGru = EstPro.CodGru'
      
        '                                                            and ' +
        'CodSub = EstPro.CodSub'
      
        '                                                            and ' +
        'CodPro = EstPro.CodPro)'
      'Order by DscPro')
    ValidateWithMask = True
    Left = 483
    Top = 47
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
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end>
    object EstProDSCPRO: TStringField
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 70
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProCODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
  end
  object EstCor: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select Distinct * From EstCor'
      'Where Exists (Select * From EstQte Where CodEmp = :CodEmp'
      
        '                                                             and' +
        ' CodClp = :CodClp'
      
        '                                                             and' +
        ' CodGru = :CodGru'
      
        '                                                             and' +
        ' CodSub = :CodSub'
      
        '                                                             and' +
        ' CodPro = :CodPro'
      
        '                                                             and' +
        ' CodTam = :CodTam'
      
        '                                                             and' +
        ' CodCor = EstCor.CodCor)'
      'Order by NomCor')
    ValidateWithMask = True
    Left = 483
    Top = 75
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
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
      end
      item
        DataType = ftInteger
        Name = 'CodTam'
        ParamType = ptInput
      end>
    object EstCorCODCOR: TStringField
      FieldName = 'CODCOR'
      FixedChar = True
      Size = 10
    end
    object EstCorNOMCOR: TStringField
      FieldName = 'NOMCOR'
      FixedChar = True
      Size = 40
    end
  end
  object DsCor: TwwDataSource
    DataSet = EstCor
    Left = 511
    Top = 75
  end
  object EstOpe: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstOpe'
      'Where TipOpe = '#39'E'#39
      'Order by NomOpe')
    ValidateWithMask = True
    Left = 483
    Top = 103
    object EstOpeCODOPE: TStringField
      FieldName = 'CODOPE'
      Origin = 'ISADE.ESTOPE.CODOPE'
      FixedChar = True
      Size = 2
    end
    object EstOpeNOMOPE: TStringField
      FieldName = 'NOMOPE'
      Origin = 'ISADE.ESTOPE.NOMOPE'
      FixedChar = True
      Size = 40
    end
    object EstOpeTIPOPE: TStringField
      FieldName = 'TIPOPE'
      Origin = 'ISADE.ESTOPE.TIPOPE'
      FixedChar = True
      Size = 1
    end
  end
  object DsOpe: TwwDataSource
    DataSet = EstOpe
    Left = 511
    Top = 103
  end
  object GerUsu: TwwQuery
    Tag = 1
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodUsu,LogUsu From GerUsu'
      'Order by NomUsu')
    ValidateWithMask = True
    Left = 483
    Top = 131
    object GerUsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object GerUsuLOGUSU: TStringField
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
  end
  object DsUsu: TwwDataSource
    DataSet = GerUsu
    Left = 511
    Top = 131
  end
  object EstPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select EstPar.FlgTam,'
      '           EstPar.TamCor,'
      '           EstPar.OpeEnt,'
      '           EstPar.FlgTab,'
      '           EstPar.BloCst'
      'From EstPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 483
    Top = 159
    object EstParFLGTAM: TStringField
      FieldName = 'FLGTAM'
      FixedChar = True
      Size = 3
    end
    object EstParTAMCOR: TStringField
      FieldName = 'TAMCOR'
      FixedChar = True
      Size = 3
    end
    object EstParOPEENT: TStringField
      FieldName = 'OPEENT'
      FixedChar = True
      Size = 2
    end
    object EstParFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object EstParBLOCST: TStringField
      FieldName = 'BLOCST'
      FixedChar = True
      Size = 3
    end
  end
end
