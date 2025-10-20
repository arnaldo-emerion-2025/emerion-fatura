inherited fmManLpe: TfmManLpe
  Left = 0
  Caption = 'Emissão de Romaneios'
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
    Left = 162
    Top = 17
    Width = 205
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 248
    Width = 123
    Height = 14
    Caption = 'Romaneios Emitidos'
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
    Left = 162
    Top = 256
    Width = 414
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bLiberar: TSpeedButton
    Left = 166
    Top = 452
    Width = 206
    Height = 28
    Hint = 'Retornar o Pedido para a Liberação para Possiveis Alterações'
    Caption = 'F2 - Retornar para Liberação'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00000000000000000000000000000000000000000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFFFFF80808080
      8080808080808080808080808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFFFFF000000C0C0C0000000C0C0C0
      000000808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0000000FFFFFF000000C0C0C00000008080800000008080800000
      00C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD00000
      00FFFFFF000000C0C0C0000000C0C0C0000000808080000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFFFFF000000C0
      C0C0000000808080000000808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000FFFFFF000000C0C0C0000000C0C0C0
      000000808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      000000C0CFD0000000FFFFFF000000C0C0C00000008080800000008080800000
      00C0CFD0000000C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD00000000000
      00FFFFFF000000C0C0C0000000C0C0C0000000808080000000000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0000000FFFFFF000000C0
      C0C0000000808080000000808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0000000808080000000808080000000808080
      000000808080000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD00000000000000000000000000000000000000000000000000000000000
      00000000C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0000000FFFF
      FFC0C0C0C0C0C0C0C0C0808080808080808080808080808080000000C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD000000000000000000000000000
      0000000000000000000000000000000000000000C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000808080808080808080
      000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000}
    ParentFont = False
    OnClick = bLiberarClick
  end
  object bEditar: TSpeedButton
    Left = 372
    Top = 452
    Width = 206
    Height = 28
    Hint = 'Editar Romaneios Existentes para a Liberação Pendente'
    Caption = 'F3-Editar Romaneio'
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
  object bEmitir: TSpeedButton
    Left = 578
    Top = 452
    Width = 206
    Height = 28
    Hint = 'Emitir Romaneio para Liberação Pendente'
    Caption = 'F4 - Emitir Romaneio'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000
      000000000000000000000000000000000000000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD080808080808080808080808080808080808080
      8080808080808080808080808080808080808080000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0008000008000C0C0C0808080808080000000000000C0CFD0C0CFD0C0CF
      D0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      FF00008000C0C0C0808080808080808080000000C0CFD0C0CFD0C0CFD0808080
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000FFFFFFFFFFFFC0
      C0C0808080000000C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF000000808080
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000C0C0C0FFFFFFC0C0
      C0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF808080FFFFFFFF
      0000FF0000FF0000FF0000FFFFFF808080000000808080C0C0C0FFFFFF000000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000808080FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080000000000000000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000
      FF0000FFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000FF0000FFFF
      FF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0808080808080808080808080808080808080808080808080C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0}
    ParentFont = False
    OnClick = bEmitirClick
  end
  object bImprimir: TSpeedButton
    Left = 4
    Top = 452
    Width = 161
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
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000000000000000000000
      000000000000000000000000000000000000000000000000000000C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD080808080808080808080808080808080808080
      8080808080808080808080808080808080808080000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0008000008000C0C0C0808080808080000000000000C0CFD0C0CFD0C0CF
      D0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      FF00008000C0C0C0808080808080808080000000C0CFD0C0CFD0C0CFD0808080
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C0808080808080000000C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFF
      FF000000000000000000000000000000000000000000000000FFFFFFFFFFFFC0
      C0C0808080000000C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF000000808080
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000C0C0C0FFFFFFC0C0
      C0000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFF808080FFFFFFFF
      0000FF0000FF0000FF0000FFFFFF808080000000808080C0C0C0FFFFFF000000
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0000000808080FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080000000000000000000000000C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000
      FF0000FFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFF0000FF0000FF0000FFFF
      FF808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      808080C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0808080808080808080808080808080808080808080808080C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0}
    ParentFont = False
    OnClick = bImprimirClick
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 3
    Top = 269
    Width = 780
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 156
  end
  object dbRes: TdxDBGraphicEdit
    Left = 3
    Top = 31
    Width = 780
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
    Height = 212
  end
  object grLib: ThGrid
    Tag = 1
    Left = 5
    Top = 33
    Width = 774
    Height = 206
    Selected.Strings = (
      'NUMRES'#9'12'#9'No. Pedido'
      'DTELIB'#9'10'#9'Emissão'
      'HRELIB'#9'8'#9'Hora'
      'NOMCLI'#9'60'#9'Cliente'
      'TOTLIB'#9'12'#9'         Total Liberado'#9'F')
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
  object grOrc: ThGrid
    Tag = 1
    Left = 5
    Top = 271
    Width = 774
    Height = 150
    Selected.Strings = (
      'NUMRES'#9'12'#9'No. Pedido'
      'DTEORC'#9'10'#9'Emissão'
      'HREORC'#9'8'#9'Hora'
      'NOMUSU'#9'57'#9'Responsavel'
      'TOTGER'#9'12'#9'                 Total Pedido')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsOrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
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
    Left = 578
    Top = 243
    Width = 204
    Height = 25
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
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 370
    Top = 4
    Width = 207
    Height = 27
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
    TabOrder = 3
    object EdPsqNumRes: TdxColorEdit
      Left = 82
      Top = 2
      Width = 122
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
  object pnSitOrc: TPanel
    Left = 578
    Top = 425
    Width = 205
    Height = 25
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object bAtualizar: TBitBtn
    Left = 579
    Top = 4
    Width = 203
    Height = 27
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
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 136
    Top = 325
  end
  object PedLib: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.CodEmp,'
      '           PedLib.DteRes,'
      '           PedLib.NumRes,'
      '           PedLib.SeqLib,'
      '           PedLib.CodCli,'
      '           PedLib.PedTip,'
      '           PedLib.DteLib,'
      '           PedLib.HreLib,'
      '           PedLib.TotLib,'
      '           PedLib.TotIpi,'
      '           PedLib.TotGer,'
      '           PedLib.SitLib,'
      '           FinCli.NomCli'
      'From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'
      
        'Where PedLib.SitLib = '#39'Concluido'#39' or PedLib.SitLib = '#39'Faturando'#39 +
        ' '
      'Order by PedLib.NumRes')
    UpdateObject = UpLib
    ValidateWithMask = True
    Left = 8
    Top = 325
    object PedLibNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 12
      FieldName = 'NUMRES'
    end
    object PedLibDTELIB: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTELIB'
      EditMask = '!99/99/9999;1;_'
    end
    object PedLibHRELIB: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HRELIB'
      FixedChar = True
      Size = 8
    end
    object PedLibNOMCLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 60
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedLibTOTLIB: TFloatField
      DisplayLabel = '         Total Liberado'
      DisplayWidth = 12
      FieldName = 'TOTLIB'
      DisplayFormat = '###,###,##0.00'
    end
    object PedLibTOTGER: TFloatField
      DisplayLabel = '    Total Liberado'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLibCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLibDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedLibSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLibTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object PedLibCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
    object PedLibSITLIB: TStringField
      FieldName = 'SITLIB'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object PedLibPEDTIP: TIntegerField
      FieldName = 'PEDTIP'
      Visible = False
    end
  end
  object DsLib: TwwDataSource
    DataSet = PedLib
    OnDataChange = DsLibDataChange
    Left = 36
    Top = 325
  end
  object UpLib: TUpdateSQL
    ModifySQL.Strings = (
      'update PedLib'
      'set'
      '  CODCLI = :CODCLI,'
      '  PEDTIP = :PEDTIP,'
      '  DTELIB = :DTELIB,'
      '  HRELIB = :HRELIB,'
      '  TOTLIB = :TOTLIB,'
      '  TOTIPI = :TOTIPI,'
      '  TOTGER = :TOTGER,'
      '  SITLIB = :SITLIB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB')
    InsertSQL.Strings = (
      'insert into PedLib'
      
        '(CODEMP, DTERES, NUMRES, SEQLIB, CODCLI, PEDTIP, DTELIB, HRELIB,' +
        ' '
      'TOTLIB, TOTIPI, TOTGER, SITLIB)'
      'values'
      
        '(:CODEMP, :DTERES, :NUMRES, :SEQLIB, :CODCLI, :PEDTIP, :DTELIB, ' +
        ':HRELIB, '
      ':TOTLIB, :TOTIPI, :TOTGER, :SITLIB)')
    DeleteSQL.Strings = (
      'delete from PedLib'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB')
    Left = 8
    Top = 353
  end
  object FatOrc: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsLib
    SQL.Strings = (
      'Select FatOrc.*,'
      '           CodUsu || _UNICODE_FSS '#39' - '#39' || NomUsu as NomUsu'
      'From FatOrc LEFT JOIN GerUsu ON (FatOrc.CodUsu = GerUsu.CodUsu)'
      'Where FatOrc.CodEmp = :CodEmp'
      '     and FatOrc.DteRes = :DteRes'
      '     and FatOrc.NumRes = :NumRes'
      '     and FatOrc.SeqLib = :SeqLib'
      '     and FatOrc.SitOrc = '#39'Nao Concluido'#39
      'Order by FatOrc.SeqOrc')
    UpdateObject = UpOrc
    ValidateWithMask = True
    Left = 71
    Top = 325
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
    object FatOrcNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 12
      FieldName = 'NUMRES'
    end
    object FatOrcDTEORC: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEORC'
      EditMask = '!99/99/9999;1;_'
    end
    object FatOrcHREORC: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HREORC'
      FixedChar = True
      Size = 8
    end
    object FatOrcNOMUSU: TStringField
      DisplayLabel = 'Responsavel'
      DisplayWidth = 57
      FieldName = 'NOMUSU'
      Size = 136
    end
    object FatOrcTOTGER: TFloatField
      DisplayLabel = '                 Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object FatOrcTOTORC: TFloatField
      DisplayLabel = '        Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTORC'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatOrcCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object FatOrcSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object FatOrcQTPORC: TIntegerField
      FieldName = 'QTPORC'
      Visible = False
    end
    object FatOrcCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object FatOrcDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object FatOrcSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object FatOrcSEQORC: TIntegerField
      FieldName = 'SEQORC'
      Visible = False
    end
    object FatOrcTOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Visible = False
    end
    object FatOrcTOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Visible = False
    end
    object FatOrcTOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Visible = False
    end
    object FatOrcLANORC: TFloatField
      DisplayWidth = 10
      FieldName = 'LANORC'
      Visible = False
    end
    object FatOrcSLDORC: TFloatField
      DisplayWidth = 10
      FieldName = 'SLDORC'
      Visible = False
    end
    object FatOrcFLGAVI: TStringField
      DisplayWidth = 1
      FieldName = 'FLGAVI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatOrcFLGTMO: TStringField
      FieldName = 'FLGTMO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatOrcCODTMO: TIntegerField
      FieldName = 'CODTMO'
      Visible = False
    end
    object FatOrcTIPTMO: TStringField
      FieldName = 'TIPTMO'
      Visible = False
      FixedChar = True
      Size = 9
    end
    object FatOrcDTCTMO: TDateTimeField
      FieldName = 'DTCTMO'
      Visible = False
    end
    object FatOrcVALTMO: TFloatField
      FieldName = 'VALTMO'
      Visible = False
    end
    object FatOrcQTIORC: TIntegerField
      FieldName = 'QTIORC'
      Visible = False
    end
    object FatOrcHRECOR: TStringField
      FieldName = 'HRECOR'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcDTECOR: TDateTimeField
      FieldName = 'DTECOR'
      Visible = False
    end
    object FatOrcUSUCOR: TIntegerField
      FieldName = 'USUCOR'
      Visible = False
    end
    object FatOrcTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Visible = False
    end
    object FatOrcDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Visible = False
    end
    object FatOrcHRESDA: TStringField
      FieldName = 'HRESDA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Visible = False
    end
    object FatOrcOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatOrcCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Visible = False
    end
    object FatOrcDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Visible = False
    end
    object FatOrcHREENT: TStringField
      FieldName = 'HREENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUENT: TIntegerField
      FieldName = 'USUENT'
      Visible = False
    end
    object FatOrcOBSENT: TStringField
      FieldName = 'OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object FatOrcOBSCOR: TMemoField
      FieldName = 'OBSCOR'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatOrcOBSORC: TMemoField
      FieldName = 'OBSORC'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object FatOrcSQPORC: TIntegerField
      FieldName = 'SQPORC'
      Visible = False
    end
    object FatOrcQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object FatOrcFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatOrcFLGIMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatOrcSITORC: TStringField
      DisplayWidth = 45
      FieldName = 'SITORC'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object FatOrcDTEATU: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEATU'
      Visible = False
    end
    object FatOrcHREATU: TStringField
      DisplayWidth = 8
      FieldName = 'HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object FatOrcUSUATU: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUATU'
      Visible = False
    end
    object FatOrcNROCOL: TStringField
      DisplayWidth = 20
      FieldName = 'NROCOL'
      Visible = False
      FixedChar = True
    end
  end
  object DsOrc: TwwDataSource
    DataSet = FatOrc
    OnDataChange = DsOrcDataChange
    Left = 99
    Top = 325
  end
  object UpOrc: TUpdateSQL
    ModifySQL.Strings = (
      'update FatOrc'
      'set'
      '  DTEORC = :DTEORC,'
      '  HREORC = :HREORC,'
      '  FLGTMO = :FLGTMO,'
      '  CODTMO = :CODTMO,'
      '  TIPTMO = :TIPTMO,'
      '  DTCTMO = :DTCTMO,'
      '  VALTMO = :VALTMO,'
      '  FLGAVI = :FLGAVI,'
      '  SEQITE = :SEQITE,'
      '  QTIORC = :QTIORC,'
      '  QTPORC = :QTPORC,'
      '  SQPORC = :SQPORC,'
      '  QTDVOL = :QTDVOL,'
      '  TOTORC = :TOTORC,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  TOTGER = :TOTGER,'
      '  LANORC = :LANORC,'
      '  SLDORC = :SLDORC,'
      '  CODUSU = :CODUSU,'
      '  HRECOR = :HRECOR,'
      '  DTECOR = :DTECOR,'
      '  USUCOR = :USUCOR,'
      '  OBSCOR = :OBSCOR,'
      '  OBSORC = :OBSORC,'
      '  TRASDA = :TRASDA,'
      '  DTESDA = :DTESDA,'
      '  HRESDA = :HRESDA,'
      '  USUSDA = :USUSDA,'
      '  OBSSDA = :OBSSDA,'
      '  CODVEI = :CODVEI,'
      '  DTEENT = :DTEENT,'
      '  HREENT = :HREENT,'
      '  USUENT = :USUENT,'
      '  OBSENT = :OBSENT,'
      '  FLGATU = :FLGATU,'
      '  FLGIMP = :FLGIMP,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  SITORC = :SITORC,'
      '  NROCOL = :NROCOL'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQORC = :OLD_SEQORC')
    InsertSQL.Strings = (
      'insert into FatOrc'
      
        '  (CODEMP, DTERES, NUMRES, SEQLIB, SEQORC, DTEORC, HREORC, FLGTM' +
        'O, '
      'CODTMO, '
      
        '   TIPTMO, DTCTMO, VALTMO, FLGAVI, SEQITE, QTIORC, QTPORC, SQPOR' +
        'C, '
      'QTDVOL, '
      
        '   TOTORC, TOTFRT, TOTSEG, TOTDES, TOTGER, LANORC, SLDORC, CODUS' +
        'U, '
      'HRECOR, '
      '   DTECOR, USUCOR, OBSCOR, OBSORC, TRASDA, DTESDA, HRESDA, '
      'USUSDA, OBSSDA, '
      
        '   CODVEI, DTEENT, HREENT, USUENT, OBSENT, FLGATU, FLGIMP, DTEAT' +
        'U, '
      'HREATU, '
      '   USUATU, SITORC, NROCOL)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQLIB, :SEQORC, :DTEORC, :HREORC' +
        ', '
      ':FLGTMO, '
      
        '   :CODTMO, :TIPTMO, :DTCTMO, :VALTMO, :FLGAVI, :SEQITE, :QTIORC' +
        ', '
      ':QTPORC, '
      
        '   :SQPORC, :QTDVOL, :TOTORC, :TOTFRT, :TOTSEG, :TOTDES, :TOTGER' +
        ', '
      ':LANORC, '
      
        '   :SLDORC, :CODUSU, :HRECOR, :DTECOR, :USUCOR, :OBSCOR, :OBSORC' +
        ', '
      ':TRASDA, '
      
        '   :DTESDA, :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT' +
        ', '
      ':USUENT, '
      
        '   :OBSENT, :FLGATU, :FLGIMP, :DTEATU, :HREATU, :USUATU, :SITORC' +
        ', '
      ':NROCOL)')
    DeleteSQL.Strings = (
      'delete from FatOrc'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQLIB = :OLD_SEQLIB and'
      '  SEQORC = :OLD_SEQORC')
    Left = 70
    Top = 353
  end
  object quLb2: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 164
    Top = 325
  end
  object quRes: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 164
    Top = 353
  end
  object quLib: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 136
    Top = 354
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
    OpcoesPreview.CaptionPreview = 'Emissão de Romaneios'
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
    TitulodoRelatorio = 'Emissão de Romaneios'
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
    Left = 136
    Top = 382
  end
end
