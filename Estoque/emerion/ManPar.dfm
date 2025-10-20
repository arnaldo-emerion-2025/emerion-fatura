inherited fmManPar: TfmManPar
  Left = 336
  Top = 189
  Caption = 'Parametros'
  ClientHeight = 447
  ClientWidth = 633
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 633
    Height = 447
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label10: TLabel
    Left = 4
    Top = 1
    Width = 123
    Height = 13
    Caption = 'Definições de Estoque'
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
  object Bevel1: TBevel
    Left = 135
    Top = 7
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label6: TLabel
    Left = 4
    Top = 72
    Width = 100
    Height = 13
    Caption = 'Estoque Negativo ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 4
    Top = 47
    Width = 64
    Height = 13
    Caption = 'Usa Cores ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 4
    Top = 22
    Width = 85
    Height = 13
    Caption = 'Usa Tamanhos ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 206
    Top = 48
    Width = 337
    Height = 13
    Caption = 
      '(Usa Grade de Cores para Definição de Itens em Estoque do Sistem' +
      'a.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label24: TLabel
    Left = 206
    Top = 22
    Width = 358
    Height = 13
    Caption = 
      '(Usa Grade de Tamanhos para Definição de Itens em Estoque do Sis' +
      'tema.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 4
    Top = 95
    Width = 110
    Height = 13
    Caption = 'Definições de Custo'
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
  object Bevel2: TBevel
    Left = 135
    Top = 101
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 117
    Width = 103
    Height = 13
    Caption = 'Incide Valor do IPI ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 206
    Top = 117
    Width = 423
    Height = 13
    Caption = 
      '(Retirar Incidência do Valor Calculado de IPI sobre os valores d' +
      'e Custos nas Movimenta-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 206
    Top = 137
    Width = 198
    Height = 13
    Caption = 'ções de Entradas dos Itens em Estoque.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label02: TLabel
    Left = 4
    Top = 267
    Width = 78
    Height = 13
    Caption = 'Implantações'
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
  object Bevel03: TBevel
    Left = 135
    Top = 276
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label08: TLabel
    Left = 4
    Top = 285
    Width = 112
    Height = 13
    Caption = 'Exibir Codigo Anterior ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label09: TLabel
    Left = 206
    Top = 285
    Width = 422
    Height = 13
    Caption = 
      '(Exibir Campo no Cadastro de Itens de Codigo Anterior do Item pa' +
      'ra Casos de possiveis'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 206
    Top = 307
    Width = 238
    Height = 13
    Caption = 'Importações de Cadastros de Outros Softwares.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 4
    Top = 154
    Width = 74
    Height = 13
    Caption = 'Precificações'
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
  object Bevel3: TBevel
    Left = 135
    Top = 160
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 4
    Top = 179
    Width = 195
    Height = 13
    Caption = 'Tabela Base para Incidência de Markup ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 4
    Top = 200
    Width = 90
    Height = 13
    Caption = 'Movimentações'
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
  object Bevel4: TBevel
    Left = 135
    Top = 208
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label13: TLabel
    Left = 4
    Top = 224
    Width = 164
    Height = 13
    Caption = 'Operação Default para Entradas ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 4
    Top = 248
    Width = 152
    Height = 13
    Caption = 'Operação Default para Saidas ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object bPsqCat: TSpeedButton
    Left = 266
    Top = 221
    Width = 23
    Height = 21
    Hint = 'Pesquisar Operações de Entrada Existentes'
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
    OnClick = bPsqCatClick
  end
  object bPsqTip: TSpeedButton
    Left = 266
    Top = 245
    Width = 23
    Height = 21
    Hint = 'Pesquisar Operações de Saidas Existentes'
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
    OnClick = bPsqTipClick
  end
  object Label2: TLabel
    Left = 4
    Top = 319
    Width = 95
    Height = 13
    Caption = 'Código de Barras'
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
  object Bevel5: TBevel
    Left = 135
    Top = 328
    Width = 496
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label15: TLabel
    Left = 4
    Top = 342
    Width = 183
    Height = 13
    Caption = 'Gerar Código de Barras pelo Sistema ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 4
    Top = 366
    Width = 75
    Height = 13
    Caption = 'Iniciais EAN13 ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 4
    Top = 390
    Width = 180
    Height = 13
    Caption = 'Gerar Código por Item ou por Cores ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 313
    Top = 390
    Width = 128
    Height = 13
    Caption = 'Último Sequencial Gerado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object EdFlgTam: TdxDBColorPickEdit
    Left = 135
    Top = 18
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
    TabOrder = 0
    DataField = 'FLGTAM'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdTamCor: TdxDBColorPickEdit
    Left = 135
    Top = 43
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
    DataField = 'TAMCOR'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdFlgNeg: TdxDBColorPickEdit
    Left = 135
    Top = 68
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
    TabOrder = 2
    DataField = 'FLGNEG'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdFlgIpi: TdxDBColorPickEdit
    Left = 135
    Top = 113
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
    TabOrder = 3
    DataField = 'FLGIPI'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object BbConf: TBitBtn
    Left = 371
    Top = 414
    Width = 129
    Height = 31
    Hint = 'Salvar as Alterações Realizadas'
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BbConfClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000014000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0CFD0C0CFD0C0CFD00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007F7F7FC0CFD0C0CFD0000000000000FF0000FF0000000000
      7F7F7FFF0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00
      000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7FFF
      0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF0000000000
      7F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00000000007F7F7FC0
      CFD0C0CFD0000000FF0000FF0000FF0000000000000000000000000000000000
      000000000000000000000000FF0000FF0000FF00000000007F7F7FC0CFD0C0CF
      D0000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF00000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
      0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00
      000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF0000000000
      7F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0
      CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CF
      D0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
      FF0000FF000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
  end
  object BbCanc: TBitBtn
    Left = 502
    Top = 414
    Width = 129
    Height = 31
    Hint = 'Retornar a Tela Anterior'
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BbCancClick
    Glyph.Data = {
      AA030000424DAA03000000000000360000002800000011000000110000000100
      18000000000074030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0000000000000
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000C0CFD0C0CFD000000000000030679F30679F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD000506030679F30
      679F30679F30679F000000005060005060005060005060005060005060C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD000506030689F30689F30679F30679F00000000
      CFFF00CFFF00CFFF000000C0C0C0C0C0C0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D00050602F6FA02F6FA02F6F9F2F689F00000000CFFF00CFFF00CFFF000000C0
      C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD00050602077AF2077A02070
      A02F70A000000010CFFF00CFFF00CFFF000000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD00050601F7FAF1F78AFFFFFFF2077AF00000030D7FF2FD0
      FF1FD0FFFF0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0005060
      1080B01F80B01F80B01F7FB000000060DFFF50D8FFFF0000FF0000FF0000FF00
      00FF0000FF0000FF0000C0CFD000C0CFD00050600F88BF1088BF1087BF1087B0
      0000008FE7FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D000C0CFD00050600F90C00F8FC00F8FC00F88BF000000B0EFFFA0E8FFFF0000
      FF0000FF0000FF0000FF0000FF0000FF0000C0CFD000C0CFD00050600097CF00
      97CF0090C00090C0000000DFF0FFCFF0FFC0EFFFFF0000FF0000FF0000C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD00050600098CF0098CF0098CF0097CF000000FF
      F8FFF0F7FFE0F7FF000000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D00050600098CF0098CF0098CF0098CF000000FFF8FFFFF8FFFFF8FF000000C0
      C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD00050600050600098
      CF0098CF000000005060005060005060005060C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0005060005060005060C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000}
  end
  object EdFlgAnt: TdxDBColorPickEdit
    Left = 135
    Top = 281
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
    TabOrder = 9
    DataField = 'FLGANT'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdFlgTab: TdxDBColorPickEdit
    Left = 207
    Top = 175
    Width = 210
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
    DataField = 'FLGTAB'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      ''
      'Ultimo Preco'
      'Custo Historico'
      'Ultimo Custo(CIF)'
      'Custo Ponderado'
      'Custo Referencial'
      'Custo Historico (G)'
      'Custo Ponderado (G)'
      'Media Ponderada (E)'
      'Custo da Ultima Compra')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdOpeEnt: TdxDBColorEdit
    Left = 207
    Top = 220
    Width = 58
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
    OnExit = EdOpeEntExit
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'OPEENT'
    DataSource = DsPar
    MaxLength = 2
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object EdOpeSda: TdxDBColorEdit
    Left = 207
    Top = 244
    Width = 58
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
    OnExit = EdOpeSdaExit
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'OPESDA'
    DataSource = DsPar
    MaxLength = 2
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object EdLanCba: TdxDBColorPickEdit
    Left = 199
    Top = 338
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
    TabOrder = 10
    DataField = 'LANCBA'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdIniEan: TdxDBColorEdit
    Left = 199
    Top = 362
    Width = 82
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
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'INIEAN'
    DataSource = DsPar
    MaxLength = 9
    CorDeFoco = clInfoBk
    StoredValues = 3
  end
  object EdTipEan: TdxDBColorPickEdit
    Left = 199
    Top = 386
    Width = 98
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
    DataField = 'TIPEAN'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Itens'
      'Cores')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdDesEnt: TdxColorEdit
    Left = 291
    Top = 220
    Width = 340
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdDesSda: TdxColorEdit
    Left = 291
    Top = 244
    Width = 340
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
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdSeqBar: TdxColorEdit
    Left = 448
    Top = 386
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
    TabOrder = 15
    Alignment = taRightJustify
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EstPar: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstPar')
    UpdateObject = UpPar
    ValidateWithMask = True
    Left = 469
    Top = 143
    object EstParTAMCOR: TStringField
      FieldName = 'TAMCOR'
      Origin = 'ISADE.ESTPAR.TAMCOR'
      FixedChar = True
      Size = 3
    end
    object EstParFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.ESTPAR.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object EstParFLGTAM: TStringField
      FieldName = 'FLGTAM'
      Origin = 'ISADE.ESTPAR.FLGTAM'
      FixedChar = True
      Size = 3
    end
    object EstParFLGNEG: TStringField
      FieldName = 'FLGNEG'
      Origin = 'ISADE.ESTPAR.FLGNEG'
      FixedChar = True
      Size = 3
    end
    object EstParFLGANT: TStringField
      FieldName = 'FLGANT'
      Origin = 'ISADE.ESTPAR.FLGANT'
      FixedChar = True
      Size = 3
    end
    object EstParFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.ESTPAR.FLGTAB'
      FixedChar = True
      Size = 25
    end
    object EstParOPEENT: TStringField
      FieldName = 'OPEENT'
      Origin = 'ISADE.ESTPAR.OPEENT'
      FixedChar = True
      Size = 2
    end
    object EstParOPESDA: TStringField
      FieldName = 'OPESDA'
      Origin = 'ISADE.ESTPAR.OPESDA'
      FixedChar = True
      Size = 2
    end
    object EstParLANTAB: TStringField
      FieldName = 'LANTAB'
      Origin = 'ISADE.ESTPAR.LANTAB'
      FixedChar = True
      Size = 3
    end
    object EstParATUVCR: TStringField
      FieldName = 'ATUVCR'
      Origin = 'ISADE.ESTPAR.ATUVCR'
      FixedChar = True
      Size = 3
    end
    object EstParLANMIN: TStringField
      FieldName = 'LANMIN'
      Origin = 'ISADE.ESTPAR.LANMIN'
      FixedChar = True
      Size = 3
    end
    object EstParATUPRC: TStringField
      FieldName = 'ATUPRC'
      Origin = 'ISADE.ESTPAR.ATUPRC'
      FixedChar = True
      Size = 3
    end
    object EstParLANCBA: TStringField
      FieldName = 'LANCBA'
      Origin = 'ISADE.ESTPAR.LANCBA'
      FixedChar = True
      Size = 3
    end
    object EstParATUREF: TStringField
      FieldName = 'ATUREF'
      Origin = 'ISADE.ESTPAR.ATUREF'
      FixedChar = True
      Size = 3
    end
    object EstParATUMSU: TStringField
      FieldName = 'ATUMSU'
      Origin = 'ISADE.ESTPAR.ATUMSU'
      FixedChar = True
      Size = 3
    end
    object EstParFLGOBS: TStringField
      FieldName = 'FLGOBS'
      Origin = 'ISADE.ESTPAR.FLGOBS'
      FixedChar = True
      Size = 3
    end
    object EstParGERNEG: TStringField
      FieldName = 'GERNEG'
      Origin = 'ISADE.ESTPAR.GERNEG'
      FixedChar = True
      Size = 3
    end
    object EstParCBAINT: TStringField
      FieldName = 'CBAINT'
      Origin = 'ISADE.ESTPAR.CBAINT'
      FixedChar = True
      Size = 3
    end
    object EstParATUFAT: TStringField
      FieldName = 'ATUFAT'
      Origin = 'ISADE.ESTPAR.ATUFAT'
      FixedChar = True
      Size = 3
    end
    object EstParTIPEAN: TStringField
      FieldName = 'TIPEAN'
      Origin = 'ISADE.ESTPAR.TIPEAN'
      FixedChar = True
      Size = 5
    end
    object EstParEXICBA: TStringField
      FieldName = 'EXICBA'
      Origin = 'ISADE.ESTPAR.EXICBA'
      FixedChar = True
      Size = 3
    end
    object EstParRESNEG: TStringField
      FieldName = 'RESNEG'
      Origin = 'ISADE.ESTPAR.RESNEG'
      FixedChar = True
      Size = 3
    end
    object EstParLIBEAN: TStringField
      FieldName = 'LIBEAN'
      Origin = 'ISADE.ESTPAR.LIBEAN'
      FixedChar = True
      Size = 3
    end
    object EstParLANPON: TStringField
      FieldName = 'LANPON'
      Origin = 'ISADE.ESTPAR.LANPON'
      FixedChar = True
      Size = 3
    end
    object EstParINIEAN: TStringField
      FieldName = 'INIEAN'
      Origin = 'ISADE.ESTPAR.INIEAN'
      Size = 9
    end
  end
  object DsPar: TDataSource
    DataSet = EstPar
    Left = 497
    Top = 143
  end
  object UpPar: TUpdateSQL
    ModifySQL.Strings = (
      'update EstPar'
      'set'
      '  TAMCOR = :TAMCOR,'
      '  FLGIPI = :FLGIPI,'
      '  FLGTAM = :FLGTAM,'
      '  FLGNEG = :FLGNEG,'
      '  FLGANT = :FLGANT,'
      '  EXICBA = :EXICBA,'
      '  FLGTAB = :FLGTAB,'
      '  OPEENT = :OPEENT,'
      '  OPESDA = :OPESDA,'
      '  LANTAB = :LANTAB,'
      '  ATUVCR = :ATUVCR,'
      '  LANMIN = :LANMIN,'
      '  ATUPRC = :ATUPRC,'
      '  ATUFAT = :ATUFAT,'
      '  LANCBA = :LANCBA,'
      '  ATUREF = :ATUREF,'
      '  ATUMSU = :ATUMSU,'
      '  FLGOBS = :FLGOBS,'
      '  RESNEG = :RESNEG,'
      '  CBAINT = :CBAINT,'
      '  GERNEG = :GERNEG,'
      '  TIPEAN = :TIPEAN,'
      '  LIBEAN = :LIBEAN,'
      '  LANPON = :LANPON,'
      '  INIEAN = :INIEAN')
    InsertSQL.Strings = (
      'insert into EstPar'
      
        '  (TAMCOR, FLGIPI, FLGTAM, FLGNEG, FLGANT, EXICBA, FLGTAB, OPEEN' +
        'T, OPESDA, '
      
        '   LANTAB, ATUVCR, LANMIN, ATUPRC, ATUFAT, LANCBA, ATUREF, ATUMS' +
        'U, FLGOBS, '
      '   RESNEG, CBAINT, GERNEG, TIPEAN, LIBEAN, LANPON, INIEAN)'
      'values'
      
        '  (:TAMCOR, :FLGIPI, :FLGTAM, :FLGNEG, :FLGANT, :EXICBA, :FLGTAB' +
        ', :OPEENT, '
      
        '   :OPESDA, :LANTAB, :ATUVCR, :LANMIN, :ATUPRC, :ATUFAT, :LANCBA' +
        ', :ATUREF, '
      
        '   :ATUMSU, :FLGOBS, :RESNEG, :CBAINT, :GERNEG, :TIPEAN, :LIBEAN' +
        ', :LANPON, '
      '   :INIEAN)')
    DeleteSQL.Strings = (
      'delete from EstPar'
      'where'
      '  TAMCOR = :OLD_TAMCOR')
    Left = 469
    Top = 171
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 497
    Top = 171
  end
  object StoredProcedure: TStoredProc
    DatabaseName = 'ISade'
    StoredProcName = 'PRC_EST_03'
    Left = 469
    Top = 199
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SEQOPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RETORNO'
        ParamType = ptOutput
        Value = 0
      end>
  end
end
