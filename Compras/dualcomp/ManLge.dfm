inherited fmManLge: TfmManLge
  Left = 173
  Top = 175
  Caption = 'Gerenciamento de Pedidos de Compras'
  ClientHeight = 357
  ClientWidth = 757
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 757
    Height = 357
    Align = alClient
  end
  object Label7: TLabel
    Left = 6
    Top = 5
    Width = 117
    Height = 14
    Caption = 'Pedidos Pendentes'
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
    Left = 207
    Top = 12
    Width = 546
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label8: TLabel
    Left = 6
    Top = 138
    Width = 198
    Height = 14
    Caption = 'Itens não Atendidos/Pendentes'
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
  object Bevel1: TBevel
    Left = 207
    Top = 145
    Width = 546
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object LbText: TLabel
    Left = 6
    Top = 339
    Width = 136
    Height = 16
    Caption = 'ENTER-Alterar Janela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 666
    Top = 339
    Width = 88
    Height = 16
    Caption = 'ESC-Retornar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbPe2: TdxDBGraphicEdit
    Left = 4
    Top = 193
    Width = 753
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 120
  end
  object dbPed: TdxDBGraphicEdit
    Left = 4
    Top = 60
    Width = 752
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
    Height = 78
  end
  object grPed: ThGrid
    Left = 6
    Top = 62
    Width = 746
    Height = 72
    Selected.Strings = (
      'NUMPED'#9'12'#9' '
      'DTEPED'#9'10'#9' '
      'HREPED'#9'8'#9' '
      'TOTPED'#9'12'#9' '
      'TOTIPI'#9'12'#9' '
      'TOTGER'#9'12'#9'Total do Pedido'
      'SITPED'#9'20'#9' '
      'LOGUSU'#9'16'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPed
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grPedKeyDown
    OnKeyUp = grPedKeyUp
    OnMouseUp = grPedMouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 4
    Top = 23
    Width = 751
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
  object grLabel2: TPanel
    Left = 6
    Top = 25
    Width = 745
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label32: TLabel
      Left = 2
      Top = 8
      Width = 71
      Height = 14
      Caption = 'Nro. Pedido'
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
      Left = 91
      Top = 8
      Width = 48
      Height = 14
      Caption = 'Emissão'
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
    object Label23: TLabel
      Left = 165
      Top = 8
      Width = 29
      Height = 14
      Caption = 'Hora'
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
      Left = 241
      Top = 8
      Width = 67
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Itens'
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
    object Label14: TLabel
      Left = 489
      Top = 8
      Width = 53
      Height = 14
      Caption = 'Situação'
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
    object Label11: TLabel
      Left = 342
      Top = 8
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total IPI'
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
    object Label13: TLabel
      Left = 418
      Top = 8
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Geral'
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
    object Label16: TLabel
      Left = 633
      Top = 8
      Width = 76
      Height = 14
      Caption = 'Responsavel'
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
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 4
    Top = 156
    Width = 753
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
    Height = 38
  end
  object Panel1: TPanel
    Left = 6
    Top = 158
    Width = 747
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 2
      Top = 8
      Width = 29
      Height = 14
      Caption = 'Item'
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
      Left = 143
      Top = 8
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Solicitado'
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
    object Label4: TLabel
      Left = 227
      Top = 8
      Width = 57
      Height = 14
      Alignment = taRightJustify
      Caption = 'Atendido'
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
    object Label5: TLabel
      Left = 312
      Top = 8
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pendente'
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
    object Label6: TLabel
      Left = 377
      Top = 8
      Width = 83
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Unitário'
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
    object Label9: TLabel
      Left = 574
      Top = 8
      Width = 64
      Height = 14
      Alignment = taRightJustify
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
    object Label10: TLabel
      Left = 728
      Top = 8
      Width = 7
      Height = 14
      Caption = 'E'
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
    object Label2: TLabel
      Left = 660
      Top = 8
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total IPI'
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
    object Label17: TLabel
      Left = 547
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
    object Label18: TLabel
      Left = 480
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
  end
  object grPe2: ThGrid
    Left = 6
    Top = 195
    Width = 747
    Height = 114
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGENT;CheckBox;Sim;Nao')
    Selected.Strings = (
      'CODITE'#9'17'#9' '
      'QTPPE2'#9'11'#9' '
      'QTRPE2'#9'11'#9' '
      'SLDPE2'#9'12'#9' '
      'VLQPE2'#9'12'#9' '
      'ICMPE2'#9'7'#9' '
      'IPIPE2'#9'7'#9' '
      'TOTPE2'#9'10'#9' '
      'TOTIPI'#9'10'#9' '
      'FLGENT'#9'4'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grPe2KeyDown
    OnKeyUp = grPe2KeyUp
    OnMouseUp = grPe2MouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnDesPe2: TPanel
    Left = 185
    Top = 313
    Width = 569
    Height = 25
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object CmpPed: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPed.*,'
      '           GeRUsu.LogUsu'
      'From CmpPed LEFT JOIN GerUsu ON (CmpPed.CodUsu = GerUsu.CodUsu)'
      'Where CmpPed.CodFor = :CodFor'
      
        '     and (CmpPed.SitPed = '#39'Concluido'#39'  or CmpPed.SitPed = '#39'Receb' +
        'ido Parcialmente'#39')'
      
        '     and Exists(Select * From CmpPe2 Where CodEmp = CmpPed.CodEm' +
        'p'
      
        '                                                              an' +
        'd  DtePed = CmpPed.DtePed'
      
        '                                                              an' +
        'd NumPed = CmpPed.NumPed'
      
        '                                                              an' +
        'd SldPe2 > 0) '
      'Order by CmpPed.NumPed')
    Left = 12
    Top = 246
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object CmpPedNUMPED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'NUMPED'
    end
    object CmpPedDTEPED: TDateTimeField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'DTEPED'
    end
    object CmpPedHREPED: TStringField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'HREPED'
      FixedChar = True
      Size = 8
    end
    object CmpPedTOTPED: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTPED'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTIPI: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedTOTGER: TFloatField
      DisplayLabel = 'Total do Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPedSITPED: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'SITPED'
      FixedChar = True
      Size = 45
    end
    object CmpPedLOGUSU: TStringField
      DisplayLabel = ' '
      DisplayWidth = 16
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object CmpPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpPedCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpPedCONPLC: TIntegerField
      FieldName = 'CONPLC'
      Visible = False
    end
    object CmpPedSUBPLC: TIntegerField
      FieldName = 'SUBPLC'
      Visible = False
    end
    object CmpPedCODPFA: TStringField
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpPedTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedPREPED: TIntegerField
      FieldName = 'PREPED'
      Visible = False
    end
    object CmpPedDPEPED: TDateTimeField
      FieldName = 'DPEPED'
      Visible = False
    end
    object CmpPedCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Visible = False
    end
    object CmpPedVALTMO: TFloatField
      FieldName = 'VALTMO'
      Visible = False
    end
    object CmpPedCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object CmpPedUFEPED: TStringField
      FieldName = 'UFEPED'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPedCODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedNOMCON: TStringField
      FieldName = 'NOMCON'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedCEPENT: TStringField
      FieldName = 'CEPENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpPedTENENT: TStringField
      FieldName = 'TENENT'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPedENDENT: TStringField
      FieldName = 'ENDENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpPedREFENT: TStringField
      FieldName = 'REFENT'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpPedNUMENT: TStringField
      FieldName = 'NUMENT'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPedBAIENT: TStringField
      FieldName = 'BAIENT'
      Visible = False
      FixedChar = True
    end
    object CmpPedCIDENT: TStringField
      FieldName = 'CIDENT'
      Visible = False
      FixedChar = True
    end
    object CmpPedUFEENT: TStringField
      FieldName = 'UFEENT'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPedFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedOBSCND: TStringField
      FieldName = 'OBSCND'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPedOBSPED: TStringField
      FieldName = 'OBSPED'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpPedQTIPED: TIntegerField
      FieldName = 'QTIPED'
      Visible = False
    end
    object CmpPedSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object CmpPedBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object CmpPedBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object CmpPedTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object CmpPedBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object CmpPedMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
    end
    object CmpPedTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object CmpPedMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
    end
    object CmpPedTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object CmpPedLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPedTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpPedBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpPedCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object CmpPedTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPedTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPedREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpPedBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpPedINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpPedINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpPedTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpPedTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object CmpPedFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPedSEQPED: TStringField
      FieldName = 'SEQPED'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object CmpPedFLGTAB: TStringField
      DisplayWidth = 25
      FieldName = 'FLGTAB'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object CmpPedTOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object CmpPedTOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object CmpPedDTEFPE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEFPE'
      Visible = False
    end
    object CmpPedHREFPE: TStringField
      DisplayWidth = 8
      FieldName = 'HREFPE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpPedOBSFPE: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSFPE'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object CmpPedUSUFPE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUFPE'
      Visible = False
    end
    object CmpPedFLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object CmpPe2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPe2.*,'
      
        '           TextoOcor(CmpPe2.CodGru,'#39'.'#39',CmpPe2.CodSub,'#39'.'#39',CmpPe2.' +
        'CodPro,'#39#39','#39#39') as CodITe'
      'From CmpPe2'
      'Where CmpPe2.CodEmp = :CodEmp'
      '     and CmpPe2.DtePed = :DtePed'
      '     and CmpPe2.NumPed = :NumPed'
      '     and (CmpPe2.SldPe2 > 0 or CmpPe2.FlgEnt = '#39'Sim'#39')'
      'Order by CmpPe2.CodEmp,CmpPe2.DtePed,CmpPe2.NumPed,CmpPe2.NroPe2')
    UpdateObject = UpPe2
    Left = 12
    Top = 274
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DtePed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
      end>
    object CmpPe2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 17
      FieldName = 'CODITE'
      FixedChar = True
      Size = 100
    end
    object CmpPe2QTPPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTPPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2QTRPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTRPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2SLDPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'SLDPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2VLQPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLQPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpPe2ICMPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'ICMPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2IPIPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPIPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTPE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'TOTPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2TOTIPI: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2FLGENT: TStringField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 3
    end
    object CmpPe2FLGRES: TStringField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpPe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpPe2DTEPED: TDateTimeField
      FieldName = 'DTEPED'
      Visible = False
    end
    object CmpPe2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Visible = False
    end
    object CmpPe2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
    object CmpPe2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object CmpPe2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpPe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpPe2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpPe2OBSPE2: TStringField
      FieldName = 'OBSPE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpPe2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpPe2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2QTEPE2: TFloatField
      FieldName = 'QTEPE2'
      Visible = False
    end
    object CmpPe2VLUPE2: TFloatField
      FieldName = 'VLUPE2'
      Visible = False
    end
    object CmpPe2DSCPE2: TFloatField
      FieldName = 'DSCPE2'
      Visible = False
    end
    object CmpPe2VDSPE2: TFloatField
      FieldName = 'VDSPE2'
      Visible = False
    end
    object CmpPe2PACPE2: TFloatField
      FieldName = 'PACPE2'
      Visible = False
    end
    object CmpPe2VACPE2: TFloatField
      FieldName = 'VACPE2'
      Visible = False
    end
    object CmpPe2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object CmpPe2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object CmpPe2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object CmpPe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpPe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object CmpPe2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object CmpPe2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object CmpPe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpPe2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpPe2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpPe2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpPe2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpPe2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpPe2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpPe2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpPe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2NROPE2: TIntegerField
      FieldName = 'NROPE2'
      Visible = False
    end
    object CmpPe2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2QTIPE3: TIntegerField
      FieldName = 'QTIPE3'
      Visible = False
    end
    object CmpPe2SEQPE3: TIntegerField
      FieldName = 'SEQPE3'
      Visible = False
    end
    object CmpPe2VLQITE: TFloatField
      DisplayWidth = 10
      FieldName = 'VLQITE'
      Visible = False
    end
    object CmpPe2FLGVAL: TStringField
      DisplayWidth = 3
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPe2FLGLAN: TStringField
      DisplayWidth = 1
      FieldName = 'FLGLAN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPe2VALVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'VALVEN'
      Visible = False
    end
    object CmpPe2TOTVEN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTVEN'
      Visible = False
    end
    object CmpPe2TOTREN: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTREN'
      Visible = False
    end
    object CmpPe2CODPFO: TStringField
      DisplayWidth = 30
      FieldName = 'CODPFO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpPe2QTNPE2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTNPE2'
      Visible = False
    end
    object CmpPe2OBSPE3: TStringField
      DisplayWidth = 100
      FieldName = 'OBSPE3'
      Visible = False
      FixedChar = True
      Size = 100
    end
  end
  object UpPe2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPe2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESPE2 = :DESPE2,'
      '  OBSPE2 = :OBSPE2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  CLSIPI = :CLSIPI,'
      '  QTPPE2 = :QTPPE2,'
      '  QTEPE2 = :QTEPE2,'
      '  QTRPE2 = :QTRPE2,'
      '  SLDPE2 = :SLDPE2,'
      '  VLUPE2 = :VLUPE2,'
      '  VLQPE2 = :VLQPE2,'
      '  DSCPE2 = :DSCPE2,'
      '  VDSPE2 = :VDSPE2,'
      '  PACPE2 = :PACPE2,'
      '  VACPE2 = :VACPE2,'
      '  IPIPE2 = :IPIPE2,'
      '  ICMPE2 = :ICMPE2,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTPE2 = :TOTPE2,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTDSC = :TOTDSC,'
      '  TOTACR = :TOTACR,'
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
      '  FLGDUP = :FLGDUP,'
      '  NROPE2 = :NROPE2,'
      '  QTIPE3 = :QTIPE3,'
      '  SEQPE3 = :SEQPE3,'
      '  FLGRES = :FLGRES,'
      '  VLQITE = :VLQITE,'
      '  FLGVAL = :FLGVAL,'
      '  FLGLAN = :FLGLAN,'
      '  VALVEN = :VALVEN,'
      '  TOTVEN = :TOTVEN,'
      '  TOTREN = :TOTREN,'
      '  CODPFO = :CODPFO,'
      '  QTNPE2 = :QTNPE2,'
      '  OBSPE3 = :OBSPE3,'
      '  FLGENT = :FLGENT'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED and'
      '  SEQPE2 = :OLD_SEQPE2')
    InsertSQL.Strings = (
      'insert into CmpPe2'
      
        '  (CODEMP, DTEPED, NUMPED, SEQPE2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, '
      'CODPRO, '
      
        '   CODTAM, CODCOR, DESPE2, OBSPE2, CODST1, CODST2, CODUND, CLSIP' +
        'I, '
      'QTPPE2, '
      
        '   QTEPE2, QTRPE2, SLDPE2, VLUPE2, VLQPE2, DSCPE2, VDSPE2, PACPE' +
        '2, '
      'VACPE2, '
      
        '   IPIPE2, ICMPE2, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, TOTPE2, '
      
        '   TOTGE2, TOTDSC, TOTACR, CODSTR, TIPSTR, REGIPI, TIPIPI, TRBIP' +
        'I, '
      'REDIPI, '
      
        '   BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFI' +
        'N, FLASEQ, '
      
        '   FLGDUP, NROPE2, QTIPE3, SEQPE3, FLGRES, VLQITE, FLGVAL, FLGLA' +
        'N, '
      'VALVEN, '
      '   TOTVEN, TOTREN, CODPFO, QTNPE2, OBSPE3, FLGENT)'
      'values'
      
        '  (:CODEMP, :DTEPED, :NUMPED, :SEQPE2, :CODEIT, :CODCLP, :CODGRU' +
        ', '
      ':CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESPE2, :OBSPE2, :CODST1, :CODST2' +
        ', '
      ':CODUND, '
      
        '   :CLSIPI, :QTPPE2, :QTEPE2, :QTRPE2, :SLDPE2, :VLUPE2, :VLQPE2' +
        ', :DSCPE2, '
      
        '   :VDSPE2, :PACPE2, :VACPE2, :IPIPE2, :ICMPE2, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTPE2, :TOTGE2, :TOTDSC, :TOTACR' +
        ', '
      ':CODSTR, '
      
        '   :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :FLASEQ, :FLGDUP' +
        ', :NROPE2, '
      
        '   :QTIPE3, :SEQPE3, :FLGRES, :VLQITE, :FLGVAL, :FLGLAN, :VALVEN' +
        ', :TOTVEN, '
      '   :TOTREN, :CODPFO, :QTNPE2, :OBSPE3, :FLGENT)')
    DeleteSQL.Strings = (
      'delete from CmpPe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEPED = :OLD_DTEPED and'
      '  NUMPED = :OLD_NUMPED and'
      '  SEQPE2 = :OLD_SEQPE2')
    Left = 12
    Top = 302
  end
  object DsPed: TDataSource
    DataSet = CmpPed
    OnDataChange = DsPedDataChange
    Left = 40
    Top = 246
  end
  object DsPe2: TDataSource
    DataSet = CmpPe2
    OnDataChange = DsPe2DataChange
    Left = 40
    Top = 274
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 40
    Top = 302
  end
end
