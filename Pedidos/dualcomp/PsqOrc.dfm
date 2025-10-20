inherited fmPsqOrc: TfmPsqOrc
  Left = 181
  Top = 179
  Caption = 'Faturamento Realizados para o Pedido'
  ClientHeight = 450
  ClientWidth = 757
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 757
    Height = 450
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 3
    Top = 5
    Width = 123
    Height = 14
    Caption = 'Romaneios Emitidos'
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
    Left = 3
    Top = 151
    Width = 173
    Height = 14
    Caption = 'Itens Emitidos no Romaneio'
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
    Left = 702
    Top = 429
    Width = 54
    Height = 16
    Caption = 'ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 3
    Top = 429
    Width = 383
    Height = 16
    Caption = 'F1-Detalhes de Entrega F2-Vencimentos F5-Imprimir Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 3
    Top = 290
    Width = 408
    Height = 14
    Caption = 'Itens não Enviados no Romaneio por Indisponibilidade de Estoque'
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
  object grPro: TdxDBGraphicEdit
    Left = 0
    Top = 20
    Width = 756
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
    Height = 122
  end
  object grFat: ThGrid
    Tag = 1
    Left = 2
    Top = 22
    Width = 750
    Height = 116
    Selected.Strings = (
      'DTELIB'#9'16'#9'Liberado Em    '#9'F'
      'HRELIB'#9'10'#9'Horario    '#9'F'
      'DTEORC'#9'16'#9'Faturado Em    '#9'F'
      'HREORC'#9'10'#9'Horario    '#9'F'
      'TOTORC'#9'11'#9'                              Total Itens'#9'F'
      'TOTGER'#9'11'#9'                       Total Geral'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsOrc
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
    TitleLines = 3
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnNomLib: TPanel
    Left = 294
    Top = 143
    Width = 230
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Liberado Por'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object pnNomFat: TPanel
    Left = 525
    Top = 143
    Width = 230
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Faturado Por'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 167
    Width = 756
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
    Height = 122
  end
  object grOr2: ThGrid
    Tag = 1
    Left = 3
    Top = 169
    Width = 750
    Height = 116
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'
      'DESOR2'#9'40'#9' '
      'QTPOR2'#9'10'#9'Quantidade'
      'VLUOR2'#9'15'#9'       Valor Unitário'
      'ICMOR2'#9'5'#9'    ICMS'
      'TOTOR2'#9'10'#9'         Total Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsOr2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 5
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
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 1
    Top = 305
    Width = 756
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
    Height = 122
  end
  object grLb2: ThGrid
    Tag = 1
    Left = 3
    Top = 307
    Width = 750
    Height = 116
    Selected.Strings = (
      'DESLB2'#9'66'#9'Item '
      'SLDLB2'#9'10'#9'   Quantidade'
      'VLQLB2'#9'10'#9'    Valor Unitário'
      'ICMLB2'#9'5'#9'  ICMS'
      'IPILB2'#9'3'#9'   IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLb2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
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
  object pnCodIte1: TPanel
    Left = 43
    Top = 186
    Width = 117
    Height = 14
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '0-000.0000.00000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnCodIte2: TPanel
    Left = 43
    Top = 324
    Width = 117
    Height = 14
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '0-000.0000.00000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object FatOrc: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatOrc.CodEmp,'
      '           FatOrc.DteRes,'
      '           FatOrc.NumRes,'
      '           FatOrc.SeqLib,'
      '           FatOrc.SeqOrc,'
      '           FatOrc.CodCli,'
      '           FatOrc.DteOrc,'
      '           FatOrc.HreOrc,'
      '           FatOrc.TotOrc,'
      '           FatOrc.TotGer,'
      '           FatOrc.QtdVol,'
      '           FatOrc.DteSda,'
      '           FatOrc.HreSda,'
      '           FatOrc.ObsSda,'
      '           FatOrc.ObsEnt,'
      '           FatOrc.HreAtu,'
      '           FatOrc.DteAtu,'
      '           FatOrc.DteEnt,'
      '           FatOrc.HreEnt,'
      '           FatOrc.QtpOrc,'
      '           FatOrc.TraSda,'
      '           FatOrc.CodVei,'
      '           FatOrc.UsuAtu,'
      '           FatOrc.CodUsu as UsuFat,'
      '           PedLib.DteLib,'
      '           PedLib.HreLib,'
      '           FatOrc.NroCol,'
      '           PedLib.CodUsu as UsuLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = PedLib.CodU' +
        'su) as NomLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = FatOrc.CodU' +
        'su) as NomOrc'
      'From FatOrc INNER JOIN PedLib ON (FatOrc.CodEmp = PedLib.CodEmp)'
      
        '                                                    AND (FatOrc.' +
        'DteRes = PedLib.DteRes)'
      
        '                                                    AND (FatOrc.' +
        'NumRes = PedLib.NumRes)'
      
        '                                                    AND (FatOrc.' +
        'SeqLib = PedLib.SeqLib)'
      'Where FatOrc.CodEmp = :CodEmp'
      '     and FatOrc.DteRes = :DteRes'
      '     and FatOrc.NumRes = :NumRes'
      '     and FatOrc.SitOrc = '#39'Faturado'#39
      
        'Order by FatOrc.CodEmp,FatOrc.DteRes,FatOrc.NumRes,FatOrc.SeqLib' +
        ',FatOrc.SeqOrc')
    ValidateWithMask = True
    Left = 4
    Top = 109
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
    object FatOrcDTELIB: TDateTimeField
      DisplayLabel = 'Liberado Em    '
      DisplayWidth = 16
      FieldName = 'DTELIB'
    end
    object FatOrcHRELIB: TStringField
      DisplayLabel = 'Horario    '
      DisplayWidth = 10
      FieldName = 'HRELIB'
      FixedChar = True
      Size = 8
    end
    object FatOrcDTEORC: TDateTimeField
      DisplayLabel = 'Faturado Em    '
      DisplayWidth = 16
      FieldName = 'DTEORC'
    end
    object FatOrcHREORC: TStringField
      DisplayLabel = 'Horario    '
      DisplayWidth = 10
      FieldName = 'HREORC'
      FixedChar = True
      Size = 8
    end
    object FatOrcTOTORC: TFloatField
      DisplayLabel = '                              Total Itens'
      DisplayWidth = 11
      FieldName = 'TOTORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatOrcTOTGER: TFloatField
      DisplayLabel = '                       Total Geral'
      DisplayWidth = 11
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatOrcCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatOrcDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatOrcNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatOrcSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatOrcSEQORC: TIntegerField
      FieldName = 'SEQORC'
      Visible = False
    end
    object FatOrcUSUFAT: TIntegerField
      FieldName = 'USUFAT'
      Visible = False
    end
    object FatOrcUSULIB: TIntegerField
      FieldName = 'USULIB'
      Visible = False
    end
    object FatOrcNOMLIB: TStringField
      FieldName = 'NOMLIB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatOrcNOMORC: TStringField
      FieldName = 'NOMORC'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatOrcQTPORC: TIntegerField
      FieldName = 'QTPORC'
      Visible = False
    end
    object FatOrcNROCOL: TStringField
      FieldName = 'NROCOL'
      Visible = False
      FixedChar = True
    end
    object FatOrcTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Visible = False
    end
    object FatOrcCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Visible = False
    end
    object FatOrcUSUATU: TIntegerField
      FieldName = 'USUATU'
      Visible = False
    end
    object FatOrcQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object FatOrcDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Visible = False
    end
    object FatOrcHRESDA: TStringField
      FieldName = 'HRESDA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Visible = False
    end
    object FatOrcHREENT: TStringField
      FieldName = 'HREENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcHREATU: TStringField
      FieldName = 'HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Visible = False
    end
    object FatOrcOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatOrcOBSENT: TStringField
      FieldName = 'OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatOrcCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
  end
  object DsOrc: TwwDataSource
    DataSet = FatOrc
    OnDataChange = DsOrcDataChange
    Left = 32
    Top = 109
  end
  object DsOr2: TwwDataSource
    DataSet = FatOr2
    OnDataChange = DsOr2DataChange
    Left = 32
    Top = 256
  end
  object FatOr2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsOrc
    SQL.Strings = (
      'Select FatOr2.*,'
      
        '           CodGru || _UNICODE_FSS '#39'.'#39' || CodSub || _UNICODE_FSS ' +
        #39'.'#39' || CodPro as DscPro From FatOr2'
      'Where CodEmp = :CodEmp'
      '     and DteRes = :DteRes'
      '     and NumRes = :NumRes'
      '     and SeqLib = :SeqLib'
      '     and SeqOrc = :SeqOrc'
      'Order by CodEmp,DteRes,NumRes,SeqLib,SeqOrc,NroOr2')
    ValidateWithMask = True
    Left = 4
    Top = 256
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
        Name = 'SEQORC'
        ParamType = ptInput
      end>
    object FatOr2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object FatOr2DESOR2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 40
      FieldName = 'DESOR2'
      FixedChar = True
      Size = 70
    end
    object FatOr2QTPOR2: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPOR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatOr2VLUOR2: TFloatField
      DisplayLabel = '       Valor Unitário'
      DisplayWidth = 15
      FieldName = 'VLUOR2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatOr2ICMOR2: TFloatField
      DisplayLabel = '    ICMS'
      DisplayWidth = 5
      FieldName = 'ICMOR2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatOr2TOTOR2: TFloatField
      DisplayLabel = '         Total Item'
      DisplayWidth = 10
      FieldName = 'TOTOR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatOr2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatOr2IPIOR2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPIOR2'
      Visible = False
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatOr2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatOr2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatOr2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatOr2SEQORC: TIntegerField
      FieldName = 'SEQORC'
      Visible = False
    end
    object FatOr2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object FatOr2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatOr2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatOr2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object FatOr2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object FatOr2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatOr2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatOr2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatOr2SEQOR2: TIntegerField
      FieldName = 'SEQOR2'
      Visible = False
    end
    object FatOr2OBSOR2: TStringField
      FieldName = 'OBSOR2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatOr2QTDOR2: TFloatField
      FieldName = 'QTDOR2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatOr2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object FatOr2NROOR2: TIntegerField
      FieldName = 'NROOR2'
      Visible = False
    end
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
    OpcoesPreview.CaptionPreview = 'Faturamento Realizados para o Pedido'
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
    TitulodoRelatorio = 'Faturamento Realizados para o Pedido'
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
    Left = 122
    Top = 81
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 62
    Top = 81
  end
  object quRes: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 90
    Top = 81
  end
  object quLb2: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 90
    Top = 109
  end
  object quLib: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 62
    Top = 109
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsOrc
    SQL.Strings = (
      'Select PedLb2.CodEmp,'
      '           PedLb2.DteRes,'
      '           PedLb2.NumRes,'
      '           PedLb2.SeqLib,'
      '           PedLb2.SeqLb2,'
      '           PedLb2.CodGru,'
      '           PedLb2.CodSub,'
      '           PedLb2.CodPro,'
      '           PedLb2.DesLb2,'
      '           PedLb2.SldLb2,'
      '           PedLb2.VlqLb2,'
      '           PedLb2.IpiLb2,'
      '           PedLb2.IcmLb2'
      'From PedLb2'
      'Where PedLb2.CodEmp = :CodEmp'
      '     and PedLb2.DteRes = :DteRes'
      '     and PedLb2.NumRes = :NumRes'
      '     and PedLb2.SeqLib = :SeqLib'
      '     and PedLb2.SldLb2 > 0'
      'Order by PedLb2.SeqLb2')
    ValidateWithMask = True
    Left = 4
    Top = 394
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
      end>
    object StringField1: TStringField
      DisplayLabel = 'Item '
      DisplayWidth = 66
      FieldName = 'DESLB2'
      FixedChar = True
      Size = 70
    end
    object PedLb2SLDLB2: TFloatField
      DisplayLabel = '   Quantidade'
      DisplayWidth = 10
      FieldName = 'SLDLB2'
      DisplayFormat = '###,###,##0.0000'
    end
    object FloatField2: TFloatField
      DisplayLabel = '    Valor Unitário'
      DisplayWidth = 10
      FieldName = 'VLQLB2'
      DisplayFormat = '###,###,##0.0000'
    end
    object FloatField3: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 5
      FieldName = 'ICMLB2'
      DisplayFormat = '###0'
    end
    object FloatField4: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPILB2'
      DisplayFormat = '###0'
    end
    object PedLb2CODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLb2DTERES: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTERES'
      Visible = False
    end
    object PedLb2NUMRES: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedLb2SEQLIB: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLb2SEQLB2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQLB2'
      Visible = False
    end
    object PedLb2CODGRU: TStringField
      DisplayWidth = 3
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CODSUB: TStringField
      DisplayWidth = 4
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedLb2CODPRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object DsLb2: TwwDataSource
    DataSet = PedLb2
    OnDataChange = DsLb2DataChange
    Left = 32
    Top = 394
  end
end
