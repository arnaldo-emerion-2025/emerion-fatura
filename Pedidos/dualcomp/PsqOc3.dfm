inherited fmPsqOc3: TfmPsqOc3
  Left = 181
  Top = 179
  Caption = 'Titulos em Atraso'
  ClientHeight = 223
  ClientWidth = 699
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 699
    Height = 223
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label9: TLabel
    Left = 645
    Top = 206
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
  object grPro: TdxDBGraphicEdit
    Left = 0
    Top = 2
    Width = 699
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
    Height = 204
  end
  object grCrp: ThGrid
    Left = 2
    Top = 4
    Width = 692
    Height = 198
    Selected.Strings = (
      'NUMCRE'#9'15'#9'Nro. Documento'
      'QTPCRE'#9'10'#9'Parcela'
      'PRACRP'#9'5'#9'Prazo'
      'DTVCRP'#9'10'#9'Vencto'
      'ATRASO'#9'6'#9'Atraso'
      'NOMBAN'#9'15'#9'Banco'
      'NOSNUM'#9'17'#9'No. Bancário'
      'VLSCRP'#9'10'#9'Saldo a Receber')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCrp
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
  object FinCrp: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FinCrp.*,'
      '           FinCrp.DtvCrp - '#39'04/27/2004'#39' as Atraso,'
      
        '           TextoOcor(IntStrZeros(FinCrp.NumCrp,3),'#39'/'#39',IntStrZero' +
        's(FinCre.QtpCre,3),'#39#39','#39#39','#39#39','#39#39') as QtpCre,'
      '           FinBan.NomBan'
      'From FinCrp INNER JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp)'
      
        '                                                 AND (FinCrp.Dte' +
        'Cre = FinCre.DteCre)'
      
        '                                                 AND (FinCrp.Num' +
        'Cre = FinCre.NumCre)'
      
        '                    LEFT JOIN FinBan ON (FinCrp.CodBan = FinBan.' +
        'CodBan)'
      'Where FinCre.CodCli = :CodCli'
      '     and FinCre.FlgDel = '#39' '#39
      '     and FinCre.FlgDev = '#39' '#39
      '     and FinCrp.DtvCrp < :DteCrp'
      'Order by FinCrp.CodEmp,FinCrp.DteCre,FinCrp.NumCre,FinCrp.NumCrp')
    ValidateWithMask = True
    Left = 28
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteCrp'
        ParamType = ptInput
      end>
    object FinCrpNUMCRE: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Nro. Documento'
      DisplayWidth = 15
      FieldName = 'NUMCRE'
    end
    object FinCrpQTPCRE: TStringField
      DisplayLabel = 'Parcela'
      DisplayWidth = 10
      FieldName = 'QTPCRE'
      FixedChar = True
      Size = 100
    end
    object FinCrpPRACRP: TIntegerField
      DisplayLabel = 'Prazo'
      DisplayWidth = 5
      FieldName = 'PRACRP'
    end
    object FinCrpDTVCRP: TDateTimeField
      DisplayLabel = 'Vencto'
      DisplayWidth = 10
      FieldName = 'DTVCRP'
      EditMask = '!99/99/9999;1; '
    end
    object FinCrpATRASO: TFloatField
      DisplayLabel = 'Atraso'
      DisplayWidth = 6
      FieldName = 'ATRASO'
      DisplayFormat = '####0'
    end
    object FinCrpNOMBAN: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 15
      FieldName = 'NOMBAN'
      FixedChar = True
      Size = 40
    end
    object FinCrpNOSNUM: TStringField
      DisplayLabel = 'No. Bancário'
      DisplayWidth = 17
      FieldName = 'NOSNUM'
      FixedChar = True
    end
    object FinCrpVLSCRP: TFloatField
      DisplayLabel = 'Saldo a Receber'
      DisplayWidth = 10
      FieldName = 'VLSCRP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVPPCRP: TFloatField
      DisplayLabel = '     Valor Recebido'
      DisplayWidth = 16
      FieldName = 'VPPCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVLPCRP: TFloatField
      DisplayLabel = 'Valor Parcela'
      DisplayWidth = 12
      FieldName = 'VLPCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpNUMCRP: TIntegerField
      DisplayLabel = 'Parcela'
      DisplayWidth = 6
      FieldName = 'NUMCRP'
      Visible = False
    end
    object FinCrpCODEMP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Empresa'
      DisplayWidth = 7
      FieldName = 'CODEMP'
      Visible = False
    end
    object FinCrpFLPCRP: TStringField
      DisplayLabel = ' R '
      DisplayWidth = 2
      FieldName = 'FLPCRP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpDTECRE: TDateTimeField
      FieldName = 'DTECRE'
      Visible = False
    end
    object FinCrpVJUCRP: TFloatField
      FieldName = 'VJUCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVTXCRP: TFloatField
      FieldName = 'VTXCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpSEQCRP: TIntegerField
      FieldName = 'SEQCRP'
      Visible = False
    end
    object FinCrpVJPCRP: TFloatField
      FieldName = 'VJPCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVTPCRP: TFloatField
      FieldName = 'VTPCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVDSCRP: TFloatField
      FieldName = 'VDSCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpVDDCRP: TFloatField
      FieldName = 'VDDCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpTOTCRP: TFloatField
      FieldName = 'TOTCRP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpFLRCRP: TStringField
      FieldName = 'FLRCRP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpSCICRP: TStringField
      FieldName = 'SCICRP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpOBSCRP: TStringField
      FieldName = 'OBSCRP'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FinCrpCODBAN: TIntegerField
      FieldName = 'CODBAN'
      Visible = False
    end
    object FinCrpDULCRP: TDateTimeField
      FieldName = 'DULCRP'
      Visible = False
    end
    object FinCrpFLGNEG: TStringField
      FieldName = 'FLGNEG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpCNACRP: TStringField
      FieldName = 'CNACRP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGPRO: TStringField
      FieldName = 'FLGPRO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGCAR: TStringField
      FieldName = 'FLGCAR'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGTRG: TStringField
      FieldName = 'FLGTRG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGCNA: TStringField
      FieldName = 'FLGCNA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpCODAGB: TStringField
      FieldName = 'CODAGB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinCrpCODCNB: TStringField
      FieldName = 'CODCNB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object FinCrpNROCRP: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROCRP'
      Visible = False
    end
    object FinCrpFLGATU: TStringField
      DisplayWidth = 1
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGDEV: TStringField
      DisplayWidth = 1
      FieldName = 'FLGDEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGDEL: TStringField
      DisplayWidth = 1
      FieldName = 'FLGDEL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FinCrpFLGBAI: TStringField
      DisplayWidth = 1
      FieldName = 'FLGBAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsCrp: TwwDataSource
    DataSet = FinCrp
    Left = 56
    Top = 93
  end
end
