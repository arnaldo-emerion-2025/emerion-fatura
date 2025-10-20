inherited fmManLge: TfmManLge
  Left = 173
  Top = 175
  Caption = 'Gerenciamento de Contratos'
  ClientHeight = 357
  ClientWidth = 757
  OldCreateOrder = True
  OnClose = FormClose
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
    Width = 145
    Height = 14
    Caption = 'Contratos Selecionados'
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
    Width = 126
    Height = 14
    Caption = 'Itens não Atendidos'
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
  object dbGr2: TdxDBGraphicEdit
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
  object dbGer: TdxDBGraphicEdit
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
  object grGer: ThGrid
    Left = 6
    Top = 62
    Width = 745
    Height = 72
    Selected.Strings = (
      'NUMGER'#9'15'#9'Nro. Controle'
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
    DataSource = DsGer
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
    OnKeyDown = grGerKeyDown
    OnKeyUp = grGerKeyUp
    OnMouseUp = grGerMouseUp
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
      Width = 78
      Height = 14
      Caption = 'Nro Controle'
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
      Left = 247
      Top = 8
      Width = 72
      Height = 14
      Caption = 'Em Trânsito'
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
    object Label2: TLabel
      Left = 482
      Top = 8
      Width = 34
      Height = 14
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
      Left = 656
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
  object grGr2: ThGrid
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
      'TOTGE2'#9'14'#9' '
      'FLGRES'#9'3'#9'FLGRES')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsGr2
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
    OnKeyDown = grGr2KeyDown
    OnKeyUp = grGr2KeyUp
    OnMouseUp = grGr2MouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnDesGr2: TPanel
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
  object PedGer: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedGer'
      'Where PedGer.CodCli = :CodCli'
      
        '     and (PedGer.SitGer = '#39'Concluido'#39'  or PedGer.SitGer = '#39'Parci' +
        'almente Atendido'#39')'
      
        '     and Exists(Select * From PedGr2 Where CodEmp = PedGer.CodEm' +
        'p'
      
        '                                                              an' +
        'd  DteGer = PedGer.DteGer'
      
        '                                                              an' +
        'd NumGer = PedGer.NumGer'
      
        '                                                              an' +
        'd SldGr2 > 0) '
      'Order by PedGer.NumGer')
    Left = 8
    Top = 75
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptInput
      end>
    object PedGerNUMGER: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nro. Controle'
      DisplayWidth = 15
      FieldName = 'NUMGER'
      Origin = 'ISADE.PEDGER.NUMGER'
    end
    object PedGerPEDCLI: TStringField
      DisplayLabel = 'Nro. Pedido Cliente'
      DisplayWidth = 25
      FieldName = 'PEDCLI'
      Origin = 'ISADE.PEDGER.PEDCLI'
      FixedChar = True
    end
    object PedGerDTEGER: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEGER'
      Origin = 'ISADE.PEDGER.DTEGER'
      EditMask = '!99/99/9999;1;_'
    end
    object PedGerHREGER: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREGER'
      Origin = 'ISADE.PEDGER.HREGER'
      FixedChar = True
      Size = 8
    end
    object PedGerTOTGER: TFloatField
      DisplayLabel = 'Total do Pedido'
      DisplayWidth = 15
      FieldName = 'TOTGER'
      Origin = 'ISADE.PEDGER.TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerSITGER: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 30
      FieldName = 'SITGER'
      Origin = 'ISADE.PEDGER.SITGER'
      FixedChar = True
      Size = 45
    end
    object PedGerCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDGER.CODEMP'
      Visible = False
    end
    object PedGerCODCLI: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODCLI'
      Origin = 'ISADE.PEDGER.CODCLI'
      Visible = False
    end
    object PedGerCODVEN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODVEN'
      Origin = 'ISADE.PEDGER.CODVEN'
      Visible = False
    end
    object PedGerCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.PEDGER.CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedGerTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.PEDGER.TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGerUFEGER: TStringField
      FieldName = 'UFEGER'
      Origin = 'ISADE.PEDGER.UFEGER'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedGerQTIGER: TIntegerField
      FieldName = 'QTIGER'
      Origin = 'ISADE.PEDGER.QTIGER'
      Visible = False
    end
    object PedGerSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.PEDGER.SEQITE'
      Visible = False
    end
    object PedGerBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDGER.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDGER.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDGER.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDGER.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDGER.BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDGER.TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDGER.TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDGER.TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTITE: TFloatField
      FieldName = 'TOTITE'
      Origin = 'ISADE.PEDGER.TOTITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDGER.TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.PEDGER.DSCREG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDGER.DSCCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOPPRM: TFloatField
      FieldName = 'TOPPRM'
      Origin = 'ISADE.PEDGER.TOPPRM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Origin = 'ISADE.PEDGER.MEDPRM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerMEDACR: TFloatField
      FieldName = 'MEDACR'
      Origin = 'ISADE.PEDGER.MEDACR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDGER.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGerTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDGER.TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGerTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDGER.TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGerTOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDGER.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGerCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.PEDGER.CODUSU'
      Visible = False
    end
    object PedGerFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.PEDGER.FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGerSEQGER: TStringField
      FieldName = 'SEQGER'
      Origin = 'ISADE.PEDGER.SEQGER'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object PedGerCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.PEDGER.CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGerCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.PEDGER.CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedGerTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDGER.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGerTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDGER.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGerREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDGER.REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDGER.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.PEDGER.CODICM'
      Visible = False
      FixedChar = True
    end
    object PedGerTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDGER.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGerTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDGER.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGerREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDGER.REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDGER.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDGER.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDGER.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGerTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.PEDGER.TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object PedGerTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.PEDGER.TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object PedGerMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Origin = 'ISADE.PEDGER.MEDDSC'
      Visible = False
    end
    object PedGerDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
      Origin = 'ISADE.PEDGER.DTEDEL'
      Visible = False
    end
    object PedGerHREDEL: TStringField
      FieldName = 'HREDEL'
      Origin = 'ISADE.PEDGER.HREDEL'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedGerOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      Origin = 'ISADE.PEDGER.OBSDEL'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedGerUSUDEL: TIntegerField
      FieldName = 'USUDEL'
      Origin = 'ISADE.PEDGER.USUDEL'
      Visible = False
    end
  end
  object PedGr2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsGer
    SQL.Strings = (
      'Select PedGr2.*,'
      
        '           TextoOcor(PedGr2.CodGru,'#39'.'#39',PedGr2.CodSub,'#39'.'#39',PedGr2.' +
        'CodPro,'#39#39','#39#39') as CodITe'
      'From PedGr2'
      'Where PedGr2.CodEmp = :CodEmp'
      '     and PedGr2.DteGer = :DteGer'
      '     and PedGr2.NumGer = :NumGer'
      '     and (PedGr2.SldGr2 > 0 or PedGr2.FlgRes = '#39'Sim'#39')'
      'Order by PedGr2.CodEmp,PedGr2.DteGer,PedGr2.NumGer,PedGr2.NroGr2')
    UpdateObject = UpGr2
    Left = 73
    Top = 75
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
    object PedGr2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 18
      FieldName = 'CODITE'
      FixedChar = True
      Size = 100
    end
    object PedGr2QTPGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTPGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2QTSGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTSGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2QTLGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'QTLGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2SLDGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'SLDGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VLQGR2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'VLQGR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 14
      FieldName = 'TOTGE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2FLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedGr2DESGR2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 70
      FieldName = 'DESGR2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedGr2NUMGER: TIntegerField
      DisplayLabel = 'Nro. Controle'
      DisplayWidth = 15
      FieldName = 'NUMGER'
      Visible = False
    end
    object PedGr2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedGr2DTEGER: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEGER'
      Visible = False
    end
    object PedGr2SEQGR2: TIntegerField
      FieldName = 'SEQGR2'
      Visible = False
    end
    object PedGr2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object PedGr2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedGr2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedGr2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedGr2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedGr2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedGr2OBSGR2: TStringField
      FieldName = 'OBSGR2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedGr2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedGr2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedGr2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Visible = False
    end
    object PedGr2CODPRM: TIntegerField
      FieldName = 'CODPRM'
      Visible = False
    end
    object PedGr2VLUGR2: TFloatField
      FieldName = 'VLUGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VCHGR2: TFloatField
      FieldName = 'VCHGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VREGR2: TFloatField
      FieldName = 'VREGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VCPGR2: TFloatField
      FieldName = 'VCPGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VPRGR2: TFloatField
      FieldName = 'VPRGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2VCSGR2: TFloatField
      FieldName = 'VCSGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2DSCGR2: TFloatField
      FieldName = 'DSCGR2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2VDSGR2: TFloatField
      FieldName = 'VDSGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2DSPGR2: TFloatField
      FieldName = 'DSPGR2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2VDPGR2: TFloatField
      FieldName = 'VDPGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2DSRGR2: TFloatField
      FieldName = 'DSRGR2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2VDRGR2: TFloatField
      FieldName = 'VDRGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2PACGR2: TFloatField
      FieldName = 'PACGR2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2VACGR2: TFloatField
      FieldName = 'VACGR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2IPIGR2: TFloatField
      FieldName = 'IPIGR2'
      Visible = False
    end
    object PedGr2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedGr2ICMGR2: TFloatField
      FieldName = 'ICMGR2'
      Visible = False
    end
    object PedGr2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTGR2: TFloatField
      FieldName = 'TOTGR2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedGr2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedGr2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGr2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedGr2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGr2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object PedGr2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedGr2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedGr2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedGr2NROGR2: TIntegerField
      FieldName = 'NROGR2'
      Visible = False
    end
    object PedGr2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object UpGr2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedGr2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESGR2 = :DESGR2,'
      '  OBSGR2 = :OBSGR2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  TABPRC = :TABPRC,'
      '  CODPRM = :CODPRM,'
      '  QTPGR2 = :QTPGR2,'
      '  QTSGR2 = :QTSGR2,'
      '  QTLGR2 = :QTLGR2,'
      '  SLDGR2 = :SLDGR2,'
      '  VLUGR2 = :VLUGR2,'
      '  VLQGR2 = :VLQGR2,'
      '  VCHGR2 = :VCHGR2,'
      '  VREGR2 = :VREGR2,'
      '  VCPGR2 = :VCPGR2,'
      '  VPRGR2 = :VPRGR2,'
      '  VCSGR2 = :VCSGR2,'
      '  DSCGR2 = :DSCGR2,'
      '  VDSGR2 = :VDSGR2,'
      '  DSPGR2 = :DSPGR2,'
      '  VDPGR2 = :VDPGR2,'
      '  DSRGR2 = :DSRGR2,'
      '  VDRGR2 = :VDRGR2,'
      '  PACGR2 = :PACGR2,'
      '  VACGR2 = :VACGR2,'
      '  IPIGR2 = :IPIGR2,'
      '  CLSIPI = :CLSIPI,'
      '  ICMGR2 = :ICMGR2,'
      '  TOTVEN = :TOTVEN,'
      '  TOTCST = :TOTCST,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTGR2 = :TOTGR2,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTREN = :TOTREN,'
      '  TOTDSC = :TOTDSC,'
      '  TOTDSR = :TOTDSR,'
      '  TOTDSP = :TOTDSP,'
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
      '  NROGR2 = :NROGR2,'
      '  FLASEQ = :FLASEQ,'
      '  FLGRES = :FLGRES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGR2 = :OLD_SEQGR2')
    InsertSQL.Strings = (
      'insert into PedGr2'
      '  (CODEMP, DTEGER, NUMGER, SEQGR2, CODEIT, CODCLP, CODGRU, '
      'CODSUB, CODPRO, '
      
        '   CODTAM, CODCOR, DESGR2, OBSGR2, CODST1, CODST2, CODUND, TABPR' +
        'C, '
      'CODPRM, '
      
        '   QTPGR2, QTSGR2, QTLGR2, SLDGR2, VLUGR2, VLQGR2, VCHGR2, VREGR' +
        '2, '
      'VCPGR2, '
      
        '   VPRGR2, VCSGR2, DSCGR2, VDSGR2, DSPGR2, VDPGR2, DSRGR2, VDRGR' +
        '2, '
      'PACGR2, '
      
        '   VACGR2, IPIGR2, CLSIPI, ICMGR2, TOTVEN, TOTCST, BASIPI, TOTIP' +
        'I, BASICM, '
      
        '   TOTICM, BASSUB, TOTSUB, TOTGR2, TOTGE2, TOTREN, TOTDSC, TOTDS' +
        'R, '
      'TOTDSP, '
      
        '   TOTACR, CODSTR, TIPSTR, REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIP' +
        'I, REGICM, '
      
        '   TIPICM, TRBICM, REDICM, BSCICM, INCREV, INCFIN, NROGR2, FLASE' +
        'Q, '
      'FLGRES)'
      'values'
      
        '  (:CODEMP, :DTEGER, :NUMGER, :SEQGR2, :CODEIT, :CODCLP, :CODGRU' +
        ', '
      ':CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESGR2, :OBSGR2, :CODST1, :CODST2' +
        ', '
      ':CODUND, '
      
        '   :TABPRC, :CODPRM, :QTPGR2, :QTSGR2, :QTLGR2, :SLDGR2, :VLUGR2' +
        ', '
      ':VLQGR2, '
      
        '   :VCHGR2, :VREGR2, :VCPGR2, :VPRGR2, :VCSGR2, :DSCGR2, :VDSGR2' +
        ', '
      ':DSPGR2, '
      
        '   :VDPGR2, :DSRGR2, :VDRGR2, :PACGR2, :VACGR2, :IPIGR2, :CLSIPI' +
        ', :ICMGR2, '
      
        '   :TOTVEN, :TOTCST, :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB' +
        ', :TOTSUB, '
      
        '   :TOTGR2, :TOTGE2, :TOTREN, :TOTDSC, :TOTDSR, :TOTDSP, :TOTACR' +
        ', '
      ':CODSTR, '
      
        '   :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :NROGR2, :FLASEQ' +
        ', :FLGRES)')
    DeleteSQL.Strings = (
      'delete from PedGr2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGR2 = :OLD_SEQGR2')
    Left = 8
    Top = 103
  end
  object DsGer: TDataSource
    DataSet = PedGer
    Left = 36
    Top = 75
  end
  object DsGr2: TDataSource
    DataSet = PedGr2
    OnDataChange = DsGr2DataChange
    Left = 101
    Top = 75
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 36
    Top = 103
  end
end
