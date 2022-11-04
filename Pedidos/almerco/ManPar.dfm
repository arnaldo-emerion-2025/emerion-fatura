inherited fmManPar: TfmManPar
  Left = 60
  Top = 13
  Caption = 'Parametros'
  ClientHeight = 468
  ClientWidth = 693
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 693
    Height = 468
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label14: TLabel
    Left = 3
    Top = 137
    Width = 52
    Height = 13
    Caption = 'Cotações'
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
  object Bevel4: TBevel
    Left = 178
    Top = 144
    Width = 134
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label20: TLabel
    Left = 320
    Top = 137
    Width = 100
    Height = 13
    Caption = 'Via de Separação '
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
  object Bevel6: TBevel
    Left = 420
    Top = 144
    Width = 271
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 3
    Top = 305
    Width = 44
    Height = 13
    Caption = 'Pedidos'
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
    Left = 178
    Top = 313
    Width = 513
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label10: TLabel
    Left = 3
    Top = 153
    Width = 109
    Height = 13
    Caption = 'Quantidade de Dias ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 3
    Top = 323
    Width = 86
    Height = 13
    Caption = 'Imprimir pedidos ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 3
    Top = 346
    Width = 89
    Height = 13
    Caption = 'Tipo de comissão ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 320
    Top = 268
    Width = 228
    Height = 13
    Caption = 'Imprimir referência ao invés do código do item ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label21: TLabel
    Left = 320
    Top = 153
    Width = 225
    Height = 13
    Caption = 'Imprimir informações de marca e part number ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 320
    Top = 176
    Width = 186
    Height = 13
    Caption = 'Imprimir tracejado para separar itens ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label32: TLabel
    Left = 320
    Top = 200
    Width = 110
    Height = 13
    Caption = 'Imprimir observações ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label33: TLabel
    Left = 320
    Top = 222
    Width = 218
    Height = 13
    Caption = 'Imprimir informações de venctos financeiros ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label34: TLabel
    Left = 3
    Top = 7
    Width = 248
    Height = 13
    Caption = 'Informar quantidade dos itens com casas decimais ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 320
    Top = 245
    Width = 205
    Height = 13
    Caption = 'Imprimir localização dos itens em estoque ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 3
    Top = 30
    Width = 291
    Height = 13
    Caption = 'Organizar pedidos/cotações ao concluir pelo código do item ?'
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
    Top = 53
    Width = 395
    Height = 13
    Caption = 
      'Não permitir continuar pedidos acima do limite de crédito dispon' +
      'ivel para o cliente ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 3
    Top = 76
    Width = 305
    Height = 13
    Caption = 'Quantidade limite de itens para digitação de pedidos/cotações ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 3
    Top = 99
    Width = 590
    Height = 13
    Caption = 
      'Permitir que os vendedores emitam pedidos com data de previsão d' +
      'e faturamento maior que a data de emissão do pedido ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 3
    Top = 400
    Width = 127
    Height = 13
    Caption = '% Taxa de financiamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 325
    Top = 400
    Width = 364
    Height = 13
    Caption = 
      '(Taxa de financimento para condições de pagamento de pedidos rea' +
      'lizados)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 3
    Top = 385
    Width = 58
    Height = 13
    Caption = 'Financeiro'
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
    Left = 178
    Top = 391
    Width = 513
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 320
    Top = 323
    Width = 299
    Height = 13
    Caption = 'Exibir informações de margens de itens em pedidos/cotações ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 320
    Top = 346
    Width = 96
    Height = 13
    Caption = 'Tipo de atendente ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 3
    Top = 122
    Width = 323
    Height = 13
    Caption = 
      'Permitir lançamento de pedidos/cotações de clientes bloqueados ?' +
      ' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 3
    Top = 369
    Width = 153
    Height = 13
    Caption = 'Tipo de lançamento de Venctos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 343
    Top = 369
    Width = 261
    Height = 13
    Caption = 'Permitir vendedor realizar cotações em fornecedores ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 3
    Top = 423
    Width = 138
    Height = 13
    Caption = '% Margem miníma permitida:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 320
    Top = 291
    Width = 151
    Height = 13
    Caption = 'Imprimir código antigo do item ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label24: TLabel
    Left = 3
    Top = 222
    Width = 231
    Height = 13
    Caption = 'Incluir referência no inicio da descrição do item ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 3
    Top = 446
    Width = 224
    Height = 13
    Caption = 'Exibir local de cobrança em pedidos/cotações ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel
    Left = 3
    Top = 245
    Width = 178
    Height = 13
    Caption = 'Permitir lançar itens em duplicidade  ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object bConfirmar: TBitBtn
    Left = 340
    Top = 435
    Width = 173
    Height = 31
    Hint = 'Salvar as Alterações Realizadas'
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
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
  object bFechar: TBitBtn
    Left = 515
    Top = 435
    Width = 173
    Height = 31
    Hint = 'Retornar a Tela Anterior'
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    OnClick = bFecharClick
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
  object EdQtdCta: TdxDBColorCurrencyEdit
    Left = 176
    Top = 149
    Width = 51
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
    TabOrder = 6
    Alignment = taRightJustify
    DataField = 'QTDCTA'
    DataSource = DsPar
    DecimalPlaces = 0
    DisplayFormat = '##0'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdFlgImp: TdxDBColorPickEdit
    Left = 176
    Top = 319
    Width = 51
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
    TabOrder = 16
    DataField = 'FLGIMP'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdTipCom: TdxDBColorPickEdit
    Left = 176
    Top = 342
    Width = 122
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
    TabOrder = 18
    DataField = 'TIPCOM'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Item'
      'Vendedor'
      'Markup medio'
      'Tabela de preco')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpRef: TdxDBColorPickEdit
    Left = 629
    Top = 264
    Width = 50
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
    TabOrder = 7
    DataField = 'IMPREF'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpMrc: TdxDBColorPickEdit
    Left = 629
    Top = 149
    Width = 50
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
    TabOrder = 9
    DataField = 'IMPMRC'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpTra: TdxDBColorPickEdit
    Left = 629
    Top = 172
    Width = 50
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
    TabOrder = 10
    DataField = 'IMPTRA'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpObs: TdxDBColorPickEdit
    Left = 629
    Top = 195
    Width = 50
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
    TabOrder = 11
    DataField = 'IMPOBS'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpFin: TdxDBColorPickEdit
    Left = 629
    Top = 218
    Width = 50
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
    TabOrder = 12
    DataField = 'IMPFIN'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdUsaDec: TdxDBColorPickEdit
    Left = 629
    Top = 3
    Width = 51
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
    DataField = 'USADEC'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdImpLoc: TdxDBColorPickEdit
    Left = 629
    Top = 241
    Width = 50
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
    TabOrder = 13
    DataField = 'IMPLOC'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgOrd: TdxDBColorPickEdit
    Left = 629
    Top = 26
    Width = 51
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
    DataField = 'FLGORD'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgCre: TdxDBColorPickEdit
    Left = 629
    Top = 49
    Width = 51
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
    DataField = 'FLGCRE'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdQtiPed: TdxDBColorCurrencyEdit
    Left = 629
    Top = 72
    Width = 51
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
    DataField = 'QTIPED'
    DataSource = DsPar
    DecimalPlaces = 0
    DisplayFormat = '##0'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdFlgPro: TdxDBColorPickEdit
    Left = 629
    Top = 95
    Width = 51
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
    DataField = 'FLGPRO'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdTaxFin: TdxDBColorCurrencyEdit
    Left = 233
    Top = 396
    Width = 90
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
    TabOrder = 22
    Alignment = taRightJustify
    DataField = 'TAXFIN'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdExiRen: TdxDBColorPickEdit
    Left = 629
    Top = 319
    Width = 50
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
    TabOrder = 17
    DataField = 'EXIREN'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdTipAtd: TdxDBColorPickEdit
    Left = 428
    Top = 342
    Width = 122
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
    TabOrder = 19
    DataField = 'TIPATD'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Vendedor'
      'Atendente')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgBlo: TdxDBColorPickEdit
    Left = 629
    Top = 118
    Width = 51
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
    DataField = 'FLGBLO'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdTipPag: TdxDBColorPickEdit
    Left = 177
    Top = 365
    Width = 160
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
    TabOrder = 20
    DataField = 'TIPPAG'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Lancamento manual'
      'Tabela de condicoes de pagto')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgCot: TdxDBColorPickEdit
    Left = 629
    Top = 365
    Width = 50
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
    TabOrder = 21
    DataField = 'FLGCOT'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdMarMin: TdxDBColorCurrencyEdit
    Left = 233
    Top = 419
    Width = 57
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
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
    TabOrder = 23
    Alignment = taRightJustify
    DataField = 'MARMIN'
    DataSource = DsPar
    DisplayFormat = '###,###,##0.00'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdImpAnt: TdxDBColorPickEdit
    Left = 629
    Top = 287
    Width = 50
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
    TabOrder = 15
    DataField = 'IMPANT'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdRefDes: TdxDBColorPickEdit
    Left = 242
    Top = 218
    Width = 51
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
    TabOrder = 14
    DataField = 'REFDES'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdExiLoc: TdxDBColorPickEdit
    Left = 233
    Top = 442
    Width = 50
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
    TabOrder = 24
    DataField = 'EXILOC'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgDup: TdxDBColorPickEdit
    Left = 242
    Top = 241
    Width = 51
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
    TabOrder = 8
    DataField = 'FLGDUP'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Sim'
      'Nao')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object PedPar: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedPar')
    UpdateObject = UpPar
    ValidateWithMask = True
    Left = 515
    Top = 17
    object PedParID_PEDPAR: TIntegerField
      FieldName = 'ID_PEDPAR'
      Origin = 'ISADE.PEDPAR.ID_PEDPAR'
    end
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      Origin = 'ISADE.PEDPAR.USADEC'
      FixedChar = True
      Size = 3
    end
    object PedParFLGORD: TStringField
      FieldName = 'FLGORD'
      Origin = 'ISADE.PEDPAR.FLGORD'
      FixedChar = True
      Size = 3
    end
    object PedParFLGCRE: TStringField
      FieldName = 'FLGCRE'
      Origin = 'ISADE.PEDPAR.FLGCRE'
      FixedChar = True
      Size = 3
    end
    object PedParQTIPED: TIntegerField
      FieldName = 'QTIPED'
      Origin = 'ISADE.PEDPAR.QTIPED'
      DisplayFormat = '##0'
    end
    object PedParQTDCTA: TIntegerField
      FieldName = 'QTDCTA'
      Origin = 'ISADE.PEDPAR.QTDCTA'
      DisplayFormat = '##0'
    end
    object PedParFLGPRO: TStringField
      FieldName = 'FLGPRO'
      Origin = 'ISADE.PEDPAR.FLGPRO'
      FixedChar = True
      Size = 3
    end
    object PedParIMPMRC: TStringField
      FieldName = 'IMPMRC'
      Origin = 'ISADE.PEDPAR.IMPMRC'
      FixedChar = True
      Size = 3
    end
    object PedParIMPTRA: TStringField
      FieldName = 'IMPTRA'
      Origin = 'ISADE.PEDPAR.IMPTRA'
      FixedChar = True
      Size = 3
    end
    object PedParIMPOBS: TStringField
      FieldName = 'IMPOBS'
      Origin = 'ISADE.PEDPAR.IMPOBS'
      FixedChar = True
      Size = 3
    end
    object PedParIMPFIN: TStringField
      FieldName = 'IMPFIN'
      Origin = 'ISADE.PEDPAR.IMPFIN'
      FixedChar = True
      Size = 3
    end
    object PedParIMPLOC: TStringField
      FieldName = 'IMPLOC'
      Origin = 'ISADE.PEDPAR.IMPLOC'
      FixedChar = True
      Size = 3
    end
    object PedParFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.PEDPAR.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object PedParTIPCOM: TStringField
      FieldName = 'TIPCOM'
      Origin = 'ISADE.PEDPAR.TIPCOM'
    end
    object PedParTAXFIN: TFloatField
      FieldName = 'TAXFIN'
      Origin = 'ISADE.PEDPAR.TAXFIN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedParIMPREF: TStringField
      FieldName = 'IMPREF'
      Origin = 'ISADE.PEDPAR.IMPREF'
      FixedChar = True
      Size = 3
    end
    object PedParEXIREN: TStringField
      FieldName = 'EXIREN'
      Origin = 'ISADE.PEDPAR.EXIREN'
      FixedChar = True
      Size = 3
    end
    object PedParFLGBLO: TStringField
      FieldName = 'FLGBLO'
      Origin = 'ISADE.PEDPAR.FLGBLO'
      FixedChar = True
      Size = 3
    end
    object PedParTIPATD: TStringField
      FieldName = 'TIPATD'
      Origin = 'ISADE.PEDPAR.TIPATD'
      Size = 9
    end
    object PedParTIPIMP: TStringField
      FieldName = 'TIPIMP'
      Origin = 'ISADE.PEDPAR.TIPIMP'
      Size = 9
    end
    object PedParTIPPAG: TStringField
      FieldName = 'TIPPAG'
      Origin = 'ISADE.PEDPAR.TIPPAG'
      Size = 28
    end
    object PedParFLGCOT: TStringField
      FieldName = 'FLGCOT'
      Origin = 'ISADE.PEDPAR.FLGCOT'
      FixedChar = True
      Size = 3
    end
    object PedParMARMIN: TFloatField
      FieldName = 'MARMIN'
      Origin = 'ISADE.PEDPAR.MARMIN'
      DisplayFormat = '###,###,##0.00'
    end
    object PedParFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDPAR.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedParIMPANT: TStringField
      FieldName = 'IMPANT'
      Origin = 'ISADE.PEDPAR.IMPANT'
      FixedChar = True
      Size = 3
    end
    object PedParOBRGVE: TStringField
      FieldName = 'OBRGVE'
      Origin = 'ISADE.PEDPAR.OBRGVE'
      FixedChar = True
      Size = 3
    end
    object PedParCOMATD: TStringField
      FieldName = 'COMATD'
      Origin = 'ISADE.PEDPAR.COMATD'
      FixedChar = True
      Size = 3
    end
    object PedParREFDES: TStringField
      FieldName = 'REFDES'
      Origin = 'ISADE.PEDPAR.REFDES'
      FixedChar = True
      Size = 3
    end
    object PedParMUDREN: TStringField
      FieldName = 'MUDREN'
      Origin = 'ISADE.PEDPAR.MUDREN'
      FixedChar = True
      Size = 3
    end
    object PedParEXILOC: TStringField
      FieldName = 'EXILOC'
      Origin = 'ISADE.PEDPAR.EXILOC'
      FixedChar = True
      Size = 3
    end
    object PedParFLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDPAR.FLGDUP'
      FixedChar = True
      Size = 3
    end
  end
  object DsPar: TDataSource
    DataSet = PedPar
    Left = 543
    Top = 17
  end
  object UpPar: TUpdateSQL
    ModifySQL.Strings = (
      'update PedPar'
      'set'
      '  USADEC = :USADEC,'
      '  FLGORD = :FLGORD,'
      '  FLGCRE = :FLGCRE,'
      '  FLGBLO = :FLGBLO,'
      '  QTIPED = :QTIPED,'
      '  QTDCTA = :QTDCTA,'
      '  FLGCOT = :FLGCOT,'
      '  FLGPRO = :FLGPRO,'
      '  IMPMRC = :IMPMRC,'
      '  IMPTRA = :IMPTRA,'
      '  IMPOBS = :IMPOBS,'
      '  IMPFIN = :IMPFIN,'
      '  IMPLOC = :IMPLOC,'
      '  FLGIMP = :FLGIMP,'
      '  IMPREF = :IMPREF,'
      '  EXIREN = :EXIREN,'
      '  TIPIMP = :TIPIMP,'
      '  TIPATD = :TIPATD,'
      '  TIPCOM = :TIPCOM,'
      '  TIPPAG = :TIPPAG,'
      '  TAXFIN = :TAXFIN,'
      '  MARMIN = :MARMIN,'
      '  FLGIPI = :FLGIPI,'
      '  IMPANT = :IMPANT,'
      '  OBRGVE = :OBRGVE,'
      '  COMATD = :COMATD,'
      '  REFDES = :REFDES,'
      '  MUDREN = :MUDREN,'
      '  EXILOC = :EXILOC,'
      '  FLGDUP = :FLGDUP'
      'where'
      '  ID_PEDPAR = :OLD_ID_PEDPAR')
    InsertSQL.Strings = (
      'insert into PedPar'
      
        '  (ID_PEDPAR, USADEC, FLGORD, FLGCRE, FLGBLO, QTIPED, QTDCTA, FL' +
        'GCOT, FLGPRO, '
      
        '   IMPMRC, IMPTRA, IMPOBS, IMPFIN, IMPLOC, FLGIMP, IMPREF, EXIRE' +
        'N, TIPIMP, '
      
        '   TIPATD, TIPCOM, TIPPAG, TAXFIN, MARMIN, FLGIPI, IMPANT, OBRGV' +
        'E, COMATD, '
      '   REFDES, MUDREN, EXILOC, FLGDUP)'
      'values'
      
        '  (:ID_PEDPAR, :USADEC, :FLGORD, :FLGCRE, :FLGBLO, :QTIPED, :QTD' +
        'CTA, :FLGCOT, '
      
        '   :FLGPRO, :IMPMRC, :IMPTRA, :IMPOBS, :IMPFIN, :IMPLOC, :FLGIMP' +
        ', :IMPREF, '
      
        '   :EXIREN, :TIPIMP, :TIPATD, :TIPCOM, :TIPPAG, :TAXFIN, :MARMIN' +
        ', :FLGIPI, '
      
        '   :IMPANT, :OBRGVE, :COMATD, :REFDES, :MUDREN, :EXILOC, :FLGDUP' +
        ')')
    DeleteSQL.Strings = (
      'delete from PedPar'
      'where'
      '  ID_PEDPAR = :OLD_ID_PEDPAR')
    Left = 515
    Top = 45
  end
end
