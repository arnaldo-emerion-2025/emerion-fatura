inherited fmManCom: TfmManCom
  Left = 0
  Caption = 'Liberações de Pedidos Aguardando Depto Comercial'
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
    Width = 56
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
  object bVencimento: TSpeedButton
    Left = 31
    Top = 441
    Width = 188
    Height = 40
    Hint = 'F2-Vencimentos do Pedido'
    Caption = 'F2-Vencimentos'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
      DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
      FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
      5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
      DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
      FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
      5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
      DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
      FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
      5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
      9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
      8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
      1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
      0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
      6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
      0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
      0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
      6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
      0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
      00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
      6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
      0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
      000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
      8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
      1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
      920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
      FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
      5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
      9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
      3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00E5E5E5E5E5E5
      E50000000000000000E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E500
      0000000E0E000E0E000000E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E50000
      0E0E0E0E000E000E0E0E0000000000000000000000E5E5E5E5E5E5E5E5000E0E
      0E0E0E0E00000E0E0E0E0E0E0000E9E9E90000000000000000E5E5E5E50E0E0E
      0E0E0E0E000E0E0E0E0E0E0E000000E4E900E9E9E9E9E90000E5E5E50E0E0E0E
      0E0E0E0E0E000E0E0E0E0E0E0E0000E4E900FFE4E4E4E4E900E5E5E50E0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E0000E900FFE4E4E4E4E900E5E50E0E0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E00E900FFFFFFFFFFE900E5000E0E000E0E
      0E0E0E0E0E0E0E0E0E0E0E0E00000E00000000000000000000E5000E0E0E000E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E000E0000E9E9E9E9E90000E5000E0E00000E
      0E0E0E1300000E0E0E0E0E0E0E000E0E0000FFE4E4E4E4E900E50000000E000E
      0E0E130013000E0E0E0E0E0E0E0E000E0000FFE4E4E4E4E900E500000E000E0E
      0E13000E13000E0E0E0E0E0E00000E000000FFFFFFFFFFE900E500000E0EFFFF
      13000E0E13000E0E0E0E0E0E0E0E0E00000000000000000000E5E5000E0EFF13
      000E0E0E13000E0E0E0E0E0E0E0E0E00E400E9E9E9E9E90000E5E500000EFFFF
      FF0E0E0E13000E0E0E0E0E0E0E0E0000E400FFE4E4E4E90000E5E500000E0EFF
      FF0E0E0E13000E0E0E0E0E0E0E0000E4E400FFE4E4E4E90000E5E50000000E0E
      FFFF0E0E13000E0E0E0E0E0E0E0000E4E400FFE4E4E4E90000E5E500FF00000E
      0E0EFFFF13000E0E0E0E0E000000E4E40000FFFFFFFFE90000E5E50000000000
      000E0E0E13000E0E0E0E000000000000000000000000000000E5E500FFE4E4E9
      00000E0E0E0E0E0000000000E9E9E9E9E900E9E9E9E9E90000E5E500FFE4E4E9
      00000000000000000000E900FFE4E4E4E900FFE4E4E4E90000E5E500FFE4E4E9
      00FFE4E4E900FFE4E4E4E900FFE4E4E4E900FFE4E4E4E90000E5E500FFFFFFE9
      00FFFFFFE900FFFFFFFFE900FFFFFFFFE900FFFFFFFFE90000E5E50000000000
      00000000000000000000000000000000000000000000000000E5E5E500838787
      87EBEBED00000000000000000000000000000000008B8B0000E5E5E5E5838787
      878787878787878787878787878787878787878787878B00E5E5E5E5E5E58383
      8787878787878787878787878787FFFF87FFFF87878B0000E5E5E5E5E5000000
      83838383838383838383838383838383838383838B8B0000E5E5E5E5E5E50000
      0000000000000000000000000000008B8B8B8B8B00000000E5E5E5E5E5E5E5E5
      E5E5E500000000000000000000000000000000000000E5E5E5E5E5E5E5E5E5E5
      E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5}
    ParentFont = False
    OnClick = bVencimentoClick
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
    Height = 156
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
    Width = 778
    Height = 178
    Selected.Strings = (
      'NUMRES'#9'10'#9'No. Pedido'
      'DTERES'#9'10'#9'Emissão'
      'CODVEN'#9'5'#9'Vend'
      'CODPFA'#9'16'#9'Padrão Fat.'
      'NOMCLI'#9'33'#9'Cliente'
      'TOTRES'#9'10'#9' Total Itens'
      'TOTGER'#9'12'#9'  Total Pedido'
      'TOTREN'#9'8'#9'  % Markup'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
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
    Left = 594
    Top = 215
    Width = 189
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
    Height = 150
    Selected.Strings = (
      'CODITE'#9'20'#9'Código do Item'
      'QTPRE2'#9'10'#9'            Qtd'
      'VLQRE2'#9'10'#9'        Unitário'
      'TOTRE2'#9'10'#9'      Total do Item'
      'DSCPER'#9'10'#9'   % Desc. Perm'
      'DSCRE2'#9'10'#9'   % Desc. Prat'
      'PACRE2'#9'10'#9'      % Acres'
      'TOTREN'#9'10'#9'     % Markup')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
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
    OnDrawDataCell = grRe2DrawDataCell
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object rgTipo: TdxColorPickEdit
    Left = 316
    Top = 218
    Width = 277
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
    TabOrder = 6
    TabStop = False
    HideSelection = False
    Text = 'Somente com Desconto Acima do Permitido'
    OnChange = rgTipoChange
    DropDownListStyle = True
    Items.Strings = (
      'Todos os Itens'
      'Somente com Desconto Acima do Permitido'
      'Somente com Acrescimo Acima do Permitido')
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
  object pnDesRe2: TPanel
    Left = 221
    Top = 409
    Width = 565
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnQtdReg: TPanel
    Left = 195
    Top = 2
    Width = 190
    Height = 29
    BevelOuter = bvNone
    Caption = '0 Pedido(s)'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
      '           FinCli.NomCli'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      'Where PedRes.SitRes = '#39'Aguardando Liberacao do Depto Comercial'#39
      'Order by PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 5
    Top = 154
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
    object PedResNOMCLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
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
      DisplayLabel = '  % Markup'
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
    Left = 33
    Top = 154
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 182
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  SITRES = :SITRES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      
        '  (CODEMP, DTERES, NUMRES, CODVEN, CODCLI, CODPFA, TOTRES, TOTGE' +
        'R, '
      'TOTREN, '
      '   SITRES)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :CODVEN, :CODCLI, :CODPFA, :TOTRES' +
        ', '
      ':TOTGER, '
      '   :TOTREN, :SITRES)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 5
    Top = 182
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
      '           PedRe2.DscPer,'
      '           PedRe2.DscRe2,'
      '           PedRe2.PacRe2,'
      '           PedRe2.PcoRe2,'
      '           PedRe2.TotRen,'
      '           PedRe2.FlgVal,'
      '           PedRe2.FlgPac,'
      '           PedRe2.FlgLib,'
      '           PedRe2.NroRe2,'
      '           PedRe2.FlaSeq'
      'From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      '     and PedRe2.FlgVal = '#39'Sim'#39
      '     and PedRe2.FlgLib = '#39'Nao'#39
      'Order by PedRe2.NroRe2')
    UpdateObject = UpRe2
    ValidateWithMask = True
    Left = 5
    Top = 347
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
    object PedRe2CODITE: TStringField
      DisplayLabel = 'Código do Item'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = PedRe2CODITEGetText
      Calculated = True
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = '            Qtd'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '        Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = '      Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2DSCPER: TFloatField
      DisplayLabel = '   % Desc. Perm'
      DisplayWidth = 10
      FieldName = 'DSCPER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2DSCRE2: TFloatField
      DisplayLabel = '   % Desc. Prat'
      DisplayWidth = 10
      FieldName = 'DSCRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2PACRE2: TFloatField
      DisplayLabel = '      % Acres'
      DisplayWidth = 10
      FieldName = 'PACRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2TOTREN: TFloatField
      DisplayLabel = '     % Markup'
      DisplayWidth = 10
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'DESRE2'
      Visible = False
      FixedChar = True
      Size = 70
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
    object PedRe2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedRe2FLGVAL: TStringField
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGPAC: TStringField
      FieldName = 'FLGPAC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGLIB: TStringField
      FieldName = 'FLGLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2PCORE2: TFloatField
      FieldName = 'PCORE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedRe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    OnDataChange = DsRe2DataChange
    Left = 33
    Top = 347
  end
  object UpRe2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRe2'
      'set'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  DESRE2 = :DESRE2,'
      '  QTPRE2 = :QTPRE2,'
      '  VLQRE2 = :VLQRE2,'
      '  TOTRE2 = :TOTRE2,'
      '  DSCPER = :DSCPER,'
      '  DSCRE2 = :DSCRE2,'
      '  PACRE2 = :PACRE2,'
      '  PCORE2 = :PCORE2,'
      '  TOTREN = :TOTREN,'
      '  FLGVAL = :FLGVAL,'
      '  FLGPAC = :FLGPAC,'
      '  FLGLIB = :FLGLIB,'
      '  NRORE2 = :NRORE2,'
      '  FLASEQ = :FLASEQ'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQRE2 = :OLD_SEQRE2')
    InsertSQL.Strings = (
      'insert into PedRe2'
      
        '  (CODEMP, DTERES, NUMRES, SEQRE2, CODGRU, CODSUB, CODPRO, DESRE' +
        '2, QTPRE2, '
      
        '   VLQRE2, TOTRE2, DSCPER, DSCRE2, PACRE2, PCORE2, TOTREN, FLGVA' +
        'L, FLGPAC, '
      '   FLGLIB, NRORE2, FLASEQ)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :SEQRE2, :CODGRU, :CODSUB, :CODPRO' +
        ', :DESRE2, '
      
        '   :QTPRE2, :VLQRE2, :TOTRE2, :DSCPER, :DSCRE2, :PACRE2, :PCORE2' +
        ', :TOTREN, '
      '   :FLGVAL, :FLGPAC, :FLGLIB, :NRORE2, :FLASEQ)')
    DeleteSQL.Strings = (
      'delete from PedRe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES and'
      '  SEQRE2 = :OLD_SEQRE2')
    Left = 5
    Top = 375
  end
end
