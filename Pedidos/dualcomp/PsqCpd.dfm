inherited fmPsqCpd: TfmPsqCpd
  Left = 181
  Top = 179
  Caption = 'Analise do Pedido'
  ClientHeight = 436
  ClientWidth = 759
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 759
    Height = 436
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 2
    Top = 8
    Width = 98
    Height = 14
    Caption = 'Itens do Pedido'
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
  object Bevel2: TBevel
    Left = 108
    Top = 15
    Width = 8
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 700
    Top = 417
    Width = 54
    Height = 16
    Caption = 'ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label46: TLabel
    Left = 22
    Top = 393
    Width = 258
    Height = 16
    Caption = 'Item Aguardando Lançamento de Custo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 29
    Width = 756
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
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 257
  end
  object grRe2: ThGrid
    Tag = 1
    Left = 3
    Top = 32
    Width = 750
    Height = 250
    Selected.Strings = (
      'CODITE'#9'20'#9'Item'#9'F'
      'TOTBRT'#9'10'#9'      Total Bruto'#9'F'
      'TOTGE2'#9'10'#9'      Total Liq'#9'F'
      'TOTCST'#9'10'#9'        Ct - PED'#9'F'
      'CSTPFI'#9'10'#9'        Ct - UC'#9'F'
      'CSTVME'#9'10'#9'       Ct - ME'#9'F'
      'DSCPER'#9'10'#9'      Desc Per'#9'F'
      'TOTDSC'#9'10'#9'      Desc Prat'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    OnDrawDataCell = grRe2DrawDataCell
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnDesRe2: TPanel
    Left = 118
    Top = 4
    Width = 482
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 3
    Top = 288
    Width = 151
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' % Diferença Descontos'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnTotal01: TPanel
    Left = 166
    Top = 288
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel3: TPanel
    Left = 154
    Top = 288
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Panel4: TPanel
    Left = 3
    Top = 313
    Width = 151
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' % Mk Bruto'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Panel5: TPanel
    Left = 154
    Top = 313
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object pnTotal02: TPanel
    Left = 166
    Top = 313
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object Panel7: TPanel
    Left = 3
    Top = 338
    Width = 151
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' % Mk Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Panel8: TPanel
    Left = 154
    Top = 338
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object pnTotal03: TPanel
    Left = 166
    Top = 338
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Panel10: TPanel
    Left = 257
    Top = 288
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Lucro Bruto'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object Panel11: TPanel
    Left = 408
    Top = 288
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object pnTotal04: TPanel
    Left = 420
    Top = 288
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object Panel13: TPanel
    Left = 257
    Top = 313
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Lucro Liquido'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object Panel14: TPanel
    Left = 408
    Top = 313
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object pnTotal05: TPanel
    Left = 420
    Top = 313
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object Panel16: TPanel
    Left = 511
    Top = 288
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Preço de Tabela'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object Panel17: TPanel
    Left = 662
    Top = 288
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object pnTotal07: TPanel
    Left = 674
    Top = 288
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,0000 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object Panel19: TPanel
    Left = 511
    Top = 313
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Preço Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
  end
  object Panel20: TPanel
    Left = 662
    Top = 313
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
  end
  object pnTotal08: TPanel
    Left = 674
    Top = 313
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,0000 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
  end
  object Panel22: TPanel
    Left = 257
    Top = 338
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Acresc Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
  end
  object Panel23: TPanel
    Left = 408
    Top = 338
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
  end
  object pnTotal06: TPanel
    Left = 420
    Top = 338
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
  end
  object Panel25: TPanel
    Left = 511
    Top = 338
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Desc Permitido'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 27
  end
  object Panel26: TPanel
    Left = 662
    Top = 338
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
  end
  object pnTotal09: TPanel
    Left = 674
    Top = 338
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 29
  end
  object EdFlgInc: TdxDBCheckEdit
    Left = 2
    Top = 393
    Width = 17
    Color = 16644596
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clRed
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 30
    TabStop = False
    Alignment = taCenter
    AutoSize = False
    DataField = 'LANCST'
    DataSource = DsRe2
    ValueChecked = 'Sim'
    ValueGrayed = 'Nao'
    ValueUnchecked = 'Nao'
    NullStyle = nsInactive
    Height = 17
    StoredValues = 1
  end
  object Panel2: TPanel
    Left = 511
    Top = 389
    Width = 151
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Entrada de Compra No.'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
  end
  object Panel6: TPanel
    Left = 662
    Top = 389
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
  end
  object pnNumEnt: TPanel
    Left = 674
    Top = 389
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0 '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 33
  end
  object pnTotal10: TPanel
    Left = 654
    Top = 4
    Width = 100
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,0000 '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 34
  end
  object Panel12: TPanel
    Left = 601
    Top = 4
    Width = 53
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Qtde : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 35
  end
  object Panel9: TPanel
    Left = 375
    Top = 288
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 36
  end
  object Panel15: TPanel
    Left = 375
    Top = 313
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 37
  end
  object Panel18: TPanel
    Left = 511
    Top = 363
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Desc Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 38
  end
  object Panel21: TPanel
    Left = 662
    Top = 363
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 39
  end
  object pnTotal11: TPanel
    Left = 674
    Top = 363
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 40
  end
  object Panel24: TPanel
    Left = 3
    Top = 363
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Custo Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 41
  end
  object Panel27: TPanel
    Left = 154
    Top = 363
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 42
  end
  object pnVcsRe2: TPanel
    Left = 166
    Top = 363
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 43
  end
  object Panel29: TPanel
    Left = 408
    Top = 363
    Width = 12
    Height = 23
    BevelOuter = bvNone
    Caption = ' : '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 44
  end
  object pnTotIpc: TPanel
    Left = 420
    Top = 363
    Width = 82
    Height = 23
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' 0,00 '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 45
  end
  object Panel32: TPanel
    Left = 375
    Top = 363
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 46
  end
  object Panel28: TPanel
    Left = 257
    Top = 363
    Width = 118
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Total IPI Praticado'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 47
  end
  object Panel30: TPanel
    Left = 121
    Top = 363
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 48
  end
  object Panel31: TPanel
    Left = 375
    Top = 338
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 49
  end
  object Panel33: TPanel
    Left = 629
    Top = 338
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 50
  end
  object Panel34: TPanel
    Left = 629
    Top = 363
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 51
  end
  object Panel35: TPanel
    Left = 629
    Top = 313
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 52
  end
  object Panel36: TPanel
    Left = 629
    Top = 288
    Width = 33
    Height = 23
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' (R$) '
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 53
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRe2.CodGru,'
      '           PedRe2.CodSub,'
      '           PedRe2.CodPro,'
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.VluRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.VcsRe2,'
      '           PedRe2.TotIpc,'
      '           PedRe2.DscRe2,'
      '           PedRe2.PacRe2,'
      '           PedRe2.VacRe2,'
      '           PedRe2.DsrRe2,'
      '           PedRe2.VmeCst,'
      '           PedRe2.VpfCst,'
      '           PedRe2.TotRen,'
      '           PedRe2.NumEnt,'
      '           PedRe2.LanCst,'
      '           PedRe2.TotPer,'
      '           PedRe2.TotGe2,'
      
        '           PedRe2.QtpRe2 * ( PedRe2.VluRe2 - PedRe2.VdrRe2 ) as ' +
        'TotBrt,'
      '           PedRe2.TotCst,'
      '           PedRe2.QtpRe2 * PedRe2.VpfCst as CstPfi,'
      '           PedRe2.QtpRe2 * PedRe2.VmeCst as CstVme,'
      
        '           PedRe2.QtpRe2 * (( PedRe2.VluRe2 * PedRe2.DscPer )/10' +
        '0) as DscPer,'
      '           PedRe2.TotDsc,'
      '           PedRe2.DifDsc,'
      '           PedRe2.MarPre,'
      '           PedRe2.MarPed,'
      '           PedRe2.LucroP,'
      '           PedRe2.LucroL,'
      
        '           PedRe2.SldRe2 * ( PedRe2.VlqRe2 - PedRe2.VdrRe2 ) as ' +
        'TotNat'
      'From PedRe2 '
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 64
    Top = 165
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteRes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumRes'
        ParamType = ptInput
      end>
    object PedRe2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = PedRe2CODITEGetText
      Calculated = True
    end
    object PedRe2TOTBRT: TFloatField
      DisplayLabel = '      Total Bruto'
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2TOTGE2: TFloatField
      DisplayLabel = '      Total Liq'
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2TOTCST: TFloatField
      DisplayLabel = '        Ct - PED'
      DisplayWidth = 10
      FieldName = 'TOTCST'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2CSTPFI: TFloatField
      DisplayLabel = '        Ct - UC'
      DisplayWidth = 10
      FieldName = 'CSTPFI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2CSTVME: TFloatField
      DisplayLabel = '       Ct - ME'
      DisplayWidth = 10
      FieldName = 'CSTVME'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2DSCPER: TFloatField
      DisplayLabel = '      Desc Per'
      DisplayWidth = 10
      FieldName = 'DSCPER'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2TOTDSC: TFloatField
      DisplayLabel = '      Desc Prat'
      DisplayWidth = 10
      FieldName = 'TOTDSC'
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2TOTPER: TFloatField
      DisplayLabel = '    Bruto - Desc'
      DisplayWidth = 10
      FieldName = 'TOTPER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedRe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedRe2DESRE2: TStringField
      FieldName = 'DESRE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedRe2VLURE2: TFloatField
      FieldName = 'VLURE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VLQRE2: TFloatField
      FieldName = 'VLQRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2DSCRE2: TFloatField
      FieldName = 'DSCRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2PACRE2: TFloatField
      FieldName = 'PACRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2DSRRE2: TFloatField
      FieldName = 'DSRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2VMECST: TFloatField
      FieldName = 'VMECST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2VPFCST: TFloatField
      FieldName = 'VPFCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2NUMENT: TIntegerField
      FieldName = 'NUMENT'
      Visible = False
    end
    object PedRe2LANCST: TStringField
      FieldName = 'LANCST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2TOTNAT: TFloatField
      FieldName = 'TOTNAT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2DIFDSC: TFloatField
      FieldName = 'DIFDSC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2MARPRE: TFloatField
      FieldName = 'MARPRE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2MARPED: TFloatField
      FieldName = 'MARPED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2LUCROP: TFloatField
      FieldName = 'LUCROP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2LUCROL: TFloatField
      FieldName = 'LUCROL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2QTPRE2: TFloatField
      FieldName = 'QTPRE2'
      Visible = False
    end
    object PedRe2TOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object PedRe2VCSRE2: TFloatField
      FieldName = 'VCSRE2'
      Visible = False
    end
    object PedRe2TOTIPC: TFloatField
      FieldName = 'TOTIPC'
      Visible = False
    end
    object PedRe2VACRE2: TFloatField
      FieldName = 'VACRE2'
      Visible = False
    end
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    OnDataChange = DsRe2DataChange
    Left = 92
    Top = 165
  end
end
