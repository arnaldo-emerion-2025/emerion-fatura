inherited fmManPe4: TfmManPe4
  BorderIcons = [biSystemMenu]
  Caption = 'Pedido de Compra - Requisições pendentes'
  ClientHeight = 389
  ClientWidth = 710
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 710
    Height = 389
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label28: TLabel
    Left = 655
    Top = 368
    Width = 51
    Height = 14
    Caption = 'ESC-Sair'
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
  object LbText: TLabel
    Left = 4
    Top = 368
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
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 3
    Top = 4
    Width = 704
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
    Height = 38
  end
  object Panel1: TPanel
    Left = 5
    Top = 6
    Width = 698
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 8
      Width = 129
      Height = 14
      Caption = 'No. Contrato/Pedido'
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
      Left = 169
      Top = 8
      Width = 42
      Height = 14
      Caption = 'Cliente'
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
    object Label1: TLabel
      Left = 522
      Top = 8
      Width = 59
      Height = 14
      Caption = 'Vendedor'
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
  object dbReq: TdxDBGraphicEdit
    Left = 3
    Top = 42
    Width = 704
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
    Height = 126
  end
  object grPre: ThGrid
    Left = 5
    Top = 44
    Width = 698
    Height = 120
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGLAN;CheckBox;Sim;Nao'
      'FLGREQ;CheckBox;Sim;Nao')
    Selected.Strings = (
      'PEDIDO'#9'23'#9' '
      'NOMCLI'#9'50'#9'Cliente'
      'APEVEN'#9'25'#9'Vendedor')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPre
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = grPreEnter
    OnKeyDown = grPreKeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 3
    Top = 192
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
    Height = 38
  end
  object Panel2: TPanel
    Left = 5
    Top = 194
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
    TabOrder = 5
    object Label3: TLabel
      Left = 1
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
    object Label4: TLabel
      Left = 275
      Top = 8
      Width = 102
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtde requisitada'
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
      Left = 397
      Top = 8
      Width = 88
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtde atendida'
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
    object Label7: TLabel
      Left = 504
      Top = 8
      Width = 89
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtde Recebida'
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
    object Label8: TLabel
      Left = 600
      Top = 8
      Width = 97
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo a atender'
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
  object dbGr4: TdxDBGraphicEdit
    Left = 3
    Top = 230
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 111
  end
  object grPr2: ThGrid
    Left = 5
    Top = 232
    Width = 699
    Height = 105
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGLAN;CheckBox;Sim;Nao'
      'FLGREQ;CheckBox;Sim;Nao')
    Selected.Strings = (
      'DSCPRO'#9'41'#9' '#9'F'
      'QTDREQ'#9'12'#9' '#9'F'
      'QTDPED'#9'15'#9' '#9'F'
      'QTRPED'#9'15'#9' '#9'F'
      'SLDREQ'#9'14'#9' '#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPr2
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
    OnEnter = grPr2Enter
    OnKeyDown = grPr2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnFornecedor: TPanel
    Left = 240
    Top = 169
    Width = 466
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Fornecedor : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnItem: TPanel
    Left = 4
    Top = 342
    Width = 165
    Height = 22
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object pnOperacao: TPanel
    Left = 162
    Top = 268
    Width = 385
    Height = 41
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 10
    Visible = False
    OnExit = pnOperacaoExit
    object Label10: TLabel
      Left = 31
      Top = 10
      Width = 182
      Height = 19
      Caption = 'Quantidade atendida :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdQtdPed: TdxDBColorCurrencyEdit
      Left = 217
      Top = 6
      Width = 136
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
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
      DataField = 'QTDPED'
      DataSource = DsPr2
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 30
      StoredValues = 1
    end
  end
  object CmpPre: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPre.Id_CmpPre,'
      '           CmpPre.Id_PedRes,'
      '           CmpPre.PedCli,'
      '           FinFor.NomFor,'
      '           FinCli.NomCli,'
      '           FinVen.ApeVen'
      
        'From CmpPre LEFT JOIN FinFor ON (CmpPre.Id_FinFor = FinFor.CodFo' +
        'r)'
      
        '                         LEFT JOIN FinCli ON (CmpPre.Id_FinCli =' +
        ' FinCli.CodCli)'
      
        '                         LEFT JOIN FinVen ON (CmpPre.Id_FinVen =' +
        ' FinVen.CodVen)'
      'Where CmpPre.Id_CmpPed = :Id_CmpPed'
      'Order by CmpPre.Id_CmpPre')
    Left = 6
    Top = 135
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpPed'
        ParamType = ptInput
      end>
    object CmpPrePEDIDO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 23
      FieldKind = fkCalculated
      FieldName = 'PEDIDO'
      OnGetText = CmpPrePEDIDOGetText
      Calculated = True
    end
    object CmpPreNOMCLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'NOMCLI'
      Size = 70
    end
    object CmpPreAPEVEN: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 25
      FieldName = 'APEVEN'
    end
    object CmpPreID_CMPPRE: TIntegerField
      FieldName = 'ID_CMPPRE'
      Visible = False
    end
    object CmpPreID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Visible = False
    end
    object CmpPrePEDCLI: TStringField
      FieldName = 'PEDCLI'
      Visible = False
    end
    object CmpPreNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Visible = False
      Size = 40
    end
  end
  object DsPre: TDataSource
    DataSet = CmpPre
    OnDataChange = DsPreDataChange
    Left = 34
    Top = 135
  end
  object CmpPr2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPre
    SQL.Strings = (
      'Select CmpPr2.*,'
      '           CmpReq.CodClp,'
      '           CmpReq.CodGru,'
      '           CmpReq.CodSub,'
      '           CmpReq.CodPro,'
      '           EstPro.DscPro'
      
        'From CmpPr2 LEFT JOIN CmpReq ON (CmpPr2.Id_CmpReq = CmpReq.Id_Cm' +
        'pReq)'
      
        '                         LEFT JOIN EstPro ON (CmpReq.CodClp = Es' +
        'tPro.CodClp'
      
        '                                                      AND CmpReq' +
        '.CodGru = EstPro.CodGru'
      
        '                                                      AND CmpReq' +
        '.CodSub = EstPro.CodSub'
      
        '                                                      AND CmpReq' +
        '.CodPro = EstPro.CodPro)'
      'Where CmpPr2.Id_CmpPre = :Id_CmpPre'
      'Order by CmpPr2.Id_CmpPr2')
    UpdateObject = UpPr2
    Left = 6
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPPRE'
        ParamType = ptInput
      end>
    object CmpPr2DSCPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 41
      FieldName = 'DSCPRO'
      Size = 70
    end
    object CmpPr2QTDREQ: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'QTDREQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPr2QTDPED: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'QTDPED'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPr2QTRPED: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'QTRPED'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPr2SLDREQ: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'SLDREQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPr2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      Visible = False
      OnGetText = CmpPr2CODITEGetText
      Calculated = True
    end
    object CmpPr2ID_CMPPR2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPPR2'
      Visible = False
    end
    object CmpPr2ID_CMPPRE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPPRE'
      Visible = False
    end
    object CmpPr2ID_CMPREQ: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPREQ'
      Visible = False
    end
    object CmpPr2ID_CMPPE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPPE2'
      Visible = False
    end
    object CmpPr2CODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpPr2CODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpPr2CODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpPr2CODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object DsPr2: TDataSource
    DataSet = CmpPr2
    OnDataChange = DsPr2DataChange
    Left = 34
    Top = 280
  end
  object UpPr2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPr2'
      'set'
      '  QTDREQ = :QTDREQ,'
      '  QTDPED = :QTDPED,'
      '  QTRPED = :QTRPED,'
      '  SLDREQ = :SLDREQ'
      'where'
      '  ID_CMPPR2 = :OLD_ID_CMPPR2')
    InsertSQL.Strings = (
      'insert into CmpPr2'
      
        '(ID_CMPPR2, ID_CMPPRE, ID_CMPREQ, QTDREQ, QTDPED, QTRPED, SLDREQ' +
        ', '
      'ID_CMPPE2)'
      'values'
      '(:ID_CMPPR2, :ID_CMPPRE, :ID_CMPREQ, :QTDREQ, :QTDPED, :QTRPED, '
      ':SLDREQ, :ID_CMPPE2)')
    DeleteSQL.Strings = (
      'delete from CmpPr2'
      'where'
      '  ID_CMPPR2 = :OLD_ID_CMPPR2')
    Left = 6
    Top = 308
  end
end
