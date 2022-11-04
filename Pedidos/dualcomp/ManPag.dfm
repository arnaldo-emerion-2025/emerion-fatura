inherited fmManPag: TfmManPag
  Left = 0
  Caption = 'Liberação de Pedidos Aguardando Confirmação de Pagamento'
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
    Left = 3
    Top = 7
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
    Left = 140
    Top = 15
    Width = 245
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 264
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
  object Bevel3: TBevel
    Left = 140
    Top = 272
    Width = 231
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bRejeitar: TSpeedButton
    Left = 164
    Top = 452
    Width = 206
    Height = 28
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
    OnClick = bRejeitarClick
  end
  object bLiberar: TSpeedButton
    Left = 371
    Top = 452
    Width = 206
    Height = 28
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
    OnClick = bLiberarClick
  end
  object bImprimir: TSpeedButton
    Left = 578
    Top = 452
    Width = 206
    Height = 28
    Hint = 'Imprimir Via de Separação dos Itens do Pedido'
    Caption = 'F5 - Imprimir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C
      6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A6ADDDCDCD0CFCF6C
      6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F8381825C5B5BBCBC
      BCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A6AFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA19F9FA19F9FA19F9F
      6260600000000000001616165D5D5DA9A9A9CACACACACACACACACACACACAC1C0
      C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3D3CFCFCF8C8A8A81
      7F7F817F7F817F7F6C6A6A1414140808080000000000000000001616165D5D5D
      A9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6ACACACACACACAC6C6
      C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390918280805250502B
      2A2A080808000000000000161616646464817E7F6C6A6AFF00FFFF00FF6C6A6A
      CACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDECAC7C7B6B5B5A5A3
      A3A19F9FA19F9F9E9A9C9390916865662322230303031919199997976C6A6AFF
      00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6F4F4F2F0F0EEEDED
      EAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F9997978280806C6A
      6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6F6F7F6F6F7F6F6F6
      F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8D8D8D1D1D1C2C1C1
      B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6ACECBCCF7F6F6F7F6
      F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B75696B898081ABA5A6C7
      C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF00FFFF00FFFF00FF
      6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A9C9697ACAAAAB2B0
      B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACACAC0C0C06C6A6AFF
      00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF8A737D5E51665456
      6554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0CAC9CACBCBCBB7B6
      B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FF
      D4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F62658E8687CECCCC
      CFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC186FFBF81FFC084BD
      82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7FFCE9EFFCA96FFC5
      8CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFFE1C2FFDCB8FFD7AF
      FFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFEAD4FF
      E5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0A3F7C297BD8281FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7FFDEBDFFD9B4FFD4
      ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFFF0E2FFEBD9FFE7CF
      FFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281FF
      F4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = bImprimirClick
  end
  object dbRe2: TdxDBGraphicEdit
    Left = 2
    Top = 288
    Width = 783
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
    TabOrder = 5
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 163
  end
  object dbRes: TdxDBGraphicEdit
    Left = 2
    Top = 31
    Width = 784
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
    Height = 227
  end
  object grLib: ThGrid
    Tag = 1
    Left = 4
    Top = 33
    Width = 778
    Height = 221
    Selected.Strings = (
      'NUMRES'#9'10'#9'No. Pedido'
      'DTERES'#9'10'#9'Emissão'
      'CODVEN'#9'4'#9'Vend'
      'CODPFA'#9'16'#9'Padrão Fat.'
      'NOMCLI'#9'50'#9'Cliente'
      'TOTGER'#9'12'#9'           Total Pedido'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLib
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
  object pnTelefone: TPanel
    Left = 562
    Top = 259
    Width = 222
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' TELEFONE : '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 388
    Top = 2
    Width = 189
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
  object grLb2: ThGrid
    Tag = 1
    Left = 4
    Top = 290
    Width = 777
    Height = 157
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'
      'DESLB2'#9'44'#9' '#9'F'
      'ULTQTS'#9'10'#9'   Quantidade Atendida'
      'VLQLB2'#9'10'#9'        Unitário'
      'ICMLB2'#9'4'#9'ICMS'
      'TOTLB2'#9'10'#9'       Total Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLb2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 3
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
    Left = 373
    Top = 259
    Width = 188
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do Cliente :  0000000'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
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
    TabOrder = 7
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
  object PedLib: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.CodEmp,'
      '           PedLib.DteRes,'
      '           PedLib.NumRes,'
      '           PedLib.SeqLib,'
      '           PedLib.CodCli,'
      '           PedLib.CodVen,'
      '           PedLib.CodPfa,'
      '           PedLib.TotGer,'
      '           PedLib.SitLib,'
      '           FinCli.NomCli,'
      '           FinCli.Pt1Cli,'
      '           FinCli.Fo1Cli'
      'From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'
      'Where PedLib.SitLib = '#39'Aguardando Confirmacao do Pagamento'#39
      'Order by PedLib.NumRes')
    ValidateWithMask = True
    Left = 5
    Top = 197
    object PedLibNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object PedLibDTERES: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTERES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vend'
      DisplayWidth = 4
      FieldName = 'CODVEN'
    end
    object PedLibCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 16
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedLibNOMCLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedLibTOTGER: TFloatField
      DisplayLabel = '           Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLibCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLibSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLibSITLIB: TStringField
      FieldName = 'SITLIB'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object PedLibPT1CLI: TStringField
      FieldName = 'PT1CLI'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedLibFO1CLI: TStringField
      FieldName = 'FO1CLI'
      Visible = False
      FixedChar = True
    end
    object PedLibCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
  end
  object DsLib: TwwDataSource
    DataSet = PedLib
    OnDataChange = DsLibDataChange
    Left = 33
    Top = 197
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 5
    Top = 225
  end
  object PedLb2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsLib
    SQL.Strings = (
      'Select PedLb2.CodEmp,'
      '           PedLb2.DteRes,'
      '           PedLb2.NumRes,'
      '           PedLb2.SeqLib,'
      '           PedLb2.SeqLb2,'
      '           PedLb2.DesLb2,'
      '           PedLb2.UltQts,'
      '           PedLb2.VlqLb2,'
      '           PedLb2.IcmLb2,'
      '           PedLb2.TotLb2,'
      
        '           PedLb2.CodGru || _UNICODE_FSS '#39'.'#39' || PedLb2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedLb2.CodPro as DscPro'
      'From PedLb2 '
      'Where PedLb2.CodEmp = :CodEmp'
      '     and PedLb2.DteRes = :DteRes'
      '     and PedLb2.NumRes = :NumRes'
      '     and PedLb2.SeqLib = :SeqLib'
      'Order by PedLb2.SeqLb2')
    ValidateWithMask = True
    Left = 5
    Top = 418
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
      end
      item
        DataType = ftInteger
        Name = 'SEQLIB'
        ParamType = ptInput
      end>
    object PedLb2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 87
    end
    object PedLb2DESLB2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 44
      FieldName = 'DESLB2'
      FixedChar = True
      Size = 70
    end
    object PedLb2ULTQTS: TFloatField
      DisplayLabel = '   Quantidade Atendida'
      DisplayWidth = 10
      FieldName = 'ULTQTS'
      DisplayFormat = '###,###,##0'
      Precision = 4
    end
    object PedLb2VLQLB2: TFloatField
      DisplayLabel = '        Unitário'
      DisplayWidth = 10
      FieldName = 'VLQLB2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedLb2ICMLB2: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 4
      FieldName = 'ICMLB2'
      DisplayFormat = '###0'
    end
    object PedLb2TOTLB2: TFloatField
      DisplayLabel = '       Total Item'
      DisplayWidth = 10
      FieldName = 'TOTLB2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLb2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLb2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedLb2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedLb2SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLb2SEQLB2: TIntegerField
      FieldName = 'SEQLB2'
      Visible = False
    end
  end
  object DsLb2: TwwDataSource
    DataSet = PedLb2
    Left = 33
    Top = 418
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Liberação de Pedidos Aguardando Confirmação de Pagamento'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Emerion Consultoria e Sist de Inf Ltda'
    RegistroUsuario.SerieProduto = 'SINGLE-0407/01065'
    RegistroUsuario.AutorizacaoKey = 'BBCL-1878-VBFC-6009-GNHN'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Setup'
    TitulodoRelatorio = 'Liberação de Pedidos Aguardando Confirmação de Pagamento'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padrão PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RDprint1NewPage
    Left = 63
    Top = 225
  end
  object quLib: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 197
  end
  object quLb2: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 197
  end
  object quRes: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 225
  end
end
