inherited fmPsqLib: TfmPsqLib
  Left = 181
  Top = 179
  Caption = 'Informações do pedido pronto para faturamento'
  ClientHeight = 458
  ClientWidth = 759
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 759
    Height = 458
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 3
    Top = 5
    Width = 115
    Height = 14
    Caption = 'Liberação realizada'
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
    Top = 166
    Width = 98
    Height = 14
    Caption = 'Itens separados'
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
    Top = 438
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
    Top = 438
    Width = 255
    Height = 16
    Caption = 'F5-Imprimir pedido dos itens separados'
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
    Top = 300
    Width = 329
    Height = 14
    Caption = 'Itens não separados por indisponibilidade de estoque'
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
  object dbLib: TdxDBGraphicEdit
    Left = 2
    Top = 20
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
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 124
  end
  object grLib: ThGrid
    Tag = 1
    Left = 4
    Top = 22
    Width = 748
    Height = 118
    Selected.Strings = (
      'NRONFS'#9'10'#9'Nota fiscal'#9'F'
      'DTELIB'#9'10'#9'Liberado em'#9'F'
      'HRELIB'#9'8'#9'Horario    '#9'F'
      'DTEFAT'#9'11'#9'Faturado em'#9'F'
      'HREFAT'#9'8'#9'Horario     '#9'F'
      'TOTLIB'#9'10'#9'       Total Itens'#9'F'
      'TOTFRT'#9'10'#9'             Frete'#9'F'
      'TOTIPI'#9'10'#9'         Total IPI'#9'F'
      'TOTGER'#9'10'#9'        Total Geral'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPedLib
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
    Left = 377
    Top = 144
    Width = 188
    Height = 21
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
    Left = 567
    Top = 144
    Width = 188
    Height = 21
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
    Left = 208
    Top = 144
    Width = 80
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Desc. ICMS'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object pnTotDsr: TPanel
    Left = 288
    Top = 144
    Width = 87
    Height = 21
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
  object grSep1: TdxDBGraphicEdit
    Left = 1
    Top = 179
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
    Height = 121
  end
  object grSep: ThGrid
    Tag = 1
    Left = 3
    Top = 181
    Width = 750
    Height = 115
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'DESRE2'#9'36'#9' '
      'ULTQTS'#9'10'#9' Quantidade'
      'VLQRE2'#9'10'#9'       Unitário'
      'ICMRE2'#9'5'#9'  ICMS'
      'IPIRE2'#9'3'#9'   IPI'
      'TOTLB2'#9'10'#9' Total Item'
      'TOTGE2'#9'10'#9' Total Geral')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPedSep
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLb21: TdxDBGraphicEdit
    Left = 2
    Top = 315
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
    Top = 317
    Width = 748
    Height = 116
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'DESRE2'#9'50'#9' '
      'SLDLB2'#9'10'#9'     Quantidade'
      'VLQRE2'#9'10'#9'               Unitário'
      'ICMRE2'#9'5'#9'  ICMS'
      'IPIRE2'#9'3'#9'   IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsPedLb2
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object Panel1: TPanel
    Left = 3
    Top = 144
    Width = 115
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Desc. ICMS Subst'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object pnTotSub: TPanel
    Left = 118
    Top = 144
    Width = 88
    Height = 21
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
    TabOrder = 11
  end
  object PedLib: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.Id_PedLib,'
      '           PedLib.NroNfs,'
      '           PedLib.DteFat,'
      '           PedLib.HreFat,'
      '           PedLib.TotIpi,'
      '           PedLib.TotIcm,'
      '           PedLib.TotLib,'
      '           PedLib.TotFrt,'
      '           PedLib.TotDsr,'
      '           PedLib.TotSub,'
      '           PedLib.TotGer,'
      '           PedLib.UsuFat,'
      '           PedLib.DteLib,'
      '           PedLib.HreLib,'
      '           PedLib.CodUsu as UsuLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = PedLib.CodU' +
        'su) as NomLib,'
      
        '           (Select LogUsu From GerUsu Where CodUsu = PedLib.UsuF' +
        'at) as NomFat'
      'From PedLib'
      'Where PedLib.Id_PedRes = :Id_PedRes'
      '     and not PedLib.SitLib = '#39'Faturado'#39
      '     and not PedLib.SitLib = '#39'Cancelado'#39
      '     and not PedLib.SitLib = '#39'Devolvido'#39
      'Order by PedLib.NroLib')
    ValidateWithMask = True
    Left = 5
    Top = 111
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
        ParamType = ptInput
      end>
    object PedLibNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object PedLibDTELIB: TDateTimeField
      DisplayLabel = 'Liberado em'
      DisplayWidth = 10
      FieldName = 'DTELIB'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibHRELIB: TStringField
      DisplayLabel = 'Horario    '
      DisplayWidth = 8
      FieldName = 'HRELIB'
      FixedChar = True
      Size = 8
    end
    object PedLibDTEFAT: TDateTimeField
      DisplayLabel = 'Faturado em'
      DisplayWidth = 11
      FieldName = 'DTEFAT'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibHREFAT: TStringField
      DisplayLabel = 'Horario     '
      DisplayWidth = 8
      FieldName = 'HREFAT'
      FixedChar = True
      Size = 8
    end
    object PedLibTOTLIB: TFloatField
      DisplayLabel = '       Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTLIB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTFRT: TFloatField
      DisplayLabel = '             Frete'
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTIPI: TFloatField
      DisplayLabel = '         Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTGER: TFloatField
      DisplayLabel = '        Total Geral'
      DisplayWidth = 10
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTSUB: TFloatField
      DisplayLabel = ' Total ICMS Subst.'
      DisplayWidth = 10
      FieldName = 'TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibUSUFAT: TIntegerField
      FieldName = 'USUFAT'
      Visible = False
    end
    object PedLibUSULIB: TIntegerField
      FieldName = 'USULIB'
      Visible = False
    end
    object PedLibNOMLIB: TStringField
      FieldName = 'NOMLIB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedLibNOMFAT: TStringField
      FieldName = 'NOMFAT'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedLibID_PEDLIB: TIntegerField
      FieldName = 'ID_PEDLIB'
      Visible = False
    end
    object PedLibTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsPedLib: TwwDataSource
    DataSet = PedLib
    OnDataChange = DsPedLibDataChange
    Left = 33
    Top = 111
  end
  object DsPedSep: TwwDataSource
    DataSet = PedSep
    Left = 32
    Top = 267
  end
  object PedSep: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPedLib
    SQL.Strings = (
      'Select PedLb2.UltQts,'
      '           PedLb2.TotLb2,'
      '           PedLb2.TotGe2,'
      '           PedRe2.DesRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.IpiRe2,'
      '           PedRe2.IcmRe2,'
      
        '           PedRe2.CodClp || _UNICODE_FSS '#39'-'#39' || PedRe2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub || _UNICODE_FSS '#39'.'#39' || PedRe2' +
        '.CodPro as CodIte'
      
        'From PedLb2 LEFT JOIN PedRe2 ON (PedLb2.Id_PedRe2 = PedRe2.Id_Pe' +
        'dRe2)'
      'Where PedLb2.Id_PedLib = :Id_PedLib'
      '     and PedLb2.UltQts > 0'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 4
    Top = 267
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDLIB'
        ParamType = ptInput
      end>
    object PedSepCODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object PedSepDESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 36
      FieldName = 'DESRE2'
      Size = 70
    end
    object PedSepULTQTS: TFloatField
      DisplayLabel = ' Quantidade'
      DisplayWidth = 10
      FieldName = 'ULTQTS'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedSepVLQRE2: TFloatField
      DisplayLabel = '       Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedSepICMRE2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 5
      FieldName = 'ICMRE2'
      DisplayFormat = '##0'
    end
    object PedSepIPIRE2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPIRE2'
      DisplayFormat = '##0'
    end
    object PedSepTOTLB2: TFloatField
      DisplayLabel = ' Total Item'
      DisplayWidth = 10
      FieldName = 'TOTLB2'
      DisplayFormat = '###,###,##0.00'
    end
    object PedSepTOTGE2: TFloatField
      DisplayLabel = ' Total Geral'
      DisplayWidth = 10
      FieldName = 'TOTGE2'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object PedLb2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsPedLib
    SQL.Strings = (
      'Select PedLb2.SldLb2,'
      '           PedLb2.TotLb2,'
      '           PedLb2.TotGe2,'
      '           PedRe2.DesRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.IpiRe2,'
      '           PedRe2.IcmRe2,'
      
        '           PedRe2.CodClp || _UNICODE_FSS '#39'-'#39' || PedRe2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub || _UNICODE_FSS '#39'.'#39' || PedRe2' +
        '.CodPro as CodIte'
      
        'From PedLb2 LEFT JOIN PedRe2 ON (PedLb2.Id_PedRe2 = PedRe2.Id_Pe' +
        'dRe2)'
      'Where PedLb2.Id_PedLib = :Id_PedLib'
      '     and PedLb2.SldLb2 > 0'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 4
    Top = 404
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PEDLIB'
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
    object PedLb2SLDLB2: TFloatField
      DisplayLabel = '     Quantidade'
      DisplayWidth = 10
      FieldName = 'SLDLB2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedLb2VLQRE2: TFloatField
      DisplayLabel = '               Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedLb2ICMRE2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 5
      FieldName = 'ICMRE2'
      DisplayFormat = '##0'
    end
    object PedLb2IPIRE2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPIRE2'
      DisplayFormat = '##0'
    end
    object PedLb2TOTLB2: TFloatField
      FieldName = 'TOTLB2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedLb2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsPedLb2: TwwDataSource
    DataSet = PedLb2
    Left = 32
    Top = 404
  end
  object PedPar: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.UsaDec From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 111
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      FixedChar = True
      Size = 3
    end
  end
end
