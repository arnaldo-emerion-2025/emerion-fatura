object FMMANDI2: TFMMANDI2
  Left = 414
  Top = 24
  Width = 639
  Height = 686
  Caption = 'Entradas de DI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bContinuar: TButton
    Left = 484
    Top = 617
    Width = 143
    Height = 31
    Hint = 'Continuar Emissão da Nota Fiscal'
    Caption = 'F12 - Continuar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = bContinuarClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 379
    Width = 631
    Height = 235
    Align = alTop
    TabOrder = 2
    object bIteRemover: TButton
      Left = 347
      Top = 76
      Width = 105
      Height = 33
      Caption = 'Remover'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bIteRemoverClick
    end
    object bIteIncluir: TButton
      Left = 12
      Top = 76
      Width = 105
      Height = 33
      Caption = 'Incluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bIteIncluirClick
    end
    object bIteConcluir: TButton
      Left = 124
      Top = 76
      Width = 105
      Height = 33
      Caption = 'Concluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bIteConcluirClick
    end
    object bIteCancelar: TButton
      Left = 235
      Top = 76
      Width = 105
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bDiCancelarClick
    end
    object Panel5: TPanel
      Left = 1
      Top = 117
      Width = 629
      Height = 117
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 5
      object DBGrid2: TDBGrid
        Left = 2
        Top = 2
        Width = 625
        Height = 113
        Align = alClient
        DataSource = DSDIDET
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_DIDET'
            Title.Caption = 'Seq.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DI'
            Title.Caption = 'Seq.DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSEQADIC'
            Title.Caption = 'Seq. Adição'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODFAB'
            Title.Caption = 'Cod. Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VDESCDI'
            Title.Caption = 'Vlr. Desconto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NADICAO'
            Title.Caption = 'Nro. Adição'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 4
      Width = 617
      Height = 65
      Caption = 'Adições da DI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label8: TLabel
        Left = 4
        Top = 20
        Width = 70
        Height = 13
        Caption = 'Seq. Adição'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 81
        Top = 20
        Width = 91
        Height = 13
        Caption = 'Cod. Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 182
        Top = 20
        Width = 78
        Height = 13
        Caption = 'Vlr. Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 283
        Top = 20
        Width = 66
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 384
        Top = 20
        Width = 68
        Height = 13
        Caption = 'Nro. Adição'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dxDBColorEdit5: TdxDBColorEdit
        Left = 4
        Top = 33
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
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'NSEQADIC'
        DataSource = DSDIDET
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edCodFabricante: TdxDBColorEdit
        Left = 81
        Top = 33
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
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODFAB'
        DataSource = DSDIDET
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edVlDesconto: TdxDBColorEdit
        Left = 182
        Top = 33
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
        TabOrder = 2
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'VDESCDI'
        DataSource = DSDIDET
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edQtd: TdxDBColorEdit
        Left = 283
        Top = 33
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
        TabOrder = 3
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'QTDE'
        DataSource = DSDIDET
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edNumAdicao: TdxDBColorEdit
        Left = 384
        Top = 33
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
        TabOrder = 4
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'NADICAO'
        DataSource = DSDIDET
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 30
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 10
      Top = 6
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 631
    Height = 349
    Align = alTop
    TabOrder = 1
    object bDiCancelar: TButton
      Left = 235
      Top = 190
      Width = 105
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bDiCancelarClick
    end
    object bDiConcluir: TButton
      Left = 124
      Top = 190
      Width = 105
      Height = 33
      Caption = 'Concluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bDiConcluirClick
    end
    object bDiIncluir: TButton
      Left = 12
      Top = 190
      Width = 105
      Height = 33
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bDiIncluirClick
    end
    object bDiRemover: TButton
      Left = 347
      Top = 190
      Width = 105
      Height = 33
      Caption = 'Remover'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bDiRemoverClick
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 617
      Height = 182
      Caption = 'Dados de Importação (DI) '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 21
        Top = 20
        Width = 79
        Height = 13
        Caption = 'Numero da DI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 134
        Top = 20
        Width = 63
        Height = 13
        Caption = 'Data da DI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 245
        Top = 20
        Width = 131
        Height = 13
        Caption = 'Local do Desembaraço'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 22
        Top = 57
        Width = 84
        Height = 13
        Caption = 'UF do Desemb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 134
        Top = 57
        Width = 99
        Height = 13
        Caption = 'Data do Desemb.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 245
        Top = 57
        Width = 110
        Height = 13
        Caption = 'Cod. do Exportador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 22
        Top = 97
        Width = 96
        Height = 13
        Caption = 'Via de Tranporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 246
        Top = 97
        Width = 60
        Height = 13
        Caption = 'Intermédio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 24
        Top = 137
        Width = 32
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 246
        Top = 137
        Width = 76
        Height = 13
        Caption = 'UF - Terceiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 343
        Top = 137
        Width = 78
        Height = 13
        Caption = 'Valor AFRMM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edNumDI: TdxDBColorEdit
        Left = 21
        Top = 33
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
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edDataDi: TdxDBColorDateEdit
        Left = 134
        Top = 33
        Width = 100
        Hint = 'Data para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATADI'
        DataSource = DSDI
        ReadOnly = True
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 69
      end
      object edLocalDesemb: TdxDBColorEdit
        Left = 245
        Top = 33
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
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edDataDesemb: TdxDBColorDateEdit
        Left = 134
        Top = 70
        Width = 100
        Hint = 'Data para Provavel Entrega do Pedido'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ReadOnly = True
        PopupBorder = pbFlat
        DateButtons = []
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 69
      end
      object edCodExport: TdxDBColorEdit
        Left = 245
        Top = 70
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
        TabOrder = 5
        OnKeyDown = edCodExportKeyDown
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODEXPORT'
        DataSource = DSDI
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object dxDBColorLookupEdit3: TdxDBColorLookupEdit
        Left = 21
        Top = 111
        Width = 213
        Color = 16577773
        DragMode = dmAutomatic
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
        DataField = 'VIA_TRANSP'
        DataSource = DSDI
        ReadOnly = False
        ListFieldName = 'TRANSPORTE'
        KeyFieldName = 'ID'
        ListSource = dsTransporte
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBColorLookupEdit1: TdxDBColorLookupEdit
        Left = 245
        Top = 111
        Width = 330
        Color = 16577773
        DragMode = dmAutomatic
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
        TabOrder = 7
        DataField = 'INTERMEDIO'
        DataSource = DSDI
        ReadOnly = False
        ListFieldName = 'INTERMEDIO'
        KeyFieldName = 'ID'
        ListSource = dsIntermedio
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBColorLookupEdit2: TdxDBColorLookupEdit
        Left = 245
        Top = 150
        Width = 81
        Color = 16577773
        DragMode = dmAutomatic
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
        TabOrder = 9
        DataField = 'UF_TERCEIRO'
        DataSource = DSDI
        ReadOnly = False
        ListFieldName = 'SIGUFE'
        KeyFieldName = 'SIGUFE'
        ListSource = dsUfe
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
        Left = 345
        Top = 149
        Width = 112
        Color = 16577773
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
        TabOrder = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_AFRMM'
        DataSource = DSDI
        ReadOnly = False
        DisplayFormat = 'R$ 0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorMaskEdit1: TdxDBColorMaskEdit
        Left = 21
        Top = 150
        Width = 212
        Color = 16577773
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 8
        DataField = 'CNPJ'
        DataSource = DSDI
        EditMask = '!99.999.999/9999-99;0'
        IgnoreMaskBlank = False
        CorDeFoco = clInfoBk
        StoredValues = 4
      end
      object edUFDesemb: TdxDBColorLookupEdit
        Left = 21
        Top = 70
        Width = 98
        Color = 16577773
        DragMode = dmAutomatic
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
        DataField = 'UFDESEMB'
        DataSource = DSDI
        ReadOnly = False
        ListFieldName = 'SIGUFE'
        KeyFieldName = 'SIGUFE'
        ListSource = dsUfe
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 227
      Width = 629
      Height = 121
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 5
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 625
        Height = 117
        Align = alClient
        DataSource = DSDI
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_DI'
            Title.Caption = 'Seq.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CMPNF2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NUMDI'
            Title.Caption = 'Nro. DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADI'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALDESEMB'
            Title.Caption = 'Loc. Desembaraço'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UFDESEMB'
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADESEMB'
            Title.Alignment = taCenter
            Title.Caption = 'Data desemb'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODEXPORT'
            Title.Caption = 'Cod.Exporta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end>
      end
    end
  end
  object DSDIDET: TDataSource
    DataSet = SQLDIDET
    OnStateChange = DSDIDETStateChange
    Left = 64
    Top = 307
  end
  object UPDIDET: TUpdateSQL
    ModifySQL.Strings = (
      'update DIDET'
      'set'
      '  ID_DI = :ID_DI,'
      '  NSEQADIC = :NSEQADIC,'
      '  CODFAB = :CODFAB,'
      '  VDESCDI = :VDESCDI,'
      '  QTDE = :QTDE,'
      '  NADICAO = :NADICAO'
      'where'
      '  ID_DIDET = :OLD_ID_DIDET')
    InsertSQL.Strings = (
      'insert into DIDET'
      '  (ID_DI, NSEQADIC, CODFAB, VDESCDI, QTDE, NADICAO)'
      'values'
      '  (:ID_DI, :NSEQADIC, :CODFAB, :VDESCDI, :QTDE, :NADICAO)')
    DeleteSQL.Strings = (
      'delete from DIDET'
      'where'
      '  ID_DIDET = :OLD_ID_DIDET')
    Left = 128
    Top = 307
  end
  object DSDI: TDataSource
    DataSet = SQLDI
    OnStateChange = DSDIStateChange
    Left = 64
    Top = 271
  end
  object UpDI: TUpdateSQL
    ModifySQL.Strings = (
      'update DI'
      'set'
      '  ID_DI = :ID_DI,'
      '  ID_CMPNF2 = :ID_CMPNF2,'
      '  NUMDI = :NUMDI,'
      '  DATADI = :DATADI,'
      '  LOCALDESEMB = :LOCALDESEMB,'
      '  UFDESEMB = :UFDESEMB,'
      '  DATADESEMB = :DATADESEMB,'
      '  CODEXPORT = :CODEXPORT,'
      '  TAB_ORIGEM = :TAB_ORIGEM,'
      '  ID_ITEM_ORIGEM = :ID_ITEM_ORIGEM,'
      '  VIA_TRANSP = :VIA_TRANSP,'
      '  INTERMEDIO = :INTERMEDIO,'
      '  CNPJ = :CNPJ,'
      '  UF_TERCEIRO = :UF_TERCEIRO,'
      '  VALOR_AFRMM = :VALOR_AFRMM'
      'where'
      '  ID_DI = :OLD_ID_DI')
    InsertSQL.Strings = (
      'insert into DI'
      
        '  (ID_DI, ID_CMPNF2, NUMDI, DATADI, LOCALDESEMB, UFDESEMB, DATAD' +
        'ESEMB, '
      
        '   CODEXPORT, TAB_ORIGEM, ID_ITEM_ORIGEM, VIA_TRANSP, INTERMEDIO' +
        ', CNPJ, '
      '   UF_TERCEIRO, VALOR_AFRMM)'
      'values'
      
        '  (:ID_DI, :ID_CMPNF2, :NUMDI, :DATADI, :LOCALDESEMB, :UFDESEMB,' +
        ' :DATADESEMB, '
      
        '   :CODEXPORT, :TAB_ORIGEM, :ID_ITEM_ORIGEM, :VIA_TRANSP, :INTER' +
        'MEDIO, '
      '   :CNPJ, :UF_TERCEIRO, :VALOR_AFRMM)')
    DeleteSQL.Strings = (
      'delete from DI'
      'where'
      '  ID_DI = :OLD_ID_DI')
    Left = 128
    Top = 271
  end
  object SQLDIDET: TwwQuery
    CachedUpdates = True
    BeforePost = SQLDIDETBeforePost
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
    Left = 96
    Top = 307
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
    object SQLDIDETNADICAO: TIntegerField
      FieldName = 'NADICAO'
      Origin = 'ISADE.DIDET.NADICAO'
    end
  end
  object SQLDI: TwwQuery
    CachedUpdates = True
    BeforePost = SQLDIBeforePost
    AfterPost = SQLDIAfterPost
    OnNewRecord = SQLDINewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * from DI where '
      'ID_CMPNF2 = :ID_CMPNF2')
    UpdateObject = UpDI
    ValidateWithMask = True
    Left = 96
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
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
    object SQLDIDATADI: TDateTimeField
      FieldName = 'DATADI'
      Origin = 'ISADE.DI.DATADI'
    end
    object SQLDILOCALDESEMB: TStringField
      FieldName = 'LOCALDESEMB'
      Origin = 'ISADE.DI.LOCALDESEMB'
      Size = 60
    end
    object SQLDICNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'ISADE.DI.CNPJ'
      Size = 14
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
    object SQLDITAB_ORIGEM: TStringField
      FieldName = 'TAB_ORIGEM'
      Origin = 'ISADE.DI.TAB_ORIGEM'
      FixedChar = True
      Size = 3
    end
    object SQLDIID_ITEM_ORIGEM: TIntegerField
      FieldName = 'ID_ITEM_ORIGEM'
      Origin = 'ISADE.DI.ID_ITEM_ORIGEM'
    end
    object SQLDIVIA_TRANSP: TIntegerField
      FieldName = 'VIA_TRANSP'
      Origin = 'ISADE.DI.VIA_TRANSP'
    end
    object SQLDIINTERMEDIO: TIntegerField
      FieldName = 'INTERMEDIO'
      Origin = 'ISADE.DI.INTERMEDIO'
    end
    object SQLDINUMDI: TStringField
      FieldName = 'NUMDI'
      Origin = 'ISADE.DI.NUMDI'
      Size = 10
    end
    object SQLDIUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Origin = 'ISADE.DI.UF_TERCEIRO'
      FixedChar = True
      Size = 3
    end
    object SQLDIVALOR_AFRMM: TFloatField
      FieldName = 'VALOR_AFRMM'
      Origin = 'ISADE.DI.VALOR_AFRMM'
      DisplayFormat = 'R$ 0,00'
    end
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 26
    Top = 271
  end
  object transporte: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'select ID, ID || '#39' - '#39' || TRANSPORTE TRANSPORTE from TRANSPORTE')
    ValidateWithMask = True
    Left = 291
    Top = 274
    object transporteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ISADE.TRANSPORTE.ID'
    end
    object transporteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Origin = 'ISADE.TRANSPORTE.ID'
      Size = 44
    end
  end
  object dsTransporte: TwwDataSource
    AutoEdit = False
    DataSet = transporte
    Left = 319
    Top = 274
  end
  object intermedio: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      
        'select ID, ID || '#39' - '#39' || INTERMEDIO INTERMEDIO from intermediac' +
        'ao')
    ValidateWithMask = True
    Left = 291
    Top = 304
    object intermedioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ISADE.INTERMEDIACAO.ID'
    end
    object intermedioINTERMEDIO: TStringField
      FieldName = 'INTERMEDIO'
      Origin = 'ISADE.INTERMEDIACAO.ID'
      Size = 44
    end
  end
  object dsIntermedio: TwwDataSource
    AutoEdit = False
    DataSet = intermedio
    Left = 319
    Top = 304
  end
  object uf: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SessionName = 'Default'
    SQL.Strings = (
      'select SIGUFE from GERICM'
      'order by SIGUFE')
    ValidateWithMask = True
    Left = 291
    Top = 334
    object ufSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERICM.SIGUFE'
      FixedChar = True
      Size = 2
    end
  end
  object dsUfe: TwwDataSource
    AutoEdit = False
    DataSet = uf
    Left = 319
    Top = 334
  end
end
