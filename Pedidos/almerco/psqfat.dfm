inherited fmPsqFat: TfmPsqFat
  Left = 181
  Top = 179
  Caption = 'Pedidos - Detalhes do faturamento'
  ClientHeight = 452
  ClientWidth = 757
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 757
    Height = 452
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
    Top = 149
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
    Top = 430
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
    Top = 430
    Width = 546
    Height = 16
    Caption = 
      'F1-Detalhes de entrega  F2-Vencimentos  F5-Imprimir pedido  F6-C' +
      'ópia da nota fiscal'
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
  object grFat1: TdxDBGraphicEdit
    Left = 1
    Top = 23
    Width = 755
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
    Left = 3
    Top = 25
    Width = 749
    Height = 116
    Selected.Strings = (
      'NRONFS'#9'10'#9'Nota Fiscal'
      'DTELIB'#9'10'#9'Liberado Em'
      'HRELIB'#9'8'#9'Horario'
      'DTEFAT'#9'11'#9'Faturado Em'
      'HREFAT'#9'8'#9'Horario'
      'TOTFAT'#9'11'#9'     Total Itens'
      'TOTIPI'#9'11'#9'         Total IPI'
      'TOTGER'#9'11'#9'         Total Geral'
      'ALTVOL'#9'12'#9'     Qtd. Volumes')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsFatPed
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
  object pnNomLib: TPanel
    Left = 294
    Top = 145
    Width = 230
    Height = 20
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Liberado por'
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
    Caption = ' Faturado por'
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
  object grPe41: TdxDBGraphicEdit
    Left = 2
    Top = 166
    Width = 755
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
    TabOrder = 7
  end
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 2
    Top = 306
    Width = 754
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
    TabOrder = 8
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
    Left = 4
    Top = 308
    Width = 748
    Height = 116
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'DESRE2'#9'50'#9' '
      'VLQRE2'#9'10'#9'           Unitário'
      'SLDLB2'#9'10'#9'        Quantidade'#9'F'
      'ICMRE2'#9'5'#9' ICMS'
      'IPIRE2'#9'5'#9'     IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
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
    TabOrder = 9
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
  object grPe4: ThGrid
    Tag = 1
    Left = 4
    Top = 168
    Width = 749
    Height = 116
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'DESPE4'#9'43'#9' '
      'QTPPE4'#9'10'#9'    Quantidade'
      'VLUPE4'#9'10'#9'      Unitario'
      'IPIPE4'#9'4'#9'  IPI'
      'ICMPE4'#9'4'#9' ICMS'#9'F'
      'TOTPE4'#9'10'#9'       Total Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsFatPe4
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object FatPed: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FatPed.Id_FatPed,'
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
      '           FatPed.QtiPe6,'
      '           FatPed.QtiPe7,'
      '           FatPed.QtpSel,'
      '           FatPed.CodUsu as UsuFat,'
      '           PedLib.DteLib,'
      '           PedLib.HreLib,'
      '           PedLib.CodUsu as UsuLib,'
      '           FatPed.DteSda,'
      '           FatPed.HreSda,'
      '           FatPed.TraSda,'
      '           FatPed.Ob1Sda,'
      '           FatPed.Ob2Sda,'
      '           FatPed.Ob3Sda,'
      '           FatPed.Ob4Sda,'
      '           FatPed.Ob5Sda,'
      '           FatPed.CodVei,'
      '           FatPed.DteEnt,'
      '           FatPed.HreEnt,'
      '           FatPed.Ob1Ent,'
      '           FatPed.Ob2Ent,'
      '           FatPed.Ob3Ent,'
      '           FatPed.Ob4Ent,'
      '           FatPed.Ob5Ent,'
      '           FatPed.DteAtu,'
      '           FatPed.HreAtu,'
      '           FatPed.UsuAtu,'
      '           FatPed.NroCol,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = PedLib.CodU' +
        'su) as NomLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = FatPed.CodU' +
        'su) as NomFat'
      'From FatPe2,FatPed,PedLib'
      'Where FatPe2.Id_FatPed = FatPed.Id_FatPed'
      '    and FatPe2.Id_PedLib = PedLib.Id_PedLib'
      '    and PedLib.Id_PedRes = :Id_PedRes'
      
        '    and ( FatPed.SitFat = '#39'Faturado'#39' or FatPed.SitFat = '#39'Devolvi' +
        'do'#39' )'
      'Order by PedLib.Id_PedLib')
    ValidateWithMask = True
    Left = 4
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
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
      DisplayLabel = '         Total Geral'
      DisplayWidth = 11
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatPedALTVOL: TIntegerField
      DisplayLabel = '     Qtd. Volumes'
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
    object FatPedQTIPE6: TIntegerField
      FieldName = 'QTIPE6'
      Visible = False
    end
    object FatPedQTIPE7: TIntegerField
      FieldName = 'QTIPE7'
      Visible = False
    end
    object FatPedOB1SDA: TStringField
      FieldName = 'OB1SDA'
      Visible = False
      Size = 80
    end
    object FatPedOB2SDA: TStringField
      FieldName = 'OB2SDA'
      Visible = False
      Size = 80
    end
    object FatPedOB3SDA: TStringField
      FieldName = 'OB3SDA'
      Visible = False
      Size = 80
    end
    object FatPedOB4SDA: TStringField
      FieldName = 'OB4SDA'
      Visible = False
      Size = 80
    end
    object FatPedOB5SDA: TStringField
      FieldName = 'OB5SDA'
      Visible = False
      Size = 80
    end
    object FatPedOB1ENT: TStringField
      FieldName = 'OB1ENT'
      Visible = False
      Size = 80
    end
    object FatPedOB2ENT: TStringField
      FieldName = 'OB2ENT'
      Visible = False
      Size = 80
    end
    object FatPedOB3ENT: TStringField
      FieldName = 'OB3ENT'
      Visible = False
      Size = 80
    end
    object FatPedOB4ENT: TStringField
      FieldName = 'OB4ENT'
      Visible = False
      Size = 80
    end
    object FatPedOB5ENT: TStringField
      FieldName = 'OB5ENT'
      Visible = False
      Size = 80
    end
    object FatPedQTPSEL: TIntegerField
      FieldName = 'QTPSEL'
      Visible = False
    end
    object FatPedID_FATPED: TIntegerField
      FieldName = 'ID_FATPED'
      Visible = False
    end
  end
  object DsFatPed: TwwDataSource
    DataSet = FatPed
    OnDataChange = DsFatPedDataChange
    Left = 32
    Top = 112
  end
  object DsFatPe4: TwwDataSource
    DataSet = FatPe4
    Left = 33
    Top = 255
  end
  object FatPe4: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFatPed
    SQL.Strings = (
      'Select FatPe4.DesPe4,'
      '           FatPe4.QtpPe4,'
      '           FatPe4.VluPe4,'
      '           FatPe4.IcmPe4,'
      '           FatPe4.IpiPe4,'
      '           FatPe4.TotPe4,'
      '           FatPe4.TotIpi,'
      '           FatPe4.TotGe4,'
      
        '           FatPe4.CodClp || _UNICODE_FSS '#39'-'#39' || FatPe4.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || FatPe4.CodSub || _UNICODE_FSS '#39'.'#39' || FatPe4' +
        '.CodPro as CodIte'
      'From FatPe4'
      'Where FatPe4.Id_FatPed = :Id_FatPed'
      'Order by FatPe4.NroPe4')
    ValidateWithMask = True
    Left = 5
    Top = 255
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_FATPED'
        ParamType = ptInput
      end>
    object FatPe4CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object FatPe4DESPE4: TStringField
      DisplayLabel = ' '
      DisplayWidth = 43
      FieldName = 'DESPE4'
      Size = 70
    end
    object FatPe4QTPPE4: TFloatField
      DisplayLabel = '    Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPPE4'
      DisplayFormat = '###,###,##0.0000'
    end
    object FatPe4VLUPE4: TFloatField
      DisplayLabel = '      Unitario'
      DisplayWidth = 10
      FieldName = 'VLUPE4'
      DisplayFormat = '###,###,##0.0000'
    end
    object FatPe4IPIPE4: TFloatField
      DisplayLabel = '  IPI'
      DisplayWidth = 4
      FieldName = 'IPIPE4'
      DisplayFormat = '##0'
    end
    object FatPe4ICMPE4: TFloatField
      DisplayLabel = ' ICMS'
      DisplayWidth = 4
      FieldName = 'ICMPE4'
      DisplayFormat = '##0'
    end
    object FatPe4TOTPE4: TFloatField
      DisplayLabel = '       Total Item'
      DisplayWidth = 10
      FieldName = 'TOTPE4'
      DisplayFormat = '###,###,##0.00'
    end
    object FatPe4TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FatPe4TOTGE4: TFloatField
      FieldName = 'TOTGE4'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFatPed
    SQL.Strings = (
      'Select PedRe2.DesRe2,'
      '           PedLb2.SldLb2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.IpiRe2,'
      '           PedRe2.IcmRe2,'
      
        '           PedRe2.CodClp || _UNICODE_FSS '#39'-'#39' || PedRe2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub || _UNICODE_FSS '#39'.'#39' || PedRe2' +
        '.CodPro as CodIte'
      'From FatPe2,PedLib,PedLb2,PedRe2'
      'Where FatPe2.Id_PedLib = PedLib.Id_PedLib'
      '     and PedLib.Id_PedLib = PedLb2.Id_PedLib'
      '     and PedLb2.Id_PedRe2 = Id_PedRe2'
      '     and FatPe2.Id_FatPed = :Id_FatPed'
      '     and PedLb2.SldLb2 > 0'
      'Order by PedRe2.Id_PedRes,PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 5
    Top = 395
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_FATPED'
        ParamType = ptInput
      end>
    object PedLb2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object PedLb2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 50
      FieldName = 'DESRE2'
      Size = 70
    end
    object PedLb2VLQRE2: TFloatField
      DisplayLabel = '           Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
    end
    object PedLb2SLDLB2: TFloatField
      DisplayLabel = '        Quantidade'
      DisplayWidth = 10
      FieldName = 'SLDLB2'
    end
    object PedLb2ICMRE2: TFloatField
      DisplayLabel = ' ICMS'
      DisplayWidth = 5
      FieldName = 'ICMRE2'
    end
    object PedLb2IPIRE2: TFloatField
      DisplayLabel = '     IPI'
      DisplayWidth = 5
      FieldName = 'IPIRE2'
    end
  end
  object DsLb2: TwwDataSource
    DataSet = PedLb2
    Left = 33
    Top = 395
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 112
  end
end
