inherited fmManCm1: TfmManCm1
  Left = 115
  Top = 130
  Caption = 'Pedidos de Compras Pendentes'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
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
    Width = 130
    Height = 14
    Caption = 'Operações Realizadas'
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
    Left = 138
    Top = 17
    Width = 19
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 5
    Top = 247
    Width = 112
    Height = 14
    Caption = 'Itens da Operação'
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
    Left = 138
    Top = 254
    Width = 138
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bIncluir: TSpeedButton
    Left = 554
    Top = 440
    Width = 231
    Height = 42
    Hint = 'Realizar Nova Conferência'
    Caption = 'F4-Conferir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      96040000424D9604000000000000360000002800000012000000140000000100
      18000000000060040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0
      0000C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD00000000000000000000000000000000000000000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000000000C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0000000000000C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF0000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000FFF8FF000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FF000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD00000000000000F0000000000000000000000
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    ParentFont = False
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
    TabOrder = 2
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 168
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
    TabOrder = 1
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 211
  end
  object grCpe: ThGrid
    Tag = 1
    Left = 2
    Top = 33
    Width = 780
    Height = 205
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
  end
  object grCp2: ThGrid
    Tag = 1
    Left = 2
    Top = 273
    Width = 780
    Height = 162
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'#9'F'
      'DESRE2'#9'75'#9' '#9'F'
      'QTPRE2'#9'10'#9'              Quantidade'#9'F')
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
  end
  object Panel2: TPanel
    Left = 159
    Top = 2
    Width = 624
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Fornecedor : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.*,'
      
        '           TextoOcor(PedRes.CodPfa,'#39'-'#39',EstPfa.DsrPfa,'#39#39','#39#39','#39#39','#39#39 +
        ') as NomPfa,'
      
        '           TextoOcor(IntStrZeros(PedRes.CodCli,7),'#39'-'#39',FinCli.Nom' +
        'Cli,'#39#39','#39#39','#39#39','#39#39') as NomCli'
      'From PedRes INNER JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      
        '                       LEFT JOIN EstPfa ON (PedRes.CodPfa = EstP' +
        'fa.CodPfa)'
      
        '                                                   AND (PedRes.T' +
        'ipPfa = EstPfa.TipPfa)'
      'Where PedRes.SitRes = '#39'Aguardando Separacao de Estoque'#39' '
      
        '        or (PedRes.SitRes = '#39'Parcialmente Faturado'#39' and PedRes.L' +
        'ibSld = '#39'Sim'#39')'
      'Order by PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 24
    Top = 325
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 7
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedResNOMPFA: TStringField
      DisplayLabel = 'Padrão de Faturamento'
      DisplayWidth = 32
      FieldName = 'NOMPFA'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedResNOMCLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 41
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = '  Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDGER: TFloatField
      DisplayWidth = 10
      FieldName = 'SLDGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'CODCLI'
      Visible = False
    end
    object PedResTOTRES: TFloatField
      DisplayLabel = ' Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTRES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFATGER: TFloatField
      DisplayLabel = '       Faturado'
      DisplayWidth = 10
      FieldName = 'FATGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVGER: TFloatField
      DisplayLabel = '    Devolvido'
      DisplayWidth = 10
      FieldName = 'DEVGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 25
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedResTOTIPI: TFloatField
      DisplayLabel = '        Total IPI'
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      Visible = False
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
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Visible = False
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedResCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Visible = False
    end
    object PedResPRFRES: TIntegerField
      FieldName = 'PRFRES'
      Visible = False
    end
    object PedResDTFRES: TDateTimeField
      FieldName = 'DTFRES'
      Visible = False
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
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
    object PedResINSCLI: TStringField
      FieldName = 'INSCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object PedResCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Visible = False
      FixedChar = True
      Size = 8
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
    object PedResREFCLI: TStringField
      FieldName = 'REFCLI'
      Visible = False
      FixedChar = True
      Size = 40
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
    object PedResINECLI: TStringField
      FieldName = 'INECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object PedResCGECLI: TStringField
      FieldName = 'CGECLI'
      Visible = False
      FixedChar = True
      Size = 18
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
    object PedResSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
      Visible = False
    end
    object PedResSEQPAR: TIntegerField
      FieldName = 'SEQPAR'
      Visible = False
    end
    object PedResLINRES: TIntegerField
      FieldName = 'LINRES'
      Visible = False
    end
    object PedResQTLRES: TIntegerField
      FieldName = 'QTLRES'
      Visible = False
    end
    object PedResQTFRES: TIntegerField
      FieldName = 'QTFRES'
      Visible = False
    end
    object PedResBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTREN: TFloatField
      FieldName = 'TOTREN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedResTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedResTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedResDESREG: TStringField
      FieldName = 'DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedResCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object PedResFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTLPSQ: TDateTimeField
      FieldName = 'DTLPSQ'
      Visible = False
    end
    object PedResFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResSEQRES: TStringField
      FieldName = 'SEQRES'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object PedResATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedResTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedResTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object PedResTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedResTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTEREJ: TDateTimeField
      FieldName = 'DTEREJ'
      Visible = False
    end
    object PedResHREREJ: TStringField
      FieldName = 'HREREJ'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResOBSREJ: TMemoField
      FieldName = 'OBSREJ'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUREJ: TIntegerField
      FieldName = 'USUREJ'
      Visible = False
    end
    object PedResFLGFIN: TStringField
      FieldName = 'FLGFIN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResDTEFIN: TDateTimeField
      FieldName = 'DTEFIN'
      Visible = False
    end
    object PedResHREFIN: TStringField
      FieldName = 'HREFIN'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResOBSFIN: TMemoField
      FieldName = 'OBSFIN'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFIN: TIntegerField
      FieldName = 'USUFIN'
      Visible = False
    end
    object PedResTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object PedResTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object PedResFLGSLD: TStringField
      FieldName = 'FLGSLD'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResFATRES: TFloatField
      FieldName = 'FATRES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVRES: TFloatField
      FieldName = 'DEVRES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDRES: TFloatField
      FieldName = 'SLDRES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResFLGGER: TStringField
      FieldName = 'FLGGER'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResLIBSLD: TStringField
      FieldName = 'LIBSLD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
      Visible = False
    end
    object PedResHREDEL: TStringField
      FieldName = 'HREDEL'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUDEL: TIntegerField
      FieldName = 'USUDEL'
      Visible = False
    end
    object PedResDTEFPE: TDateTimeField
      FieldName = 'DTEFPE'
      Visible = False
    end
    object PedResHREFPE: TStringField
      FieldName = 'HREFPE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResOBSFPE: TMemoField
      FieldName = 'OBSFPE'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUFPE: TIntegerField
      FieldName = 'USUFPE'
      Visible = False
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
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
    object PedResCODATD: TIntegerField
      FieldName = 'CODATD'
      Visible = False
    end
    object PedResFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object PedResTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedResMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      Visible = False
    end
    object PedResFLGCOM: TStringField
      DisplayWidth = 1
      FieldName = 'FLGCOM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResDTECOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTECOM'
      Visible = False
    end
    object PedResHRECOM: TStringField
      DisplayWidth = 8
      FieldName = 'HRECOM'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResOBSCOM: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSCOM'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedResUSUCOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUCOM'
      Visible = False
    end
    object PedResFLGREQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResFLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResQTDIMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDIMP'
      Visible = False
    end
    object PedResEMPCTA: TIntegerField
      FieldName = 'EMPCTA'
      Visible = False
    end
    object PedResDTECTA: TDateTimeField
      FieldName = 'DTECTA'
      Visible = False
    end
    object PedResNUMCTA: TIntegerField
      FieldName = 'NUMCTA'
      Visible = False
    end
    object PedResPRCCTA: TStringField
      FieldName = 'PRCCTA'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object DsRes: TwwDataSource
    DataSet = PedRes
    Left = 52
    Top = 325
  end
  object quSql: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 89
    Top = 325
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  HRERES = :HRERES,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODTIP = :CODTIP,'
      '  PRFRES = :PRFRES,'
      '  DTFRES = :DTFRES,'
      '  CODATD = :CODATD,'
      '  CODFIL = :CODFIL,'
      '  CODTRA = :CODTRA,'
      '  FLGTAB = :FLGTAB,'
      '  UFERES = :UFERES,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CEPCLI = :CEPCLI,'
      '  TENCLI = :TENCLI,'
      '  ENDCLI = :ENDCLI,'
      '  REFCLI = :REFCLI,'
      '  NUMCLI = :NUMCLI,'
      '  BAICLI = :BAICLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFECLI = :UFECLI,'
      '  INECLI = :INECLI,'
      '  CGECLI = :CGECLI,'
      '  OBSRES = :OBSRES,'
      '  QTIRES = :QTIRES,'
      '  SEQITE = :SEQITE,'
      '  QTPRES = :QTPRES,'
      '  SEQPAR = :SEQPAR,'
      '  LINRES = :LINRES,'
      '  QTLRES = :QTLRES,'
      '  QTFRES = :QTFRES,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTVEN = :TOTVEN,'
      '  TOTCST = :TOTCST,'
      '  TOTRES = :TOTRES,'
      '  TOTREN = :TOTREN,'
      '  TOTGER = :TOTGER,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  BASCOM = :BASCOM,'
      '  TOTCOM = :TOTCOM,'
      '  DSCREG = :DSCREG,'
      '  DSCCOM = :DSCCOM,'
      '  TOTDCO = :TOTDCO,'
      '  MEDDCO = :MEDDCO,'
      '  MEDACR = :MEDACR,'
      '  MEDCOM = :MEDCOM,'
      '  MEDPRM = :MEDPRM,'
      '  TOTDSC = :TOTDSC,'
      '  TOTDSR = :TOTDSR,'
      '  TOTDSP = :TOTDSP,'
      '  TOTACR = :TOTACR,'
      '  DESREG = :DESREG,'
      '  CODUSU = :CODUSU,'
      '  FLGPSQ = :FLGPSQ,'
      '  DTLPSQ = :DTLPSQ,'
      '  FLGCTB = :FLGCTB,'
      '  FLGAVI = :FLGAVI,'
      '  FLGOCO = :FLGOCO,'
      '  SEQRES = :SEQRES,'
      '  ATUEST = :ATUEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
      '  CODIPI = :CODIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  CODICM = :CODICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  FLGCOM = :FLGCOM,'
      '  DTECOM = :DTECOM,'
      '  HRECOM = :HRECOM,'
      '  OBSCOM = :OBSCOM,'
      '  USUCOM = :USUCOM,'
      '  PEDANT = :PEDANT,'
      '  FLGFIN = :FLGFIN,'
      '  DTEFIN = :DTEFIN,'
      '  HREFIN = :HREFIN,'
      '  OBSFIN = :OBSFIN,'
      '  USUFIN = :USUFIN,'
      '  DTEREJ = :DTEREJ,'
      '  HREREJ = :HREREJ,'
      '  OBSREJ = :OBSREJ,'
      '  USUREJ = :USUREJ,'
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  FLGSLD = :FLGSLD,'
      '  FATRES = :FATRES,'
      '  FATGER = :FATGER,'
      '  DEVRES = :DEVRES,'
      '  DEVGER = :DEVGER,'
      '  SLDRES = :SLDRES,'
      '  SLDGER = :SLDGER,'
      '  MEDDSC = :MEDDSC,'
      '  FLGIMP = :FLGIMP,'
      '  FLGGER = :FLGGER,'
      '  LIBSLD = :LIBSLD,'
      '  DTEDEL = :DTEDEL,'
      '  HREDEL = :HREDEL,'
      '  OBSDEL = :OBSDEL,'
      '  USUDEL = :USUDEL,'
      '  DTEFPE = :DTEFPE,'
      '  HREFPE = :HREFPE,'
      '  OBSFPE = :OBSFPE,'
      '  USUFPE = :USUFPE,'
      '  FLGREQ = :FLGREQ,'
      '  LANEST = :LANEST,'
      '  FLGRES = :FLGRES,'
      '  SITRES = :SITRES,'
      '  QTDIMP = :QTDIMP,'
      '  EMPCTA = :EMPCTA,'
      '  DTECTA = :DTECTA,'
      '  NUMCTA = :NUMCTA,'
      '  PRCCTA = :PRCCTA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      
        '  (CODEMP, DTERES, NUMRES, HRERES, CODCLI, CODVEN, CODPFA, TIPPF' +
        'A, '
      'CODTIP, '
      
        '   PRFRES, DTFRES, CODATD, CODFIL, CODTRA, FLGTAB, UFERES, CGCCL' +
        'I, '
      'INSCLI, '
      
        '   CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCLI, UFECL' +
        'I, INECLI, '
      
        '   CGECLI, OBSRES, QTIRES, SEQITE, QTPRES, SEQPAR, LINRES, QTLRE' +
        'S, '
      'QTFRES, '
      
        '   BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSUB, TOTVEN, TOTCS' +
        'T, '
      'TOTRES, '
      
        '   TOTREN, TOTGER, TOTLIQ, TOTBRT, BASCOM, TOTCOM, DSCREG, DSCCO' +
        'M, '
      'TOTDCO, '
      '   MEDDCO, MEDACR, MEDCOM, MEDPRM, TOTDSC, TOTDSR, TOTDSP, '
      'TOTACR, DESREG, '
      
        '   CODUSU, FLGPSQ, DTLPSQ, FLGCTB, FLGAVI, FLGOCO, SEQRES, ATUES' +
        'T, '
      'INTFIN, '
      
        '   CONSUM, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPIC' +
        'M, TRBICM, '
      
        '   REDICM, BSCICM, INCREV, INCFIN, FLGCOM, DTECOM, HRECOM, OBSCO' +
        'M, '
      'USUCOM, '
      
        '   PEDANT, FLGFIN, DTEFIN, HREFIN, OBSFIN, USUFIN, DTEREJ, HRERE' +
        'J, '
      'OBSREJ, '
      
        '   USUREJ, TXFIPI, TXFICM, FLGSLD, FATRES, FATGER, DEVRES, DEVGE' +
        'R, '
      'SLDRES, '
      
        '   SLDGER, MEDDSC, FLGIMP, FLGGER, LIBSLD, DTEDEL, HREDEL, OBSDE' +
        'L, '
      'USUDEL, '
      
        '   DTEFPE, HREFPE, OBSFPE, USUFPE, FLGREQ, LANEST, FLGRES, SITRE' +
        'S, '
      'QTDIMP, '
      '   EMPCTA, DTECTA, NUMCTA, PRCCTA)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :HRERES, :CODCLI, :CODVEN, :CODPFA' +
        ', '
      ':TIPPFA, '
      
        '   :CODTIP, :PRFRES, :DTFRES, :CODATD, :CODFIL, :CODTRA, :FLGTAB' +
        ', '
      ':UFERES, '
      
        '   :CGCCLI, :INSCLI, :CEPCLI, :TENCLI, :ENDCLI, :REFCLI, :NUMCLI' +
        ', :BAICLI, '
      
        '   :CIDCLI, :UFECLI, :INECLI, :CGECLI, :OBSRES, :QTIRES, :SEQITE' +
        ', :QTPRES, '
      
        '   :SEQPAR, :LINRES, :QTLRES, :QTFRES, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTVEN, :TOTCST, :TOTRES, :TOTREN, :TOTGER' +
        ', '
      ':TOTLIQ, '
      
        '   :TOTBRT, :BASCOM, :TOTCOM, :DSCREG, :DSCCOM, :TOTDCO, :MEDDCO' +
        ', '
      ':MEDACR, '
      
        '   :MEDCOM, :MEDPRM, :TOTDSC, :TOTDSR, :TOTDSP, :TOTACR, :DESREG' +
        ', '
      ':CODUSU, '
      
        '   :FLGPSQ, :DTLPSQ, :FLGCTB, :FLGAVI, :FLGOCO, :SEQRES, :ATUEST' +
        ', :INTFIN, '
      
        '   :CONSUM, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM' +
        ', :TIPICM, '
      
        '   :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN, :FLGCOM, :DTECOM' +
        ', '
      ':HRECOM, '
      
        '   :OBSCOM, :USUCOM, :PEDANT, :FLGFIN, :DTEFIN, :HREFIN, :OBSFIN' +
        ', :USUFIN, '
      
        '   :DTEREJ, :HREREJ, :OBSREJ, :USUREJ, :TXFIPI, :TXFICM, :FLGSLD' +
        ', :FATRES, '
      
        '   :FATGER, :DEVRES, :DEVGER, :SLDRES, :SLDGER, :MEDDSC, :FLGIMP' +
        ', '
      ':FLGGER, '
      
        '   :LIBSLD, :DTEDEL, :HREDEL, :OBSDEL, :USUDEL, :DTEFPE, :HREFPE' +
        ', '
      ':OBSFPE, '
      
        '   :USUFPE, :FLGREQ, :LANEST, :FLGRES, :SITRES, :QTDIMP, :EMPCTA' +
        ', '
      ':DTECTA, '
      '   :NUMCTA, :PRCCTA)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 24
    Top = 381
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRe2.*,'
      
        '           CodGru || _UNICODE_FSS '#39'.'#39' || CodSub || _UNICODE_FSS ' +
        #39'.'#39' || CodPro as DscPro From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by CodEmp,DteRes,NumRes,NroRe2')
    UniDirectional = True
    ValidateWithMask = True
    Left = 24
    Top = 353
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
    object PedRe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 75
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = '              Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '      Valor Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2ICMRE2: TFloatField
      DisplayLabel = '    ICMS'
      DisplayWidth = 4
      FieldName = 'ICMRE2'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = '           Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTRE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2IPIRE2: TFloatField
      DisplayLabel = ' IPI'
      DisplayWidth = 3
      FieldName = 'IPIRE2'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object PedRe2TOTIPI: TFloatField
      DisplayLabel = '         Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
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
    object PedRe2SLDRE2: TFloatField
      FieldName = 'SLDRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VLURE2: TFloatField
      FieldName = 'VLURE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VCHRE2: TFloatField
      FieldName = 'VCHRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VRERE2: TFloatField
      FieldName = 'VRERE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VCPRE2: TFloatField
      FieldName = 'VCPRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VPRRE2: TFloatField
      FieldName = 'VPRRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2VCSRE2: TFloatField
      FieldName = 'VCSRE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
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
    object PedRe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      FieldName = 'TOTREN'
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
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedRe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedRe2CODPRM: TIntegerField
      FieldName = 'CODPRM'
      Visible = False
    end
    object PedRe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object PedRe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
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
    object PedRe2FLGRES: TStringField
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2DSCCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCCOM'
      Visible = False
    end
    object PedRe2VDSCOM: TFloatField
      DisplayWidth = 10
      FieldName = 'VDSCOM'
      Visible = False
    end
    object PedRe2TOTDCO: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDCO'
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
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    Left = 52
    Top = 353
  end
end
