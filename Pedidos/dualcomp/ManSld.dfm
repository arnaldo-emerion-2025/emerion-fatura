inherited fmManSld: TfmManSld
  Left = 0
  Caption = 'Pedidos com Saldo Pendente para Faturamento'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 786
    Height = 482
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 4
    Top = 9
    Width = 131
    Height = 14
    Caption = 'Pedidos Selecionados'
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
    Left = 143
    Top = 16
    Width = 49
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 5
    Top = 247
    Width = 109
    Height = 14
    Caption = 'Saldos Pendentes'
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
  object Bevel3: TBevel
    Left = 143
    Top = 254
    Width = 127
    Height = 4
    Shape = bsTopLine
    Style = bsRaised
  end
  object bFinalizar: TSpeedButton
    Left = 291
    Top = 452
    Width = 247
    Height = 28
    Hint = 'Saldo não Sera Atendido'
    Caption = 'F3 - Saldo não Sera Atendido'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      B60A0000424DB60A0000000000003600000028000000200000001C0000000100
      180000000000800A0000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000000000
      0000FF0020000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF0020FF
      0020FF0020A00000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF0020FF0020FF
      0020FF0020A00000A00000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0000000000000A0A8A0707070707070000000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF0020FF0020FF
      0020FF0020A00000A00000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0000000A0A8A0A0A8A0A0A8A07070707070707070700000
      00C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF0020FF0020FF
      0020FF9050A00000A00000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070707070707070
      70000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF0020FF9050FF
      9050FF9050FF9050A00000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070700000007070
      70707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000FF9050FF9050FF
      9050FF9050FF9050FF9050000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0000000000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000000000
      00707070707070000000000000000000000000000000CFC8CF000000FF9050FF
      9050FF9050FF9050000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      000000A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000005000
      0000000070707000000000B700506800506800506800000000C0CFD0000000FF
      9050000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000005000
      0050000000000000B70000B70000B70000B700506800506800000000C0CFD000
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000005000
      0050000000000000D80000B70000B70000B70000B700506800000000C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000005000
      0050000000000000D80000B70000B70000B70000B700506800000000C0CFD0C0
      CFD0C0CFD00000000000000000FF000000C0CFD0C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070705000005000
      0050000000000000000000D80000B70000B70000B70000B700000000C0CFD000
      00000000000000FF0000FF0000FF00007F000000C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0A0A8A07070707070707070705000
      0050000050000000000000000000D80000D80000B700000000C0CFD0000000A0
      90FF0000FF0000FF0000FF0000FF00007F00007F000000C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0A0A8A0A0A8A0D0D7D0D0D7D07070707070707070
      70500000500000000000000000000000000000000000C0CFD0C0CFD0000000A0
      90FF0000FF0000FF0000FF0000FF00007F00007F000000C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000A0A8A0D0D7D0D0D7D0D0D7D0D0D7D0D0D7D07070707070
      70707070500000000000707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000
      0000A090FF0000FF0000FF00007F00007F000000C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0000000D0D7D0D0D7D0D0D7D0D0D7D0D0D7D0D0D7D0D0D7D07070
      70707070707070000000707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000A090FF0000FF00007F00007F000000C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0A0A8A0000000D0D7D0D0D7D0D0D7D0D0D7D0D0D7D0D0D7D0D0D7
      D0707070707070707070707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000A090FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0000000
      A0A8A0A0A8A0A0A8A0A0A8A0000000D0D7D0D0D7D0D0D7D0D0D7D0D0D7D0D0D7
      D0D0D7D0707070707070707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0000000A090FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      000000D0D7D0D0D7D0D0D7D0D0D7D0000000D0D7D0D0D7D0D0D7D0D0D7D0D0D7
      D0D0D7D0D0D7D0707070707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0000000D0D7D0D0D7D0D0D7D0D0D7D0000000D0D7D0D0D7D0D0D7D0D0D7
      D0D0D7D0D0D7D0D0D7D0707070000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0000000D0D7D0D0D7D0D0D7D0D0D7D0000000D0D7D0D0D7D0D0D7
      D0D0D7D0D0D7D0D0D7D0D0D7D0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0000000000000D0D7D0D0D7D0D0D7D0000000D0D7D0D0D7
      D0D0D7D0D0D7D0D0D7D0000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000000000D0D7
      D0D0D7D0000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000
      00000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    ParentFont = False
    OnClick = bFinalizarClick
  end
  object bImprimir: TSpeedButton
    Left = 539
    Top = 452
    Width = 247
    Height = 28
    Hint = 'Imprimir Saldo do Pedido'
    Caption = 'F5 - Imp Saldo Pedido'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000
      000000000000000000000000000000000000000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD080808080808080808080808080808080808080
      8080808080808080808080808080808080808080000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0008000008000C0C0C0808080808080000000000000C0CFD0C0CFD0C0CF
      D0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      FF00008000C0C0C0808080808080808080000000C0CFD0C0CFD0C0CFD0808080
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000FFFFFFFFFFFFC0
      C0C0808080000000C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF000000808080
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000C0C0C0FFFFFFC0C0
      C0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF808080FFFFFFFF
      0000FF0000FF0000FF0000FFFFFF808080000000808080C0C0C0FFFFFF000000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000808080FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080000000000000000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000
      FF0000FFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000FF0000FFFF
      FF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0808080808080808080808080808080808080808080808080C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0}
    ParentFont = False
    OnClick = bImprimirClick
  end
  object dbRe2: TdxDBGraphicEdit
    Left = 0
    Top = 271
    Width = 786
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 180
  end
  object dbRes: TdxDBGraphicEdit
    Left = 0
    Top = 31
    Width = 786
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 209
  end
  object grRes: ThGrid
    Tag = 1
    Left = 2
    Top = 33
    Width = 780
    Height = 203
    Selected.Strings = (
      'NUMRES'#9'7'#9'No. Pedido'#9'F'
      'CODCLI'#9'7'#9'Cliente'#9'F'
      'NOMPFA'#9'32'#9'Padrão de Faturamento'#9'F'
      'TOTRES'#9'10'#9' Total Itens'#9'F'
      'TOTGER'#9'12'#9'   Total Pedido'#9'F'
      'FATGER'#9'10'#9'     Faturado'#9'F'
      'DEVGER'#9'10'#9'    Devolvido'#9'F'
      'SLDGER'#9'10'#9'            Saldo'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRes
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel1: TPanel
    Left = 194
    Top = 2
    Width = 383
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Emitidos no Periodo de                             a'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object EdPsqDteres1: TdxColorDateEdit
      Left = 152
      Top = 3
      Width = 102
      Color = 16577773
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Date = -700000
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      StoredValues = 4
    end
    object EdPsqDteres2: TdxColorDateEdit
      Left = 278
      Top = 3
      Width = 102
      Color = 16577773
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      Date = -700000
      SaveTime = False
      UseEditMask = True
      CorDeFoco = clInfoBk
      StoredValues = 4
    end
  end
  object pnDteRes: TPanel
    Left = 625
    Top = 241
    Width = 158
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Emitido Em '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object grRe2: ThGrid
    Tag = 1
    Left = 2
    Top = 273
    Width = 780
    Height = 174
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'
      'DESRE2'#9'57'#9' '
      'SLDRE2'#9'10'#9'            Saldo'
      'VLQRE2'#9'10'#9'        Unitário'
      'TOTITE'#9'10'#9'     Total Item')
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
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnNomCli: TPanel
    Left = 272
    Top = 241
    Width = 352
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Cliente :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object bAtualizar: TBitBtn
    Left = 579
    Top = 2
    Width = 205
    Height = 29
    Caption = '&Localizar Pedidos'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = batualizarClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF
      0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0FF0000
      FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF00
      00FF0000C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0FF0000FF0000C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF00
      00FF0000FF0000C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000FF0000C0CFD0C0CFD0FF0000
      FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF00
      00FF0000FF0000C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0FF0000FF0000FF0000FF0000FF0000C0CFD0C0CFD0C0CFD0
      C0CFD0FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D0C0CFD0FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF
      0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.CodEmp,'
      '           PedRes.DteRes,'
      '           PedRes.NumRes,'
      '           PedRes.HreRes,'
      '           PedRes.UfeRes,'
      '           PedRes.PedAnt,'
      '           PedRes.DtfRes,'
      '           PedRes.LanEst,'
      '           PedRes.CodFil,'
      '           PedRes.CodCli,'
      '           PedRes.CgcCli,'
      '           PedRes.TenCli,'
      '           PedRes.EndCli,'
      '           PedRes.NumCli,'
      '           PedRes.BaiCli,'
      '           PedRes.CidCli,'
      '           PedRes.UfeCli,'
      '           PedRes.CepCli,'
      '           PedRes.CodTip,'
      '           PedRes.CodVen,'
      '           PedRes.CodTra,'
      '           PedRes.TotRes,'
      '           PedRes.TotGer,'
      '           PedRes.FatGer,'
      '           PedRes.DevGer,'
      '           PedRes.SldGer,'
      '           PedRes.MedAcr,'
      '           PedRes.DscReg,'
      '           PedRes.MedDco,'
      '           PedRes.TotDco,'
      '           PedRes.TotDsr,'
      '           PedRes.QtiRes,'
      '           PedRes.QtpRes,'
      '           PedRes.ObsRes,'
      '           PedRes.LibSld,'
      '           PedRes.SitRes,'
      '           FinCli.NomCli,'
      '           FormatCgcCpf(PedRes.CgcCli) as CgcCpf,'
      
        '           TextoOcor(PedRes.CodPfa,'#39'-'#39',EstPfa.DsrPfa,'#39#39','#39#39','#39#39','#39#39 +
        ') as NomPfa'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      
        '                    LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.' +
        'CodPfa)'
      
        '                                                AND (PedRes.TipP' +
        'fa = EstPfa.TipPfa)'
      'Where PedRes.SitRes = '#39'Parcialmente Faturado'#39' '
      '     and PedRes.LibSld = '#39'Nao'#39
      'Order by PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 5
    Top = 177
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 7
      FieldName = 'NUMRES'
    end
    object PedResCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'CODCLI'
    end
    object PedResNOMPFA: TStringField
      DisplayLabel = 'Padrão de Faturamento'
      DisplayWidth = 32
      FieldName = 'NOMPFA'
      FixedChar = True
      Size = 100
    end
    object PedResTOTRES: TFloatField
      DisplayLabel = ' Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = '   Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFATGER: TFloatField
      DisplayLabel = '     Faturado'
      DisplayWidth = 10
      FieldName = 'FATGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVGER: TFloatField
      DisplayLabel = '    Devolvido'
      DisplayWidth = 10
      FieldName = 'DEVGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDGER: TFloatField
      DisplayLabel = '            Saldo'
      DisplayWidth = 10
      FieldName = 'SLDGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedResDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedResLIBSLD: TStringField
      FieldName = 'LIBSLD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object PedResNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedResCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object PedResCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Visible = False
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Visible = False
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
    end
    object PedResTENCLI: TStringField
      FieldName = 'TENCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedResENDCLI: TStringField
      FieldName = 'ENDCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedResNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedResBAICLI: TStringField
      FieldName = 'BAICLI'
      Visible = False
      FixedChar = True
    end
    object PedResCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Visible = False
      FixedChar = True
    end
    object PedResUFECLI: TStringField
      FieldName = 'UFECLI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedResCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
    end
    object PedResMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      Visible = False
    end
    object PedResTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
      Visible = False
    end
    object PedResOBSRES: TStringField
      FieldName = 'OBSRES'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object PedResQTIRES: TIntegerField
      FieldName = 'QTIRES'
      Visible = False
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTFRES: TDateTimeField
      FieldName = 'DTFRES'
      Visible = False
    end
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResUFERES: TStringField
      FieldName = 'UFERES'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedResCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
  end
  object DsRes: TwwDataSource
    DataSet = PedRes
    OnDataChange = DsResDataChange
    Left = 33
    Top = 177
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 69
    Top = 205
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Emerion Consultoria e Sist de Inf Ltda'
    RegistroUsuario.SerieProduto = 'SINGLE-0407/01065'
    RegistroUsuario.AutorizacaoKey = 'BBCL-1878-VBFC-6009-GNHN'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padrão PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RDprint1NewPage
    Left = 97
    Top = 205
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  HRERES = :HRERES,'
      '  UFERES = :UFERES,'
      '  PEDANT = :PEDANT,'
      '  DTFRES = :DTFRES,'
      '  LANEST = :LANEST,'
      '  CODFIL = :CODFIL,'
      '  CODCLI = :CODCLI,'
      '  CGCCLI = :CGCCLI,'
      '  TENCLI = :TENCLI,'
      '  ENDCLI = :ENDCLI,'
      '  NUMCLI = :NUMCLI,'
      '  BAICLI = :BAICLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFECLI = :UFECLI,'
      '  CEPCLI = :CEPCLI,'
      '  CODTIP = :CODTIP,'
      '  CODVEN = :CODVEN,'
      '  CODTRA = :CODTRA,'
      '  TOTRES = :TOTRES,'
      '  TOTGER = :TOTGER,'
      '  FATGER = :FATGER,'
      '  DEVGER = :DEVGER,'
      '  SLDGER = :SLDGER,'
      '  MEDACR = :MEDACR,'
      '  DSCREG = :DSCREG,'
      '  MEDDCO = :MEDDCO,'
      '  TOTDCO = :TOTDCO,'
      '  TOTDSR = :TOTDSR,'
      '  QTIRES = :QTIRES,'
      '  QTPRES = :QTPRES,'
      '  OBSRES = :OBSRES,'
      '  LIBSLD = :LIBSLD,'
      '  SITRES = :SITRES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      
        '  (CODEMP, DTERES, NUMRES, HRERES, UFERES, PEDANT, DTFRES, LANES' +
        'T, '
      'CODFIL, '
      
        '   CODCLI, CGCCLI, TENCLI, ENDCLI, NUMCLI, BAICLI, CIDCLI, UFECL' +
        'I, CEPCLI, '
      
        '   CODTIP, CODVEN, CODTRA, TOTRES, TOTGER, FATGER, DEVGER, SLDGE' +
        'R, '
      'MEDACR, '
      
        '   DSCREG, MEDDCO, TOTDCO, TOTDSR, QTIRES, QTPRES, OBSRES, LIBSL' +
        'D, '
      'SITRES)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :HRERES, :UFERES, :PEDANT, :DTFRES' +
        ', '
      ':LANEST, '
      
        '   :CODFIL, :CODCLI, :CGCCLI, :TENCLI, :ENDCLI, :NUMCLI, :BAICLI' +
        ', :CIDCLI, '
      
        '   :UFECLI, :CEPCLI, :CODTIP, :CODVEN, :CODTRA, :TOTRES, :TOTGER' +
        ', '
      ':FATGER, '
      
        '   :DEVGER, :SLDGER, :MEDACR, :DSCREG, :MEDDCO, :TOTDCO, :TOTDSR' +
        ', '
      ':QTIRES, '
      '   :QTPRES, :OBSRES, :LIBSLD, :SITRES)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 4
    Top = 205
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    Left = 97
    Top = 177
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsRes
    SQL.Strings = (
      'Select PedRe2.*,'
      '           Round(SldRe2 * VlqRe2,2) as TotIte,'
      
        '           CodGru || _UNICODE_FSS '#39'.'#39' || CodSub || _UNICODE_FSS ' +
        #39'.'#39' || CodPro as DscPro From PedRe2'
      'Where CodEmp = :CodEmp'
      '     and DteRes = :DteRes'
      '     and NumRes = :NumRes'
      '     and SldRe2 > 0'
      'Order by CodEmp,DteRes,NumRes,NroRe2')
    ValidateWithMask = True
    Left = 69
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end>
    object PedRe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 57
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2SLDRE2: TFloatField
      DisplayLabel = '            Saldo'
      DisplayWidth = 10
      FieldName = 'SLDRE2'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '        Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTITE: TFloatField
      DisplayLabel = '     Total Item'
      DisplayWidth = 10
      FieldName = 'TOTITE'
    end
    object PedRe2IPIRE2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPIRE2'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object PedRe2ICMRE2: TFloatField
      DisplayLabel = '   ICMS'
      DisplayWidth = 4
      FieldName = 'ICMRE2'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      DisplayLabel = '  % Markup'
      DisplayWidth = 5
      FieldName = 'TOTREN'
      Visible = False
    end
    object PedRe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedRe2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedRe2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedRe2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object PedRe2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object PedRe2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
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
    object PedRe2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedRe2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedRe2OBSRE2: TStringField
      FieldName = 'OBSRE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedRe2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedRe2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2LIQRE2: TFloatField
      FieldName = 'LIQRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2BRTRE2: TFloatField
      FieldName = 'BRTRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2LINRE2: TIntegerField
      FieldName = 'LINRE2'
      Visible = False
    end
    object PedRe2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Visible = False
    end
    object PedRe2CODPRM: TIntegerField
      FieldName = 'CODPRM'
      Visible = False
    end
    object PedRe2QTPRE2: TFloatField
      FieldName = 'QTPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2QTSRE2: TFloatField
      FieldName = 'QTSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2QTFRE2: TFloatField
      FieldName = 'QTFRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2QTDRE2: TFloatField
      FieldName = 'QTDRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2ULTQTS: TFloatField
      FieldName = 'ULTQTS'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VLURE2: TFloatField
      FieldName = 'VLURE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VCHRE2: TFloatField
      FieldName = 'VCHRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VRERE2: TFloatField
      FieldName = 'VRERE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VCPRE2: TFloatField
      FieldName = 'VCPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VPRRE2: TFloatField
      FieldName = 'VPRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VCSRE2: TFloatField
      FieldName = 'VCSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2DSCRE2: TFloatField
      FieldName = 'DSCRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VDSRE2: TFloatField
      FieldName = 'VDSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2DSPRE2: TFloatField
      FieldName = 'DSPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VDPRE2: TFloatField
      FieldName = 'VDPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2DSRRE2: TFloatField
      FieldName = 'DSRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VDRRE2: TFloatField
      FieldName = 'VDRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2PACRE2: TFloatField
      FieldName = 'PACRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2VACRE2: TFloatField
      FieldName = 'VACRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CODCOM: TStringField
      FieldName = 'CODCOM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2PCORE2: TFloatField
      FieldName = 'PCORE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedRe2CLFRE2: TStringField
      FieldName = 'CLFRE2'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTRE2: TFloatField
      FieldName = 'TOTRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedRe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedRe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object PedRe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedRe2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2FLGRES: TStringField
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedRe2SEQPR2: TIntegerField
      FieldName = 'SEQPR2'
      Visible = False
    end
    object PedRe2CSTRE2: TFloatField
      FieldName = 'CSTRE2'
      Visible = False
    end
    object PedRe2VCRRE2: TFloatField
      FieldName = 'VCRRE2'
      Visible = False
    end
    object PedRe2DSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Visible = False
    end
    object PedRe2VDSCOM: TFloatField
      FieldName = 'VDSCOM'
      Visible = False
    end
    object PedRe2TOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedRe2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2EMPGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPGER'
      Visible = False
    end
    object PedRe2DTEGER: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEGER'
      Visible = False
    end
    object PedRe2NUMGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMGER'
      Visible = False
    end
    object PedRe2SEQGR2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGR2'
      Visible = False
    end
    object PedRe2PEDCLI: TStringField
      DisplayWidth = 20
      FieldName = 'PEDCLI'
      Visible = False
      FixedChar = True
    end
    object PedRe2FLGREQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2QTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Visible = False
    end
    object PedRe2CODVWA: TStringField
      DisplayWidth = 14
      FieldName = 'CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
  end
  object quSQL1: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 205
  end
end
