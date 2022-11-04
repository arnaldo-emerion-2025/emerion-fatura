inherited fmManTrf: TfmManTrf
  Left = 0
  Caption = 'Liberações de Pedidos Aguardando Depto de Compras'
  ClientHeight = 482
  ClientWidth = 786
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 786
    Height = 482
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 4
    Top = 9
    Width = 131
    Height = 14
    Caption = 'Pedidos Selecionados'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 138
    Top = 17
    Width = 247
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bEditar: TSpeedButton
    Left = 220
    Top = 441
    Width = 188
    Height = 40
    Hint = 'Rejeitar o Pedido Selecionado'
    Caption = 'F3-Rejeitar Pedido'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000D40E0000D40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD08E999A8B96978B96978B96978B96978B96
      97A0ABABAEB9BAB6C3C4C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0B9C8C9575E5E575E5E886C6F8B6D708B7074
      807372837A7970524E5044423A3A3A686B6C9DA3A4A9B3B3C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0BCCBCC757B7B3F3A3AD0A3A9D0A3A9FC
      C5CCFFC8CFFFCED4EBD4D1F0E0DECF9790B88680A97B756D524F2E29297C7D7D
      8B8E8EB8C6C7C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07A7F7F89645FD199
      93FFC8CFFFC8CFFFC8CFFFC8CFFFCED4EBD4D1F0E0DECF9790CF9790CF9790CF
      9790C7918A4D403E6F6F6F898B8CB5C1C2C0CFD0C0CFD0C0CFD0C0CFD0778181
      896762CF9790D19993FFC8CFFFC8CF6650525C484B5C4B4D554D4C5751504B36
      34986F6ACF9790CF9790CF9790B4837D4C403E7B7B7B8C8F8FB8C6C7C0CFD0C0
      CFD08C9798765854CC958EBD8A83A37772454041454041DEDEDEE7E7E7E7E7E7
      E7E7E7E7E7E7E7E7E7858282413C3B725956AB7D77CF9790C28E87312E2E8080
      80ACB6B7C0CFD0C0CFD08791927A5954BE8A847262607C7C7CFFFFFFB3B3B38B
      8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8BCFCFCFFFFFFFBDBDBD737171926A65
      CF97902A2726808080878989C0CFD0C0CFD08791927A5954614F4DDADADAF3F3
      F3454545905F5CB96D68B96D68B96D68B96D68B96D68B96D687556534545459C
      9C9CFAFAFA8B868599706B2A2726808080828282A4ADADC0CFD0879192282828
      E9E9E9DEDEDE564846FF9790FF9790FF9790FF9790FF9790FF9790FFABA5FFB3
      AEFFA29CFF9790A7635EA29B9BFFFFFF8686862222228080808080809AA0A1C0
      CFD0879192969696E6E6E6726462B6756FD7867FFF9790FF9790FF9790FF9790
      FF9790FFB8B3FFC6C2FFCBC8FF9D97E28A83965E5AA4A4A4FFFFFF2D2D2D8080
      80848585AEB9BAC0CFD0879192969696D2D2D2614743D6968FD2857EAE7670FA
      B6B7F99690F4928BF4928BF4928BF4928BF4CAC7B5827CC68079CE8B85595959
      FFFFFF2D2D2D8080808B8E8EC0CFD0C0CFD0879192969696E2E2E26F5E5CBD8A
      83D99790EDABA9FDDBDDD99592B87871B87871B87871B87871B87871DE938DCE
      9892976C67959595FFFFFF2D2D2D8C8F8FB8C6C7C0CFD0C0CFD0ABB8B9686C6C
      EBEBEBD3D3D3675553CF9790CF9790DFA3A0E09790E09790E09790E09790E097
      90E09790CE9790906B67978E8EFFFFFF959595838C8DB5C1C2C0CFD0C0CFD0C0
      CFD0C0CFD0B5C3C4626566E6E6E6E3E2E2413C3B413C3BA37772A97B75A97B75
      A97B75A97B75A97B75A97B754D43428F8C8CF6F6F69797975B5B5BBBC9CAC0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0ADBBBB6F7373929292FFFFFFFFFFFF7B
      7B7B737373737373737373737373737373737373EEEEEEC8C8C8868686424542
      6B6B6BA7B1B1C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0A7B4B58791
      92454545454545F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B66
      66668D8D8D989B983B3D3B7E7F7FAAB3B4C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD03C41413438383438383438383438383438
      38343838929292F5F5F5DADADAACACAC3030301616166F6F6FA8B1B2C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD06F77776464647272723B3B3B0202020000001E1E
      1E777777ABB5B6C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0B9C8C95B6262191A19434643
      1515150101010000001E1E1E7D7F7FB0BBBCC0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD05F6667292B294448441313130202020000002121219FA9AAC0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0BBCACB5359592B2D2B43474310111001010100000087
      9192C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0B9C8C9555C5C2E302E4145
      41131413010101879192C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD04C5252282A28171817282B2BA1ADAEC0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0B3C1C28B96978B9697A1ADAEC0CFD0}
    ParentFont = False
    OnClick = bEditarClick
  end
  object bIncluir: TSpeedButton
    Left = 409
    Top = 441
    Width = 188
    Height = 40
    Hint = 'Liberar o Pedido Selecionado'
    Caption = 'F4-Liberar Pedido'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      96040000424D9604000000000000360000002800000012000000140000000100
      18000000000060040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0
      0000C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD00000000000000000000000000000000000000000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0000000000000C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000C0CFD0000000000000C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF0000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF000000FFF8FF000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FF000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD00000000000000F0000000000000000000000
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0000000C0CFD0C0CFD00000C0CFD0000000C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    ParentFont = False
    OnClick = bIncluirClick
  end
  object Label1: TLabel
    Left = 4
    Top = 237
    Width = 98
    Height = 14
    Caption = 'Itens do Pedido'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 138
    Top = 246
    Width = 645
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bObservar: TSpeedButton
    Left = 598
    Top = 441
    Width = 188
    Height = 40
    Hint = 'Verificar Observações Referentes ao Pedido'
    Caption = 'F5-Observações'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000D40E0000D40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD096A2
      A3656D6EAFBDBEC0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0B1BFC07079
      7A70797A70797A70797A70797A70797A70797A8D797AD13606F08C0050272770
      797A70797A9BA8A80000C0CFD0C0CFD0C0CFD0B1BDBEA2A5A2BFC3BFBFC3BFBF
      C3BFBFC3BFBFC3BFA3807DCA3100FFC500DE1F006A4D4CBFC3BFA2A7A2687071
      0000C0CFD0C0CFD0C0CFD0B4C0C1D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFDEAFAF
      DA4C10FFC100DC1800714848DEDEDEFFFFFFC5C9C56870710000C0CFD0C0CFD0
      C0CFD0B4C0C1D0D0D0FFFFFFDDE1DDDDE1DDC39390DC5410FFB600DE1B006A4A
      4AC4C8C4F8F9F8FFFFFFC5C9C56870710000C0CFD0C0CFD0C0CFD0B4C0C1D0D0
      D0FFFFFFDDE1DDC0C3C0DC6A38FFB100D81D02694847C9CDC9DDE1DDF8F9F8FF
      FFFFC5C9C56870710000C0CFD0C0CFD0ADBBBB666C6258584969695A808178B0
      B3B0C8CBB0BC31196B4B4AC9CDC9DDE1DDDDE1DDF8F9F8FFFFFFC5C9C5687071
      0000C0CFD0B1BDBD858859A7A943B6B93CB2B4408C8C074F501D61625F5B5D5B
      CACECADDE1DDDDE1DDDDE1DDF8F9F8FFFFFFC5C9C56870710000C0CFD0A8AB79
      F9FA7AD7DB99DFE260BEC281B3B569A7A80E393A22C3C6C3DDE1DDDDE1DDDDE1
      DDDDE1DDF8F9F8FFFFFFC5C9C56870710000A2ABABF3F37EFFFF7ED6DBA0DFE3
      5FBABE84ADAF6CADAF6C61631C6E6F6EE1E4E1E1E4E1E1E4E1E1E4E1F9FAF9FF
      FFFFC5C9C56870710000A2ABABF3F37EFFFF9BD6DBBCDFE35FBABE84ADAF6CAD
      AF6C61631C6E6F6EE1E4E1E1E4E1E1E4E1E1E4E1F9FAF9FFFFFFC5C9C5687071
      0000ACB7B8DCDD68FFFF9FD6DBC0DFE35FDFE35FDFE260DFE26061621C8A8C8A
      F7F8F7F7F8F7F7F8F7F7F8F7FDFDFDFFFFFFC5C9C56870710000C0CFD0B0B4A3
      F8F891DCE0B2F5F675DFE35FDFE2609DA04B4E4F42CDD0CDECEEECF6F7F6FFFF
      FFFFFFFFFFFFFFFFFFFFC5C9C56870710000C0CFD0BAC8C9ADB2A2B8BC9EE0E1
      7BD8D9738C8D6B5E5F4DD3D4D3F0F1F0F0F1F0F8F9F8FFFFFF9899987878786A
      6B6A3D3E3D7D87870000C0CFD0C0CFD0C0CFD0A9B4B4B8B9B8D9D9D9C5C5C5F1
      F2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9E9EBE9868987757D7DC0CFD0
      0000C0CFD0C0CFD0C0CFD0B4C0C1D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFA7A9A7818482788182C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0B4C0C1CBCBCBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F77374737D8687C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0BAC8C9A1A9
      A9A1A9A9A1A9A9A1A9A9A1A9A9A1A9A9A1A9A9A1A9A9A1A9A9ACB7B7C0CFD0C0
      CFD0C0CFD0C0CFD00000}
    ParentFont = False
    OnClick = bObservarClick
  end
  object dbOco: TdxDBGraphicEdit
    Left = 2
    Top = 252
    Width = 785
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 189
  end
  object dbRes: TdxDBGraphicEdit
    Left = 2
    Top = 31
    Width = 785
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 184
  end
  object grRes: ThGrid
    Tag = 1
    Left = 4
    Top = 33
    Width = 779
    Height = 178
    Selected.Strings = (
      'NUMRES'#9'10'#9'No. Pedido'#9'F'
      'DTERES'#9'10'#9'Emissão'#9'F'
      'CODVEN'#9'5'#9'Vend'#9'F'
      'CODPFA'#9'16'#9'Padrão Fat.'#9'F'
      'APECLI'#9'31'#9'Cliente'#9'F'
      'TOTRES'#9'10'#9' Total Itens'#9'F'
      'TOTGER'#9'12'#9'  Total Pedido'#9'F'
      'TOTREN'#9'8'#9' % Markup'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRes
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
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
  object pnCodCli: TPanel
    Left = 576
    Top = 215
    Width = 207
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do Cliente :  0000000'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 387
    Top = 2
    Width = 190
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' No. Pedido :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object EdPsqNumRes: TdxColorEdit
      Left = 82
      Top = 3
      Width = 106
      Color = 16577773
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      OnKeyPress = EdPsqNumResKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
  end
  object grRe2: ThGrid
    Tag = 1
    Left = 4
    Top = 254
    Width = 779
    Height = 183
    Selected.Strings = (
      'DSCPRO'#9'16'#9'Item'#9'F'
      'DESRE2'#9'40'#9'Descrição'#9'F'
      'QTPRE2'#9'10'#9'                Qtd'#9'F'
      'VLQRE2'#9'10'#9'         Unitário'#9'F'
      'TOTRE2'#9'10'#9'   Total do Item'#9'F'
      'TOTREN'#9'10'#9'    % Markup'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsRe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 5
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
  object bAtualizar: TBitBtn
    Left = 579
    Top = 2
    Width = 205
    Height = 29
    Caption = '&Localizar o Pedido'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bAtualizarClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF
      0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0FF0000
      FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF00
      00FF0000C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0FF0000FF0000C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF00
      00FF0000FF0000C0CFD0C0CFD0FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000FF0000C0CFD0C0CFD0FF0000
      FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF00
      00FF0000FF0000C0CFD0C0CFD0C0CFD0FF0000FF0000FF0000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0FF0000FF0000FF0000FF0000FF0000C0CFD0C0CFD0C0CFD0
      C0CFD0FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
      D0C0CFD0FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0FF0000FF0000FF
      0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.CodEmp,'
      '           PedRes.DteRes,'
      '           PedRes.NumRes,'
      '           PedRes.CodVen,'
      '           PedRes.CodCli,'
      '           PedRes.CodPfa,'
      '           PedRes.TotRes,'
      '           PedRes.TotGer,'
      '           PedRes.TotRen,'
      '           PedRes.SitRes,'
      '           FinCli.ApeCli'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      'Where PedRes.SitRes = '#39'Aguardando Liberacao do Depto de Compras'#39
      'Order by PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 9
    Top = 122
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object PedResDTERES: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedResCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vend'
      DisplayWidth = 5
      FieldName = 'CODVEN'
    end
    object PedResCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 16
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedResAPECLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 31
      FieldName = 'APECLI'
      FixedChar = True
    end
    object PedResTOTRES: TFloatField
      DisplayLabel = ' Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTRES'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = '  Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResTOTREN: TFloatField
      DisplayLabel = ' % Markup'
      DisplayWidth = 8
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedResCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      Visible = False
      FixedChar = True
      Size = 45
    end
  end
  object DsRes: TwwDataSource
    DataSet = PedRes
    OnDataChange = DsResDataChange
    Left = 37
    Top = 122
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 77
    Top = 150
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  CODVEN = :CODVEN,'
      '  CODCLI = :CODCLI,'
      '  CODPFA = :CODPFA,'
      '  TOTRES = :TOTRES,'
      '  TOTGER = :TOTGER,'
      '  TOTREN = :TOTREN,'
      '  SITRES = :SITRES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      
        '(CODEMP, DTERES, NUMRES, CODVEN, CODCLI, CODPFA, TOTRES, TOTGER,' +
        ' '
      'TOTREN, SITRES)'
      'values'
      '(:CODEMP, :DTERES, :NUMRES, :CODVEN, :CODCLI, :CODPFA, :TOTRES, '
      ':TOTGER, :TOTREN, :SITRES)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 9
    Top = 150
  end
  object PedRe2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsRes
    SQL.Strings = (
      'Select PedRe2.CodEmp,'
      '           PedRe2.DteRes,'
      '           PedRe2.NumRes,'
      '           PedRe2.SeqRe2,'
      '           PedRe2.CodGru,'
      '           PedRe2.CodSub,'
      '           PedRe2.CodPro,'
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.TotRe2,'
      '           PedRe2.TotRen,'
      '           PedRe2.NroRe2,'
      
        '           PedRe2.CodGru || _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodPro as DscPro From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 77
    Top = 122
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end>
    object PedRe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 16
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = '                Qtd'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '         Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = '   Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      DisplayLabel = '    % Markup'
      DisplayWidth = 10
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedRe2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedRe2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedRe2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedRe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedRe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    Left = 105
    Top = 122
  end
end
