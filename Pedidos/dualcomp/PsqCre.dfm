inherited fmPsqCre: TfmPsqCre
  Left = 181
  Top = 179
  Caption = 'Vencimentos'
  ClientHeight = 223
  ClientWidth = 733
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 733
    Height = 223
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label9: TLabel
    Left = 678
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
    Width = 733
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
    Width = 726
    Height = 198
    Selected.Strings = (
      'CODEMP'#9'7'#9'Empresa'
      'NUMCRP'#9'6'#9'Parcela'
      'PRACRP'#9'5'#9'Prazo'
      'DTVCRP'#9'10'#9'Vencimento  '
      'VLPCRP'#9'12'#9'Valor Parcela'
      'NOMBAN'#9'22'#9'Banco'
      'NOSNUM'#9'17'#9'No. Bancário'
      'VPPCRP'#9'16'#9'     Valor Recebido')
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
      'Select FinCrp.*,NomBan'
      'From FinCrp INNER JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp)'
      
        '                                                 AND (FinCrp.Dte' +
        'Cre = FinCre.DteCre)'
      
        '                                                 AND (FinCrp.Num' +
        'Cre = FinCre.NumCre)'
      
        '                    LEFT JOIN FinBan ON (FinCrp.CodBan = FinBan.' +
        'CodBan)'
      'Where FinCre.EmpFat = :CodEmp'
      '     and FinCre.DteFat = :DteRes'
      '     and FinCre.ResFat = :NumRes'
      '     and FinCre.LibFat = :SeqLib'
      '     and FinCre.SeqFat = :SeqFat'
      'Order by CodEmp,DteCre,NumCre,NumCrp')
    ValidateWithMask = True
    Left = 4
    Top = 205
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
      end
      item
        DataType = ftInteger
        Name = 'SeqLib'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SeqFat'
        ParamType = ptInput
      end>
    object FinCrpCODEMP: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Empresa'
      DisplayWidth = 7
      FieldName = 'CODEMP'
    end
    object FinCrpNUMCRP: TIntegerField
      DisplayLabel = 'Parcela'
      DisplayWidth = 6
      FieldName = 'NUMCRP'
    end
    object FinCrpPRACRP: TIntegerField
      DisplayLabel = 'Prazo'
      DisplayWidth = 5
      FieldName = 'PRACRP'
    end
    object FinCrpDTVCRP: TDateTimeField
      DisplayLabel = 'Vencimento  '
      DisplayWidth = 10
      FieldName = 'DTVCRP'
      EditMask = '!99/99/9999;1; '
    end
    object FinCrpVLPCRP: TFloatField
      DisplayLabel = 'Valor Parcela'
      DisplayWidth = 12
      FieldName = 'VLPCRP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FinCrpNOMBAN: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 22
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
    object FinCrpVPPCRP: TFloatField
      DisplayLabel = '     Valor Recebido'
      DisplayWidth = 16
      FieldName = 'VPPCRP'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
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
    object FinCrpNUMCRE: TFloatField
      FieldName = 'NUMCRE'
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
    object FinCrpVLSCRP: TFloatField
      FieldName = 'VLSCRP'
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
    Left = 32
    Top = 205
  end
end
