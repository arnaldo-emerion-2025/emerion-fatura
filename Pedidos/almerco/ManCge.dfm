inherited fmManCge: TfmManCge
  Left = 173
  Top = 175
  Caption = 'Gerenciamento de Contratos'
  ClientHeight = 338
  ClientWidth = 712
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 712
    Height = 338
    Align = alClient
  end
  object Label7: TLabel
    Left = 6
    Top = 5
    Width = 116
    Height = 14
    Caption = 'Pedidos Realizados'
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
    Left = 128
    Top = 12
    Width = 579
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label8: TLabel
    Left = 6
    Top = 142
    Width = 99
    Height = 14
    Caption = 'Itens Atendidos'
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
    Left = 128
    Top = 149
    Width = 579
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label12: TLabel
    Left = 621
    Top = 320
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
  object dbGr2: TdxDBGraphicEdit
    Left = 5
    Top = 199
    Width = 705
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
  object dbGer: TdxDBGraphicEdit
    Left = 2
    Top = 60
    Width = 709
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
  object grRes: ThGrid
    Left = 4
    Top = 62
    Width = 703
    Height = 72
    Selected.Strings = (
      'ID_PEDRES'#9'10'#9' '
      'DTERES'#9'11'#9' '
      'HRERES'#9'8'#9' '
      'LOGUSU'#9'20'#9'LOGUSU'
      'TOTGER'#9'14'#9' '
      'SITRES'#9'34'#9'SITRES'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRes
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
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 2
    Top = 23
    Width = 708
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
    Left = 4
    Top = 25
    Width = 702
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
      Width = 67
      Height = 14
      Caption = 'Nro Pedido'
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
      Left = 78
      Top = 8
      Width = 68
      Height = 14
      Caption = 'Emitido Em'
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
      Left = 218
      Top = 8
      Width = 71
      Height = 14
      Caption = 'Emitido Por'
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
      Left = 382
      Top = 8
      Width = 77
      Height = 14
      Caption = 'Total Pedido'
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
      Left = 463
      Top = 8
      Width = 119
      Height = 14
      Caption = 'Situação do Pedido'
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
      Left = 160
      Top = 8
      Width = 45
      Height = 14
      Caption = 'Horário'
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
    Left = 5
    Top = 161
    Width = 705
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
    Left = 7
    Top = 163
    Width = 699
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
    object Label9: TLabel
      Left = 424
      Top = 8
      Width = 87
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtd. Atendida'
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
      Left = 540
      Top = 8
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Separado'
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
      Left = 644
      Top = 8
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Faturado'
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
  object grGr2: ThGrid
    Left = 7
    Top = 201
    Width = 699
    Height = 114
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao')
    Selected.Strings = (
      'CODITE'#9'16'#9'CODITE'
      'DESRE2'#9'43'#9'DESRE2'#9'F'
      'QTPRE2'#9'12'#9' '
      'QTSRE2'#9'12'#9' '
      'QTFRE2'#9'14'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRe2
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
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object PedRes: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.Id_PedRes,'
      '           PedRes.DteRes,'
      '           PedRes.HreRes,'
      '           PedRes.TotGer,'
      '           PedRes.SitRes,'
      '           GerUsu.LogUsu'
      'From PedRes LEFT JOIN GerUsu ON (PedRes.CodUsu = GerUsu.CodUsu)'
      
        'Where Exists(Select * From PedRe2 Where PedRe2.Id_PedRes = PedRe' +
        's.Id_PedRes'
      
        '                                                              an' +
        'd PedRe2.Id_PedGer = :Id_PedGer)'
      'Order by PedRes.Id_PedRes')
    Left = 5
    Top = 105
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedGer'
        ParamType = ptInput
      end>
    object PedResID_PEDRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'ID_PEDRES'
    end
    object PedResDTERES: TDateTimeField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'DTERES'
    end
    object PedResHRERES: TStringField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'HRERES'
      FixedChar = True
      Size = 8
    end
    object PedResLOGUSU: TStringField
      DisplayWidth = 20
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object PedResSITRES: TStringField
      DisplayWidth = 34
      FieldName = 'SITRES'
      FixedChar = True
      Size = 45
    end
  end
  object PedRe2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRe2.Id_PedRe2,'
      '           PedRe2.CodClp,'
      '           PedRe2.CodGru,'
      '           PedRe2.CodSub,'
      '           PedRe2.CodPro,'
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.QtsRe2,'
      '           PedRe2.QtfRe2'
      'From PedRe2'
      'Where PedRe2.Id_PedRes = :Id_PedRes'
      '     and PedRe2.Id_PedGer = :Id_PedGer'
      'Order by PedRe2.NroRe2')
    Left = 8
    Top = 286
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Id_PedGer'
        ParamType = ptInput
      end>
    object PedRe2CODITE: TStringField
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = PedRe2CODITEGetText
      Calculated = True
    end
    object PedRe2DESRE2: TStringField
      DisplayWidth = 43
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTPRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2QTSRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTSRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2QTFRE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'QTFRE2'
      DisplayFormat = '###,###,##0.0000'
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
    object PedRe2ID_PEDRE2: TIntegerField
      FieldName = 'ID_PEDRE2'
      Visible = False
    end
    object PedRe2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsRes: TDataSource
    DataSet = PedRes
    OnDataChange = DsResDataChange
    Left = 33
    Top = 105
  end
  object DsRe2: TDataSource
    DataSet = PedRe2
    Left = 36
    Top = 286
  end
end
