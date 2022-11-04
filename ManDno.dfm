inherited fmManDno: TfmManDno
  Left = 527
  Top = 149
  Caption = 'Emissão da nota fiscal de entrada'
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
    Width = 69
    Height = 14
    Caption = 'Devoluções'
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
    Left = 166
    Top = 17
    Width = 431
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 264
    Width = 101
    Height = 14
    Caption = 'Itens devolvidos'
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
    Left = 166
    Top = 272
    Width = 404
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bIncluir: TSpeedButton
    Left = 578
    Top = 452
    Width = 207
    Height = 28
    Hint = 'Emitir Nota Fiscal de Entrada'
    Caption = 'F4-Emitir Nota Fiscal'
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
    OnClick = bIncluirClick
  end
  object SpeedButton1: TSpeedButton
    Left = 599
    Top = 3
    Width = 185
    Height = 28
    Hint = 'Excluir Pedidos Existentes'
    Caption = '&Atualizar Informações'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object dbRe2: TdxDBGraphicEdit
    Left = 3
    Top = 287
    Width = 783
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 165
  end
  object dbRes: TdxDBGraphicEdit
    Left = 3
    Top = 32
    Width = 781
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
    Height = 228
  end
  object Panel1: TPanel
    Left = 571
    Top = 260
    Width = 213
    Height = 25
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' No. Nota Fiscal :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object EdPsqNumNfs: TdxColorEdit
      Left = 106
      Top = 1
      Width = 106
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
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      OnKeyPress = EdPsqNumNfsKeyPress
      CharCase = ecUpperCase
      OnChange = EdPsqNumNfsChange
      CorDeFoco = clInfoBk
    end
  end
  object grDev: ThGrid
    Tag = 1
    Left = 5
    Top = 34
    Width = 775
    Height = 222
    Selected.Strings = (
      'NUMNFS'#9'15'#9'No. Nota Fiscal  '
      'NUMRES'#9'10'#9'Pedido'
      'NFSCLI'#9'25'#9'No. Nota Fiscal Cliente'
      'DTEDEV'#9'10'#9'Emissão'
      'HREDEV'#9'8'#9'Hora'
      'CODCLI'#9'10'#9'Cliente'
      'CODVEN'#9'10'#9'Vendedor'
      'TOTDEV'#9'10'#9'        Total Devolvido'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDev
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grDv2: ThGrid
    Tag = 1
    Left = 5
    Top = 289
    Width = 777
    Height = 159
    Selected.Strings = (
      'DSCPRO'#9'85'#9'Item'
      'ULTQTD'#9'10'#9'          Quantidade Devolvida'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsDv2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnNomCli: TPanel
    Left = 173
    Top = 260
    Width = 396
    Height = 25
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
    TabOrder = 5
  end
  object pnLogUsu: TPanel
    Left = 282
    Top = 3
    Width = 316
    Height = 28
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
    TabOrder = 6
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 227
  end
  object UpDev: TUpdateSQL
    ModifySQL.Strings = (
      'update FatDev'
      'set'
      '  NUMNFS = :NUMNFS,'
      '  DTEDEV = :DTEDEV,'
      '  HREDEV = :HREDEV,'
      '  UFEDEV = :UFEDEV,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  DSCREG = :DSCREG,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CODFIL = :CODFIL,'
      '  QTDNFS = :QTDNFS,'
      '  NRONFS = :NRONFS,'
      '  NROSUF = :NROSUF,'
      '  FLGAVI = :FLGAVI,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTDEV = :FRTDEV,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARDEV = :MARDEV,'
      '  NRODEV = :NRODEV,'
      '  ESPDEV = :ESPDEV,'
      '  NOMTRA = :NOMTRA,'
      '  CGCTRA = :CGCTRA,'
      '  INSTRA = :INSTRA,'
      '  CEPTRA = :CEPTRA,'
      '  TENTRA = :TENTRA,'
      '  ENDTRA = :ENDTRA,'
      '  REFTRA = :REFTRA,'
      '  NUMTRA = :NUMTRA,'
      '  BAITRA = :BAITRA,'
      '  CIDTRA = :CIDTRA,'
      '  UFETRA = :UFETRA,'
      '  PLCTRA = :PLCTRA,'
      '  UFEPLC = :UFEPLC,'
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
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSDEV = :OBSDEV,'
      '  QTDDEV = :QTDDEV,'
      '  SEQITE = :SEQITE,'
      '  QTIDEV = :QTIDEV,'
      '  LINDEV = :LINDEV,'
      '  QTDVOL = :QTDVOL,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTDEV = :TOTDEV,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ICMFRT = :ICMFRT,'
      '  BSICMF = :BSICMF,'
      '  BAICMF = :BAICMF,'
      '  TOICMF = :TOICMF,'
      '  ICMSEG = :ICMSEG,'
      '  BSICMS = :BSICMS,'
      '  BAICMS = :BAICMS,'
      '  TOICMS = :TOICMS,'
      '  ICMDES = :ICMDES,'
      '  BSICMD = :BSICMD,'
      '  BAICMD = :BAICMD,'
      '  TOICMD = :TOICMD,'
      '  IPIFRT = :IPIFRT,'
      '  BSIPIF = :BSIPIF,'
      '  BAIPIF = :BAIPIF,'
      '  TOIPIF = :TOIPIF,'
      '  IPISEG = :IPISEG,'
      '  BSIPIS = :BSIPIS,'
      '  BAIPIS = :BAIPIS,'
      '  TOIPIS = :TOIPIS,'
      '  IPIDES = :IPIDES,'
      '  BSIPID = :BSIPID,'
      '  BAIPID = :BAIPID,'
      '  TOIPID = :TOIPID,'
      '  TOTGER = :TOTGER,'
      '  BASCOM = :BASCOM,'
      '  TOTCOM = :TOTCOM,'
      '  TOTDSR = :TOTDSR,'
      '  DESREG = :DESREG,'
      '  CODUSU = :CODUSU,'
      '  ATUEST = :ATUEST,'
      '  LANEST = :LANEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
      '  FLGCTB = :FLGCTB,'
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
      '  OBSMDV = :OBSMDV,'
      '  SEQREG = :SEQREG,'
      '  FLGDIF = :FLGDIF,'
      '  FLGDEV = :FLGDEV,'
      '  FLGATU = :FLGATU,'
      '  SITDEV = :SITDEV,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  MODPFA = :MODPFA,'
      '  FLGNFS = :FLGNFS,'
      '  HRCDEV = :HRCDEV,'
      '  DTCDEV = :DTCDEV,'
      '  USUCFT = :USUCFT,'
      '  OBSCFT = :OBSCFT,'
      '  FLGSIN = :FLGSIN,'
      '  FLGFSC = :FLGFSC,'
      '  SERNOT = :SERNOT,'
      '  MODDEV = :MODDEV,'
      '  OB1DEV = :OB1DEV,'
      '  OB2DEV = :OB2DEV,'
      '  OB3DEV = :OB3DEV,'
      '  OB4DEV = :OB4DEV,'
      '  OB5DEV = :OB5DEV,'
      '  OB6DEV = :OB6DEV,'
      '  OB7DEV = :OB7DEV,'
      '  OB8DEV = :OB8DEV,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT,'
      '  QTDDSE = :QTDDSE,'
      '  SEQDSE = :SEQDSE,'
      '  TOTDSE = :TOTDSE,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  TOTFAT = :TOTFAT,'
      '  FLGTOT = :FLGTOT,'
      '  CODTCL = :CODTCL,'
      '  FLGENV = :FLGENV,'
      '  NFSCLI = :NFSCLI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV')
    InsertSQL.Strings = (
      'insert into FatDev'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQFAT, SEQDEV, NUMNFS, DTEDE' +
        'V, '
      'HREDEV, '
      
        '   UFEDEV, CODPFA, TIPPFA, DSCREG, PERPIS, PERCOF, CODFIL, QTDNF' +
        'S, '
      'NRONFS, '
      
        '   NROSUF, FLGAVI, CGCCLI, INSCLI, CODCF1, CODCF2, FRTDEV, FLGEN' +
        'T, '
      'FLGSAI, '
      
        '   DESNAT, INSSUB, TIPFRT, MARDEV, NRODEV, ESPDEV, NOMTRA, CGCTR' +
        'A, '
      'INSTRA, '
      
        '   CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTRA, UFETR' +
        'A, '
      'PLCTRA, '
      
        '   UFEPLC, CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCL' +
        'I, UFECLI, '
      
        '   INECLI, CGECLI, TXFIPI, TXFICM, OBSDEV, QTDDEV, SEQITE, QTIDE' +
        'V, LINDEV, '
      
        '   QTDVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIPI, TOTIPI, BASIC' +
        'M, TOTICM, '
      
        '   BASSUB, TOTSUB, TOTDEV, TOTPIS, TOTCOF, TOTFRT, TOTSEG, TOTDE' +
        'S, '
      'ICMFRT, '
      
        '   BSICMF, BAICMF, TOICMF, ICMSEG, BSICMS, BAICMS, TOICMS, ICMDE' +
        'S, '
      'BSICMD, '
      
        '   BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPIF, TOIPIF, IPISEG, BSIPI' +
        'S, BAIPIS, '
      
        '   TOIPIS, IPIDES, BSIPID, BAIPID, TOIPID, TOTGER, BASCOM, TOTCO' +
        'M, '
      'TOTDSR, '
      
        '   DESREG, CODUSU, ATUEST, LANEST, INTFIN, CONSUM, FLGCTB, CODIP' +
        'I, '
      'TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, CODICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      
        '   INCFIN, OBSMDV, SEQREG, FLGDIF, FLGDEV, FLGATU, SITDEV, CODCL' +
        'I, '
      'CODVEN, '
      
        '   MODPFA, FLGNFS, HRCDEV, DTCDEV, USUCFT, OBSCFT, FLGSIN, FLGFS' +
        'C, '
      'SERNOT, '
      
        '   MODDEV, OB1DEV, OB2DEV, OB3DEV, OB4DEV, OB5DEV, OB6DEV, OB7DE' +
        'V, '
      'OB8DEV, '
      
        '   FLGIMP, NOMENT, QTDDSE, SEQDSE, TOTDSE, BASISS, TOTISS, TOTFA' +
        'T, '
      'FLGTOT, '
      '   CODTCL, FLGENV, NFSCLI)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQFAT, :SEQDEV, :NUMNFS' +
        ', '
      ':DTEDEV, '
      
        '   :HREDEV, :UFEDEV, :CODPFA, :TIPPFA, :DSCREG, :PERPIS, :PERCOF' +
        ', :CODFIL, '
      
        '   :QTDNFS, :NRONFS, :NROSUF, :FLGAVI, :CGCCLI, :INSCLI, :CODCF1' +
        ', :CODCF2, '
      
        '   :FRTDEV, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT, :MARDEV' +
        ', '
      ':NRODEV, '
      
        '   :ESPDEV, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA, :ENDTRA' +
        ', '
      ':REFTRA, '
      
        '   :NUMTRA, :BAITRA, :CIDTRA, :UFETRA, :PLCTRA, :UFEPLC, :CEPCLI' +
        ', :TENCLI, '
      
        '   :ENDCLI, :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI' +
        ', :CGECLI, '
      
        '   :TXFIPI, :TXFICM, :OBSDEV, :QTDDEV, :SEQITE, :QTIDEV, :LINDEV' +
        ', :QTDVOL, '
      
        '   :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI, :TOTIPI, :BASICM' +
        ', :TOTICM, '
      
        '   :BASSUB, :TOTSUB, :TOTDEV, :TOTPIS, :TOTCOF, :TOTFRT, :TOTSEG' +
        ', '
      ':TOTDES, '
      
        '   :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS, :BAICMS' +
        ', :TOICMS, '
      
        '   :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF, :BAIPIF' +
        ', :TOIPIF, '
      
        '   :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID, :BAIPID' +
        ', :TOIPID, '
      
        '   :TOTGER, :BASCOM, :TOTCOM, :TOTDSR, :DESREG, :CODUSU, :ATUEST' +
        ', '
      ':LANEST, '
      
        '   :INTFIN, :CONSUM, :FLGCTB, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :OBSMDV, '
      
        '   :SEQREG, :FLGDIF, :FLGDEV, :FLGATU, :SITDEV, :CODCLI, :CODVEN' +
        ', '
      ':MODPFA, '
      
        '   :FLGNFS, :HRCDEV, :DTCDEV, :USUCFT, :OBSCFT, :FLGSIN, :FLGFSC' +
        ', '
      ':SERNOT, '
      
        '   :MODDEV, :OB1DEV, :OB2DEV, :OB3DEV, :OB4DEV, :OB5DEV, :OB6DEV' +
        ', '
      ':OB7DEV, '
      
        '   :OB8DEV, :FLGIMP, :NOMENT, :QTDDSE, :SEQDSE, :TOTDSE, :BASISS' +
        ', '
      ':TOTISS, '
      '   :TOTFAT, :FLGTOT, :CODTCL, :FLGENV, :NFSCLI)')
    DeleteSQL.Strings = (
      'delete from FatDev'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQFAT = :OLD_SEQFAT and'
      '  SEQDEV = :OLD_SEQDEV')
    Left = 5
    Top = 227
  end
  object FatDev: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatDev.*,'
      '           FinCli.NomCli,'
      '           FinVen.ApeVen,'
      '           FinVen.NomVen,'
      '           GerUsu.LogUsu'
      'From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)'
      
        '                   LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.C' +
        'odVen)'
      
        '                  LEFT JOIN GerUsu ON (FatDev.CodUsu = GerUsu.Co' +
        'dUsu)'
      'Where FatDev.SitDev = '#39'Concluido'#39' or FatDev.SitDev = '#39'Faturando'#39
      'Order by FatDev.NumNfs')
    UpdateObject = UpDev
    ValidateWithMask = True
    Left = 5
    Top = 199
    object FatDevNUMNFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Nota Fiscal  '
      DisplayWidth = 15
      FieldName = 'NUMNFS'
    end
    object FatDevNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object FatDevNFSCLI: TIntegerField
      DisplayLabel = 'No. Nota Fiscal Cliente'
      DisplayWidth = 25
      FieldName = 'NFSCLI'
    end
    object FatDevDTEDEV: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEDEV'
    end
    object FatDevHREDEV: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object FatDevCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vendedor'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object FatDevTOTDEV: TFloatField
      DisplayLabel = '        Total Devolvido'
      DisplayWidth = 10
      FieldName = 'TOTDEV'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatDevLOGUSU: TStringField
      DisplayLabel = 'Responsavel'
      DisplayWidth = 28
      FieldName = 'LOGUSU'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatDevDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatDevSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatDevSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatDevSEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Visible = False
    end
    object FatDevUFEDEV: TStringField
      FieldName = 'UFEDEV'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevCODPFA: TStringField
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
    end
    object FatDevPERPIS: TFloatField
      FieldName = 'PERPIS'
      Visible = False
    end
    object FatDevPERCOF: TFloatField
      FieldName = 'PERCOF'
      Visible = False
    end
    object FatDevCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object FatDevQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Visible = False
    end
    object FatDevNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Visible = False
    end
    object FatDevNROSUF: TStringField
      FieldName = 'NROSUF'
      Visible = False
      FixedChar = True
    end
    object FatDevFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevINSCLI: TStringField
      FieldName = 'INSCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCODCF1: TStringField
      FieldName = 'CODCF1'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevCODCF2: TStringField
      FieldName = 'CODCF2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevFRTDEV: TStringField
      FieldName = 'FRTDEV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGENT: TStringField
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevDESNAT: TStringField
      FieldName = 'DESNAT'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDevINSSUB: TStringField
      FieldName = 'INSSUB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevMARDEV: TStringField
      FieldName = 'MARDEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevNRODEV: TStringField
      FieldName = 'NRODEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevESPDEV: TStringField
      FieldName = 'ESPDEV'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatDevNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevINSTRA: TStringField
      FieldName = 'INSTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevTENTRA: TStringField
      FieldName = 'TENTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevENDTRA: TStringField
      FieldName = 'ENDTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevREFTRA: TStringField
      FieldName = 'REFTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevBAITRA: TStringField
      FieldName = 'BAITRA'
      Visible = False
      FixedChar = True
    end
    object FatDevCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Visible = False
      FixedChar = True
    end
    object FatDevUFETRA: TStringField
      FieldName = 'UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevTENCLI: TStringField
      FieldName = 'TENCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevENDCLI: TStringField
      FieldName = 'ENDCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevREFCLI: TStringField
      FieldName = 'REFCLI'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDevBAICLI: TStringField
      FieldName = 'BAICLI'
      Visible = False
      FixedChar = True
    end
    object FatDevCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Visible = False
      FixedChar = True
    end
    object FatDevUFECLI: TStringField
      FieldName = 'UFECLI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDevINECLI: TStringField
      FieldName = 'INECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevCGECLI: TStringField
      FieldName = 'CGECLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatDevTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatDevTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object FatDevOBSDEV: TStringField
      FieldName = 'OBSDEV'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatDevQTDDEV: TIntegerField
      FieldName = 'QTDDEV'
      Visible = False
    end
    object FatDevSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object FatDevQTIDEV: TIntegerField
      FieldName = 'QTIDEV'
      Visible = False
    end
    object FatDevLINDEV: TIntegerField
      FieldName = 'LINDEV'
      Visible = False
    end
    object FatDevQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object FatDevINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Visible = False
    end
    object FatDevTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object FatDevINFBRT: TFloatField
      FieldName = 'INFBRT'
      Visible = False
    end
    object FatDevTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object FatDevBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object FatDevTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object FatDevBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object FatDevTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object FatDevBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object FatDevTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatDevTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object FatDevTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object FatDevTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Visible = False
    end
    object FatDevTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Visible = False
    end
    object FatDevTOTDES: TFloatField
      FieldName = 'TOTDES'
      Visible = False
    end
    object FatDevICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Visible = False
    end
    object FatDevBSICMF: TFloatField
      FieldName = 'BSICMF'
      Visible = False
    end
    object FatDevBAICMF: TFloatField
      FieldName = 'BAICMF'
      Visible = False
    end
    object FatDevTOICMF: TFloatField
      FieldName = 'TOICMF'
      Visible = False
    end
    object FatDevICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Visible = False
    end
    object FatDevBSICMS: TFloatField
      FieldName = 'BSICMS'
      Visible = False
    end
    object FatDevBAICMS: TFloatField
      FieldName = 'BAICMS'
      Visible = False
    end
    object FatDevTOICMS: TFloatField
      FieldName = 'TOICMS'
      Visible = False
    end
    object FatDevICMDES: TFloatField
      FieldName = 'ICMDES'
      Visible = False
    end
    object FatDevBSICMD: TFloatField
      FieldName = 'BSICMD'
      Visible = False
    end
    object FatDevBAICMD: TFloatField
      FieldName = 'BAICMD'
      Visible = False
    end
    object FatDevTOICMD: TFloatField
      FieldName = 'TOICMD'
      Visible = False
    end
    object FatDevIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Visible = False
    end
    object FatDevBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Visible = False
    end
    object FatDevBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Visible = False
    end
    object FatDevTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Visible = False
    end
    object FatDevIPISEG: TFloatField
      FieldName = 'IPISEG'
      Visible = False
    end
    object FatDevBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Visible = False
    end
    object FatDevBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Visible = False
    end
    object FatDevTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Visible = False
    end
    object FatDevIPIDES: TFloatField
      FieldName = 'IPIDES'
      Visible = False
    end
    object FatDevBSIPID: TFloatField
      FieldName = 'BSIPID'
      Visible = False
    end
    object FatDevBAIPID: TFloatField
      FieldName = 'BAIPID'
      Visible = False
    end
    object FatDevTOIPID: TFloatField
      FieldName = 'TOIPID'
      Visible = False
    end
    object FatDevTOTGER: TFloatField
      FieldName = 'TOTGER'
      Visible = False
    end
    object FatDevBASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object FatDevTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object FatDevTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatDevDESREG: TStringField
      FieldName = 'DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDevCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object FatDevATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDevTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object FatDevBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object FatDevCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object FatDevTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDevTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object FatDevBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object FatDevINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object FatDevINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object FatDevOBSMDV: TMemoField
      FieldName = 'OBSMDV'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatDevSEQREG: TStringField
      FieldName = 'SEQREG'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object FatDevFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGDEV: TStringField
      FieldName = 'FLGDEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevSITDEV: TStringField
      FieldName = 'SITDEV'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object FatDevNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
      FixedChar = True
    end
    object FatDevNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatDevMODPFA: TStringField
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object FatDevFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDevHRCDEV: TStringField
      FieldName = 'HRCDEV'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatDevDTCDEV: TDateTimeField
      FieldName = 'DTCDEV'
      Visible = False
    end
    object FatDevUSUCFT: TIntegerField
      FieldName = 'USUCFT'
      Visible = False
    end
    object FatDevOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatDevFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevFLGFSC: TStringField
      FieldName = 'FLGFSC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevSERNOT: TStringField
      FieldName = 'SERNOT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevMODDEV: TStringField
      FieldName = 'MODDEV'
      Visible = False
      FixedChar = True
    end
    object FatDevOB1DEV: TStringField
      FieldName = 'OB1DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB2DEV: TStringField
      FieldName = 'OB2DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB3DEV: TStringField
      FieldName = 'OB3DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB4DEV: TStringField
      FieldName = 'OB4DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB5DEV: TStringField
      FieldName = 'OB5DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB6DEV: TStringField
      FieldName = 'OB6DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB7DEV: TStringField
      FieldName = 'OB7DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevOB8DEV: TStringField
      FieldName = 'OB8DEV'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatDevFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevNOMENT: TStringField
      FieldName = 'NOMENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDevQTDDSE: TIntegerField
      FieldName = 'QTDDSE'
      Visible = False
    end
    object FatDevSEQDSE: TIntegerField
      FieldName = 'SEQDSE'
      Visible = False
    end
    object FatDevTOTDSE: TFloatField
      FieldName = 'TOTDSE'
      Visible = False
    end
    object FatDevBASISS: TFloatField
      FieldName = 'BASISS'
      Visible = False
    end
    object FatDevTOTISS: TFloatField
      FieldName = 'TOTISS'
      Visible = False
    end
    object FatDevTOTFAT: TFloatField
      FieldName = 'TOTFAT'
      Visible = False
    end
    object FatDevFLGTOT: TStringField
      FieldName = 'FLGTOT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDevCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Visible = False
    end
    object FatDevFLGENV: TStringField
      FieldName = 'FLGENV'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object DsDev: TwwDataSource
    DataSet = FatDev
    OnDataChange = DsDevDataChange
    Left = 33
    Top = 199
  end
  object FatDv2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsDev
    SQL.Strings = (
      'Select FatDv2.*,'
      
        '           TextoOcor(FatDv2.CodGru,'#39'.'#39',FatDv2.CodSub,'#39'.'#39',FatDv2.' +
        'CodPro,'#39'-'#39',FatDv2.DesDv2) as DscPro From FatDv2'
      'Where FatDv2.CodEmp = :CodEmp'
      '     and FatDv2.DteRes = :DteRes'
      '     and FatDv2.NumRes = :NumRes'
      '     and FatDv2.SeqLib = :SeqLib'
      '     and FatDv2.SeqFat = :SeqFat'
      '     and FatDv2.SeqDev = :SeqDev'
      '     and FatDv2.UltQtd > 0'
      
        'Order by FatDv2.CodEmp,FatDv2.DteRes,FatDv2.NumRes,FatDv2.SeqLib' +
        ',FatDv2.SeqFat,FatDv2.SeqDev,FatDv2.SeqDv2')
    ValidateWithMask = True
    Left = 71
    Top = 199
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
      end
      item
        DataType = ftInteger
        Name = 'SEQLIB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQFAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQDEV'
        ParamType = ptInput
      end>
    object FatDv2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 85
      FieldName = 'DSCPRO'
      FixedChar = True
      Size = 100
    end
    object FatDv2ULTQTD: TFloatField
      DisplayLabel = '          Quantidade Devolvida'
      DisplayWidth = 10
      FieldName = 'ULTQTD'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatDv2NUMRES: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 8
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatDv2NRONFS: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Visible = False
    end
    object FatDv2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatDv2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatDv2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatDv2SEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatDv2SEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Visible = False
    end
    object FatDv2SEQDV2: TIntegerField
      FieldName = 'SEQDV2'
      Visible = False
    end
    object FatDv2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object FatDv2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FatDv2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object FatDv2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDv2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatDv2DESDV2: TStringField
      FieldName = 'DESDV2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatDv2OBSDV2: TStringField
      FieldName = 'OBSDV2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatDv2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatDv2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2REFDV2: TStringField
      FieldName = 'REFDV2'
      Visible = False
      FixedChar = True
    end
    object FatDv2LIQDV2: TFloatField
      FieldName = 'LIQDV2'
      Visible = False
    end
    object FatDv2BRTDV2: TFloatField
      FieldName = 'BRTDV2'
      Visible = False
    end
    object FatDv2LINDV2: TIntegerField
      FieldName = 'LINDV2'
      Visible = False
    end
    object FatDv2VLUDV2: TFloatField
      FieldName = 'VLUDV2'
      Visible = False
    end
    object FatDv2VCHDV2: TFloatField
      FieldName = 'VCHDV2'
      Visible = False
    end
    object FatDv2VREDV2: TFloatField
      FieldName = 'VREDV2'
      Visible = False
    end
    object FatDv2VCPDV2: TFloatField
      FieldName = 'VCPDV2'
      Visible = False
    end
    object FatDv2VPRDV2: TFloatField
      FieldName = 'VPRDV2'
      Visible = False
    end
    object FatDv2DSRDV2: TFloatField
      FieldName = 'DSRDV2'
      Visible = False
    end
    object FatDv2VDRDV2: TFloatField
      FieldName = 'VDRDV2'
      Visible = False
    end
    object FatDv2VLQDV2: TFloatField
      FieldName = 'VLQDV2'
      Visible = False
    end
    object FatDv2IPIDV2: TFloatField
      FieldName = 'IPIDV2'
      Visible = False
    end
    object FatDv2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDv2ICMDV2: TFloatField
      FieldName = 'ICMDV2'
      Visible = False
    end
    object FatDv2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object FatDv2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object FatDv2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object FatDv2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object FatDv2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object FatDv2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatDv2TOTDV2: TFloatField
      FieldName = 'TOTDV2'
      Visible = False
    end
    object FatDv2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
    end
    object FatDv2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object FatDv2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object FatDv2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatDv2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object FatDv2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object FatDv2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object FatDv2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatDv2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object FatDv2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object FatDv2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object FatDv2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatDv2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object FatDv2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object FatDv2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object FatDv2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object FatDv2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatDv2SEQNFS: TIntegerField
      FieldName = 'SEQNFS'
      Visible = False
    end
    object FatDv2NRODV2: TIntegerField
      FieldName = 'NRODV2'
      Visible = False
    end
    object FatDv2CODVWA: TStringField
      FieldName = 'CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object FatDv2FLGREQ: TStringField
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatDv2QTDDV2: TFloatField
      FieldName = 'QTDDV2'
      Visible = False
    end
    object FatDv2SLDDV2: TFloatField
      FieldName = 'SLDDV2'
      Visible = False
    end
    object FatDv2QTPDV2: TFloatField
      FieldName = 'QTPDV2'
      Visible = False
    end
    object FatDv2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
      Visible = False
    end
    object FatDv2NROPE2: TIntegerField
      FieldName = 'NROPE2'
      Visible = False
    end
    object FatDv2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object FatDv2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object FatDv2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object FatDv2SEQNFD: TIntegerField
      FieldName = 'SEQNFD'
      Visible = False
    end
    object FatDv2SEQDV3: TIntegerField
      FieldName = 'SEQDV3'
      Visible = False
    end
  end
  object DsDv2: TwwDataSource
    DataSet = FatDv2
    Left = 99
    Top = 199
  end
end
