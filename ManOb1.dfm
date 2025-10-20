inherited fmManOb1: TfmManOb1
  Left = 257
  Top = 300
  Caption = 'Devoluções por Acertos'
  ClientHeight = 357
  ClientWidth = 595
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 595
    Height = 357
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label29: TLabel
    Left = 4
    Top = 32
    Width = 113
    Height = 14
    Caption = 'Número do Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 150
    Top = 32
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 409
    Top = 32
    Width = 48
    Height = 14
    Caption = 'Emissão'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label68: TLabel
    Left = 468
    Top = 32
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label37: TLabel
    Left = 4
    Top = 8
    Width = 51
    Height = 14
    Caption = 'Empresa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label48: TLabel
    Left = 150
    Top = 8
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object bpsqEmp: TSpeedButton
    Left = 271
    Top = 5
    Width = 25
    Height = 22
    Hint = 'Pesquisar Empresas Existentes'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
      FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
      7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
      787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
      78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
      B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
      B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
      BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
      7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    OnClick = bpsqEmpClick
  end
  object Label1: TLabel
    Left = 4
    Top = 79
    Width = 76
    Height = 14
    Caption = 'Observações'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 4
    Top = 247
    Width = 112
    Height = 14
    Caption = 'Última Atualização'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 169
    Top = 252
    Width = 422
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label6: TLabel
    Left = 4
    Top = 267
    Width = 29
    Height = 14
    Caption = 'Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 4
    Top = 291
    Width = 45
    Height = 14
    Caption = 'Usuário'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 299
    Top = 267
    Width = 53
    Height = 14
    Caption = 'Horario :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 150
    Top = 267
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 150
    Top = 291
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 150
    Top = 225
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 4
    Top = 225
    Width = 53
    Height = 14
    Caption = 'Situação'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 4
    Top = 57
    Width = 137
    Height = 14
    Caption = 'Nota Fiscal Emitida No.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 150
    Top = 57
    Width = 4
    Height = 14
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object EdObsObs: TdxDBColorMemo
    Left = 3
    Top = 97
    Width = 591
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 6
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'OBSOBS'
    DataSource = DsObs
    MaxLength = 500
    ScrollBars = ssVertical
    CorDeFoco = clInfoBk
    Height = 123
    StoredValues = 3
  end
  object bCancelar: TBitBtn
    Left = 212
    Top = 314
    Width = 191
    Height = 42
    Hint = 'Cancelar Operação e Retornar a Tela Anterior'
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnClick = bCancelarClick
    Glyph.Data = {
      6E040000424D6E04000000000000360000002800000013000000120000000100
      18000000000038040000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000000000808000808000808000
      8080008080008080008080808080808080808080808080808080808080008080
      0080800080800080800080800080800000000080800080800080800080800080
      8000808000000000000000000000000000000000000080808080808000808000
      80800080800080800080800000000080800080800080800080808080800000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000000000008080800080800080
      800080800080800000000080800080800080800000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000FF0000FF000000808080008080008080
      0080800000000080800080800000FF0000FF0000FF0000FF0080800080800080
      800080800080800000FF0000FF0000FF0000FF00000080808000808000808000
      00000080808080800000FF0000FF0000FF0000FF008080008080008080008080
      0000FF0000FF0000FF0000FF0000FF0000008080808080800080800000000080
      800000FF0000FF0000FF0000FF0080800080800080800080800000FF0000FF00
      00FF0000FF8080800000FF0000FF0000008080800080800000000080800000FF
      0000FF0000008080800080800080800080800000FF0000FF0000FF0000FF8080
      800080800000FF0000FF0000008080800080800000000080800000FF0000FF00
      00008080800080800080800000FF0000FF0000FF0000FF808080008080008080
      0000FF0000FF0000008080800080800000000080800000FF0000FF0000008080
      800080800000FF0000FF0000FF0000FF8080800080800080800080800000FF00
      00FF0000008080800080800000000080800000FF0000FF000000808080808080
      0000FF0000FF0000FF8080800080800080800080800080800000FF0000FF0000
      000080800080800000000080800080800000FF0000FF0000000000FF0000FF00
      00FF8080800080800080800080800080800000FF0000FF0000FF008080008080
      0080800000000080800080800000FF0000FF0000000000FF0000FF0000FF8080
      800080800080800080800080800000FF0000FF0000FF00808000808000808000
      00000080800080800080800000FF0000FF0000FF0000FF000000000000000000
      0000000000000000FF0000FF0000FF0080800080800080800080800000000080
      800080800080800080800080800000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF008080008080008080008080008080000000008080008080
      0080800080800080800080800000FF0000FF0000FF0000FF0000FF0000FF8080
      8000808000808000808000808000808000808000000000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080008080008080008080008080000000}
    Spacing = 5
  end
  object bConfirmar: TBitBtn
    Left = 404
    Top = 314
    Width = 191
    Height = 42
    Hint = 'Confirmar Lançamento para o Cliente'
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
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
    Spacing = 5
  end
  object EdNumRes: TdxDBColorEdit
    Left = 167
    Top = 28
    Width = 103
    Hint = 'Número do Pedido'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    OnKeyPress = EdCodEmpKeyPress
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'NUMRES'
    DataSource = DsObs
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object EdDteRes: TdxDBColorDateEdit
    Left = 484
    Top = 28
    Width = 111
    Hint = 'Date de Emissão do Pedido'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 4
    Alignment = taCenter
    DataField = 'DTERES'
    DataSource = DsObs
    PopupBorder = pbFlat
    DateButtons = []
    SaveTime = False
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdCodEmp: TdxDBColorEdit
    Left = 167
    Top = 4
    Width = 103
    Hint = 'Empresa'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    OnExit = EdCodEmpExit
    OnKeyPress = EdCodEmpKeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    DataField = 'CODEMP'
    DataSource = DsObs
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdApeEmp: TdxDBColorEdit
    Left = 297
    Top = 4
    Width = 298
    Hint = 'Cliente'
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
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 1
    Alignment = taLeftJustify
    AutoSize = False
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object pnApeEmp: TPanel
    Left = 301
    Top = 7
    Width = 290
    Height = 14
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object EdHreAtu: TdxDBColorEdit
    Left = 357
    Top = 263
    Width = 78
    Hint = 'Empresa'
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
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 11
    OnExit = EdCodEmpExit
    OnKeyPress = EdCodEmpKeyPress
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'HREATU'
    DataSource = DsObs
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object CbNomAtu: TdxDBColorLookupEdit
    Left = 297
    Top = 287
    Width = 298
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = 14065456
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 13
    TabStop = False
    DataField = 'USUATU'
    DataSource = DsObs
    ListFieldName = 'LOGUSU;CODUSU'
    KeyFieldName = 'CODUSU'
    ListSource = DsUsu
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
  end
  object EdUsuAtu: TdxDBColorEdit
    Left = 167
    Top = 287
    Width = 103
    Hint = 'Empresa'
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
    TabOrder = 12
    OnExit = EdCodEmpExit
    OnKeyPress = EdCodEmpKeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    DataField = 'USUATU'
    DataSource = DsObs
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdDteAtu: TdxDBColorDateEdit
    Left = 167
    Top = 263
    Width = 103
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = 14065456
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 10
    DataField = 'DTEATU'
    DataSource = DsObs
    PopupBorder = pbFlat
    DateButtons = []
    DateValidation = True
    SaveTime = False
    CorDeFoco = clInfoBk
  end
  object EdSitObs: TdxDBColorPickEdit
    Left = 167
    Top = 221
    Width = 132
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14065456
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 7
    DataField = 'SITOBS'
    DataSource = DsObs
    ReadOnly = False
    ImmediateDropDown = False
    DropDownListStyle = True
    Items.Strings = (
      'Indeferido'
      'Diferido')
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdNumNfs: TdxDBColorEdit
    Left = 167
    Top = 53
    Width = 103
    Hint = 'Número da Nota Fiscal Emitida'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859373
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 5
    OnKeyPress = EdCodEmpKeyPress
    Alignment = taRightJustify
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'NUMNFS'
    DataSource = DsObs
    CorDeFoco = clInfoBk
    Height = 24
    StoredValues = 1
  end
  object FatObs: TwwQuery
    Active = True
    CachedUpdates = True
    OnNewRecord = FatObsNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select FatObs.*,CodCli,NomCli,PedRes.CodVen,ApeVen,NomVen,LogUsu' +
        ',DscPfa,Inscli,CgcCli,UfeRes,HreRes'
      'From FatObs INNER JOIN PedRes ON (FatObs.CodEmp = PedRes.CodEmp)'
      
        '                                                     AND (FatObs' +
        '.DteRes = PedRes.DteRes)'
      
        '                                                     AND (FatObs' +
        '.NumRes = PedRes.NumRes)'
      
        '                           LEFT JOIN FinCli ON (PedRes.CodCli = ' +
        'FinCli.CodCli)'
      
        '                        LEFT JOIN FinVen ON (PedRes.CodVen = Fin' +
        'Ven.CodVen)'
      
        '                         LEFT JOIN EstPfa ON (PedRes.CodPfa = Es' +
        'tPfa.CodPfa)'
      
        '                                                   AND  (PedRes.' +
        'TipPfa = EstPfa.TipPfa)'
      
        '                       LEFT JOIN GerUsu ON (FatObs.CodUsu = GerU' +
        'su.CodUsu)'
      'Where FatObs.CodEmp = :CodEmp'
      '     and FatObs.DteRes = :DteRes'
      '     and FatObs.NumRes = :NumRes'
      '     and FatObs.SeqObs = :SeqObs'
      'Order by FatObs.CodEmp,FatObs.DteRes,FatObs.NumRes,FatObs.SeqObs')
    UpdateObject = UpObs
    ValidateWithMask = True
    Left = 10
    Top = 102
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
        Name = 'SeqObs'
        ParamType = ptInput
      end>
    object FatObsNUMNFS: TIntegerField
      DisplayLabel = 'No. Nota Fiscal  '
      DisplayWidth = 10
      FieldName = 'NUMNFS'
    end
    object FatObsNUMRES: TIntegerField
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object FatObsCODCLI: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object FatObsCODVEN: TIntegerField
      DisplayLabel = 'Vend'
      DisplayWidth = 4
      FieldName = 'CODVEN'
    end
    object FatObsLOGUSU: TStringField
      DisplayLabel = 'Responsavel'
      DisplayWidth = 30
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object FatObsCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatObsDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object FatObsCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object FatObsNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatObsAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
      FixedChar = True
    end
    object FatObsNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object FatObsDSCPFA: TStringField
      FieldName = 'DSCPFA'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatObsINSCLI: TStringField
      FieldName = 'INSCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatObsCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object FatObsUFERES: TStringField
      FieldName = 'UFERES'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object FatObsHRERES: TStringField
      FieldName = 'HRERES'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatObsDTEATU: TDateTimeField
      FieldName = 'DTEATU'
    end
    object FatObsHREATU: TStringField
      FieldName = 'HREATU'
      FixedChar = True
      Size = 8
    end
    object FatObsUSUATU: TIntegerField
      FieldName = 'USUATU'
    end
    object FatObsSEQOBS: TIntegerField
      FieldName = 'SEQOBS'
    end
    object FatObsDTEOBS: TDateTimeField
      FieldName = 'DTEOBS'
    end
    object FatObsHREOBS: TStringField
      FieldName = 'HREOBS'
      FixedChar = True
      Size = 8
    end
    object FatObsOBSOBS: TMemoField
      FieldName = 'OBSOBS'
      BlobType = ftMemo
      Size = 500
    end
    object FatObsSITOBS: TStringField
      FieldName = 'SITOBS'
      FixedChar = True
    end
  end
  object DsObs: TwwDataSource
    DataSet = FatObs
    Left = 38
    Top = 102
  end
  object UpObs: TUpdateSQL
    ModifySQL.Strings = (
      'update FatObs'
      'set'
      '  NUMNFS = :NUMNFS,'
      '  DTEOBS = :DTEOBS,'
      '  HREOBS = :HREOBS,'
      '  OBSOBS = :OBSOBS,'
      '  CODUSU = :CODUSU,'
      '  SITOBS = :SITOBS,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQOBS = :OLD_SEQOBS')
    InsertSQL.Strings = (
      'insert into FatObs'
      
        '(CODEMP, DTERES, NUMRES, SEQOBS, NUMNFS, DTEOBS, HREOBS, OBSOBS,' +
        ' '
      'CODUSU, SITOBS, DTEATU, HREATU, USUATU)'
      'values'
      '(:CODEMP, :DTERES, :NUMRES, :SEQOBS, :NUMNFS, :DTEOBS, :HREOBS, '
      ':OBSOBS, :CODUSU, :SITOBS, :DTEATU, :HREATU, :USUATU)')
    DeleteSQL.Strings = (
      'delete from FatObs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQOBS = :OLD_SEQOBS')
    Left = 10
    Top = 130
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 38
    Top = 130
  end
  object GerUsu: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodUsu,LogUsu From GerUsu'
      'Where CodUsu = :CodUsu')
    ValidateWithMask = True
    Left = 67
    Top = 102
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodUsu'
        ParamType = ptInput
      end>
    object GerUsuCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object GerUsuLOGUSU: TStringField
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
  end
  object DsUsu: TwwDataSource
    DataSet = GerUsu
    Left = 96
    Top = 102
  end
end
