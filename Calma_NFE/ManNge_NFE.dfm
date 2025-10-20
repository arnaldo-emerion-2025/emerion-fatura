inherited fmManNge_NFE: TfmManNge_NFE
  Left = 425
  Top = 174
  Caption = 'Emerion - Outros Tipos de Notas Fiscais - Emissão de NF-e'
  ClientHeight = 511
  ClientWidth = 792
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 792
    Height = 511
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnPaint = PaintBoxPaint
  end
  object LbText: TLabel
    Left = 4
    Top = 488
    Width = 159
    Height = 16
    Caption = 'F1-Iniciais F2-Inteligente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 671
    Top = 488
    Width = 114
    Height = 16
    Caption = 'F12-Cont Esc-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 4
    Top = 400
    Width = 782
    Height = 1
  end
  object Shape2: TShape
    Left = 3
    Top = 400
    Width = 1
    Height = 85
  end
  object Shape4: TShape
    Left = 4
    Top = 484
    Width = 782
    Height = 1
  end
  object Shape5: TShape
    Left = 785
    Top = 400
    Width = 1
    Height = 85
  end
  object SpeedButton2: TSpeedButton
    Left = 432
    Top = 488
    Width = 23
    Height = 22
    Visible = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 464
    Top = 480
    Width = 23
    Height = 30
    Visible = False
    OnClick = SpeedButton3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 122
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object PaintBox1: TPaintBox
      Left = 0
      Top = 2
      Width = 786
      Height = 509
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnPaint = PaintBox1Paint
    end
    object Label29: TLabel
      Left = 4
      Top = 6
      Width = 85
      Height = 14
      Caption = 'Nro. Sequencial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 159
      Top = 6
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 4
      Top = 30
      Width = 46
      Height = 14
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 159
      Top = 30
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 572
      Top = 30
      Width = 42
      Height = 14
      Caption = 'Emissão'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label68: TLabel
      Left = 630
      Top = 30
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 4
      Top = 54
      Width = 37
      Height = 14
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 159
      Top = 54
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 572
      Top = 78
      Width = 41
      Height = 14
      Caption = 'Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label53: TLabel
      Left = 630
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 4
      Top = 78
      Width = 54
      Height = 14
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 159
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 686
      Top = 78
      Width = 29
      Height = 14
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 720
      Top = 78
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 4
      Top = 102
      Width = 111
      Height = 14
      Caption = 'Padrao Faturamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 159
      Top = 102
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bpsqCli: TSpeedButton
      Left = 274
      Top = 51
      Width = 25
      Height = 22
      Hint = 'Pesquisar Clientes Existentes'
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
      OnClick = bpsqCliClick
    end
    object bpsqEmp: TSpeedButton
      Left = 274
      Top = 27
      Width = 25
      Height = 22
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
      OnClick = bpsqEmpClick
    end
    object bpsqVen: TSpeedButton
      Left = 274
      Top = 75
      Width = 25
      Height = 22
      Hint = 'Pesquisar Vendedores Existentes'
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
      OnClick = bpsqVenClick
    end
    object bpsqPfa: TSpeedButton
      Left = 274
      Top = 99
      Width = 25
      Height = 22
      Hint = 'Pesquisar Padrões de Faturamento Existentes'
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
      OnClick = bpsqPfaClick
    end
    object Label23: TLabel
      Left = 301
      Top = 6
      Width = 80
      Height = 14
      Caption = 'Tipo de Nota :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label55: TLabel
      Left = 572
      Top = 54
      Width = 52
      Height = 14
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label59: TLabel
      Left = 630
      Top = 54
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 640
      Top = 8
      Width = 105
      Height = 17
      DataField = 'MODPFA'
      DataSource = DsGer
    end
    object EdCgcCli: TdxDBColorEdit
      Left = 638
      Top = 50
      Width = 147
      Hint = 'Cliente'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 20
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CGCCLI'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNumGer: TdxDBColorEdit
      Left = 165
      Top = 2
      Width = 108
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMGER'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdUfeGer: TdxDBColorEdit
      Left = 638
      Top = 74
      Width = 43
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'UFEGER'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdApeEmp: TdxDBColorEdit
      Left = 299
      Top = 26
      Width = 271
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomVen: TdxDBColorEdit
      Left = 299
      Top = 74
      Width = 271
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdNomPfa: TdxDBColorEdit
      Left = 299
      Top = 98
      Width = 486
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNumGer: TPanel
      Left = 167
      Top = 5
      Width = 101
      Height = 13
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 165
      Top = 26
      Width = 108
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodEmpKeyUp
      OnMouseUp = EdCodEmpMouseUp
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnApeEmp: TPanel
      Left = 303
      Top = 29
      Width = 263
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object EdDteFat: TdxDBColorDateEdit
      Left = 638
      Top = 26
      Width = 104
      Hint = 'Data de Emissão da Nota Fiscal'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      OnEnter = EdTipPfaEnter
      Alignment = taCenter
      DataField = 'DTEFAT'
      DataSource = DsGer
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnUfeGer: TPanel
      Left = 640
      Top = 77
      Width = 37
      Height = 14
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object EdCodVen: TdxDBColorEdit
      Left = 165
      Top = 74
      Width = 108
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      OnExit = EdCodVenExit
      OnKeyDown = EdCodVenKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodCliKeyUp
      OnMouseUp = EdCodCliMouseUp
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODVEN'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomVen: TPanel
      Left = 303
      Top = 77
      Width = 263
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object EdFrtGer: TdxDBColorPickEdit
      Left = 728
      Top = 74
      Width = 57
      Hint = 'Tipo de Frete ( CIF - Emitente ou FOB - Destinatario )'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      OnEnter = EdTipPfaEnter
      AutoSize = False
      DataField = 'FRTGER'
      DataSource = DsGer
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'CIF'
        'FOB')
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 64
    end
    object EdCodPfa: TdxDBColorEdit
      Left = 165
      Top = 98
      Width = 108
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      OnExit = Es
      OnKeyDown = EdCodPfaKeyDown
      OnKeyUp = EdCodEmpKeyUp
      OnMouseUp = EdCodEmpMouseUp
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODPFA'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object pnNomPfa: TPanel
      Left = 303
      Top = 101
      Width = 478
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object EdCodCli: TdxDBColorEdit
      Left = 165
      Top = 50
      Width = 108
      Hint = 'Cliente'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 9
      OnExit = EdCodCliExit
      OnKeyDown = EdCodCliKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodCliKeyUp
      OnMouseUp = EdCodCliMouseUp
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODCLI'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdNomCli: TdxDBColorEdit
      Left = 299
      Top = 50
      Width = 271
      Hint = 'Cliente'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNomCli: TPanel
      Left = 303
      Top = 53
      Width = 263
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object EdTipPfa: TdxDBColorPickEdit
      Left = 385
      Top = 2
      Width = 96
      Hint = 'Tipo de Nota Generica'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      OnEnter = EdTipPfaEnter
      OnExit = EdTipPfaExit
      AutoSize = False
      DataField = 'TIPPFA'
      DataSource = DsGer
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'Saida'
        'Entrada')
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 64
    end
    object pnCgcCli: TPanel
      Left = 641
      Top = 53
      Width = 140
      Height = 14
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object CheckBox1: TCheckBox
      Left = 515
      Top = 7
      Width = 97
      Height = 17
      Caption = 'Entrar com a DI'
      Checked = True
      State = cbChecked
      TabOrder = 21
      OnClick = CheckBox1Click
    end
  end
  object Panel4: TPanel
    Left = 4
    Top = 401
    Width = 781
    Height = 83
    BevelOuter = bvNone
    TabOrder = 1
    OnExit = Panel4Exit
    object Label28: TLabel
      Left = 4
      Top = 2
      Width = 133
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base de Calculo do ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 59
      Top = 42
      Width = 78
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 194
      Top = 2
      Width = 76
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 182
      Top = 42
      Width = 88
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 274
      Top = 2
      Width = 203
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base de Cálculo do ICMS Substituição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 328
      Top = 42
      Width = 149
      Height = 14
      Alignment = taRightJustify
      Caption = 'Outras Despesas Acessórias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 484
      Top = 2
      Width = 146
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor do ICMS Substituição'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label41: TLabel
      Left = 534
      Top = 42
      Width = 96
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total do IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 644
      Top = 2
      Width = 135
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 673
      Top = 42
      Width = 106
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdTotFrt: TdxDBColorCurrencyEdit
      Left = 1
      Top = 58
      Width = 138
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTFRT'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdBasIc1: TdxDBColorCurrencyEdit
      Left = 1
      Top = 18
      Width = 138
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BASIC1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnBasIc1: TPanel
      Left = 3
      Top = 22
      Width = 130
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object pnTotFrt: TPanel
      Left = 3
      Top = 62
      Width = 130
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object EdTotIc1: TdxDBColorCurrencyEdit
      Left = 140
      Top = 18
      Width = 132
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIC1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIc1: TPanel
      Left = 142
      Top = 22
      Width = 124
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object EdTotSeg: TdxDBColorCurrencyEdit
      Left = 140
      Top = 58
      Width = 132
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSEG'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSeg: TPanel
      Left = 142
      Top = 62
      Width = 124
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object EdBasSu1: TdxDBColorCurrencyEdit
      Left = 273
      Top = 18
      Width = 206
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BASSU1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnBasSu1: TPanel
      Left = 275
      Top = 22
      Width = 198
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object EdTotDes: TdxDBColorCurrencyEdit
      Left = 273
      Top = 57
      Width = 206
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTDES'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotDes: TPanel
      Left = 275
      Top = 61
      Width = 199
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object EdTotSu1: TdxDBColorCurrencyEdit
      Left = 480
      Top = 18
      Width = 152
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSU1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotSu1: TPanel
      Left = 482
      Top = 22
      Width = 144
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdTotIp1: TdxDBColorCurrencyEdit
      Left = 480
      Top = 57
      Width = 152
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIP1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIp1: TPanel
      Left = 482
      Top = 61
      Width = 144
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object EdTotIt1: TdxDBColorCurrencyEdit
      Left = 633
      Top = 18
      Width = 149
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTIT1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotIt1: TPanel
      Left = 635
      Top = 22
      Width = 141
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object EdTotGe1: TdxDBColorCurrencyEdit
      Left = 633
      Top = 57
      Width = 149
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTGE1'
      DataSource = DsGer
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnTotGe1: TPanel
      Left = 635
      Top = 61
      Width = 141
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0,00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
  end
  object grLabel1: TdxDBGraphicEdit
    Left = -1
    Top = 123
    Width = 790
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 38
  end
  object grPe21: TdxDBGraphicEdit
    Left = -1
    Top = 160
    Width = 790
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 141
  end
  object grLabel2: TPanel
    Left = 1
    Top = 125
    Width = 783
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label32: TLabel
      Left = 3
      Top = 8
      Width = 83
      Height = 14
      Caption = 'Nosso Código'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 265
      Top = 8
      Width = 44
      Height = 14
      Caption = 'Cl. Fisc.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 658
      Top = 8
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'ICMS'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 455
      Top = 8
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Quantidade'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 550
      Top = 8
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Unit'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 628
      Top = 8
      Width = 18
      Height = 14
      Alignment = taRightJustify
      Caption = 'IPI'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 719
      Top = 8
      Width = 64
      Height = 14
      Caption = 'Total Item'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 334
      Top = 8
      Width = 23
      Height = 14
      Caption = 'ST1'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 372
      Top = 8
      Width = 23
      Height = 14
      Caption = 'ST2'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label50: TLabel
      Left = 191
      Top = 8
      Width = 31
      Height = 14
      Caption = 'CFOP'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 410
      Top = 8
      Width = 16
      Height = 14
      Caption = 'UN'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object grGe2: ThGrid
    Left = 1
    Top = 160
    Width = 784
    Height = 136
    Selected.Strings = (
      'CODCLP'#9'3'#9' '
      'CODGRU'#9'5'#9' '
      'CODSUB'#9'6'#9' '
      'CODPRO'#9'7'#9' '
      'CODCFO'#9'7'#9' '
      'CLSIPI'#9'10'#9' '
      'CODST1'#9'4'#9' '
      'CODST2'#9'4'#9' '
      'CODUND'#9'5'#9' '
      'QTPGE2'#9'10'#9' '
      'VLUGE2'#9'10'#9' '
      'IPIGE2'#9'4'#9' '
      'ICMGE2'#9'5'#9' '
      'TOTGE2'#9'11'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsGe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grGe2Enter
    OnKeyDown = grGe2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel3: TPanel
    Left = 0
    Top = 302
    Width = 788
    Height = 96
    BevelOuter = bvNone
    TabOrder = 6
    OnEnter = Panel3Enter
    OnExit = Panel3Exit
    object Label44: TLabel
      Left = 623
      Top = 52
      Width = 32
      Height = 14
      Caption = 'Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 687
      Top = 52
      Width = 4
      Height = 14
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 7
      Top = 77
      Width = 38
      Height = 14
      Caption = 'Vlr. II:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 170
      Top = 77
      Width = 87
      Height = 14
      Caption = 'Vlr. Desp.Adu:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 415
      Top = 77
      Width = 48
      Height = 14
      Caption = 'Vlr. IOF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 639
      Top = 77
      Width = 34
      Height = 14
      Caption = 'BC II:'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdSeqPe2: TdxDBColorCurrencyEdit
      Left = 696
      Top = 48
      Width = 92
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 18
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'SEQPE2'
      DecimalPlaces = 0
      DisplayFormat = '###0'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodGru: TdxDBColorEdit
      Left = 28
      Top = -1
      Width = 47
      Hint = 'Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 74
      Top = -1
      Width = 52
      Hint = 'Sub-Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 125
      Top = -1
      Width = 62
      Hint = 'Código do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnEnter = EdCodGruEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpGe2: TdxDBColorCurrencyEdit
      Left = 445
      Top = -1
      Width = 88
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 9
      OnEnter = EdTipPfaEnter
      OnExit = EdQtpPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPGE2'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluGe2: TdxDBColorCurrencyEdit
      Left = 532
      Top = -1
      Width = 86
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUGE2'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiGe2: TdxDBColorCurrencyEdit
      Left = 617
      Top = -1
      Width = 37
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIGE2'
      DataSource = DsGe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmGe2: TdxDBColorCurrencyEdit
      Left = 653
      Top = -1
      Width = 44
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMGE2'
      DataSource = DsGe2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 333
      Top = -1
      Width = 30
      Hint = 'Situação Tributária 1'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      TabStop = False
      OnEnter = EdCodSt1Enter
      OnKeyDown = EdCodSt1KeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 362
      Top = -1
      Width = 42
      Hint = 'Situação Tributária 2'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      TabStop = False
      OnEnter = EdCodSt1Enter
      OnKeyDown = EdCodSt2KeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGe2: TdxDBColorCurrencyEdit
      Left = 696
      Top = -1
      Width = 92
      Hint = 'Total do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTGE2'
      DataSource = DsGe2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 186
      Top = -1
      Width = 58
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdTipPfaEnter
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCFO'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 243
      Top = -1
      Width = 91
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdTipPfaEnter
      OnKeyDown = EdClsIpiKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 402
      Top = -1
      Width = 44
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      OnEnter = EdCodSt1Enter
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodClp: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 30
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      OnEnter = EdCodClpEnter
      OnExit = EdCodClpExit
      OnKeyDown = EdCodClpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnNroGe2: TPanel
      Left = 699
      Top = 52
      Width = 83
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0000/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object EdObsGe2: TdxDBColorEdit
      Left = -1
      Top = 48
      Width = 619
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSGE2'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnObsGe2: TPanel
      Left = 3
      Top = 52
      Width = 611
      Height = 14
      Hint = 'Observações Sobre o Item'
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      Visible = False
    end
    object EdDesGe2: TdxDBColorEdit
      Left = -1
      Top = 24
      Width = 619
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      OnEnter = EdDesGe2Enter
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESGE2'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object pnDesGe2: TPanel
      Left = 2
      Top = 27
      Width = 611
      Height = 14
      Hint = 'Descrição do Item'
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      Visible = False
    end
    object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
      Left = 618
      Top = 24
      Width = 81
      Hint = 'Base do PIS'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 20
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BAIPIS'
      DataSource = DsGe2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
      Left = 698
      Top = 24
      Width = 89
      Hint = 'Base do ICMS'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 21
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'BASICM'
      DataSource = DsGe2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edII: TdxDBColorCurrencyEdit
      Left = 53
      Top = 72
      Width = 110
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 22
      OnEnter = EdTipPfaEnter
      OnExit = EdQtpPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLRIMPII'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edDespAdu: TdxDBColorCurrencyEdit
      Left = 261
      Top = 72
      Width = 110
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 23
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLRDESPATU'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edIOF: TdxDBColorCurrencyEdit
      Left = 470
      Top = 72
      Width = 110
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 24
      OnEnter = EdTipPfaEnter
      OnExit = EdQtpPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLRIOF'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edBCII: TdxDBColorCurrencyEdit
      Left = 678
      Top = 72
      Width = 110
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 25
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLRBCII'
      DataSource = DsGe2
      DecimalPlaces = 6
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object FatGer: TwwQuery
    Active = True
    CachedUpdates = True
    AfterOpen = FatGerAfterOpen
    BeforePost = FatGerBeforePost
    OnNewRecord = FatGerNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatGer'
      'Where FatGer.CodEmp = :CodEmp'
      '     and FatGer.DteGer = :DteGer'
      '     and FatGer.NumGer = :NumGer')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpGer
    ValidateWithMask = True
    Left = 2
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteGer'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumGer'
        ParamType = ptInput
      end>
    object FatGerCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATGER.CODEMP'
    end
    object FatGerDTEGER: TDateTimeField
      FieldName = 'DTEGER'
      Origin = 'ISADE.FATGER.DTEGER'
    end
    object FatGerNUMGER: TIntegerField
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATGER.NUMGER'
    end
    object FatGerHREFAT: TStringField
      FieldName = 'HREFAT'
      Origin = 'ISADE.FATGER.HREFAT'
      FixedChar = True
      Size = 8
    end
    object FatGerUFEGER: TStringField
      FieldName = 'UFEGER'
      Origin = 'ISADE.FATGER.UFEGER'
      FixedChar = True
      Size = 2
    end
    object FatGerCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATGER.CODPFA'
      Size = 15
    end
    object FatGerTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATGER.TIPPFA'
      Size = 7
    end
    object FatGerCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATGER.CODCLI'
    end
    object FatGerCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATGER.CODVEN'
    end
    object FatGerDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATGER.DSCREG'
    end
    object FatGerPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATGER.PERPIS'
    end
    object FatGerPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATGER.PERCOF'
    end
    object FatGerCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATGER.CODFIL'
    end
    object FatGerQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATGER.QTDNFS'
    end
    object FatGerNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATGER.NRONFS'
    end
    object FatGerNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATGER.NROSUF'
    end
    object FatGerFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATGER.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatGerCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATGER.CGCCLI'
      Size = 18
    end
    object FatGerINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATGER.INSCLI'
      Size = 18
    end
    object FatGerCODCF1: TStringField
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATGER.CODCF1'
      Size = 15
    end
    object FatGerCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATGER.CODCF2'
      Size = 15
    end
    object FatGerFRTGER: TStringField
      FieldName = 'FRTGER'
      Origin = 'ISADE.FATGER.FRTGER'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATGER.FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATGER.FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatGerDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATGER.DESNAT'
      Size = 100
    end
    object FatGerINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATGER.INSSUB'
      Size = 18
    end
    object FatGerTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATGER.TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatGerMARGER: TStringField
      FieldName = 'MARGER'
      Origin = 'ISADE.FATGER.MARGER'
      Size = 15
    end
    object FatGerNROGER: TStringField
      FieldName = 'NROGER'
      Origin = 'ISADE.FATGER.NROGER'
      Size = 15
    end
    object FatGerESPGER: TStringField
      FieldName = 'ESPGER'
      Origin = 'ISADE.FATGER.ESPGER'
      Size = 15
    end
    object FatGerNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATGER.NOMTRA'
      Size = 70
    end
    object FatGerCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATGER.CGCTRA'
      Size = 18
    end
    object FatGerINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATGER.INSTRA'
      Size = 18
    end
    object FatGerCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATGER.CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatGerTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATGER.TENTRA'
      Size = 10
    end
    object FatGerENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATGER.ENDTRA'
      Size = 40
    end
    object FatGerREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATGER.REFTRA'
      Size = 40
    end
    object FatGerNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATGER.NUMTRA'
      Size = 10
    end
    object FatGerBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATGER.BAITRA'
    end
    object FatGerCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATGER.CIDTRA'
    end
    object FatGerUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATGER.UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatGerPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATGER.PLCTRA'
      Size = 7
    end
    object FatGerPRTTRA: TStringField
      FieldName = 'PRTTRA'
      Origin = 'ISADE.FATGER.PRTTRA'
      Size = 4
    end
    object FatGerFONTRA: TStringField
      FieldName = 'FONTRA'
      Origin = 'ISADE.FATGER.FONTRA'
    end
    object FatGerUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATGER.UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatGerCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATGER.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatGerTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATGER.TENCLI'
      Size = 10
    end
    object FatGerENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATGER.ENDCLI'
      Size = 70
    end
    object FatGerREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATGER.REFCLI'
      Size = 40
    end
    object FatGerNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATGER.NUMCLI'
      Size = 10
    end
    object FatGerBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATGER.BAICLI'
    end
    object FatGerCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATGER.CIDCLI'
    end
    object FatGerUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATGER.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatGerINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATGER.INECLI'
      Size = 18
    end
    object FatGerCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATGER.CGECLI'
      Size = 18
    end
    object FatGerTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATGER.TXFIPI'
      Size = 160
    end
    object FatGerTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATGER.TXFICM'
      Size = 160
    end
    object FatGerOBSGER: TStringField
      FieldName = 'OBSGER'
      Origin = 'ISADE.FATGER.OBSGER'
      Size = 240
    end
    object FatGerSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATGER.SEQITE'
    end
    object FatGerQTIGER: TIntegerField
      FieldName = 'QTIGER'
      Origin = 'ISADE.FATGER.QTIGER'
    end
    object FatGerLINGER: TIntegerField
      FieldName = 'LINGER'
      Origin = 'ISADE.FATGER.LINGER'
    end
    object FatGerQTPGER: TIntegerField
      FieldName = 'QTPGER'
      Origin = 'ISADE.FATGER.QTPGER'
    end
    object FatGerSTPGER: TIntegerField
      FieldName = 'STPGER'
      Origin = 'ISADE.FATGER.STPGER'
    end
    object FatGerQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATGER.QTDVOL'
    end
    object FatGerALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Origin = 'ISADE.FATGER.ALTVOL'
    end
    object FatGerINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATGER.INFLIQ'
    end
    object FatGerTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATGER.TOTLIQ'
    end
    object FatGerINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATGER.INFBRT'
    end
    object FatGerTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATGER.TOTBRT'
    end
    object FatGerBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATGER.BASIPI'
    end
    object FatGerTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATGER.TOTIPI'
    end
    object FatGerBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATGER.BASICM'
    end
    object FatGerTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATGER.TOTICM'
    end
    object FatGerBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATGER.BASSUB'
    end
    object FatGerTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATGER.TOTSUB'
    end
    object FatGerTOTITE: TFloatField
      FieldName = 'TOTITE'
      Origin = 'ISADE.FATGER.TOTITE'
    end
    object FatGerTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATGER.TOTPIS'
    end
    object FatGerTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATGER.TOTCOF'
    end
    object FatGerTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATGER.TOTFRT'
    end
    object FatGerTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATGER.TOTSEG'
    end
    object FatGerTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATGER.TOTDES'
    end
    object FatGerICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.FATGER.ICMFRT'
    end
    object FatGerBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATGER.BSICMF'
    end
    object FatGerBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATGER.BAICMF'
    end
    object FatGerTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATGER.TOICMF'
    end
    object FatGerICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.FATGER.ICMSEG'
    end
    object FatGerBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATGER.BSICMS'
    end
    object FatGerBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATGER.BAICMS'
    end
    object FatGerTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATGER.TOICMS'
    end
    object FatGerICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.FATGER.ICMDES'
    end
    object FatGerBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATGER.BSICMD'
    end
    object FatGerBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATGER.BAICMD'
    end
    object FatGerTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATGER.TOICMD'
    end
    object FatGerIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.FATGER.IPIFRT'
    end
    object FatGerBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATGER.BSIPIF'
    end
    object FatGerBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATGER.BAIPIF'
    end
    object FatGerTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATGER.TOIPIF'
    end
    object FatGerIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.FATGER.IPISEG'
    end
    object FatGerBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATGER.BSIPIS'
    end
    object FatGerBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATGER.BAIPIS'
    end
    object FatGerTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATGER.TOIPIS'
    end
    object FatGerIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.FATGER.IPIDES'
    end
    object FatGerBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATGER.BSIPID'
    end
    object FatGerBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATGER.BAIPID'
    end
    object FatGerTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATGER.TOIPID'
    end
    object FatGerTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATGER.TOTGER'
    end
    object FatGerLANGER: TFloatField
      FieldName = 'LANGER'
      Origin = 'ISADE.FATGER.LANGER'
    end
    object FatGerSLDGER: TFloatField
      FieldName = 'SLDGER'
      Origin = 'ISADE.FATGER.SLDGER'
    end
    object FatGerTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATGER.TOTDSR'
    end
    object FatGerBASIP1: TFloatField
      FieldName = 'BASIP1'
      Origin = 'ISADE.FATGER.BASIP1'
    end
    object FatGerTOTIP1: TFloatField
      FieldName = 'TOTIP1'
      Origin = 'ISADE.FATGER.TOTIP1'
    end
    object FatGerBASIC1: TFloatField
      FieldName = 'BASIC1'
      Origin = 'ISADE.FATGER.BASIC1'
    end
    object FatGerTOTIC1: TFloatField
      FieldName = 'TOTIC1'
      Origin = 'ISADE.FATGER.TOTIC1'
    end
    object FatGerBASSU1: TFloatField
      FieldName = 'BASSU1'
      Origin = 'ISADE.FATGER.BASSU1'
    end
    object FatGerTOTSU1: TFloatField
      FieldName = 'TOTSU1'
      Origin = 'ISADE.FATGER.TOTSU1'
    end
    object FatGerTOTIT1: TFloatField
      FieldName = 'TOTIT1'
      Origin = 'ISADE.FATGER.TOTIT1'
    end
    object FatGerTOTGE1: TFloatField
      FieldName = 'TOTGE1'
      Origin = 'ISADE.FATGER.TOTGE1'
    end
    object FatGerCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATGER.CODUSU'
    end
    object FatGerHRCGER: TStringField
      FieldName = 'HRCGER'
      Origin = 'ISADE.FATGER.HRCGER'
      FixedChar = True
      Size = 8
    end
    object FatGerDTCGER: TDateTimeField
      FieldName = 'DTCGER'
      Origin = 'ISADE.FATGER.DTCGER'
    end
    object FatGerUSCGER: TIntegerField
      FieldName = 'USCGER'
      Origin = 'ISADE.FATGER.USCGER'
    end
    object FatGerOBCGER: TMemoField
      FieldName = 'OBCGER'
      Origin = 'ISADE.FATGER.OBCGER'
      BlobType = ftMemo
      Size = 500
    end
    object FatGerATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATGER.ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatGerLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATGER.LANEST'
      FixedChar = True
      Size = 3
    end
    object FatGerINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATGER.INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatGerCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATGER.CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATGER.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatGerCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATGER.CODIPI'
      Size = 30
    end
    object FatGerTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATGER.TIPIPI'
      Size = 7
    end
    object FatGerTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATGER.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatGerREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATGER.REDIPI'
    end
    object FatGerBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATGER.BSCIPI'
    end
    object FatGerCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATGER.CODICM'
    end
    object FatGerTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATGER.TIPICM'
      Size = 7
    end
    object FatGerTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATGER.TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatGerREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATGER.REDICM'
    end
    object FatGerBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATGER.BSCICM'
    end
    object FatGerINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATGER.INCREV'
    end
    object FatGerINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATGER.INCFIN'
    end
    object FatGerFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATGER.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatGerDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.FATGER.DTEATU'
    end
    object FatGerHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.FATGER.HREATU'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.FATGER.USUATU'
    end
    object FatGerTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.FATGER.TRASDA'
    end
    object FatGerDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.FATGER.DTESDA'
    end
    object FatGerHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.FATGER.HRESDA'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.FATGER.USUSDA'
    end
    object FatGerOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.FATGER.OBSSDA'
      Size = 240
    end
    object FatGerCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.FATGER.CODVEI'
    end
    object FatGerDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.FATGER.DTEENT'
    end
    object FatGerHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.FATGER.HREENT'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.FATGER.USUENT'
    end
    object FatGerOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.FATGER.OBSENT'
      Size = 240
    end
    object FatGerDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATGER.DESREG'
      Size = 100
    end
    object FatGerSEQGER: TStringField
      FieldName = 'SEQGER'
      Origin = 'ISADE.FATGER.SEQGER'
      FixedChar = True
      Size = 22
    end
    object FatGerSITGER: TStringField
      FieldName = 'SITGER'
      Origin = 'ISADE.FATGER.SITGER'
      Size = 45
    end
    object FatGerNROCOL: TStringField
      FieldName = 'NROCOL'
      Origin = 'ISADE.FATGER.NROCOL'
    end
    object FatGerDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.FATGER.DTEFAT'
    end
    object FatGerFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATGER.FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATGER.FLGENV'
      FixedChar = True
      Size = 3
    end
    object FatGerBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATGER.BASISS'
    end
    object FatGerTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATGER.TOTISS'
    end
    object FatGerBASIS1: TFloatField
      FieldName = 'BASIS1'
      Origin = 'ISADE.FATGER.BASIS1'
    end
    object FatGerTOTIS1: TFloatField
      FieldName = 'TOTIS1'
      Origin = 'ISADE.FATGER.TOTIS1'
    end
    object FatGerTOTSER: TFloatField
      FieldName = 'TOTSER'
      Origin = 'ISADE.FATGER.TOTSER'
    end
    object FatGerTOTSE1: TFloatField
      FieldName = 'TOTSE1'
      Origin = 'ISADE.FATGER.TOTSE1'
    end
    object FatGerQTISER: TIntegerField
      FieldName = 'QTISER'
      Origin = 'ISADE.FATGER.QTISER'
    end
    object FatGerSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = 'ISADE.FATGER.SEQSER'
    end
    object FatGerFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.FATGER.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATGER.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatGerNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.FATGER.NOMENT'
      FixedChar = True
      Size = 70
    end
    object FatGerCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATGER.CODTCL'
    end
    object FatGerTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.FATGER.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatGerTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.FATGER.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatGerID_FATGER: TIntegerField
      FieldName = 'ID_FATGER'
      Origin = 'ISADE.FATGER.ID_FATGER'
    end
    object FatGerQTIGE2: TIntegerField
      FieldName = 'QTIGE2'
      Origin = 'ISADE.FATGER.QTIGE2'
    end
    object FatGerSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.FATGER.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object FatGerDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.FATGER.DTENFE'
    end
    object FatGerMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATGER.MODPFA'
    end
    object FatGerRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.FATGER.RECNFE'
      FixedChar = True
      Size = 15
    end
    object FatGerARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.FATGER.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object FatGerBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Origin = 'ISADE.FATGER.BAFCLI'
    end
    object FatGerCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Origin = 'ISADE.FATGER.CEFCLI'
      Size = 8
    end
    object FatGerCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Origin = 'ISADE.FATGER.CIFCLI'
    end
    object FatGerCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATGER.CODTRA'
    end
    object FatGerDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.FATGER.DOPNFE'
    end
    object FatGerDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.FATGER.DTCNFE'
    end
    object FatGerDTECAN: TDateTimeField
      FieldName = 'DTECAN'
      Origin = 'ISADE.FATGER.DTECAN'
    end
    object FatGerDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.FATGER.DTECNE'
    end
    object FatGerDTENPF: TDateTimeField
      FieldName = 'DTENPF'
      Origin = 'ISADE.FATGER.DTENPF'
    end
    object FatGerENFCLI: TStringField
      FieldName = 'ENFCLI'
      Origin = 'ISADE.FATGER.ENFCLI'
      Size = 70
    end
    object FatGerFLGSEG: TStringField
      FieldName = 'FLGSEG'
      Origin = 'ISADE.FATGER.FLGSEG'
      FixedChar = True
      Size = 3
    end
    object FatGerHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.FATGER.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object FatGerHRECAN: TStringField
      FieldName = 'HRECAN'
      Origin = 'ISADE.FATGER.HRECAN'
      FixedChar = True
      Size = 8
    end
    object FatGerHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.FATGER.HRECNE'
      FixedChar = True
      Size = 8
    end
    object FatGerHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.FATGER.HRENFE'
      FixedChar = True
      Size = 8
    end
    object FatGerHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.FATGER.HREPNF'
      FixedChar = True
      Size = 8
    end
    object FatGerID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.FATGER.ID_ESTSIP'
    end
    object FatGerID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.FATGER.ID_FINCIE'
    end
    object FatGerID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.FATGER.ID_FINCIF'
    end
    object FatGerID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.FATGER.ID_FINUFE'
    end
    object FatGerID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.FATGER.ID_FINUFF'
    end
    object FatGerID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.FATGER.ID_TRACIE'
    end
    object FatGerID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.FATGER.ID_TRAUFE'
    end
    object FatGerIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.FATGER.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.FATGER.LOTNFE'
    end
    object FatGerNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.FATGER.NFECOF'
      FixedChar = True
      Size = 2
    end
    object FatGerNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.FATGER.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object FatGerNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Origin = 'ISADE.FATGER.NRFCLI'
      Size = 10
    end
    object FatGerNRONOT: TIntegerField
      FieldName = 'NRONOT'
      Origin = 'ISADE.FATGER.NRONOT'
    end
    object FatGerOB1CAN: TStringField
      FieldName = 'OB1CAN'
      Origin = 'ISADE.FATGER.OB1CAN'
      Size = 80
    end
    object FatGerOB1ENT: TStringField
      FieldName = 'OB1ENT'
      Origin = 'ISADE.FATGER.OB1ENT'
      Size = 80
    end
    object FatGerOB1SDA: TStringField
      FieldName = 'OB1SDA'
      Origin = 'ISADE.FATGER.OB1SDA'
      Size = 80
    end
    object FatGerOB2CAN: TStringField
      FieldName = 'OB2CAN'
      Origin = 'ISADE.FATGER.OB2CAN'
      Size = 80
    end
    object FatGerOB2ENT: TStringField
      FieldName = 'OB2ENT'
      Origin = 'ISADE.FATGER.OB2ENT'
      Size = 80
    end
    object FatGerOB2SDA: TStringField
      FieldName = 'OB2SDA'
      Origin = 'ISADE.FATGER.OB2SDA'
      Size = 80
    end
    object FatGerOB3CAN: TStringField
      FieldName = 'OB3CAN'
      Origin = 'ISADE.FATGER.OB3CAN'
      Size = 80
    end
    object FatGerOB3ENT: TStringField
      FieldName = 'OB3ENT'
      Origin = 'ISADE.FATGER.OB3ENT'
      Size = 80
    end
    object FatGerOB3SDA: TStringField
      FieldName = 'OB3SDA'
      Origin = 'ISADE.FATGER.OB3SDA'
      Size = 80
    end
    object FatGerOB4CAN: TStringField
      FieldName = 'OB4CAN'
      Origin = 'ISADE.FATGER.OB4CAN'
      Size = 80
    end
    object FatGerOB4ENT: TStringField
      FieldName = 'OB4ENT'
      Origin = 'ISADE.FATGER.OB4ENT'
      Size = 80
    end
    object FatGerOB4SDA: TStringField
      FieldName = 'OB4SDA'
      Origin = 'ISADE.FATGER.OB4SDA'
      Size = 80
    end
    object FatGerOB5CAN: TStringField
      FieldName = 'OB5CAN'
      Origin = 'ISADE.FATGER.OB5CAN'
      Size = 80
    end
    object FatGerOB5ENT: TStringField
      FieldName = 'OB5ENT'
      Origin = 'ISADE.FATGER.OB5ENT'
      Size = 80
    end
    object FatGerOB5SDA: TStringField
      FieldName = 'OB5SDA'
      Origin = 'ISADE.FATGER.OB5SDA'
      Size = 80
    end
    object FatGerQTDNOT: TIntegerField
      FieldName = 'QTDNOT'
      Origin = 'ISADE.FATGER.QTDNOT'
    end
    object FatGerQTIGE3: TIntegerField
      FieldName = 'QTIGE3'
      Origin = 'ISADE.FATGER.QTIGE3'
    end
    object FatGerQTISGE: TIntegerField
      FieldName = 'QTISGE'
      Origin = 'ISADE.FATGER.QTISGE'
    end
    object FatGerRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Origin = 'ISADE.FATGER.RFFCLI'
      Size = 40
    end
    object FatGerSEQFIN: TIntegerField
      FieldName = 'SEQFIN'
      Origin = 'ISADE.FATGER.SEQFIN'
    end
    object FatGerSEQINI: TIntegerField
      FieldName = 'SEQINI'
      Origin = 'ISADE.FATGER.SEQINI'
    end
    object FatGerSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.FATGER.SERNOT'
      Size = 10
    end
    object FatGerSERSEL: TStringField
      FieldName = 'SERSEL'
      Origin = 'ISADE.FATGER.SERSEL'
      Size = 10
    end
    object FatGerTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Origin = 'ISADE.FATGER.TEFCLI'
      Size = 10
    end
    object FatGerUFECOM: TStringField
      FieldName = 'UFECOM'
      Origin = 'ISADE.FATGER.UFECOM'
      FixedChar = True
      Size = 2
    end
    object FatGerUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Origin = 'ISADE.FATGER.UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatGerUSUCAN: TIntegerField
      FieldName = 'USUCAN'
      Origin = 'ISADE.FATGER.USUCAN'
    end
    object FatGerUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.FATGER.USUNFE'
    end
    object FatGerPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.FATGER.PRONFE'
      FixedChar = True
      Size = 15
    end
    object FatGerDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.FATGER.DTEPNF'
    end
    object FatGerRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.FATGER.RETNFE'
      Size = 100
    end
    object FatGerENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.FATGER.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.FATGER.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerDTECOM: TDateTimeField
      FieldName = 'DTECOM'
      Origin = 'ISADE.FATGER.DTECOM'
    end
    object FatGerRTENFE: TStringField
      FieldName = 'RTENFE'
      Origin = 'ISADE.FATGER.RTENFE'
      Size = 100
    end
    object FatGerNFSCOM: TIntegerField
      FieldName = 'NFSCOM'
      Origin = 'ISADE.FATGER.NFSCOM'
    end
    object FatGerSEQCOM: TStringField
      FieldName = 'SEQCOM'
      Origin = 'ISADE.FATGER.SEQCOM'
      FixedChar = True
      Size = 44
    end
    object FatGerPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.FATGER.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object FatGerFLGREC: TStringField
      FieldName = 'FLGREC'
      Origin = 'ISADE.FATGER.FLGREC'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGAPR: TStringField
      FieldName = 'FLGAPR'
      Origin = 'ISADE.FATGER.FLGAPR'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGQTD: TStringField
      FieldName = 'FLGQTD'
      Origin = 'ISADE.FATGER.FLGQTD'
      FixedChar = True
      Size = 1
    end
    object FatGerNFETH: TSmallintField
      FieldName = 'NFETH'
      Origin = 'ISADE.FATGER.NFETH'
    end
    object FatGerARQNFECANC: TBlobField
      FieldName = 'ARQNFECANC'
      Origin = 'ISADE.FATGER.ARQNFECANC'
      BlobType = ftBlob
      Size = 1
    end
    object FatGerNFETHCANC: TSmallintField
      FieldName = 'NFETHCANC'
      Origin = 'ISADE.FATGER.NFETHCANC'
    end
    object FatGerOBSDES: TStringField
      FieldName = 'OBSDES'
      Origin = 'ISADE.FATGER.OBSDES'
      Size = 150
    end
    object FatGerLOCEMB: TStringField
      FieldName = 'LOCEMB'
      Origin = 'ISADE.FATGER.LOCEMB'
      Size = 60
    end
    object FatGerUFEMB: TStringField
      FieldName = 'UFEMB'
      Origin = 'ISADE.FATGER.UFEMB'
      FixedChar = True
      Size = 2
    end
    object FatGerID_ESTDIP: TIntegerField
      FieldName = 'ID_ESTDIP'
      Origin = 'ISADE.FATGER.ID_ESTDIP'
    end
    object FatGerTOTIMPII: TFloatField
      FieldName = 'TOTIMPII'
      Origin = 'ISADE.FATGER.TOTIMPII'
    end
    object FatGerSERIENF: TSmallintField
      FieldName = 'SERIENF'
      Origin = 'ISADE.FATGER.SERIENF'
    end
    object FatGerSERIECONTINGENCIA: TSmallintField
      FieldName = 'SERIECONTINGENCIA'
      Origin = 'ISADE.FATGER.SERIECONTINGENCIA'
    end
    object FatGerNUMCONTINGENCIA: TSmallintField
      FieldName = 'NUMCONTINGENCIA'
      Origin = 'ISADE.FATGER.NUMCONTINGENCIA'
    end
    object FatGerOB1GER: TStringField
      FieldName = 'OB1GER'
      Origin = 'ISADE.FATGER.OB1GER'
      Size = 80
    end
    object FatGerOB2GER: TStringField
      FieldName = 'OB2GER'
      Origin = 'ISADE.FATGER.OB2GER'
      Size = 80
    end
    object FatGerOB3GER: TStringField
      FieldName = 'OB3GER'
      Origin = 'ISADE.FATGER.OB3GER'
      Size = 80
    end
    object FatGerOB4GER: TStringField
      FieldName = 'OB4GER'
      Origin = 'ISADE.FATGER.OB4GER'
      Size = 80
    end
    object FatGerOB5GER: TStringField
      FieldName = 'OB5GER'
      Origin = 'ISADE.FATGER.OB5GER'
      Size = 80
    end
    object FatGerOB6GER: TStringField
      FieldName = 'OB6GER'
      Origin = 'ISADE.FATGER.OB6GER'
      Size = 80
    end
    object FatGerOB7GER: TStringField
      FieldName = 'OB7GER'
      Origin = 'ISADE.FATGER.OB7GER'
      Size = 80
    end
    object FatGerOB8GER: TStringField
      FieldName = 'OB8GER'
      Origin = 'ISADE.FATGER.OB8GER'
      Size = 80
    end
  end
  object FatGe2: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = FatGe2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsGer
    SQL.Strings = (
      'Select * From FatGe2'
      'Where FatGe2.CodEmp = :CodEmp'
      '     and FatGe2.DteGer = :DteGer'
      '     and FatGe2.NumGer = :NumGer'
      'Order by FatGe2.NroGe2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpGe2
    ValidateWithMask = True
    Left = 2
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEGER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMGER'
        ParamType = ptInput
      end>
    object FatGe2CODCLP: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATGE2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object FatGe2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATGE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatGe2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATGE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatGe2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATGE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatGe2CODCFO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCFO'
      Origin = 'ISADE.FATGE2.CODCFO'
      FixedChar = True
      Size = 10
    end
    object FatGe2CLSIPI: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      Origin = 'ISADE.FATGE2.CLSIPI'
      FixedChar = True
      Size = 15
    end
    object FatGe2CODST1: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST1'
      Origin = 'ISADE.FATGE2.CODST1'
      FixedChar = True
      Size = 1
    end
    object FatGe2CODST2: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST2'
      Origin = 'ISADE.FATGE2.CODST2'
      FixedChar = True
      Size = 3
    end
    object FatGe2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.FATGE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object FatGe2QTPGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'QTPGE2'
      Origin = 'ISADE.FATGE2.QTPGE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatGe2VLUGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'VLUGE2'
      Origin = 'ISADE.FATGE2.VLUGE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatGe2IPIGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'IPIGE2'
      Origin = 'ISADE.FATGE2.IPIGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatGe2ICMGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMGE2'
      Origin = 'ISADE.FATGE2.ICMGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatGe2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'TOTGE2'
      Origin = 'ISADE.FATGE2.TOTGE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2CSTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'CSTGE2'
      Origin = 'ISADE.FATGE2.CSTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatGe2TOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTITE'
      Origin = 'ISADE.FATGE2.TOTITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2CODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATGE2.CODEMP'
      Visible = False
    end
    object FatGe2DTEGER: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEGER'
      Origin = 'ISADE.FATGE2.DTEGER'
      Visible = False
    end
    object FatGe2NUMGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATGE2.NUMGER'
      Visible = False
    end
    object FatGe2SEQGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGE2'
      Origin = 'ISADE.FATGE2.SEQGE2'
      Visible = False
    end
    object FatGe2CODEIT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEIT'
      Origin = 'ISADE.FATGE2.CODEIT'
      Visible = False
    end
    object FatGe2CODTAM: TStringField
      DisplayWidth = 10
      FieldName = 'CODTAM'
      Origin = 'ISADE.FATGE2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatGe2CODCOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODCOR'
      Origin = 'ISADE.FATGE2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatGe2DESGE2: TStringField
      DisplayWidth = 70
      FieldName = 'DESGE2'
      Origin = 'ISADE.FATGE2.DESGE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatGe2OBSGE2: TStringField
      DisplayWidth = 100
      FieldName = 'OBSGE2'
      Origin = 'ISADE.FATGE2.OBSGE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatGe2LIQGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQGE2'
      Origin = 'ISADE.FATGE2.LIQGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object FatGe2BRTGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTGE2'
      Origin = 'ISADE.FATGE2.BRTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object FatGe2LINGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINGE2'
      Origin = 'ISADE.FATGE2.LINGE2'
      Visible = False
    end
    object FatGe2BASIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATGE2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATGE2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2BASICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Origin = 'ISADE.FATGE2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATGE2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATGE2.TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATGE2.TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATGE2.TOTPIS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATGE2.TOTCOF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2NROGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROGE2'
      Origin = 'ISADE.FATGE2.NROGE2'
      Visible = False
    end
    object FatGe2NRONFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATGE2.NRONFS'
      Visible = False
    end
    object FatGe2TIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATGE2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2TRBIPI: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATGE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2REDIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATGE2.REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2BSCIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATGE2.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2TIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATGE2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2TRBICM: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATGE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2REDICM: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Origin = 'ISADE.FATGE2.REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2BSCICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATGE2.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2INCREV: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Origin = 'ISADE.FATGE2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2INCFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATGE2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2REGIPI: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Origin = 'ISADE.FATGE2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatGe2REGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Origin = 'ISADE.FATGE2.REGICM'
      Visible = False
      FixedChar = True
    end
    object FatGe2REFGE2: TStringField
      FieldName = 'REFGE2'
      Origin = 'ISADE.FATGE2.REFGE2'
      Visible = False
      FixedChar = True
    end
    object FatGe2QTDGE2: TFloatField
      FieldName = 'QTDGE2'
      Origin = 'ISADE.FATGE2.QTDGE2'
      Visible = False
    end
    object FatGe2SLDGE2: TFloatField
      FieldName = 'SLDGE2'
      Origin = 'ISADE.FATGE2.SLDGE2'
      Visible = False
    end
    object FatGe2VCHGE2: TFloatField
      FieldName = 'VCHGE2'
      Origin = 'ISADE.FATGE2.VCHGE2'
      Visible = False
    end
    object FatGe2VREGE2: TFloatField
      FieldName = 'VREGE2'
      Origin = 'ISADE.FATGE2.VREGE2'
      Visible = False
    end
    object FatGe2VCRGE2: TFloatField
      FieldName = 'VCRGE2'
      Origin = 'ISADE.FATGE2.VCRGE2'
      Visible = False
    end
    object FatGe2VCPGE2: TFloatField
      FieldName = 'VCPGE2'
      Origin = 'ISADE.FATGE2.VCPGE2'
      Visible = False
    end
    object FatGe2VPRGE2: TFloatField
      FieldName = 'VPRGE2'
      Origin = 'ISADE.FATGE2.VPRGE2'
      Visible = False
    end
    object FatGe2VMEGE2: TFloatField
      FieldName = 'VMEGE2'
      Origin = 'ISADE.FATGE2.VMEGE2'
      Visible = False
    end
    object FatGe2VPFGE2: TFloatField
      FieldName = 'VPFGE2'
      Origin = 'ISADE.FATGE2.VPFGE2'
      Visible = False
    end
    object FatGe2CSTCST: TFloatField
      FieldName = 'CSTCST'
      Origin = 'ISADE.FATGE2.CSTCST'
      Visible = False
    end
    object FatGe2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.FATGE2.VCHCST'
      Visible = False
    end
    object FatGe2VRECST: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.FATGE2.VRECST'
      Visible = False
    end
    object FatGe2VCRCST: TFloatField
      FieldName = 'VCRCST'
      Origin = 'ISADE.FATGE2.VCRCST'
      Visible = False
    end
    object FatGe2VCPCST: TFloatField
      FieldName = 'VCPCST'
      Origin = 'ISADE.FATGE2.VCPCST'
      Visible = False
    end
    object FatGe2VPRCST: TFloatField
      FieldName = 'VPRCST'
      Origin = 'ISADE.FATGE2.VPRCST'
      Visible = False
    end
    object FatGe2VMECST: TFloatField
      FieldName = 'VMECST'
      Origin = 'ISADE.FATGE2.VMECST'
      Visible = False
    end
    object FatGe2VPFCST: TFloatField
      FieldName = 'VPFCST'
      Origin = 'ISADE.FATGE2.VPFCST'
      Visible = False
    end
    object FatGe2DSRGE2: TFloatField
      FieldName = 'DSRGE2'
      Origin = 'ISADE.FATGE2.DSRGE2'
      Visible = False
    end
    object FatGe2VDRGE2: TFloatField
      FieldName = 'VDRGE2'
      Origin = 'ISADE.FATGE2.VDRGE2'
      Visible = False
    end
    object FatGe2VLQGE2: TFloatField
      FieldName = 'VLQGE2'
      Origin = 'ISADE.FATGE2.VLQGE2'
      Visible = False
    end
    object FatGe2SEQNFG: TIntegerField
      FieldName = 'SEQNFG'
      Origin = 'ISADE.FATGE2.SEQNFG'
      Visible = False
    end
    object FatGe2SEQGE4: TIntegerField
      FieldName = 'SEQGE4'
      Origin = 'ISADE.FATGE2.SEQGE4'
      Visible = False
    end
    object FatGe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATGE2.BASSUB'
      Visible = False
    end
    object FatGe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATGE2.TOTSUB'
      Visible = False
    end
    object FatGe2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATGE2.TOTDSR'
      Visible = False
    end
    object FatGe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.FATGE2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object FatGe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.FATGE2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.FATGE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatGe2FLGLIB: TStringField
      FieldName = 'FLGLIB'
      Origin = 'ISADE.FATGE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatGe2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.FATGE2.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatGe2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.FATGE2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.FATGE2.ICMSUB'
      Visible = False
    end
    object FatGe2MRGSUB: TFloatField
      FieldName = 'MRGSUB'
      Origin = 'ISADE.FATGE2.MRGSUB'
      Visible = False
    end
    object FatGe2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.FATGE2.BASESB'
      Visible = False
    end
    object FatGe2ID_FATGE2: TIntegerField
      FieldName = 'ID_FATGE2'
      Origin = 'ISADE.FATGE2.ID_FATGE2'
      Visible = False
    end
    object FatGe2BAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATGE2.BAIPIS'
      Visible = False
    end
    object FatGe2TOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATGE2.TOTDES'
      Visible = False
    end
    object FatGe2DESNC1: TStringField
      FieldName = 'DESNC1'
      Origin = 'ISADE.FATGE2.DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC2: TStringField
      FieldName = 'DESNC2'
      Origin = 'ISADE.FATGE2.DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC3: TStringField
      FieldName = 'DESNC3'
      Origin = 'ISADE.FATGE2.DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC4: TStringField
      FieldName = 'DESNC4'
      Origin = 'ISADE.FATGE2.DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC5: TStringField
      FieldName = 'DESNC5'
      Origin = 'ISADE.FATGE2.DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC6: TStringField
      FieldName = 'DESNC6'
      Origin = 'ISADE.FATGE2.DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC7: TStringField
      FieldName = 'DESNC7'
      Origin = 'ISADE.FATGE2.DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC8: TStringField
      FieldName = 'DESNC8'
      Origin = 'ISADE.FATGE2.DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2TOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATGE2.TOTSEG'
      Visible = False
    end
    object FatGe2TOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATGE2.TOTFRT'
      Visible = False
    end
    object FatGe2BAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATGE2.BAICMF'
      Visible = False
    end
    object FatGe2TOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATGE2.TOICMF'
      Visible = False
    end
    object FatGe2BAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATGE2.BAICMS'
      Visible = False
    end
    object FatGe2TOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATGE2.TOICMS'
      Visible = False
    end
    object FatGe2BAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATGE2.BAICMD'
      Visible = False
    end
    object FatGe2TOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATGE2.TOICMD'
      Visible = False
    end
    object FatGe2BAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATGE2.BAIPIF'
      Visible = False
    end
    object FatGe2TOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATGE2.TOIPIF'
      Visible = False
    end
    object FatGe2TOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATGE2.TOIPIS'
      Visible = False
    end
    object FatGe2BAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATGE2.BAIPID'
      Visible = False
    end
    object FatGe2TOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATGE2.TOIPID'
      Visible = False
    end
    object FatGe2VLRBCII: TFloatField
      FieldName = 'VLRBCII'
      Origin = 'ISADE.FATGE2.VLRBCII'
      Visible = False
    end
    object FatGe2VLRDESPATU: TFloatField
      FieldName = 'VLRDESPATU'
      Origin = 'ISADE.FATGE2.VLRDESPATU'
      Visible = False
    end
    object FatGe2VLRIOF: TFloatField
      FieldName = 'VLRIOF'
      Origin = 'ISADE.FATGE2.VLRIOF'
      Visible = False
    end
    object FatGe2VLRIMPII: TFloatField
      FieldName = 'VLRIMPII'
      Origin = 'ISADE.FATGE2.VLRIMPII'
      Visible = False
    end
    object FatGe2PERIMPII: TFloatField
      FieldName = 'PERIMPII'
      Origin = 'ISADE.FATGE2.PERIMPII'
      Visible = False
    end
  end
  object UpGer: TUpdateSQL
    ModifySQL.Strings = (
      'update FatGer'
      'set'
      '  HREFAT = :HREFAT,'
      '  UFEGER = :UFEGER,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  DSCREG = :DSCREG,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CODFIL = :CODFIL,'
      '  QTDNFS = :QTDNFS,'
      '  NRONFS = :NRONFS,'
      '  NROSUF = :NROSUF,'
      '  FLGAVI = :FLGAVI,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTGER = :FRTGER,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARGER = :MARGER,'
      '  NROGER = :NROGER,'
      '  ESPGER = :ESPGER,'
      '  NOMTRA = :NOMTRA,'
      '  CGCTRA = :CGCTRA,'
      '  INSTRA = :INSTRA,'
      '  CEPTRA = :CEPTRA,'
      '  TENTRA = :TENTRA,'
      '  ENDTRA = :ENDTRA,'
      '  REFTRA = :REFTRA,'
      '  NUMTRA = :NUMTRA,'
      '  BAITRA = :BAITRA,'
      '  CIDTRA = :CIDTRA,'
      '  UFETRA = :UFETRA,'
      '  PLCTRA = :PLCTRA,'
      '  PRTTRA = :PRTTRA,'
      '  FONTRA = :FONTRA,'
      '  UFEPLC = :UFEPLC,'
      '  CEPCLI = :CEPCLI,'
      '  TENCLI = :TENCLI,'
      '  ENDCLI = :ENDCLI,'
      '  REFCLI = :REFCLI,'
      '  NUMCLI = :NUMCLI,'
      '  BAICLI = :BAICLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFECLI = :UFECLI,'
      '  INECLI = :INECLI,'
      '  CGECLI = :CGECLI,'
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSGER = :OBSGER,'
      '  SEQITE = :SEQITE,'
      '  QTIGER = :QTIGER,'
      '  LINGER = :LINGER,'
      '  QTPGER = :QTPGER,'
      '  STPGER = :STPGER,'
      '  QTDVOL = :QTDVOL,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ICMFRT = :ICMFRT,'
      '  BSICMF = :BSICMF,'
      '  BAICMF = :BAICMF,'
      '  TOICMF = :TOICMF,'
      '  ICMSEG = :ICMSEG,'
      '  BSICMS = :BSICMS,'
      '  BAICMS = :BAICMS,'
      '  TOICMS = :TOICMS,'
      '  ICMDES = :ICMDES,'
      '  BSICMD = :BSICMD,'
      '  BAICMD = :BAICMD,'
      '  TOICMD = :TOICMD,'
      '  IPIFRT = :IPIFRT,'
      '  BSIPIF = :BSIPIF,'
      '  BAIPIF = :BAIPIF,'
      '  TOIPIF = :TOIPIF,'
      '  IPISEG = :IPISEG,'
      '  BSIPIS = :BSIPIS,'
      '  BAIPIS = :BAIPIS,'
      '  TOIPIS = :TOIPIS,'
      '  IPIDES = :IPIDES,'
      '  BSIPID = :BSIPID,'
      '  BAIPID = :BAIPID,'
      '  TOIPID = :TOIPID,'
      '  TOTGER = :TOTGER,'
      '  LANGER = :LANGER,'
      '  SLDGER = :SLDGER,'
      '  TOTDSR = :TOTDSR,'
      '  BASIP1 = :BASIP1,'
      '  TOTIP1 = :TOTIP1,'
      '  BASIC1 = :BASIC1,'
      '  TOTIC1 = :TOTIC1,'
      '  BASSU1 = :BASSU1,'
      '  TOTSU1 = :TOTSU1,'
      '  TOTIT1 = :TOTIT1,'
      '  TOTGE1 = :TOTGE1,'
      '  CODUSU = :CODUSU,'
      '  HRCGER = :HRCGER,'
      '  DTCGER = :DTCGER,'
      '  USCGER = :USCGER,'
      '  OBCGER = :OBCGER,'
      '  ATUEST = :ATUEST,'
      '  LANEST = :LANEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
      '  FLGCTB = :FLGCTB,'
      '  CODIPI = :CODIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  CODICM = :CODICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  FLGATU = :FLGATU,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  TRASDA = :TRASDA,'
      '  DTESDA = :DTESDA,'
      '  HRESDA = :HRESDA,'
      '  USUSDA = :USUSDA,'
      '  OBSSDA = :OBSSDA,'
      '  CODVEI = :CODVEI,'
      '  DTEENT = :DTEENT,'
      '  HREENT = :HREENT,'
      '  USUENT = :USUENT,'
      '  OBSENT = :OBSENT,'
      '  DESREG = :DESREG,'
      '  SEQGER = :SEQGER,'
      '  SITGER = :SITGER,'
      '  NROCOL = :NROCOL,'
      '  DTEFAT = :DTEFAT,'
      '  FLGNFS = :FLGNFS,'
      '  FLGENV = :FLGENV,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  BASIS1 = :BASIS1,'
      '  TOTIS1 = :TOTIS1,'
      '  TOTSER = :TOTSER,'
      '  TOTSE1 = :TOTSE1,'
      '  QTISER = :QTISER,'
      '  SEQSER = :SEQSER,'
      '  FLGSIN = :FLGSIN,'
      '  OB1GER = :OB1GER,'
      '  OB2GER = :OB2GER,'
      '  OB3GER = :OB3GER,'
      '  OB4GER = :OB4GER,'
      '  OB5GER = :OB5GER,'
      '  OB6GER = :OB6GER,'
      '  OB7GER = :OB7GER,'
      '  OB8GER = :OB8GER,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT,'
      'modpfa = :modpfa,'
      'flgnfe = :flgnfe,'
      'envnfe = :envnfe,'
      ' ufecom = :ufecom, '
      'dtecom= :dtecom, '
      'nfscom = :nfscom,  '
      'seqcom = :seqcom,'
      'TEFCLI = :TEFCLI, '
      'ENFCLI = :ENFCLI,'
      'RFFCLI = :RFFCLI,'
      'NRFCLI = :NRFCLI,'
      'BAFCLI = :BAFCLI,'
      'CIFCLI = :CIFCLI,'
      'UFFCLI = :UFFCLI,'
      'CEFCLI = :CEFCLI,'
      'ID_FINCIF = :ID_FINCIF,'
      'ID_FINCIE = :ID_FINCIE,'
      'ID_TRACIE = :ID_TRACIE'
      ''
      ''
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER')
    InsertSQL.Strings = (
      'insert into FatGer'
      
        '  (CODEMP, DTEGER, NUMGER, HREFAT, UFEGER, CODPFA, TIPPFA, CODCL' +
        'I, CODVEN, '
      
        '   DSCREG, PERPIS, PERCOF, CODFIL, QTDNFS, NRONFS, NROSUF, FLGAV' +
        'I, CGCCLI, '
      
        '   INSCLI, CODCF1, CODCF2, FRTGER, FLGENT, FLGSAI, DESNAT, INSSU' +
        'B, TIPFRT, '
      
        '   MARGER, NROGER, ESPGER, NOMTRA, CGCTRA, INSTRA, CEPTRA, TENTR' +
        'A, ENDTRA, '
      
        '   REFTRA, NUMTRA, BAITRA, CIDTRA, UFETRA, PLCTRA, PRTTRA, FONTR' +
        'A, UFEPLC, '
      
        '   CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCLI, UFECL' +
        'I, INECLI, '
      
        '   CGECLI, TXFIPI, TXFICM, OBSGER, SEQITE, QTIGER, LINGER, QTPGE' +
        'R, STPGER, '
      
        '   QTDVOL, ALTVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIPI, TOTIP' +
        'I, BASICM, '
      
        '   TOTICM, BASSUB, TOTSUB, TOTITE, TOTPIS, TOTCOF, TOTFRT, TOTSE' +
        'G, TOTDES, '
      
        '   ICMFRT, BSICMF, BAICMF, TOICMF, ICMSEG, BSICMS, BAICMS, TOICM' +
        'S, ICMDES, '
      
        '   BSICMD, BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPIF, TOIPIF, IPISE' +
        'G, BSIPIS, '
      
        '   BAIPIS, TOIPIS, IPIDES, BSIPID, BAIPID, TOIPID, TOTGER, LANGE' +
        'R, SLDGER, '
      
        '   TOTDSR, BASIP1, TOTIP1, BASIC1, TOTIC1, BASSU1, TOTSU1, TOTIT' +
        '1, TOTGE1, '
      
        '   CODUSU, HRCGER, DTCGER, USCGER, OBCGER, ATUEST, LANEST, INTFI' +
        'N, CONSUM, '
      
        '   FLGCTB, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPIC' +
        'M, TRBICM, '
      
        '   REDICM, BSCICM, INCREV, INCFIN, FLGATU, DTEATU, HREATU, USUAT' +
        'U, TRASDA, '
      
        '   DTESDA, HRESDA, USUSDA, OBSSDA, CODVEI, DTEENT, HREENT, USUEN' +
        'T, OBSENT, '
      
        '   DESREG, SEQGER, SITGER, NROCOL, DTEFAT, FLGNFS, FLGENV, BASIS' +
        'S, TOTISS, '
      
        '   BASIS1, TOTIS1, TOTSER, TOTSE1, QTISER, SEQSER, FLGSIN, OB1GE' +
        'R, OB2GER, '
      
        '   OB3GER, OB4GER, OB5GER, OB6GER, OB7GER, OB8GER, FLGIMP, NOMEN' +
        'T,'
      'sitger, flgnfe,envnfe, modpfa, ufecom, dtecom, nfscom, seqcom'
      ')'
      'values'
      
        '  (:CODEMP, :DTEGER, :NUMGER, :HREFAT, :UFEGER, :CODPFA, :TIPPFA' +
        ', :CODCLI, '
      
        '   :CODVEN, :DSCREG, :PERPIS, :PERCOF, :CODFIL, :QTDNFS, :NRONFS' +
        ', :NROSUF, '
      
        '   :FLGAVI, :CGCCLI, :INSCLI, :CODCF1, :CODCF2, :FRTGER, :FLGENT' +
        ', :FLGSAI, '
      
        '   :DESNAT, :INSSUB, :TIPFRT, :MARGER, :NROGER, :ESPGER, :NOMTRA' +
        ', :CGCTRA, '
      
        '   :INSTRA, :CEPTRA, :TENTRA, :ENDTRA, :REFTRA, :NUMTRA, :BAITRA' +
        ', :CIDTRA, '
      
        '   :UFETRA, :PLCTRA, :PRTTRA, :FONTRA, :UFEPLC, :CEPCLI, :TENCLI' +
        ', :ENDCLI, '
      
        '   :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI, :CGECLI' +
        ', :TXFIPI, '
      
        '   :TXFICM, :OBSGER, :SEQITE, :QTIGER, :LINGER, :QTPGER, :STPGER' +
        ', :QTDVOL, '
      
        '   :ALTVOL, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTPIS, :TOTCOF, :TOTFRT' +
        ', :TOTSEG, '
      
        '   :TOTDES, :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS' +
        ', :BAICMS, '
      
        '   :TOICMS, :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF' +
        ', :BAIPIF, '
      
        '   :TOIPIF, :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID' +
        ', :BAIPID, '
      
        '   :TOIPID, :TOTGER, :LANGER, :SLDGER, :TOTDSR, :BASIP1, :TOTIP1' +
        ', :BASIC1, '
      
        '   :TOTIC1, :BASSU1, :TOTSU1, :TOTIT1, :TOTGE1, :CODUSU, :HRCGER' +
        ', :DTCGER, '
      
        '   :USCGER, :OBCGER, :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGCTB' +
        ', :CODIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :FLGATU, :DTEATU, :HREATU, :USUATU' +
        ', :TRASDA, '
      
        '   :DTESDA, :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT' +
        ', :USUENT, '
      
        '   :OBSENT, :DESREG, :SEQGER, :SITGER, :NROCOL, :DTEFAT, :FLGNFS' +
        ', :FLGENV, '
      
        '   :BASISS, :TOTISS, :BASIS1, :TOTIS1, :TOTSER, :TOTSE1, :QTISER' +
        ', :SEQSER, '
      
        '   :FLGSIN, :OB1GER, :OB2GER, :OB3GER, :OB4GER, :OB5GER, :OB6GER' +
        ', :OB7GER, '
      '   :OB8GER, :FLGIMP, :NOMENT,'
      
        ':sitger, :flgnfe, :envnfe, :modpfa, :ufecom, :dtecom, :nfscom, :' +
        'seqcom'
      ')')
    DeleteSQL.Strings = (
      'delete from FatGer'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER')
    Left = 58
    Top = 172
  end
  object UpGe2: TUpdateSQL
    ModifySQL.Strings = (
      'update FatGe2'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTEGER = :DTEGER,'
      '  NUMGER = :NUMGER,'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESGE2 = :DESGE2,'
      '  OBSGE2 = :OBSGE2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFGE2 = :REFGE2,'
      '  LIQGE2 = :LIQGE2,'
      '  BRTGE2 = :BRTGE2,'
      '  LINGE2 = :LINGE2,'
      '  QTPGE2 = :QTPGE2,'
      '  VLUGE2 = :VLUGE2,'
      '  DSRGE2 = :DSRGE2,'
      '  VDRGE2 = :VDRGE2,'
      '  IPIGE2 = :IPIGE2,'
      '  CLSIPI = :CLSIPI,'
      '  SEQNFG = :SEQNFG,'
      '  SEQGE4 = :SEQGE4,'
      '  ICMGE2 = :ICMGE2,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTDSR = :TOTDSR,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  FLASEQ = :FLASEQ,'
      '  FLGLIB = :FLGLIB,'
      '  NRONFS = :NRONFS,'
      '  NROGE2 = :NROGE2,'
      '  CODTXF = :CODTXF,'
      '  TOTDES = :TOTDES,'
      '  BAIPIS = :BAIPIS,'
      '  CODCFO = :CODCFO,'
      '  TRBSUB = :TRBSUB,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  QTDGE2 = :QTDGE2,'
      '  SLDGE2 = :SLDGE2,'
      '  CSTGE2 = :CSTGE2,'
      '  VCHGE2 = :VCHGE2,'
      '  VREGE2 = :VREGE2,'
      '  VCRGE2 = :VCRGE2,'
      '  VCPGE2 = :VCPGE2,'
      '  VPRGE2 = :VPRGE2,'
      '  VMEGE2 = :VMEGE2,'
      '  VPFGE2 = :VPFGE2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCRCST = :VCRCST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  VLQGE2 = :VLQGE2,'
      '  VLRBCII = :VLRBCII,'
      '  VLRDESPATU = :VLRDESPATU,'
      '  VLRIOF = :VLRIOF,'
      '  VLRIMPII = :VLRIMPII,'
      '  PERIMPII = :PERIMPII'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGE2 = :OLD_SEQGE2')
    InsertSQL.Strings = (
      'insert into FatGe2'
      
        '  (CODEMP, DTEGER, NUMGER, CODEIT, CODCLP, CODGRU, CODSUB, CODPR' +
        'O, CODTAM, '
      
        '   CODCOR, DESGE2, OBSGE2, CODST1, CODST2, CODUND, REFGE2, LIQGE' +
        '2, BRTGE2, '
      
        '   LINGE2, QTPGE2, VLUGE2, DSRGE2, VDRGE2, IPIGE2, CLSIPI, SEQNF' +
        'G, SEQGE4, '
      
        '   ICMGE2, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTIT' +
        'E, TOTGE2, '
      
        '   TOTLIQ, TOTBRT, TOTPIS, TOTCOF, TOTDSR, CODSTR, TIPSTR, REGIP' +
        'I, TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      
        '   INCFIN, FLASEQ, FLGLIB, NRONFS, NROGE2, CODTXF, TOTDES, BAIPI' +
        'S, CODCFO, '
      
        '   TRBSUB, ICMSUB, MRGSUB, BASESB, QTDGE2, SLDGE2, CSTGE2, VCHGE' +
        '2, VREGE2, '
      
        '   VCRGE2, VCPGE2, VPRGE2, VMEGE2, VPFGE2, CSTCST, VCHCST, VRECS' +
        'T, VCRCST, '
      
        '   VCPCST, VPRCST, VMECST, VPFCST, VLQGE2, VLRBCII, VLRDESPATU, ' +
        'VLRIOF, '
      '   VLRIMPII, PERIMPII)'
      'values'
      
        '  (:CODEMP, :DTEGER, :NUMGER, :CODEIT, :CODCLP, :CODGRU, :CODSUB' +
        ', :CODPRO, '
      
        '   :CODTAM, :CODCOR, :DESGE2, :OBSGE2, :CODST1, :CODST2, :CODUND' +
        ', :REFGE2, '
      
        '   :LIQGE2, :BRTGE2, :LINGE2, :QTPGE2, :VLUGE2, :DSRGE2, :VDRGE2' +
        ', :IPIGE2, '
      
        '   :CLSIPI, :SEQNFG, :SEQGE4, :ICMGE2, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTITE, :TOTGE2, :TOTLIQ, :TOTBRT, :TOTPIS' +
        ', :TOTCOF, '
      
        '   :TOTDSR, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :FLASEQ, '
      
        '   :FLGLIB, :NRONFS, :NROGE2, :CODTXF, :TOTDES, :BAIPIS, :CODCFO' +
        ', :TRBSUB, '
      
        '   :ICMSUB, :MRGSUB, :BASESB, :QTDGE2, :SLDGE2, :CSTGE2, :VCHGE2' +
        ', :VREGE2, '
      
        '   :VCRGE2, :VCPGE2, :VPRGE2, :VMEGE2, :VPFGE2, :CSTCST, :VCHCST' +
        ', :VRECST, '
      
        '   :VCRCST, :VCPCST, :VPRCST, :VMECST, :VPFCST, :VLQGE2, :VLRBCI' +
        'I, :VLRDESPATU, '
      '   :VLRIOF, :VLRIMPII, :PERIMPII)')
    DeleteSQL.Strings = (
      'delete from FatGe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGE2 = :OLD_SEQGE2')
    Left = 62
    Top = 212
  end
  object DsGe2: TDataSource
    DataSet = FatGe2
    OnDataChange = DsGe2DataChange
    Left = 30
    Top = 208
  end
  object DsGer: TDataSource
    DataSet = FatGer
    Left = 30
    Top = 172
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 106
    Top = 212
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel|*.xls'
    Left = 284
    Top = 457
  end
end
