inherited fmManPar: TfmManPar
  Left = 60
  Top = 13
  Caption = 'Parametros'
  ClientHeight = 463
  ClientWidth = 694
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 694
    Height = 463
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label14: TLabel
    Left = 3
    Top = 223
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
    Left = 192
    Top = 230
    Width = 120
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label20: TLabel
    Left = 320
    Top = 223
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
    Top = 230
    Width = 271
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 3
    Top = 345
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
    Left = 192
    Top = 351
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label10: TLabel
    Left = 3
    Top = 238
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
    Top = 361
    Width = 93
    Height = 13
    Caption = 'Imprimir Pedidos ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 320
    Top = 361
    Width = 245
    Height = 13
    Caption = 'Permite Vendedor Consultar Comissões no Pedido ?'
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
    Top = 384
    Width = 91
    Height = 13
    Caption = 'Tipo de Comissão ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label27: TLabel
    Left = 3
    Top = 2
    Width = 146
    Height = 13
    Caption = 'Tela de Pedidos/Cotações'
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
  object Label28: TLabel
    Left = 3
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Busca de Itens :'
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
    Top = 40
    Width = 169
    Height = 13
    Caption = 'Consultar pelo Código de Barras ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel5: TBevel
    Left = 192
    Top = 8
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label29: TLabel
    Left = 397
    Top = 16
    Width = 281
    Height = 13
    Caption = '(Tipo de Display na Tela para Digitação do Código do Item)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label36: TLabel
    Left = 320
    Top = 40
    Width = 314
    Height = 13
    Caption = 
      '(Permitir Buscas Somente Utilizando Leitura por Código de Barras' +
      ')'
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
    Top = 399
    Width = 154
    Height = 13
    Caption = 'Liberação Depto. Comercial'
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
  object Bevel7: TBevel
    Left = 192
    Top = 406
    Width = 499
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label26: TLabel
    Left = 3
    Top = 418
    Width = 184
    Height = 13
    Caption = 'Realizar Analise de Todos os Pedidos ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label30: TLabel
    Left = 246
    Top = 418
    Width = 442
    Height = 13
    Caption = 
      '(Realizar Analise dos Pedidos Emitidos com Problemas em Relação ' +
      'a Parametros Comerciais.)'
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
    Top = 384
    Width = 235
    Height = 13
    Caption = 'Imprimir Referência ao invés do Códido do Item ?'
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
    Top = 238
    Width = 228
    Height = 13
    Caption = 'Imprimir Informações de Marca e Part Number ?'
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
    Top = 261
    Width = 189
    Height = 13
    Caption = 'Imprimir tracejado para Separar Itens ?'
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
    Top = 284
    Width = 112
    Height = 13
    Caption = 'Imprimir Observações ?'
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
    Top = 307
    Width = 222
    Height = 13
    Caption = 'Imprimir Informações de Venctos Financeiros ?'
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
    Top = 64
    Width = 262
    Height = 13
    Caption = 'Informar Quantidade dos Itens com Casas Decimais ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 3
    Top = 88
    Width = 357
    Height = 13
    Caption = 
      'Permitir Alterar Valores de Itens na Comanda Acima do Preço de T' +
      'abela ? :'
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
    Top = 330
    Width = 210
    Height = 13
    Caption = 'Imprimir Localização dos Itens em Estoque ?'
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
    Top = 112
    Width = 296
    Height = 13
    Caption = 'Organizar Pedido/Cotação ao Concluir pelo Código do Item ? :'
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
    Top = 136
    Width = 416
    Height = 13
    Caption = 
      'Emitir Aviso ao Vendedor Quando Lançar Qtde de Item Acima do Est' +
      'oque Disponivel ? :'
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
    Top = 160
    Width = 413
    Height = 13
    Caption = 
      'Não Permitir Continuar Pedidos Acima do Limite de Crédito Dispon' +
      'ivel para o Cliente ? :'
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
    Top = 184
    Width = 320
    Height = 13
    Caption = 
      'Quantidade Limite de Itens para Digitação de Pedidos/Cotações ? ' +
      ':'
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
    Top = 207
    Width = 601
    Height = 13
    Caption = 
      'Permitir que os Vendedores Emitam Pedidos com Data de Previsão d' +
      'e Faturamento Maior que a Data de Emissão do Pedido ? :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object bConfirmar: TBitBtn
    Left = 299
    Top = 436
    Width = 196
    Height = 27
    Hint = 'Salvar as Alterações Realizadas'
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
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
    Left = 497
    Top = 436
    Width = 196
    Height = 27
    Hint = 'Retornar a Tela Anterior'
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
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
    Left = 191
    Top = 234
    Width = 68
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
    TabOrder = 9
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
    Left = 191
    Top = 357
    Width = 46
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
  object EdExiCom: TdxDBColorPickEdit
    Left = 574
    Top = 357
    Width = 46
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
    DataField = 'EXICOM'
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
    Left = 191
    Top = 380
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
    TabOrder = 17
    DataField = 'TIPCOM'
    DataSource = DsPar
    MaxLength = 15
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Item'
      'Vendedor'
      'Tabela de Preco')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgCod: TdxDBColorPickEdit
    Left = 268
    Top = 36
    Width = 47
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
    DataField = 'FLGCOD'
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
  object EdTipPed: TdxDBColorPickEdit
    Left = 268
    Top = 12
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
    TabOrder = 0
    DataField = 'TIPPED'
    DataSource = DsPar
    MaxLength = 16
    ReadOnly = False
    DropDownListStyle = True
    Items.Strings = (
      'Codigo do Item'
      'Codigo de Barras')
    CorDeFoco = clInfoBk
    StoredValues = 66
  end
  object EdFlgCom: TdxDBColorPickEdit
    Left = 191
    Top = 413
    Width = 46
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
    DataField = 'FLGCOM'
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
  object EdImpRef: TdxDBColorPickEdit
    Left = 574
    Top = 380
    Width = 46
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
    Left = 574
    Top = 234
    Width = 46
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
    Left = 574
    Top = 257
    Width = 46
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
    Left = 574
    Top = 280
    Width = 46
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
    Left = 574
    Top = 303
    Width = 46
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
    Left = 268
    Top = 60
    Width = 47
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
  object EdLanMai: TdxDBColorPickEdit
    Left = 424
    Top = 84
    Width = 47
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
    DataField = 'LANMAI'
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
    Left = 574
    Top = 326
    Width = 46
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
    Left = 424
    Top = 108
    Width = 47
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
  object EdVerEst: TdxDBColorPickEdit
    Left = 424
    Top = 132
    Width = 47
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
    DataField = 'VEREST'
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
  object EdBloCre: TdxDBColorPickEdit
    Left = 424
    Top = 156
    Width = 47
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
    DataField = 'BLOCRE'
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
  object EdQtlIte: TdxDBColorCurrencyEdit
    Left = 403
    Top = 180
    Width = 68
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
    TabOrder = 7
    Alignment = taRightJustify
    DataField = 'QTLITE'
    DataSource = DsPar
    DecimalPlaces = 0
    DisplayFormat = '##0'
    Nullable = False
    CorDeFoco = clInfoBk
    StoredValues = 49
  end
  object EdPerPro: TdxDBColorPickEdit
    Left = 608
    Top = 203
    Width = 47
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
    DataField = 'PERPRO'
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
  object PedPar: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedPar')
    UpdateObject = UpPar
    ValidateWithMask = True
    Left = 59
    Top = 257
    object PedParPEDDSC: TFloatField
      FieldName = 'PEDDSC'
      Origin = 'ISADE.PEDPAR.DESPRD'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedParFLGBLQ: TStringField
      FieldName = 'FLGBLQ'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGATR: TStringField
      FieldName = 'FLGATR'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGEXP: TStringField
      FieldName = 'FLGEXP'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGCRE: TStringField
      FieldName = 'FLGCRE'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGDSC: TStringField
      FieldName = 'FLGDSC'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParTIPDSC: TStringField
      FieldName = 'TIPDSC'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 15
    end
    object PedParFLGRES: TStringField
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDPAR.FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedParTIPRES: TStringField
      FieldName = 'TIPRES'
      Origin = 'ISADE.PEDPAR.TIPRES'
      FixedChar = True
      Size = 12
    end
    object PedParPERCST: TFloatField
      FieldName = 'PERCST'
      Origin = 'ISADE.PEDPAR.PERCST'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedParEXIMKA: TStringField
      FieldName = 'EXIMKA'
      Origin = 'ISADE.PEDPAR.EXIMKA'
      FixedChar = True
      Size = 3
    end
    object PedParQTDCTA: TIntegerField
      FieldName = 'QTDCTA'
      Origin = 'ISADE.PEDPAR.QTDCTA'
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
      FixedChar = True
    end
    object PedParEXIVEN: TStringField
      FieldName = 'EXIVEN'
      Origin = 'ISADE.PEDPAR.EXIVEN'
      FixedChar = True
      Size = 3
    end
    object PedParEXICOM: TStringField
      FieldName = 'EXICOM'
      Origin = 'ISADE.PEDPAR.EXICOM'
      FixedChar = True
      Size = 3
    end
    object PedParCONTRA: TStringField
      FieldName = 'CONTRA'
      Origin = 'ISADE.PEDPAR.CONTRA'
      FixedChar = True
      Size = 3
    end
    object PedParEXIFOR: TStringField
      FieldName = 'EXIFOR'
      Origin = 'ISADE.PEDPAR.EXIFOR'
      FixedChar = True
      Size = 3
    end
    object PedParEXICLI: TStringField
      FieldName = 'EXICLI'
      Origin = 'ISADE.PEDPAR.EXICLI'
      FixedChar = True
      Size = 3
    end
    object PedParTIPPED: TStringField
      FieldName = 'TIPPED'
      Origin = 'ISADE.PEDPAR.TIPPED'
      FixedChar = True
      Size = 16
    end
    object PedParFLGCOD: TStringField
      FieldName = 'FLGCOD'
      Origin = 'ISADE.PEDPAR.FLGCOD'
      FixedChar = True
      Size = 3
    end
    object PedParFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDPAR.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedParFLGCOM: TStringField
      FieldName = 'FLGCOM'
      Origin = 'ISADE.PEDPAR.FLGCOM'
      FixedChar = True
      Size = 3
    end
    object PedParIMPREF: TStringField
      FieldName = 'IMPREF'
      Origin = 'ISADE.PEDPAR.IMPREF'
      FixedChar = True
      Size = 3
    end
    object PedParIMPTRA: TStringField
      FieldName = 'IMPTRA'
      Origin = 'ISADE.PEDPAR.IMPTRA'
      FixedChar = True
      Size = 3
    end
    object PedParIMPMRC: TStringField
      FieldName = 'IMPMRC'
      Origin = 'ISADE.PEDPAR.IMPMRC'
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
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      Origin = 'ISADE.PEDPAR.USADEC'
      FixedChar = True
      Size = 3
    end
    object PedParLANMAI: TStringField
      FieldName = 'LANMAI'
      Origin = 'ISADE.PEDPAR.LANMAI'
      FixedChar = True
      Size = 3
    end
    object PedParIMPLOC: TStringField
      FieldName = 'IMPLOC'
      Origin = 'ISADE.PEDPAR.IMPLOC'
      FixedChar = True
      Size = 3
    end
    object PedParVEREST: TStringField
      FieldName = 'VEREST'
      Origin = 'ISADE.PEDPAR.VEREST'
      FixedChar = True
      Size = 3
    end
    object PedParFLGORD: TStringField
      FieldName = 'FLGORD'
      Origin = 'ISADE.PEDPAR.FLGORD'
      FixedChar = True
      Size = 3
    end
    object PedParBLOCRE: TStringField
      FieldName = 'BLOCRE'
      Origin = 'ISADE.PEDPAR.BLOCRE'
      FixedChar = True
      Size = 3
    end
    object PedParLIBFIN: TStringField
      FieldName = 'LIBFIN'
      Origin = 'ISADE.PEDPAR.LIBFIN'
      FixedChar = True
      Size = 3
    end
    object PedParLIBCAD: TStringField
      FieldName = 'LIBCAD'
      Origin = 'ISADE.PEDPAR.LIBCAD'
      FixedChar = True
      Size = 3
    end
    object PedParQTLITE: TIntegerField
      FieldName = 'QTLITE'
      Origin = 'ISADE.PEDPAR.QTLITE'
      DisplayFormat = '###0'
    end
    object PedParPERPRO: TStringField
      FieldName = 'PERPRO'
      Origin = 'ISADE.PEDPAR.PERPRO'
      FixedChar = True
      Size = 3
    end
  end
  object DsPar: TDataSource
    DataSet = PedPar
    Left = 87
    Top = 257
  end
  object UpPar: TUpdateSQL
    ModifySQL.Strings = (
      'update PedPar'
      'set'
      '  PEDDSC = :PEDDSC,'
      '  TIPDSC = :TIPDSC,'
      '  FLGBLQ = :FLGBLQ,'
      '  FLGATR = :FLGATR,'
      '  FLGEXP = :FLGEXP,'
      '  FLGCRE = :FLGCRE,'
      '  FLGDSC = :FLGDSC,'
      '  FLGRES = :FLGRES,'
      '  TIPRES = :TIPRES,'
      '  PERCST = :PERCST,'
      '  EXIMKA = :EXIMKA,'
      '  QTDCTA = :QTDCTA,'
      '  FLGIMP = :FLGIMP,'
      '  TIPCOM = :TIPCOM,'
      '  EXIVEN = :EXIVEN,'
      '  EXICOM = :EXICOM,'
      '  CONTRA = :CONTRA,'
      '  EXIFOR = :EXIFOR,'
      '  EXICLI = :EXICLI,'
      '  TIPPED = :TIPPED,'
      '  FLGCOD = :FLGCOD,'
      '  FLGIPI = :FLGIPI,'
      '  FLGCOM = :FLGCOM,'
      '  IMPREF = :IMPREF,'
      '  IMPOBS = :IMPOBS,'
      '  IMPFIN = :IMPFIN,'
      '  IMPTRA = :IMPTRA,'
      '  IMPMRC = :IMPMRC,'
      '  USADEC = :USADEC,'
      '  LANMAI = :LANMAI,'
      '  IMPLOC = :IMPLOC,'
      '  VEREST = :VEREST,'
      '  FLGORD = :FLGORD,'
      '  LIBFIN = :LIBFIN,'
      '  LIBCAD = :LIBCAD,'
      '  PERPRO = :PERPRO,'
      '  BLOCRE = :BLOCRE,'
      '  QTLITE = :QTLITE')
    InsertSQL.Strings = (
      'insert into PedPar'
      
        '  (PEDDSC, TIPDSC, FLGBLQ, FLGATR, FLGEXP, FLGCRE, FLGDSC, FLGRE' +
        'S, TIPRES, '
      
        '   PERCST, EXIMKA, QTDCTA, FLGIMP, TIPCOM, EXIVEN, EXICOM, CONTR' +
        'A, EXIFOR, '
      
        '   EXICLI, TIPPED, FLGCOD, FLGIPI, FLGCOM, IMPREF, IMPOBS, IMPFI' +
        'N, IMPTRA, '
      
        '   IMPMRC, USADEC, LANMAI, IMPLOC, VEREST, FLGORD, LIBFIN, LIBCA' +
        'D, PERPRO, '
      '   BLOCRE, QTLITE)'
      'values'
      
        '  (:PEDDSC, :TIPDSC, :FLGBLQ, :FLGATR, :FLGEXP, :FLGCRE, :FLGDSC' +
        ', :FLGRES, '
      
        '   :TIPRES, :PERCST, :EXIMKA, :QTDCTA, :FLGIMP, :TIPCOM, :EXIVEN' +
        ', :EXICOM, '
      
        '   :CONTRA, :EXIFOR, :EXICLI, :TIPPED, :FLGCOD, :FLGIPI, :FLGCOM' +
        ', :IMPREF, '
      
        '   :IMPOBS, :IMPFIN, :IMPTRA, :IMPMRC, :USADEC, :LANMAI, :IMPLOC' +
        ', :VEREST, '
      '   :FLGORD, :LIBFIN, :LIBCAD, :PERPRO, :BLOCRE, :QTLITE)')
    DeleteSQL.Strings = (
      'delete from PedPar'
      'where'
      '  PEDDSC = :OLD_PEDDSC')
    Left = 59
    Top = 285
  end
end
