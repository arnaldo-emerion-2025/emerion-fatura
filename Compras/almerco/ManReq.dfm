inherited fmManReq: TfmManReq
  BorderIcons = [biSystemMenu]
  Caption = 'Emerion Compras - Aviso'
  ClientHeight = 443
  ClientWidth = 713
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 713
    Height = 443
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label1: TLabel
    Left = 43
    Top = 11
    Width = 548
    Height = 23
    Caption = 'Existem requisições aguardando pedido(s) de compra(s).'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 4
    Top = 44
    Width = 182
    Height = 14
    Caption = 'Fornecedor(es) Encontrado(s)'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 193
    Top = 51
    Width = 515
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 3
    Top = 61
    Width = 707
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
    Top = 63
    Width = 701
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
      Left = 2
      Top = 8
      Width = 68
      Height = 14
      Caption = 'Fornecedor'
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
      Left = 580
      Top = 8
      Width = 120
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtde de requisições'
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
    Top = 99
    Width = 707
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
  object grFor: ThGrid
    Left = 5
    Top = 101
    Width = 701
    Height = 120
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGLAN;CheckBox;Sim;Nao'
      'FLGREQ;CheckBox;Sim;Nao')
    Selected.Strings = (
      'FORNECEDOR'#9'79'#9' '#9'F'
      'QTDREG'#9'20'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsFor
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
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object bConf: TBitBtn
    Left = 496
    Top = 401
    Width = 215
    Height = 37
    Hint = 'Salvar as Alterações Realizadas'
    Caption = '&OK'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bConfClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F5E5A8F5E5AFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E01099E8F5E5AEAAF7E
      8F5E5A8F5E5AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0107A101099E0007B513
      1DB08F5E5AFFCF96FFC689F3B67E8F5E5A8F5E5AFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E01099E010F
      BB0326F2000AC4142EE08F5E5AFFD3A1FEC691FFC186FFC284FEBD828F5E5A8F
      5E5AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      01099E0326F20004950429ED000CC1152FD98F5E5AFFDAAFFECE9EFEC691FEBF
      84FEBD82FFC284FFC1838F5E5A8F5E5AFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF01099E0429ED010699052DED000DC11835D98F5E5AFFE1BC
      FFD4AAFECC9DFEC691FEBF84FEBD82FEBD82FFC284FEBC829A6860FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E052DED0107990733ED0010C119
      39D98F5E5AFFE7CAFEDAB6FED3AAFECC9DFEC691FEBF84FEBD82FEBF84FABA82
      96655CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E0733ED0107
      990838ED0012C11E41D98F5E5AFFEFD7FFE1C4FEDAB6FED3A9FECC9DFEC58FFF
      C186F3B67EBD8E625A3D36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      01099E0838ED0109990A3DED0014C11E41D98F5E5AFFF6E5FFE7D0FFE1C4FEDA
      B6FFD4AAFFD3A1F7C08BBD8E62A379545A3D36FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF01099E0A3DED0209990C42ED0117C1254FDA8F5E5AFFFCF2
      FFEFDDFFE7D0FFE2C5F6D3AFD1AF8BBB9672A9825EA97E585A3D36FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E0C42ED020A990D47ED0119C125
      4FDA8F5E5AFFFFFFFFF6EBFFF0DEF7E1CABAA48EA68F76AA8C70AF8B6BA9825E
      5A3D36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E0D47ED020B
      990F4CED021CC12D5EDC8F5E5AFFFFFFFFFCFAFFFCF2D7C9BBA79788AF9A83AD
      957AAC8F72AF8B6B5A3D36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      01099E0F4CED030C991152ED0320C02D5EDC8F5E5AFFFFFFFFFFFFFFFFFFC2BB
      B4ADA092BAA48EAF9A83B89C7BEDBF979A6860FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF01099E1152ED030C991357ED0320C03469DD8F5E5AFFFFFF
      EAEAEAA5A5A5C6C0BBA5A5A5325F961B4897325F96BDB5A7AA7060FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E1357ED030D99155DED0423C037
      70DD8F5E5AFFFFFFACACAC37363575797A2462AF0336BC052BB4001DAA164297
      605D6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E155DED030E
      991764ED0426C03C77DC8F5E5AFFFFFFF6F7F8BCB8B635597B064CCB0E4ECA07
      43B20535A602359A0440A604499EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      01099E1764ED030F991869ED072DBF3179E68F5E5AF6D7C0FFFEEBFFFFFF528F
      CC0D66E92673D04B99FC0850B5136ADE1865EF1045CC033E9CFF00FFFF00FFFF
      00FFFF00FFFF00FF01099E1869ED030C951A6EF00C30BD1F83FF1C6EF44174CA
      7A8AB5D3BBB6567BA33990F42379E13780C2166BCA35A6FF2993FF1C6EF40449
      9EFF00FFFF00FFFF00FFFF00FFFF00FF01099E1A6EF00C30BD0B46D40215A310
      5CE6187AFF167DFF1172FF206DEE1D5EC72972C22882F2054DC22780CA73CCF7
      42B1FF1F83FF04499EFF00FFFF00FFFF00FFFF00FFFF00FF01099E1C3DB61C3D
      B65558BB9792CA5558BB162FAD0C41CF1062EF1778FF1A7DFF0E5FDA0850B503
      379F0D52A173CCF740ACF804499EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      01099E01099E604173D3B6B0FFFEEBFFFFFFEDE7F29792CA41429E1026A70C41
      CF146CFF1A7DFF030F9DFF00FF02499A04499EFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF01099E01099E7E6286D3BBB6FFFFE6
      FFFFE1E6BFA48C677F2C237D01099E01099EFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF01099E01099E967992B68E89A96B55FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF030077FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 3
    Top = 227
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
    TabOrder = 5
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
    Top = 229
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
    TabOrder = 6
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 599
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
      Left = 148
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
  end
  object dbGr4: TdxDBGraphicEdit
    Left = 3
    Top = 265
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
    TabOrder = 7
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 111
  end
  object grReq: ThGrid
    Left = 5
    Top = 267
    Width = 702
    Height = 105
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGLAN;CheckBox;Sim;Nao'
      'FLGREQ;CheckBox;Sim;Nao')
    Selected.Strings = (
      'PEDIDO'#9'20'#9' '
      'CODITE'#9'15'#9' '
      'DSCPRO'#9'48'#9' '#9'F'
      'SLDREQ'#9'15'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsReq
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 8
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
  object pnCliente: TPanel
    Left = 4
    Top = 377
    Width = 397
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Cliente : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object pnVendedor: TPanel
    Left = 403
    Top = 377
    Width = 307
    Height = 22
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Vendedor : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object FinFor: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpReq.Id_FinFor,'
      '           FinFor.ApeFor,'
      '           Count(*) as QtdReg'
      
        'From CmpReq LEFT JOIN FinFor ON (CmpReq.Id_FinFor = FinFor.CodFo' +
        'r)'
      'Where CmpReq.SldReq > 0'
      'Group By CmpReq.Id_FinFor,Finfor.ApeFor')
    Left = 6
    Top = 192
    object FinForFORNECEDOR: TStringField
      DisplayLabel = ' '
      DisplayWidth = 79
      FieldKind = fkCalculated
      FieldName = 'FORNECEDOR'
      OnGetText = FinForFORNECEDORGetText
      Size = 100
      Calculated = True
    end
    object FinForQTDREG: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'QTDREG'
    end
    object FinForAPEFOR: TStringField
      FieldName = 'APEFOR'
      Visible = False
      FixedChar = True
    end
    object FinForID_FINFOR: TIntegerField
      FieldName = 'ID_FINFOR'
      Visible = False
    end
  end
  object DsFor: TDataSource
    DataSet = FinFor
    Left = 34
    Top = 192
  end
  object CmpReq: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFor
    SQL.Strings = (
      'Select CmpReq.PedCli,'
      '           CmpReq.Id_PedRes,'
      '           CmpReq.Id_FinCli,'
      '           CmpReq.CodClp,'
      '           CmpReq.CodGru,'
      '           CmpReq.CodSub,'
      '           CmpReq.CodPro,'
      '           EstPro.DscPro,'
      '           FinCli.NomCli,'
      '           CmpReq.Id_FinVen,'
      '           FinVen.ApeVen,'
      '           CmpReq.SldReq'
      'From CmpReq LEFT JOIN EstPro ON (CmpReq.CodClp = EstPro.CodClp'
      
        '                                                    AND CmpReq.C' +
        'odGru = EstPro.CodGru'
      
        '                                                    AND CmpReq.C' +
        'odSub = EstPro.CodSub'
      
        '                                                    AND CmpReq.C' +
        'odPro = EstPro.CodPro)'
      
        '                          LEFT JOIN FinCli ON (CmpReq.Id_FinCli ' +
        '= FinCli.CodCli)'
      
        '                       LEFT JOIN FinVen ON (CmpReq.Id_FinVen = F' +
        'inVen.CodVen)'
      'Where CmpReq.Id_FinFor = :Id_FinFor'
      'Order by CmpReq.Id_CmpReq')
    Left = 6
    Top = 343
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_FINFOR'
        ParamType = ptInput
      end>
    object CmpReqPEDIDO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'PEDIDO'
      OnGetText = CmpReqPEDIDOGetText
      Calculated = True
    end
    object CmpReqCODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = CmpReqCODITEGetText
      Calculated = True
    end
    object CmpReqDSCPRO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 48
      FieldName = 'DSCPRO'
      Size = 70
    end
    object CmpReqSLDREQ: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'SLDREQ'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpReqPEDCLI: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'PEDCLI'
      Visible = False
    end
    object CmpReqAPEVEN: TStringField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'APEVEN'
      Visible = False
    end
    object CmpReqNOMCLI: TStringField
      DisplayLabel = ' '
      DisplayWidth = 40
      FieldName = 'NOMCLI'
      Visible = False
      Size = 70
    end
    object CmpReqCODCLP: TStringField
      DisplayWidth = 1
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpReqCODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpReqCODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpReqCODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpReqID_PEDRES: TIntegerField
      FieldName = 'ID_PEDRES'
      Visible = False
    end
    object CmpReqID_FINCLI: TIntegerField
      FieldName = 'ID_FINCLI'
      Visible = False
    end
    object CmpReqID_FINVEN: TIntegerField
      FieldName = 'ID_FINVEN'
      Visible = False
    end
  end
  object DsReq: TDataSource
    DataSet = CmpReq
    OnDataChange = DsReqDataChange
    Left = 34
    Top = 343
  end
end
