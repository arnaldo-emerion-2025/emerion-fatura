object fmLotesMed: TfmLotesMed
  Left = 421
  Top = 244
  BorderStyle = bsSingle
  Caption = 'Lotes Medicamentos'
  ClientHeight = 240
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 184
    Width = 231
    Height = 25
    Caption = 'Quantidade de Lotes:  000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 144
    Width = 733
    Height = 26
    TabOrder = 0
    OnExit = Panel2Exit
    object EdNLoteMed: TdxDBColorEdit
      Left = 29
      Top = 1
      Width = 86
      Hint = 'Código do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      OnKeyDown = EdNLoteMedKeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'NLOTE'
      DataSource = DsLoteMed
      MaxLength = 20
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 3
    end
    object EdQLoteMed: TdxDBColorCurrencyEdit
      Tag = 1
      Left = 116
      Top = 1
      Width = 79
      Hint = 'Código do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QLOTE'
      DataSource = DsLoteMed
      DisplayFormat = '#0.00'
      Nullable = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVPMCMed: TdxDBColorCurrencyEdit
      Tag = 4
      Left = 196
      Top = 1
      Width = 130
      Hint = 'Preço Liquido Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VPMC'
      DataSource = DsLoteMed
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDFabMed: TdxDBColorDateEdit
      Tag = 2
      Left = 327
      Top = 1
      Width = 113
      Hint = 'Data de Emissão da Nota Fiscal'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      Alignment = taCenter
      DataField = 'DFAB'
      DataSource = DsLoteMed
      PopupBorder = pbFlat
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDValMed: TdxDBColorDateEdit
      Tag = 3
      Left = 441
      Top = 1
      Width = 113
      Hint = 'Data de Emissão da Nota Fiscal'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      Alignment = taCenter
      DataField = 'DVAL'
      DataSource = DsLoteMed
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 221
    Width = 584
    Height = 19
    Panels = <
      item
        Text = 'Del => Apagar Registro'
        Width = 475
      end
      item
        Text = 'F12 - Continuar'
        Width = 50
      end>
    SimplePanel = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 584
    Height = 137
    Align = alTop
    DataSource = DsLoteMed
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NLOTE'
        Title.Caption = 'Nº do Lote'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QLOTE'
        Title.Caption = 'Qtd. Lote'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VPMC'
        Title.Caption = 'Preço Máximo Consumidor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFAB'
        Title.Caption = 'Data de Fabricação'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DVAL'
        Title.Caption = 'Data de Validade'
        Width = 124
        Visible = True
      end>
  end
  object fatPedLoteMed: TwwQuery
    Tag = 99
    CachedUpdates = True
    AfterOpen = fatPedLoteMedAfterOpen
    AfterInsert = fatPedLoteMedAfterInsert
    BeforeEdit = fatPedLoteMedBeforeEdit
    AfterCancel = fatPedLoteMedAfterCancel
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select * from FATPED_MED l'#9
      'where '
      '   l.codemp = :CODEMP and'
      '   l.dteres = :DTERES and'
      '   l.numres = :NUMRES and'
      '   l.tipo_tabela = :TIPO_TABELA and'
      '   l.codclp = :CODCLP and'
      '   l.codgru = :CODGRU and'
      '   l.codsub = :CODSUB and'
      '   l.codpro = :CODPRO')
    UpdateObject = updLoteMed
    ValidateWithMask = True
    Left = 77
    Top = 87
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODCLP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODGRU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODSUB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptInput
      end>
    object fatPedLoteMedID: TIntegerField
      FieldName = 'ID'
      Origin = 'ISADE.FATPED_LOTE.ID'
    end
    object fatPedLoteMedNLOTE: TFloatField
      DisplayLabel = 'N do Lote'
      FieldName = 'NLOTE'
      Origin = 'ISADE.FATPED_LOTE.NLOTE'
    end
    object fatPedLoteMedQLOTE: TFloatField
      DisplayLabel = 'Quantidade Lote'
      FieldName = 'QLOTE'
      Origin = 'ISADE.FATPED_LOTE.QLOTE'
    end
    object fatPedLoteMedDFAB: TDateTimeField
      DisplayLabel = 'Data Fabricacao'
      FieldName = 'DFAB'
      Origin = 'ISADE.FATPED_LOTE.DFAB'
    end
    object fatPedLoteMedDVAL: TDateTimeField
      DisplayLabel = 'Data Validade'
      FieldName = 'DVAL'
      Origin = 'ISADE.FATPED_LOTE.DVAL'
    end
    object fatPedLoteMedVPMC: TFloatField
      DisplayLabel = 'Preco Maximo Consumidor'
      FieldName = 'VPMC'
      Origin = 'ISADE.FATPED_LOTE.VPMC'
    end
    object fatPedLoteMedCODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATPED_LOTE.CODCLP'
      FixedChar = True
      Size = 1
    end
    object fatPedLoteMedCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATPED_LOTE.CODGRU'
      FixedChar = True
      Size = 3
    end
    object fatPedLoteMedCODSUB: TStringField
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATPED_LOTE.CODSUB'
      FixedChar = True
      Size = 4
    end
    object fatPedLoteMedCODPRO: TStringField
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATPED_LOTE.CODPRO'
      FixedChar = True
      Size = 5
    end
    object fatPedLoteMedNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATPED_LOTE.NUMRES'
    end
    object fatPedLoteMedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATPED_LOTE.CODEMP'
    end
    object fatPedLoteMedDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATPED_LOTE.DTERES'
    end
    object fatPedLoteMedTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'ISADE.FATPED_LOTE.TIPO_TABELA'
      FixedChar = True
      Size = 6
    end
  end
  object DsLoteMed: TDataSource
    DataSet = fatPedLoteMed
    Left = 105
    Top = 87
  end
  object updLoteMed: TUpdateSQL
    ModifySQL.Strings = (
      'update FATPED_MED'
      'set'
      '  NLOTE = :NLOTE,'
      '  QLOTE = :QLOTE,'
      '  DFAB = :DFAB,'
      '  DVAL = :DVAL,'
      '  VPMC = :VPMC,'
      '  NUMRES = :NUMRES,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODEMP = :CODEMP,'
      '  DTERES = :DTERES,'
      '  TIPO_TABELA = :TIPO_TABELA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FATPED_MED'
      
        '  (NLOTE, QLOTE, DFAB, DVAL, VPMC, NUMRES, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      '   CODEMP, DTERES, TIPO_TABELA)'
      'values'
      
        '  (:NLOTE, :QLOTE, :DFAB, :DVAL, :VPMC, :NUMRES, :CODCLP, :CODGR' +
        'U, :CODSUB, '
      '   :CODPRO, :CODEMP, :DTERES, :TIPO_TABELA)')
    DeleteSQL.Strings = (
      'delete from FATPED_MED'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 89
  end
end
