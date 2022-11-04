inherited fmManLge: TfmManLge
  Left = 173
  Top = 175
  Caption = 'Gerenciamento de contratos'
  ClientHeight = 357
  ClientWidth = 757
  OldCreateOrder = True
  OnShow = FormShow
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
    Width = 143
    Height = 14
    Caption = 'Contratos selecionados'
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
    Left = 156
    Top = 12
    Width = 597
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label8: TLabel
    Left = 6
    Top = 138
    Width = 124
    Height = 14
    Caption = 'Itens não atendidos'
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
    Left = 156
    Top = 145
    Width = 597
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
  object grLg21: TdxDBGraphicEdit
    Left = 4
    Top = 193
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 120
  end
  object grLge1: TdxDBGraphicEdit
    Left = 4
    Top = 60
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
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 78
  end
  object grLge: ThGrid
    Left = 6
    Top = 62
    Width = 745
    Height = 72
    Selected.Strings = (
      'ID_PEDGER'#9'15'#9'Nro. Controle'
      'PEDCLI'#9'25'#9'Nro. Pedido Cliente'
      'DTEGER'#9'10'#9'Emissão'
      'HREGER'#9'8'#9'Hora'
      'TOTGER'#9'15'#9'Total do Pedido'#9'F'
      'SITGER'#9'30'#9'Status')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPedLge
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
    OnEnter = grLgeEnter
    OnKeyDown = grLgeKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 4
    Top = 23
    Width = 750
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
    Width = 744
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
      Width = 76
      Height = 14
      Caption = 'Nro controle'
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
      Left = 111
      Top = 8
      Width = 117
      Height = 14
      Caption = 'Nro. Pedido Cliente'
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
      Left = 292
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
      Left = 365
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
      Left = 453
      Top = 8
      Width = 77
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total pedido'
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
      Left = 535
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
  end
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 4
    Top = 156
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
    Width = 746
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
      Left = 164
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
      Left = 248
      Top = 8
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Em trânsito'
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
      Left = 365
      Top = 8
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Caption = 'Enviado'
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
      Left = 535
      Top = 8
      Width = 83
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor unitário'
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
      Left = 482
      Top = 8
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo'
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
      Left = 663
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
    object Label10: TLabel
      Left = 730
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
  end
  object grLg2: ThGrid
    Left = 6
    Top = 195
    Width = 746
    Height = 114
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao')
    Selected.Strings = (
      'CODITE'#9'18'#9' '
      'QTPGR2'#9'13'#9' '
      'QTSGR2'#9'13'#9' '
      'QTLGR2'#9'13'#9' '
      'SLDGR2'#9'14'#9' '
      'VLQGR2'#9'14'#9' '
      'ULTQTS'#9'14'#9' '
      'FLGRES'#9'3'#9'FLGRES')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPedLg2
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
    OnEnter = grLg2Enter
    OnKeyDown = grLg2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnDesLg2: TPanel
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
  object pnAtender: TPanel
    Left = 245
    Top = 227
    Width = 267
    Height = 46
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 9
    Visible = False
    OnExit = pnAtenderExit
    object Label13: TLabel
      Left = 31
      Top = 15
      Width = 92
      Height = 14
      Caption = 'Qtde atendida:'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdUltQts: TdxDBColorCurrencyEdit
      Left = 128
      Top = 11
      Width = 108
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
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
      DataField = 'ULTQTS'
      DataSource = DsPedLg2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object PedLge: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLge.*,'
      '           PedGer.PedCli,'
      '           PedGer.DteGer,'
      '           PedGer.HreGer,'
      '           PedGer.TotGer,'
      '           PedGer.SitGer'
      
        'From PedLge LEFT JOIN PedGer ON (PedLge.Id_PedGer = PedGer.Id_Pe' +
        'dGer)'
      'Where PedLge.Id_PedRes = :Id_PedRes'
      'Order by PedLge.Id_PedGer')
    Left = 7
    Top = 77
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
        ParamType = ptInput
      end>
    object PedLgeID_PEDGER: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nro. Controle'
      DisplayWidth = 15
      FieldName = 'ID_PEDGER'
    end
    object PedLgePEDCLI: TStringField
      DisplayLabel = 'Nro. Pedido Cliente'
      DisplayWidth = 25
      FieldName = 'PEDCLI'
      Origin = 'ISADE.PEDGER.PEDCLI'
      FixedChar = True
    end
    object PedLgeDTEGER: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEGER'
    end
    object PedLgeHREGER: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREGER'
      Origin = 'ISADE.PEDGER.HREGER'
      FixedChar = True
      Size = 8
    end
    object PedLgeTOTGER: TFloatField
      DisplayLabel = 'Total do Pedido'
      DisplayWidth = 15
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDGER.TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLgeSITGER: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 30
      FieldName = 'SITGER'
      Origin = 'ISADE.PEDGER.SITGER'
      FixedChar = True
      Size = 45
    end
    object PedLgeID_PEDLGE: TIntegerField
      FieldName = 'ID_PEDLGE'
      Visible = False
    end
    object PedLgeID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Visible = False
    end
    object PedLgeFLGRES: TStringField
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLgeFLGITE: TStringField
      FieldName = 'FLGITE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLgeFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object PedLg2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPedLge
    SQL.Strings = (
      'Select PedLg2.*,'
      '           PedGr2.CodClp,'
      '           PedGr2.CodGru,'
      '           PedGr2.CodSub,'
      '           PedGr2.CodPro,'
      '           PedGr2.DesGr2,'
      '           PedGr2.QtpGr2,'
      '           PedGr2.QtsGr2,'
      '           PedGr2.QtlGr2,'
      '           PedGr2.SldGr2,'
      '           PedGr2.VlqGr2'
      
        'From PedLg2 LEFT JOIN PedGr2 ON (PedLg2.Id_PedGr2 = PedGr2.Id_Pe' +
        'dGr2)'
      'Where PedLg2.Id_PedLge = :Id_PedLge'
      'Order by PedGr2.NroGr2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UpPedLg2
    Left = 7
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDLGE'
        ParamType = ptUnknown
      end>
    object PedLg2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = PedLg2CODITEGetText
      Calculated = True
    end
    object PedLg2QTPGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTPGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2QTSGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTSGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2QTLGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTLGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2SLDGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'SLDGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2VLQGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'VLQGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2ULTQTS: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'ULTQTS'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLg2FLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedLg2ID_PEDLG2: TIntegerField
      FieldName = 'ID_PEDLG2'
      Visible = False
    end
    object PedLg2ID_PEDLGE: TIntegerField
      FieldName = 'ID_PEDLGE'
      Visible = False
    end
    object PedLg2ID_PEDGR2: TIntegerField
      FieldName = 'ID_PEDGR2'
      Visible = False
    end
    object PedLg2ID_PEDGR3: TIntegerField
      FieldName = 'ID_PEDGR3'
      Visible = False
    end
    object PedLg2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLg2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLg2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedLg2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedLg2DESGR2: TStringField
      FieldName = 'DESGR2'
      Visible = False
      Size = 70
    end
  end
  object UpPedLg2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLg2'
      'set'
      '  ULTQTS = :ULTQTS'
      'where'
      '  ID_PEDLG2 = :OLD_ID_PEDLG2')
    InsertSQL.Strings = (
      'insert into PedLg2'
      '(ID_PEDLG2, ID_PEDLGE, ID_PEDGR2, ULTQTS, FLGRES, ID_PEDGR3)'
      'values'
      
        '(:ID_PEDLG2, :ID_PEDLGE, :ID_PEDGR2, :ULTQTS, :FLGRES, :ID_PEDGR' +
        '3)')
    DeleteSQL.Strings = (
      'delete from PedLg2'
      'where'
      '  ID_PEDLG2 = :OLD_ID_PEDLG2')
    Left = 7
    Top = 280
  end
  object DsPedLge: TDataSource
    DataSet = PedLge
    Left = 35
    Top = 77
  end
  object DsPedLg2: TDataSource
    DataSet = PedLg2
    OnDataChange = DsPedLg2DataChange
    Left = 35
    Top = 252
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 7
    Top = 105
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.UsaDec From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 35
    Top = 105
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      FixedChar = True
      Size = 3
    end
  end
end
