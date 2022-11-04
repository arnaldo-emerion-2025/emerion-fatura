inherited fmManTxf: TfmManTxf
  Left = 65
  Top = 105
  Caption = 'Textos Fiscais'
  ClientHeight = 361
  ClientWidth = 634
  Color = 15788249
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcTxf: TPageControl
    Left = -2
    Top = 0
    Width = 644
    Height = 362
    ActivePage = pcPag1
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 111
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape7: TShape
        Left = 0
        Top = 0
        Width = 223
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 0
        Top = 112
        Width = 202
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 310
        Width = 632
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 4
        Top = 2
        Width = 154
        Height = 13
        Caption = 'Informa��es para Pesquisa'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape2: TShape
        Left = 224
        Top = 8
        Width = 408
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label4: TLabel
        Left = 1
        Top = 25
        Width = 40
        Height = 13
        Caption = 'C�digo :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 1
        Top = 49
        Width = 53
        Height = 13
        Caption = 'Descri��o :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 4
        Top = 114
        Width = 116
        Height = 13
        Caption = 'Textos Selecionados'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape3: TShape
        Left = 203
        Top = 120
        Width = 428
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label12: TLabel
        Left = 4
        Top = 314
        Width = 253
        Height = 13
        Caption = 'Crtl+'#39'I'#39'-Incluir Ctrl+'#39'E'#39'-Excluir Ctrl+'#39'S'#39'-Salvar'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 257
        Top = 25
        Width = 27
        Height = 13
        Caption = 'Tipo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdPsqCodTxf: TdxColorEdit
        Left = 108
        Top = 21
        Width = 117
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        CharCase = ecUpperCase
        MaxLength = 30
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object EdPsqDsrTxf: TdxColorEdit
        Left = 108
        Top = 45
        Width = 281
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object BbPesquisa: TBitBtn
        Left = 212
        Top = 70
        Width = 176
        Height = 48
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = bbPesquisaClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
          FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
          FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
          FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
          FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
          CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
          CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
          CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
          CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
          990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
          990000CC9900FF999900CC99990099999900669999003399990000999900FF66
          9900CC66990099669900666699003366990000669900FF339900CC3399009933
          9900663399003333990000339900FF009900CC00990099009900660099003300
          990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
          6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
          6600669966003399660000996600FF666600CC66660099666600666666003366
          660000666600FF336600CC33660099336600663366003333660000336600FF00
          6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
          330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
          330000CC3300FF993300CC99330099993300669933003399330000993300FF66
          3300CC66330099663300666633003366330000663300FF333300CC3333009933
          3300663333003333330000333300FF003300CC00330099003300660033003300
          330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
          000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
          000000990000FF660000CC66000099660000666600000066000033660000FF33
          0000CC33000099330000663300003333000000330000CC000000990000006600
          0000330000000000DD000000BB000000AA000000880000007700000055000000
          44000000220000DD000000BB000000AA00000088000000770000005500000044
          000000220000DDDDDD0055555500777777007777770044444400222222001111
          110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
          323232000000000000000000EDEDED3232323232323232323232323232323232
          00000031313131FF5CFF5C5C000000EDEDED3232323232323232323232320000
          31313131313131FF5CFF5C5C5C5C5C0000EDEDED323232323232323232005C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C00EDEDED32323232323232005C5C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C5C00EDEDED3232323232005C5C5C5C
          3131310000000000000000005C5C5C5C5C5C5C00EDEDED323232005C5C5C5C5C
          000000FFFFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED323232005C5C5C0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED3232005C5C00FFFF
          FFFF00000000000000000000FFFFFFFFFF005C5C00EDEDED3232005C00FFFFFF
          00005B5B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED320000FFFFFF00
          5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED3200FFFFFF0087
          5B5B5B5B5B5B5B5B5BFFFFFF5B5B5B5B00FFFFFF00EDEDEDED3200FFFF005C5B
          875B5B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED323200FFFF005C5C
          5B8787315B5B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED323200FFFF005C5C
          5C5B31FF3187878787878787875B5C5C5C00FFFF00EDED32323200FFFFFF005C
          5C5C5C315B5B5B5B5B5B5B5B5B5CF75B00FFFFFF00ED323232323200FFFFFF00
          5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF00323232323232323200FFFFFF
          0000005C5C5C5C5C5C5C5C5C5C0000FFFFFF003232323232323232323200FFFF
          FFFFFF00000000000000000000FFFFFFFF00EDED323232323232323232320000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED3232323232323232323232
          000000FFFFFFFFFFFFFFFFFFFF00000707075D00EDED32323232323232323232
          3232320000000000000000000007FFFF0707070000EDED323232323232323232
          323232323232323232323232320007FFFF0700000000EDED3232323232323232
          323232323232323232323232323200000000F100000000EDED32323232323232
          32323232323232323232323232323200F0EDF0F100000000EDED323232323232
          3232323232323232323232323232323200F0EDF0F100000000ED323232323232
          323232323232323232323232323232323200F0EDF0F100000000323232323232
          32323232323232323232323232323232323200F0EDF0F1000000323232323232
          3232323232323232323232323232323232323200F0EDF0F10000323232323232
          323232323232323232323232323232323232323200F0EDF0F100323232323232
          3232323232323232323232323232323232323232320000000032323232323232
          3232323232323232323232323232323232323232323232323232}
      end
      object rgOrdem: TRadioGroup
        Left = 391
        Top = 14
        Width = 121
        Height = 104
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'C�digo'
          'Descri��o'
          'Tipo')
        ParentFont = False
        TabOrder = 3
      end
      object rgBusca: TRadioGroup
        Left = 517
        Top = 14
        Width = 116
        Height = 104
        Caption = ' Tipo de Busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 4
      end
      object Panel3: TPanel
        Left = 0
        Top = 133
        Width = 632
        Height = 175
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 5
        object grTxf: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 630
          Height = 173
          Selected.Strings = (
            'CODTXF'#9'20'#9'C�digo'
            'DSRTXF'#9'81'#9'Descri��o Reduzida'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = dsTxf
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 3
          TitleButtons = False
          OnDblClick = grTxfDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqTipTxf: TdxColorPickEdit
        Left = 288
        Top = 21
        Width = 101
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        HideSelection = False
        DropDownListStyle = True
        Items.Strings = (
          'Ipi'
          'Icms'
          'Todos')
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identifica��o'
      OnShow = pcPag2Show
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 223
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 4
        Top = 2
        Width = 129
        Height = 13
        Caption = 'Informa��es Principais'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 224
        Top = 8
        Width = 408
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label14: TLabel
        Left = 1
        Top = 25
        Width = 40
        Height = 13
        Caption = 'C�digo :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 1
        Top = 49
        Width = 100
        Height = 13
        Caption = 'Descri��o Reduzida :'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 0
        Top = 73
        Width = 101
        Height = 13
        Caption = 'Descri��o Completa :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 266
        Top = 25
        Width = 27
        Height = 13
        Caption = 'Tipo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdCodTxf: TdxDBColorEdit
        Left = 108
        Top = 21
        Width = 117
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODTXF'
        DataSource = dsTxf
        MaxLength = 30
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdDsrTxf: TdxDBColorEdit
        Left = 108
        Top = 45
        Width = 523
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSRTXF'
        DataSource = dsTxf
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdDscTxf: TdxDBColorMemo
        Left = 108
        Top = 69
        Width = 523
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DSCTXF'
        DataSource = dsTxf
        MaxLength = 160
        ScrollBars = ssVertical
        CorDeFoco = clInfoBk
        Height = 263
        StoredValues = 3
      end
      object EdTipTxf: TdxDBColorPickEdit
        Left = 298
        Top = 21
        Width = 101
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        DataField = 'TIPTXF'
        DataSource = dsTxf
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Ipi'
          'Icms')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
  end
  object nvTxf: ThDBNavigator
    Left = 265
    Top = -6
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnImprime = nvTxfImprime
    BeforeSalva = nvTxfBeforeSalva
    DataSource = dsTxf
    UsaAppend = True
    Salvar = False
  end
  object EstTxf: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = EstTxfNewRecord
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From EstTxf order by CodTxf')
    UpdateObject = upTxf
    ValidateWithMask = True
    Top = 370
    object EstTxfCODTXF: TStringField
      DisplayLabel = 'C�digo'
      DisplayWidth = 20
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object EstTxfDSRTXF: TStringField
      DisplayLabel = 'Descri��o Reduzida'
      DisplayWidth = 81
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 100
    end
    object EstTxfDSCTXF: TStringField
      FieldName = 'DSCTXF'
      Origin = 'ISADE.ESTTXF.DSCTXF'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object EstTxfTIPTXF: TStringField
      DisplayWidth = 4
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      Visible = False
      FixedChar = True
      Size = 4
    end
  end
  object dsTxf: TwwDataSource
    AutoEdit = False
    DataSet = EstTxf
    OnDataChange = dsTxfDataChange
    Left = 28
    Top = 370
  end
  object upTxf: TUpdateSQL
    ModifySQL.Strings = (
      'update EstTxf'
      'set'
      '  TIPTXF = :TIPTXF,'
      '  DSRTXF = :DSRTXF,'
      '  DSCTXF = :DSCTXF'
      'where'
      '  CODTXF = :OLD_CODTXF')
    InsertSQL.Strings = (
      'insert into EstTxf'
      '  (CODTXF, TIPTXF, DSRTXF, DSCTXF)'
      'values'
      '  (:CODTXF, :TIPTXF, :DSRTXF, :DSCTXF)')
    DeleteSQL.Strings = (
      'delete from EstTxf'
      'where'
      '  CODTXF = :OLD_CODTXF')
    Left = 28
    Top = 398
  end
  object quSql: TwwQuery
    Tag = 1
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Top = 398
  end
  object DsReport: TppDBPipeline
    DataSource = dsTxf
    UserName = 'DsReport'
    Top = 426
    object DsReportppField1: TppField
      FieldAlias = 'CODTXF'
      FieldName = 'CODTXF'
      FieldLength = 30
      DisplayWidth = 20
      Position = 0
    end
    object DsReportppField2: TppField
      FieldAlias = 'DSRTXF'
      FieldName = 'DSRTXF'
      FieldLength = 100
      DisplayWidth = 81
      Position = 1
    end
    object DsReportppField3: TppField
      FieldAlias = 'DSCTXF'
      FieldName = 'DSCTXF'
      FieldLength = 160
      DisplayWidth = 160
      Position = 2
    end
    object DsReportppField4: TppField
      FieldAlias = 'TIPTXF'
      FieldName = 'TIPTXF'
      FieldLength = 4
      DisplayWidth = 4
      Position = 3
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DsReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\_WGSYS\Emerion\Estoque\Relatorios\RManTxf'
    Units = utMillimeters
    UserName = 'Report'
    CachePages = True
    DeviceType = 'Screen'
    Left = 28
    Top = 426
    Version = '5.0'
    mmColumnWidth = 0
    object hbReport: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'QrTitulo1'
        Caption = 'Textos Fiscais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1323
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C�digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 10054
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descri��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 25929
        mmTop = 10054
        mmWidth = 13829
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Emitido Em    :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 102129
        mmTop = 1323
        mmWidth = 21519
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 124354
        mmTop = 1323
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'P�gina No.   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 155575
        mmTop = 1323
        mmWidth = 16228
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
    end
    object dbReport: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppCodTxf: TppDBText
        UserName = 'CodTxf'
        DataField = 'CODTXF'
        DataPipeline = DsReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 529
        mmWidth = 24342
        BandType = 4
      end
      object ppDscTxf: TppDBMemo
        UserName = 'DscTxf'
        CharWrap = False
        DataField = 'DSCTXF'
        DataPipeline = DsReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 23548
        mmLeft = 25929
        mmTop = 794
        mmWidth = 150284
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
end
