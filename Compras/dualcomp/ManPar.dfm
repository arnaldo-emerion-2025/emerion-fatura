inherited fmManPar: TfmManPar
  Left = 134
  Top = 317
  Caption = 'Parametros'
  ClientHeight = 293
  ClientWidth = 626
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 626
    Height = 293
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label10: TLabel
    Left = 3
    Top = 1
    Width = 119
    Height = 13
    Caption = 'Variações Permitidas'
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
  object Bevel1: TBevel
    Left = 125
    Top = 8
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 4
    Top = 21
    Width = 132
    Height = 13
    Caption = '(%) Quantidade Recebida :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 4
    Top = 63
    Width = 163
    Height = 13
    Caption = '(%) Preço para o Item Praticado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 303
    Top = 21
    Width = 317
    Height = 13
    Caption = '(Percentual de Variação de Quantidades Recebidas em Pedidos de'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 303
    Top = 40
    Width = 220
    Height = 13
    Caption = 'Entradas de Compras Realizadas no Sistema.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 303
    Top = 64
    Width = 325
    Height = 13
    Caption = 
      '(Percentual de Variação de Preços Unitários de Itens Praticados ' +
      'em '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 303
    Top = 83
    Width = 214
    Height = 13
    Caption = 'Pedidos de Compras Realizados no Sistema.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 4
    Top = 120
    Width = 176
    Height = 13
    Caption = 'Tabela Default para Lançamentos ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 3
    Top = 97
    Width = 114
    Height = 13
    Caption = 'Pedidos de Compras'
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
  object Bevel2: TBevel
    Left = 125
    Top = 104
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label7: TLabel
    Left = 3
    Top = 143
    Width = 50
    Height = 13
    Caption = 'Entradas'
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
  object Bevel3: TBevel
    Left = 125
    Top = 150
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label11: TLabel
    Left = 4
    Top = 163
    Width = 143
    Height = 13
    Caption = 'Diferença Minima Permitida ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 303
    Top = 163
    Width = 286
    Height = 13
    Caption = '(Diferença Mínima Permitida para variação nos Calculos dos '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 303
    Top = 186
    Width = 268
    Height = 13
    Caption = 'Impostos referentes a Entradas dos Itens em Estoque.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 4
    Top = 197
    Width = 54
    Height = 13
    Caption = 'Impostos'
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
  object Label15: TLabel
    Left = 4
    Top = 215
    Width = 45
    Height = 13
    Caption = '(%) PIS :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 4
    Top = 239
    Width = 67
    Height = 13
    Caption = '(%) COFINS :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel4: TBevel
    Left = 125
    Top = 204
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object EdVarPrc: TdxDBColorCurrencyEdit
    Left = 184
    Top = 59
    Width = 114
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
    Alignment = taRightJustify
    DataField = 'VARPRC'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdVarQtd: TdxDBColorCurrencyEdit
    Left = 184
    Top = 17
    Width = 114
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
    Alignment = taRightJustify
    DataField = 'VARQTD'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object bConfirmar: TBitBtn
    Left = 358
    Top = 255
    Width = 132
    Height = 37
    Hint = 'Salvar as Alterações Realizadas'
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bConfirmarClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000014000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0CFD0C0CFD0C0CFD00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007F7F7FC0CFD0C0CFD0000000000000FF0000FF0000000000
      7F7F7FFF0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00
      000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7FFF
      0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF0000000000
      7F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00000000007F7F7FC0
      CFD0C0CFD0000000FF0000FF0000FF0000000000000000000000000000000000
      000000000000000000000000FF0000FF0000FF00000000007F7F7FC0CFD0C0CF
      D0000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF00000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
      0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00
      000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF0000000000
      7F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0
      CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CF
      D0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
      FF0000FF000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
  end
  object bCancelar: TBitBtn
    Left = 493
    Top = 255
    Width = 132
    Height = 37
    Hint = 'Retornar a Tela Anterior'
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = bCancelarClick
    Glyph.Data = {
      AA030000424DAA03000000000000360000002800000011000000110000000100
      18000000000074030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0000000000000
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000C0CFD0C0CFD000000000000030679F30679F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD000506030679F30
      679F30679F30679F000000005060005060005060005060005060005060C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD000506030689F30689F30679F30679F00000000
      CFFF00CFFF00CFFF000000C0C0C0C0C0C0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D00050602F6FA02F6FA02F6F9F2F689F00000000CFFF00CFFF00CFFF000000C0
      C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD00050602077AF2077A02070
      A02F70A000000010CFFF00CFFF00CFFF000000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD00050601F7FAF1F78AFFFFFFF2077AF00000030D7FF2FD0
      FF1FD0FFFF0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0005060
      1080B01F80B01F80B01F7FB000000060DFFF50D8FFFF0000FF0000FF0000FF00
      00FF0000FF0000FF0000C0CFD000C0CFD00050600F88BF1088BF1087BF1087B0
      0000008FE7FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D000C0CFD00050600F90C00F8FC00F8FC00F88BF000000B0EFFFA0E8FFFF0000
      FF0000FF0000FF0000FF0000FF0000FF0000C0CFD000C0CFD00050600097CF00
      97CF0090C00090C0000000DFF0FFCFF0FFC0EFFFFF0000FF0000FF0000C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD00050600098CF0098CF0098CF0097CF000000FF
      F8FFF0F7FFE0F7FF000000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D00050600098CF0098CF0098CF0098CF000000FFF8FFFFF8FFFFF8FF000000C0
      C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD00050600050600098
      CF0098CF000000005060005060005060005060C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0005060005060005060C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000}
  end
  object EdLanTab: TdxDBColorPickEdit
    Left = 184
    Top = 116
    Width = 143
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
    DataField = 'LANTAB'
    DataSource = DsPar
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      ''
      'Ultimo Preco'
      'Preco de Catalogo')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdDifEnt: TdxDBColorCurrencyEdit
    Left = 184
    Top = 159
    Width = 114
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
    Alignment = taRightJustify
    DataField = 'DIFENT'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdPerCof: TdxDBColorCurrencyEdit
    Left = 184
    Top = 235
    Width = 96
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
    TabOrder = 4
    Alignment = taRightJustify
    DataField = 'PERCOF'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdPerPis: TdxDBColorCurrencyEdit
    Left = 184
    Top = 211
    Width = 96
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
    TabOrder = 5
    Alignment = taRightJustify
    DataField = 'PERPIS'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object CmpPar: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From CmpPar')
    UpdateObject = UpPar
    ValidateWithMask = True
    Left = 107
    Top = 218
    object CmpParVARQTD: TFloatField
      FieldName = 'VARQTD'
      Origin = 'ISADE.CMPPAR.VARQTD'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpParVARPRC: TFloatField
      FieldName = 'VARPRC'
      Origin = 'ISADE.CMPPAR.VARPRC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpParLANTAB: TStringField
      FieldName = 'LANTAB'
      Origin = 'ISADE.CMPPAR.LANTAB'
      FixedChar = True
    end
    object CmpParDIFENT: TFloatField
      FieldName = 'DIFENT'
      Origin = 'ISADE.CMPPAR.DIFENT'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpParPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.CMPPAR.PERPIS'
    end
    object CmpParPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.CMPPAR.PERCOF'
    end
    object CmpParFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Origin = 'ISADE.CMPPAR.FLGTAB'
      FixedChar = True
      Size = 25
    end
    object CmpParTIPOEN: TStringField
      FieldName = 'TIPOEN'
      Origin = 'ISADE.CMPPAR.TIPOEN'
      FixedChar = True
      Size = 25
    end
    object CmpParFLGREQ: TStringField
      FieldName = 'FLGREQ'
      Origin = 'ISADE.CMPPAR.FLGREQ'
      FixedChar = True
      Size = 3
    end
    object CmpParEM1REQ: TIntegerField
      FieldName = 'EM1REQ'
      Origin = 'ISADE.CMPPAR.EM1REQ'
    end
    object CmpParEM2REQ: TIntegerField
      FieldName = 'EM2REQ'
      Origin = 'ISADE.CMPPAR.EM2REQ'
    end
    object CmpParPF1REQ: TStringField
      FieldName = 'PF1REQ'
      Origin = 'ISADE.CMPPAR.PF1REQ'
      FixedChar = True
      Size = 15
    end
    object CmpParPF2REQ: TStringField
      FieldName = 'PF2REQ'
      Origin = 'ISADE.CMPPAR.PF2REQ'
      FixedChar = True
      Size = 15
    end
    object CmpParCL1REQ: TIntegerField
      FieldName = 'CL1REQ'
      Origin = 'ISADE.CMPPAR.CL1REQ'
    end
    object CmpParCL2REQ: TIntegerField
      FieldName = 'CL2REQ'
      Origin = 'ISADE.CMPPAR.CL2REQ'
    end
    object CmpParVE1REQ: TIntegerField
      FieldName = 'VE1REQ'
      Origin = 'ISADE.CMPPAR.VE1REQ'
    end
    object CmpParVE2REQ: TIntegerField
      FieldName = 'VE2REQ'
      Origin = 'ISADE.CMPPAR.VE2REQ'
    end
    object CmpParFO1REQ: TIntegerField
      FieldName = 'FO1REQ'
      Origin = 'ISADE.CMPPAR.FO1REQ'
    end
    object CmpParFO2REQ: TIntegerField
      FieldName = 'FO2REQ'
      Origin = 'ISADE.CMPPAR.FO2REQ'
    end
  end
  object DsPar: TDataSource
    DataSet = CmpPar
    Left = 135
    Top = 218
  end
  object UpPar: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpPar'
      'set'
      '  VARQTD = :VARQTD,'
      '  VARPRC = :VARPRC,'
      '  LANTAB = :LANTAB,'
      '  DIFENT = :DIFENT,'
      '  FLGTAB = :FLGTAB,'
      '  TIPOEN = :TIPOEN,'
      '  FLGREQ = :FLGREQ,'
      '  EM1REQ = :EM1REQ,'
      '  EM2REQ = :EM2REQ,'
      '  PF1REQ = :PF1REQ,'
      '  PF2REQ = :PF2REQ,'
      '  CL1REQ = :CL1REQ,'
      '  CL2REQ = :CL2REQ,'
      '  VE1REQ = :VE1REQ,'
      '  VE2REQ = :VE2REQ,'
      '  FO1REQ = :FO1REQ,'
      '  FO2REQ = :FO2REQ,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF')
    InsertSQL.Strings = (
      'insert into CmpPar'
      
        '  (VARQTD, VARPRC, LANTAB, DIFENT, FLGTAB, TIPOEN, FLGREQ, EM1RE' +
        'Q, EM2REQ, '
      
        '   PF1REQ, PF2REQ, CL1REQ, CL2REQ, VE1REQ, VE2REQ, FO1REQ, FO2RE' +
        'Q, PERPIS, '
      '   PERCOF)'
      'values'
      
        '  (:VARQTD, :VARPRC, :LANTAB, :DIFENT, :FLGTAB, :TIPOEN, :FLGREQ' +
        ', :EM1REQ, '
      
        '   :EM2REQ, :PF1REQ, :PF2REQ, :CL1REQ, :CL2REQ, :VE1REQ, :VE2REQ' +
        ', :FO1REQ, '
      '   :FO2REQ, :PERPIS, :PERCOF)')
    DeleteSQL.Strings = (
      'delete from CmpPar'
      'where'
      '  VARQTD = :OLD_VARQTD')
    Left = 107
    Top = 246
  end
end
