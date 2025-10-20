object FMMANDI_FATPED: TFMMANDI_FATPED
  Left = 401
  Top = 161
  Width = 621
  Height = 477
  Caption = 'Entradas de DI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bContinuar: TSpeedButton
    Left = 449
    Top = 400
    Width = 143
    Height = 31
    Hint = 'Continuar Emissão da Nota Fiscal'
    Caption = 'F12 - Continuar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = bContinuarClick
  end
  object Label7: TLabel
    Left = 10
    Top = 9
    Width = 252
    Height = 19
    Caption = '001.0001.00001 - Descrição do Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 7
    Top = 32
    Width = 590
    Height = 357
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 366
      Top = 316
      Width = 105
      Height = 33
      Caption = 'Incluir'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 471
      Top = 316
      Width = 105
      Height = 33
      Caption = 'Remover'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 22
      Width = 569
      Height = 289
      DataSource = DSDI
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMDI'
          Title.Caption = 'No. DI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATADI'
          Title.Caption = 'Data DI'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALDESEMB'
          Title.Caption = 'Local Desemb.'
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UFDESEMB'
          Title.Caption = 'UF '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATADESEMB'
          Title.Caption = 'Data Desemb'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODEXPORT'
          Title.Caption = 'Cod. Export'
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 7
    Top = 32
    Width = 590
    Height = 357
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 366
      Top = 317
      Width = 105
      Height = 33
      Caption = 'Cancelar'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 471
      Top = 317
      Width = 105
      Height = 33
      Caption = 'Concluir'
      Flat = True
      OnClick = SpeedButton4Click
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 153
      Width = 575
      Height = 161
      DataSource = DSDIDET
      Options = [dgEditing, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODFAB'
          Title.Caption = 'Cod. do Fabricante'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VDESCDI'
          Title.Caption = 'Valor Desc. do Item'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSEQADIC'
          Title.Caption = 'No. Sequencial do item '
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_DI'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 10
      Width = 575
      Height = 137
      Caption = 'Dados da DI '
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 36
        Width = 66
        Height = 13
        Caption = 'Numero da DI'
      end
      object Label2: TLabel
        Left = 132
        Top = 36
        Width = 52
        Height = 13
        Caption = 'Data da DI'
      end
      object Label3: TLabel
        Left = 240
        Top = 36
        Width = 110
        Height = 13
        Caption = 'Local do Desembaraço'
      end
      object Label4: TLabel
        Left = 16
        Top = 84
        Width = 71
        Height = 13
        Caption = 'UF do Desemb'
      end
      object Label5: TLabel
        Left = 116
        Top = 84
        Width = 83
        Height = 13
        Caption = 'Data do Desemb.'
      end
      object Label6: TLabel
        Left = 232
        Top = 84
        Width = 91
        Height = 13
        Caption = 'Cod. do Exportador'
      end
      object dxDBColorEdit1: TdxDBColorEdit
        Left = 13
        Top = 49
        Width = 100
        Hint = 'Prazo em Dias para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'NUMDI'
        DataSource = DSDI
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorEdit2: TdxDBColorEdit
        Left = 14
        Top = 97
        Width = 75
        Hint = 'Prazo em Dias para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'UFDESEMB'
        DataSource = DSDI
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorDateEdit1: TdxDBColorDateEdit
        Left = 130
        Top = 49
        Width = 100
        Hint = 'Data para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATADI'
        DataSource = DSDI
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 5
      end
      object dxDBColorEdit3: TdxDBColorEdit
        Left = 237
        Top = 49
        Width = 331
        Hint = 'Prazo em Dias para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'LOCALDESEMB'
        DataSource = DSDI
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorDateEdit2: TdxDBColorDateEdit
        Left = 114
        Top = 97
        Width = 100
        Hint = 'Data para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATADESEMB'
        DataSource = DSDI
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 5
      end
      object dxDBColorEdit4: TdxDBColorEdit
        Left = 229
        Top = 97
        Width = 339
        Hint = 'Prazo em Dias para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODEXPORT'
        DataSource = DSDI
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
    end
  end
  object DSDIDET: TDataSource
    DataSet = SQLDIDET
    Left = 96
    Top = 344
  end
  object UPDIDET: TUpdateSQL
    ModifySQL.Strings = (
      'update DIDET'
      'set'
      '  ID_DI = :ID_DI,'
      '  NSEQADIC = :NSEQADIC,'
      '  CODFAB = :CODFAB,'
      '  VDESCDI = :VDESCDI,'
      '  QTDE = :QTDE'
      'where'
      '  ID_DIDET = :OLD_ID_DIDET')
    InsertSQL.Strings = (
      'insert into DIDET'
      '  (ID_DI, NSEQADIC, CODFAB, VDESCDI, QTDE)'
      'values'
      '  (:ID_DI, :NSEQADIC, :CODFAB, :VDESCDI, :QTDE)')
    DeleteSQL.Strings = (
      'delete from DIDET'
      'where'
      '  ID_DIDET = :OLD_ID_DIDET')
    Left = 160
    Top = 344
  end
  object DSDI: TDataSource
    DataSet = SQLDI
    Left = 96
    Top = 312
  end
  object UpDI: TUpdateSQL
    ModifySQL.Strings = (
      'update DI'
      'set'
      '  ID_CMPNF2 = :ID_CMPNF2,'
      '  NUMDI = :NUMDI,'
      '  DATADI = :DATADI,'
      '  LOCALDESEMB = :LOCALDESEMB,'
      '  UFDESEMB = :UFDESEMB,'
      '  DATADESEMB = :DATADESEMB,'
      '  CODEXPORT = :CODEXPORT'
      'where'
      '  ID_DI = :OLD_ID_DI')
    InsertSQL.Strings = (
      'insert into DI'
      
        '  (ID_CMPNF2, NUMDI, DATADI, LOCALDESEMB, UFDESEMB, DATADESEMB, ' +
        'CODEXPORT)'
      'values'
      
        '  (:ID_CMPNF2, :NUMDI, :DATADI, :LOCALDESEMB, :UFDESEMB, :DATADE' +
        'SEMB, :CODEXPORT)')
    DeleteSQL.Strings = (
      'delete from DI'
      'where'
      '  ID_DI = :OLD_ID_DI')
    Left = 160
    Top = 312
  end
  object SQLDIDET: TwwQuery
    CachedUpdates = True
    AfterPost = SQLDIDETAfterPost
    OnNewRecord = SQLDIDETNewRecord
    DatabaseName = 'ISade'
    DataSource = DSDI
    SQL.Strings = (
      'Select * from DIDET'
      ' where id_di = :id_di'
      'order by nseqadic')
    UpdateObject = UPDIDET
    ValidateWithMask = True
    Left = 133
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_DI'
        ParamType = ptUnknown
      end>
    object SQLDIDETID_DIDET: TIntegerField
      FieldName = 'ID_DIDET'
      Origin = 'ISADE.DIDET.ID_DIDET'
    end
    object SQLDIDETID_DI: TIntegerField
      FieldName = 'ID_DI'
      Origin = 'ISADE.DIDET.ID_DI'
    end
    object SQLDIDETNSEQADIC: TIntegerField
      FieldName = 'NSEQADIC'
      Origin = 'ISADE.DIDET.NSEQADIC'
    end
    object SQLDIDETCODFAB: TStringField
      FieldName = 'CODFAB'
      Origin = 'ISADE.DIDET.CODFAB'
      Size = 60
    end
    object SQLDIDETVDESCDI: TFloatField
      FieldName = 'VDESCDI'
      Origin = 'ISADE.DIDET.VDESCDI'
      DisplayFormat = '#,###0.00'
    end
    object SQLDIDETQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'ISADE.DIDET.QTDE'
    end
  end
  object SQLDI: TwwQuery
    CachedUpdates = True
    AfterPost = SQLDIAfterPost
    OnNewRecord = SQLDINewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * from DI where '
      'ID_CMPNF2 = :ID_CMPNF2')
    UpdateObject = UpDI
    ValidateWithMask = True
    Left = 133
    Top = 313
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CMPNF2'
        ParamType = ptUnknown
      end>
    object SQLDIID_DI: TIntegerField
      FieldName = 'ID_DI'
      Origin = 'ISADE.DI.ID_DI'
    end
    object SQLDIID_CMPNF2: TIntegerField
      FieldName = 'ID_CMPNF2'
      Origin = 'ISADE.DI.ID_CMPNF2'
    end
    object SQLDINUMDI: TStringField
      FieldName = 'NUMDI'
      Origin = 'ISADE.DI.NUMDI'
      Size = 10
    end
    object SQLDIDATADI: TDateTimeField
      FieldName = 'DATADI'
      Origin = 'ISADE.DI.DATADI'
    end
    object SQLDILOCALDESEMB: TStringField
      FieldName = 'LOCALDESEMB'
      Origin = 'ISADE.DI.LOCALDESEMB'
      Size = 60
    end
    object SQLDIUFDESEMB: TStringField
      FieldName = 'UFDESEMB'
      Origin = 'ISADE.DI.UFDESEMB'
      Size = 2
    end
    object SQLDIDATADESEMB: TDateTimeField
      FieldName = 'DATADESEMB'
      Origin = 'ISADE.DI.DATADESEMB'
    end
    object SQLDICODEXPORT: TStringField
      FieldName = 'CODEXPORT'
      Origin = 'ISADE.DI.CODEXPORT'
      Size = 60
    end
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 58
    Top = 308
  end
end
