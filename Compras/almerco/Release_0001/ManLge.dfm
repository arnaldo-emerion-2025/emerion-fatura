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
      'ID_CMPPED'#9'12'#9' '
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
      'Select CmpPed.Id_CmpPed,'
      '           CmpPed.DtePed,'
      '           CmpPed.HrePed,'
      '           CmpPed.TotPed,'
      '           CmpPed.TotIpi,'
      '           CmpPed.TotSub,'
      '           CmpPed.TotGer,'
      '           CmpPed.SitPed,'
      '           GeRUsu.LogUsu'
      'From CmpPed LEFT JOIN GerUsu ON (CmpPed.CodUsu = GerUsu.CodUsu)'
      'Where CmpPed.CodFor = :CodFor'
      
        '     and (CmpPed.SitPed = '#39'Concluido'#39'  or CmpPed.SitPed = '#39'Receb' +
        'ido Parcialmente'#39')'
      
        '     and Exists(Select * From CmpPe2 Where CmpPe2.Id_CmpPed = Cm' +
        'pPed.Id_CmpPed'
      
        '                                                              an' +
        'd CmpPe2.SldPe2 > 0) '
      'Order by CmpPed.Id_CmpPed')
    Left = 7
    Top = 105
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object CmpPedID_CMPPED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'ID_CMPPED'
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
    object CmpPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
  end
  object CmpPe2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPed
    SQL.Strings = (
      'Select CmpPe2.Id_CmpPe2,'
      '           CmpPe2.CodClp,'
      '           CmpPe2.CodGru,'
      '           CmpPe2.CodSub,'
      '           CmpPe2.CodPro,'
      '           CmpPe2.DesPe2,'
      '           CmpPe2.QtpPe2,'
      '           CmpPe2.QtrPe2,'
      '           CmpPe2.SldPe2,'
      '           CmpPe2.VlqPe2,'
      '           CmpPe2.IcmPe2,'
      '           CmpPe2.IpiPe2,'
      '           CmpPe2.TotPe2,'
      '           CmpPe2.TotIpi,'
      '           CmpPe2.FlgEnt,'
      '           CmpPe2.FlgAtu'
      'From CmpPe2'
      'Where CmpPe2.Id_CmpPed = :Id_CmpPed'
      '     and (CmpPe2.SldPe2 > 0 or CmpPe2.FlgEnt = '#39'Sim'#39')'
      'Order by CmpPe2.NroPe2')
    UpdateObject = UpPe2
    Left = 7
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPPED'
        ParamType = ptUnknown
      end>
    object CmpPe2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = CmpPe2CODITEGetText
      Calculated = True
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
    object CmpPe2ID_CMPPE2: TIntegerField
      FieldName = 'ID_CMPPE2'
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
    object CmpPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Visible = False
      Size = 70
    end
    object CmpPe2FLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UpPe2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPe2'
      'set'
      '  FLGENT = :FLGENT,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_CMPPE2 = :OLD_ID_CMPPE2')
    InsertSQL.Strings = (
      'insert into CmpPe2'
      '  (ID_CMPPE2, CODCLP, CODGRU, CODSUB, CODPRO, DESPE2, QTPPE2, '
      'QTRPE2, SLDPE2, '
      '   VLQPE2, ICMPE2, IPIPE2, TOTPE2, TOTIPI, FLGENT, FLGATU)'
      'values'
      
        '  (:ID_CMPPE2, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DESPE2, :QTP' +
        'PE2, '
      ':QTRPE2, '
      
        '   :SLDPE2, :VLQPE2, :ICMPE2, :IPIPE2, :TOTPE2, :TOTIPI, :FLGENT' +
        ', :FLGATU)')
    DeleteSQL.Strings = (
      'delete from CmpPe2'
      'where'
      '  ID_CMPPE2 = :OLD_ID_CMPPE2')
    Left = 7
    Top = 280
  end
  object DsPed: TDataSource
    DataSet = CmpPed
    Left = 35
    Top = 105
  end
  object DsPe2: TDataSource
    DataSet = CmpPe2
    OnDataChange = DsPe2DataChange
    Left = 35
    Top = 252
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 35
    Top = 280
  end
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 280
  end
end
