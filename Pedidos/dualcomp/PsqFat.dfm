inherited fmPsqFat: TfmPsqFat
  Left = 477
  Top = 172
  Caption = 'Faturamento Realizados para o Pedido'
  ClientHeight = 461
  ClientWidth = 757
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 757
    Height = 461
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 3
    Top = 5
    Width = 90
    Height = 14
    Caption = 'Notas Emitidas'
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
    Top = 164
    Width = 97
    Height = 14
    Caption = 'Itens Faturados'
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
    Top = 442
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
    Top = 442
    Width = 534
    Height = 16
    Caption = 
      'F1-Detalhes de entrega F2-Vencimentos F5-Imprimir pedido F6-Cópi' +
      'a da nota fiscal'
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
    Top = 303
    Width = 330
    Height = 14
    Caption = 'Itens não Faturados por Indisponibilidade de Estoque'
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
    Top = 23
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
    Top = 25
    Width = 750
    Height = 116
    Selected.Strings = (
      'NRONFS'#9'10'#9'Nota Fiscal'#9'F'
      'DTELIB'#9'10'#9'Liberado Em'#9'F'
      'HRELIB'#9'8'#9'Horario'#9'F'
      'DTEFAT'#9'11'#9'Faturado Em'#9'F'
      'HREFAT'#9'8'#9'Horario'#9'F'
      'TOTFAT'#9'11'#9'     Total Itens'#9'F'
      'TOTIPI'#9'11'#9'         Total IPI'#9'F'
      'TOTGER'#9'11'#9'       Total Geral'#9'F'
      'ALTVOL'#9'12'#9'   Qtd. Volumes'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsFat
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
    Top = 145
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
    Top = 145
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
  object Panel2: TPanel
    Left = 127
    Top = 145
    Width = 78
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Total ICMS'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object pnTotIcm: TPanel
    Left = 205
    Top = 145
    Width = 88
    Height = 20
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = '0,00 '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 178
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
  object grPe2: ThGrid
    Tag = 1
    Left = 3
    Top = 180
    Width = 750
    Height = 116
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'#9'F'
      'DESPE2'#9'26'#9' '#9'F'
      'QTPPE2'#9'10'#9'Quantidade'#9'F'
      'VLQPE2'#9'10'#9'      Unitário'#9'F'
      'ICMPE2'#9'5'#9'ICMS'#9'F'
      'IPIPE2'#9'3'#9'IPI'#9'F'
      'TOTPE2'#9'10'#9'  Total Item'#9'F'
      'TOTIPI'#9'10'#9'     Total IPI'#9'F'
      'TOTGE2'#9'10'#9'  Total Geral'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPe2
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
  object pnSitFat: TPanel
    Left = 523
    Top = 2
    Width = 230
    Height = 20
    BevelOuter = bvNone
    Caption = 'Devolvido'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 1
    Top = 318
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
    TabOrder = 9
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
    Top = 320
    Width = 750
    Height = 116
    Selected.Strings = (
      'DESLB2'#9'66'#9'Item '#9'F'
      'SLDLB2'#9'10'#9'   Quantidade'#9'F'
      'VLQLB2'#9'10'#9'    Valor Unitário'#9'F'
      'ICMLB2'#9'5'#9'  ICMS'#9'F'
      'IPILB2'#9'3'#9'   IPI'#9'F')
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
    TabOrder = 10
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
  object pnCodIte2: TPanel
    Left = 43
    Top = 337
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
    TabOrder = 11
  end
  object FatPed: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatPed.CodEmp,'
      '           FatPed.DteRes,'
      '           FatPed.NumRes,'
      '           FatPed.CodCli,'
      '           FatPed.SeqLib,'
      '           FatPed.SeqFat,'
      '           FatPed.NroNfs,'
      '           FatPed.DteFat,'
      '           FatPed.HreFat,'
      '           FatPed.TotIpi,'
      '           FatPed.TotIcm,'
      '           FatPed.TotFat,'
      '           FatPed.TotDsr,'
      '           FatPed.TotSub,'
      '           FatPed.TotGer,'
      '           FatPed.QtdVol,'
      '           FatPed.AltVol,'
      '           FatPed.SitFat,'
      '           FatPed.QtpNot,'
      '           FatPed.QtpDup,'
      '           FatPed.CodUsu as UsuFat,'
      '           PedLib.DteLib,'
      '           PedLib.HreLib,'
      '           PedLib.CodUsu as UsuLib,'
      '           FatPed.DteSda,'
      '           FatPed.HreSda,'
      '           FatPed.TraSda,'
      '           FatPed.ObsSda,'
      '           FatPed.CodVei,'
      '           FatPed.DteEnt,'
      '           FatPed.HreEnt,'
      '           FatPed.ObsEnt,'
      '           FatPed.DteAtu,'
      '           FatPed.HreAtu,'
      '           FatPed.UsuAtu,'
      '           FatPed.NroCol,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = PedLib.CodU' +
        'su) as NomLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = FatPed.CodU' +
        'su) as NomFat'
      'From FatPed,PedLib'
      'Where FatPed.CodEmp = PedLib.CodEmp'
      '     and FatPed.DteRes = PedLib.DteRes'
      '     and FatPed.NumRes = PedLib.NumRes'
      '     and FatPed.SeqLib = PedLib.SeqLib'
      '     and FatPed.CodEmp = :CodEmp'
      '     and FatPed.DteRes = :DteRes'
      '     and FatPed.NumRes = :NumRes'
      
        '     and ( FatPed.SitFat = '#39'Faturado'#39' or FatPed.SitFat = '#39'Devolv' +
        'ido'#39' )'
      'Order by CodEmp,DteRes,NumRes,SeqLib')
    ValidateWithMask = True
    Left = 2
    Top = 112
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
    object FatPedNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object FatPedDTELIB: TDateTimeField
      DisplayLabel = 'Liberado Em'
      DisplayWidth = 10
      FieldName = 'DTELIB'
      EditMask = '!99/99/9999;1;_'
    end
    object FatPedHRELIB: TStringField
      DisplayLabel = 'Horario'
      DisplayWidth = 8
      FieldName = 'HRELIB'
      FixedChar = True
      Size = 8
    end
    object FatPedDTEFAT: TDateTimeField
      DisplayLabel = 'Faturado Em'
      DisplayWidth = 11
      FieldName = 'DTEFAT'
      EditMask = '!99/99/9999;1;_'
    end
    object FatPedHREFAT: TStringField
      DisplayLabel = 'Horario'
      DisplayWidth = 8
      FieldName = 'HREFAT'
      FixedChar = True
      Size = 8
    end
    object FatPedTOTFAT: TFloatField
      DisplayLabel = '     Total Itens'
      DisplayWidth = 11
      FieldName = 'TOTFAT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedTOTIPI: TFloatField
      DisplayLabel = '         Total IPI'
      DisplayWidth = 11
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedTOTGER: TFloatField
      DisplayLabel = '       Total Geral'
      DisplayWidth = 11
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedALTVOL: TIntegerField
      DisplayLabel = '   Qtd. Volumes'
      DisplayWidth = 12
      FieldName = 'ALTVOL'
    end
    object FatPedTOTICM: TFloatField
      DisplayLabel = '   Total ICMS'
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedUSUFAT: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUFAT'
      Visible = False
    end
    object FatPedUSULIB: TIntegerField
      DisplayWidth = 10
      FieldName = 'USULIB'
      Visible = False
    end
    object FatPedNOMLIB: TStringField
      DisplayWidth = 15
      FieldName = 'NOMLIB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedNOMFAT: TStringField
      DisplayWidth = 15
      FieldName = 'NOMFAT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FatPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatPedDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatPedNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object FatPedSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatPedSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Visible = False
    end
    object FatPedDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Visible = False
    end
    object FatPedHRESDA: TStringField
      FieldName = 'HRESDA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Visible = False
    end
    object FatPedOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatPedCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Visible = False
    end
    object FatPedDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Visible = False
    end
    object FatPedHREENT: TStringField
      FieldName = 'HREENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedOBSENT: TStringField
      FieldName = 'OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatPedDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Visible = False
    end
    object FatPedHREATU: TStringField
      FieldName = 'HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatPedUSUATU: TIntegerField
      FieldName = 'USUATU'
      Visible = False
    end
    object FatPedQTPNOT: TIntegerField
      FieldName = 'QTPNOT'
      Visible = False
    end
    object FatPedQTPDUP: TIntegerField
      FieldName = 'QTPDUP'
      Visible = False
    end
    object FatPedNROCOL: TStringField
      FieldName = 'NROCOL'
      Visible = False
      FixedChar = True
    end
    object FatPedSITFAT: TStringField
      FieldName = 'SITFAT'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object FatPedQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object FatPedTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object FatPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object FatPedCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
  end
  object DsFat: TwwDataSource
    DataSet = FatPed
    OnDataChange = DsFatDataChange
    Left = 30
    Top = 112
  end
  object DsPe2: TwwDataSource
    DataSet = FatPe2
    Left = 31
    Top = 267
  end
  object FatPe2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFat
    SQL.Strings = (
      'Select FatPe2.DesPe2,'
      '           FatPe2.QtpPe2,'
      '           FatPe2.VlqPe2,'
      '           FatPe2.IcmPe2,'
      '           FatPe2.IpiPe2,'
      '           FatPe2.TotPe2,'
      '           FatPe2.TotIpi,'
      '           FatPe2.TotGe2,'
      
        '           FatPe2.CodGru || _UNICODE_FSS '#39'.'#39' || FatPe2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || FatPe2.CodPro as DscPro'
      'From FatPe2'
      'Where FatPe2.CodEmp = :CodEmp'
      '     and FatPe2.DteRes = :DteRes'
      '     and FatPe2.NumRes = :NumRes'
      '     and FatPe2.SeqLib = :SeqLib'
      '     and FatPe2.SeqFat = :SeqFat'
      'Order by FatPe2.NroPe2')
    ValidateWithMask = True
    Left = 3
    Top = 267
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
      end>
    object FatPe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object FatPe2DESPE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 26
      FieldName = 'DESPE2'
      FixedChar = True
      Size = 70
    end
    object FatPe2QTPPE2: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatPe2VLQPE2: TFloatField
      DisplayLabel = '      Unitário'
      DisplayWidth = 10
      FieldName = 'VLQPE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatPe2ICMPE2: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 5
      FieldName = 'ICMPE2'
    end
    object FatPe2IPIPE2: TFloatField
      DisplayLabel = 'IPI'
      DisplayWidth = 3
      FieldName = 'IPIPE2'
    end
    object FatPe2TOTPE2: TFloatField
      DisplayLabel = '  Total Item'
      DisplayWidth = 10
      FieldName = 'TOTPE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPe2TOTIPI: TFloatField
      DisplayLabel = '     Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPe2TOTGE2: TFloatField
      DisplayLabel = '  Total Geral'
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 84
  end
  object quLib: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 112
  end
  object quLb2: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 84
  end
  object quRes: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 112
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
    Left = 125
    Top = 84
  end
  object PedLb2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFat
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
    Left = 3
    Top = 407
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
    Left = 31
    Top = 407
  end
end
