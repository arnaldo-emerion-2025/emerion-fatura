inherited fmManRes: TfmManRes
  Left = 0
  Caption = 'Alterar Informações de Pedidos Faturados'
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
  object Label16: TLabel
    Left = 4
    Top = 16
    Width = 87
    Height = 13
    Caption = 'Número do Pedido'
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
  object Label17: TLabel
    Left = 4
    Top = 108
    Width = 51
    Height = 13
    Caption = 'Emitido Em'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 231
    Top = 108
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label28: TLabel
    Left = 4
    Top = 131
    Width = 61
    Height = 13
    Caption = 'Faturado Em'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel
    Left = 231
    Top = 131
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 4
    Top = 155
    Width = 74
    Height = 13
    Caption = 'Valor do Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 231
    Top = 154
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 4
    Top = 62
    Width = 33
    Height = 13
    Caption = 'Cliente'
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
  object Label22: TLabel
    Left = 4
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Vendedor'
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
  object bPsqCli: TSpeedButton
    Left = 223
    Top = 59
    Width = 23
    Height = 21
    Hint = 'Pesquisar Clientes Existentes'
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
    OnClick = bPsqCliClick
  end
  object bPsqVen: TSpeedButton
    Left = 223
    Top = 82
    Width = 23
    Height = 21
    Hint = 'Pesquisar Vendedores Existentes'
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
    OnClick = bPsqVenClick
  end
  object Label10: TLabel
    Left = 4
    Top = 0
    Width = 107
    Height = 13
    Caption = 'Inf. para Pesquisas'
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
    Left = 129
    Top = 6
    Width = 655
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 4
    Top = 172
    Width = 121
    Height = 13
    Caption = 'Pedidos Selecionados'
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
    Left = 129
    Top = 179
    Width = 656
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 4
    Top = 329
    Width = 88
    Height = 13
    Caption = 'Itens do Pedido'
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
    Left = 129
    Top = 336
    Width = 656
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bEditar: TSpeedButton
    Left = 494
    Top = 455
    Width = 291
    Height = 26
    Hint = 'F3-Alterar Informações de Markup do Pedido'
    Caption = 'F3-Alterar Informações'
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
  object Label4: TLabel
    Left = 127
    Top = 16
    Width = 4
    Height = 13
    Caption = ':'
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
    Left = 127
    Top = 62
    Width = 4
    Height = 13
    Caption = ':'
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
    Left = 127
    Top = 85
    Width = 4
    Height = 13
    Caption = ':'
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
  object Label9: TLabel
    Left = 127
    Top = 108
    Width = 4
    Height = 13
    Caption = ':'
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
  object Label11: TLabel
    Left = 127
    Top = 131
    Width = 4
    Height = 13
    Caption = ':'
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
  object Label12: TLabel
    Left = 127
    Top = 154
    Width = 4
    Height = 13
    Caption = ':'
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
  object Label13: TLabel
    Left = 447
    Top = 16
    Width = 94
    Height = 13
    Caption = 'No. da Nota Fiscal :'
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
    Left = 4
    Top = 39
    Width = 41
    Height = 13
    Caption = 'Empresa'
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
  object Label24: TLabel
    Left = 127
    Top = 39
    Width = 4
    Height = 13
    Caption = ':'
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
  object bPsqEmp: TSpeedButton
    Left = 223
    Top = 36
    Width = 23
    Height = 21
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
    OnClick = bPsqEmpClick
  end
  object dbLb2: TdxDBGraphicEdit
    Left = 3
    Top = 343
    Width = 786
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
    TabOrder = 19
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 112
  end
  object dbLib: TdxDBGraphicEdit
    Left = 2
    Top = 185
    Width = 786
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
    TabOrder = 18
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 144
  end
  object EdPsqDteres1: TdxColorDateEdit
    Left = 135
    Top = 104
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqNumRes: TdxColorEdit
    Left = 135
    Top = 12
    Width = 87
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
    OnExit = EdPsqNumResExit
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqDteres2: TdxColorDateEdit
    Left = 246
    Top = 104
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDtfRes1: TdxColorDateEdit
    Left = 135
    Top = 127
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDtfRes2: TdxColorDateEdit
    Left = 246
    Top = 127
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqTotRes1: TdxColorCurrencyEdit
    Left = 135
    Top = 150
    Width = 87
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
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqTotRes2: TdxColorCurrencyEdit
    Left = 246
    Top = 150
    Width = 87
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
    Alignment = taRightJustify
    DisplayFormat = '###,###,##0.00'
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object EdPsqCodVen: TdxColorEdit
    Left = 135
    Top = 81
    Width = 87
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
    OnExit = EdPsqCodVenExit
    OnKeyDown = EdPsqCodVenKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqCodCli: TdxColorEdit
    Left = 135
    Top = 58
    Width = 87
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
    OnExit = EdPsqCodCliExit
    OnKeyDown = EdPsqCodCliKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomVen: TdxColorEdit
    Left = 246
    Top = 81
    Width = 393
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
    TabOrder = 7
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomCli: TdxColorEdit
    Left = 246
    Top = 58
    Width = 393
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
    TabOrder = 5
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bSelecionar: TBitBtn
    Left = 460
    Top = 131
    Width = 178
    Height = 43
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = bSelecionarClick
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
  object grLib: ThGrid
    Tag = 1
    Left = 4
    Top = 187
    Width = 780
    Height = 138
    Selected.Strings = (
      'NUMRES'#9'8'#9'Pedido'
      'NRONFS'#9'10'#9'Nota Fiscal'
      'DTERES'#9'10'#9'Emissão'
      'DTEFAT'#9'10'#9'Dt. Fat'
      'APECLI'#9'21'#9'Cliente'
      'CODVEN'#9'5'#9'Vend'
      'TOTLIB'#9'10'#9'    Total de Itens '
      'TOTGER'#9'10'#9'   Total Faturado'#9'F'
      'TOTREN'#9'10'#9'  % Markup')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
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
    TabOrder = 16
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
  object grLb2: ThGrid
    Tag = 1
    Left = 5
    Top = 345
    Width = 780
    Height = 106
    Selected.Strings = (
      'DSCPRO'#9'53'#9'Item'
      'ULTQTS'#9'10'#9'  Qtd. Faturada'
      'VLQLB2'#9'10'#9'       Unitário'
      'ICMLB2'#9'5'#9'  ICMS'
      'TOTGE2'#9'10'#9'     Total Item'
      'TOTREN'#9'10'#9'   % Markup')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
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
    TabOrder = 17
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
  object rgOrdem: TRadioGroup
    Left = 640
    Top = 31
    Width = 146
    Height = 144
    Caption = ' Exibido por '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Cliente'
      'Vendedor'
      'No. Pedido'
      'Dt. Emissão')
    ParentFont = False
    TabOrder = 15
  end
  object EdPsqCodEmp: TdxColorEdit
    Left = 135
    Top = 35
    Width = 87
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
    OnExit = EdPsqCodEmpExit
    OnKeyDown = EdPsqCodEmpKeyDown
    OnKeyPress = EdPsqNumResKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomEmp: TdxColorEdit
    Left = 246
    Top = 35
    Width = 393
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
    TabOrder = 3
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNroNfs: TdxColorEdit
    Left = 543
    Top = 12
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
    TabOrder = 1
    OnExit = EdPsqNroNfsExit
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object PedLib: TwwQuery
    Active = True
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLib.*,'
      
        '           TextoOcor(IntStrZeros(PedLib.CodCli,7),'#39'-'#39',FinCli.Ape' +
        'Cli,'#39#39','#39#39','#39#39','#39#39') as ApeCli'
      'From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'
      'Where PedLib.DteLib = :DteLib'
      '     and PedLib.SitLib = '#39'Faturado'#39
      'Order by PedLib.NumRes')
    ValidateWithMask = True
    Left = 6
    Top = 268
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteLib'
        ParamType = ptInput
      end>
    object PedLibNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 8
      FieldName = 'NUMRES'
    end
    object PedLibNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object PedLibDTERES: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTERES'
    end
    object PedLibDTEFAT: TDateTimeField
      DisplayLabel = 'Dt. Fat'
      DisplayWidth = 10
      FieldName = 'DTEFAT'
    end
    object PedLibAPECLI: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 21
      FieldName = 'APECLI'
      FixedChar = True
      Size = 100
    end
    object PedLibCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vend'
      DisplayWidth = 5
      FieldName = 'CODVEN'
    end
    object PedLibTOTLIB: TFloatField
      DisplayLabel = '    Total de Itens '
      DisplayWidth = 10
      FieldName = 'TOTLIB'
    end
    object PedLibTOTGER: TFloatField
      DisplayLabel = '   Total Faturado'
      DisplayWidth = 10
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedLibTOTREN: TFloatField
      DisplayLabel = '  % Markup'
      DisplayWidth = 10
      FieldName = 'TOTREN'
    end
    object PedLibCODATD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Atend.'
      DisplayWidth = 7
      FieldName = 'CODATD'
      Visible = False
    end
    object PedLibCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedLibSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
    object PedLibDTELIB: TDateTimeField
      FieldName = 'DTELIB'
      Visible = False
    end
    object PedLibHRELIB: TStringField
      FieldName = 'HRELIB'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibQTSLIB: TIntegerField
      FieldName = 'QTSLIB'
      Visible = False
    end
    object PedLibBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object PedLibTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object PedLibBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object PedLibTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object PedLibBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object PedLibTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object PedLibTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Visible = False
    end
    object PedLibTOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
    end
    object PedLibTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object PedLibTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object PedLibBASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object PedLibTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object PedLibDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Visible = False
    end
    object PedLibDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
    end
    object PedLibMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
    end
    object PedLibMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
    end
    object PedLibMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Visible = False
    end
    object PedLibMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Visible = False
    end
    object PedLibMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      Visible = False
    end
    object PedLibTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedLibTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object PedLibTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object PedLibTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
    end
    object PedLibTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object PedLibCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object PedLibFLGRES: TStringField
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibFLGLIB: TStringField
      FieldName = 'FLGLIB'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLibPEDANT: TStringField
      FieldName = 'PEDANT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibFLGANT: TStringField
      FieldName = 'FLGANT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLibDTEANT: TDateTimeField
      FieldName = 'DTEANT'
      Visible = False
    end
    object PedLibHREANT: TStringField
      FieldName = 'HREANT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibOBSANT: TMemoField
      FieldName = 'OBSANT'
      Visible = False
      BlobType = ftMemo
      Size = 300
    end
    object PedLibUSUANT: TIntegerField
      FieldName = 'USUANT'
      Visible = False
    end
    object PedLibHREFAT: TStringField
      FieldName = 'HREFAT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibUSUFAT: TIntegerField
      FieldName = 'USUFAT'
      Visible = False
    end
    object PedLibFLGREQ: TStringField
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
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
    object PedLibDTEDEL: TDateTimeField
      FieldName = 'DTEDEL'
      Visible = False
    end
    object PedLibHREDEL: TStringField
      FieldName = 'HREDEL'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibOBSDEL: TMemoField
      FieldName = 'OBSDEL'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object PedLibUSUDEL: TIntegerField
      FieldName = 'USUDEL'
      Visible = False
    end
    object PedLibDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      Visible = False
    end
    object PedLibHREDEV: TStringField
      FieldName = 'HREDEV'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibOBSDEV: TMemoField
      FieldName = 'OBSDEV'
      Visible = False
      BlobType = ftMemo
      Size = 500
    end
    object PedLibUSUDEV: TIntegerField
      FieldName = 'USUDEV'
      Visible = False
    end
    object PedLibFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLibDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Visible = False
    end
    object PedLibHREATU: TStringField
      FieldName = 'HREATU'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibUSUATU: TIntegerField
      FieldName = 'USUATU'
      Visible = False
    end
    object PedLibTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Visible = False
    end
    object PedLibDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Visible = False
    end
    object PedLibHRESDA: TStringField
      FieldName = 'HRESDA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Visible = False
    end
    object PedLibOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object PedLibCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Visible = False
    end
    object PedLibDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Visible = False
    end
    object PedLibHREENT: TStringField
      FieldName = 'HREENT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedLibUSUENT: TIntegerField
      FieldName = 'USUENT'
      Visible = False
    end
    object PedLibOBSENT: TStringField
      FieldName = 'OBSENT'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object PedLibCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
    object PedLibCODPFA: TStringField
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedLibTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLibCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object PedLibCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
    end
    object PedLibMODPFA: TStringField
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object PedLibFLGTAB: TStringField
      FieldName = 'FLGTAB'
      Visible = False
      FixedChar = True
      Size = 25
    end
    object PedLibATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibMESLIB: TStringField
      FieldName = 'MESLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibANOLIB: TIntegerField
      FieldName = 'ANOLIB'
      Visible = False
    end
    object PedLibLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibUFELIB: TStringField
      FieldName = 'UFELIB'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedLibFLGSER: TStringField
      FieldName = 'FLGSER'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLibVALTMO: TFloatField
      FieldName = 'VALTMO'
      Visible = False
    end
    object PedLibBASISS: TFloatField
      FieldName = 'BASISS'
      Visible = False
    end
    object PedLibTOTISS: TFloatField
      FieldName = 'TOTISS'
      Visible = False
    end
    object PedLibCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Visible = False
    end
    object PedLibMEDCAT: TFloatField
      FieldName = 'MEDCAT'
      Visible = False
    end
    object PedLibBASCAT: TFloatField
      FieldName = 'BASCAT'
      Visible = False
    end
    object PedLibTOTCAT: TFloatField
      FieldName = 'TOTCAT'
      Visible = False
    end
    object PedLibTIPCPA: TStringField
      FieldName = 'TIPCPA'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object PedLb2: TwwQuery
    Active = True
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsLib
    SQL.Strings = (
      'Select PedLb2.*,'
      
        '           TextoOcor(PedLb2.CodGru,'#39'.'#39',PedLb2.CodSub,'#39'.'#39',PedLb2.' +
        'CodPro,'#39'-'#39',PedLb2.DesLb2) as DscPro From PedLb2'
      'Where PedLb2.CodEmp = :CodEmp'
      '     and PedLb2.DteRes = :DteRes'
      '     and PedLb2.NumRes = :NumRes'
      '     and PedLb2.UltQts > 0'
      'Order by PedLb2.CodEmp,PedLb2.DteRes,PedLb2.NumRes,PedLb2.SeqLb2')
    ValidateWithMask = True
    Left = 6
    Top = 296
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
    object PedLb2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 53
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedLb2ULTQTS: TFloatField
      DisplayLabel = '  Qtd. Faturada'
      DisplayWidth = 10
      FieldName = 'ULTQTS'
    end
    object PedLb2VLQLB2: TFloatField
      DisplayLabel = '       Unitário'
      DisplayWidth = 10
      FieldName = 'VLQLB2'
    end
    object PedLb2ICMLB2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 5
      FieldName = 'ICMLB2'
    end
    object PedLb2TOTGE2: TFloatField
      DisplayLabel = '     Total Item'
      DisplayWidth = 10
      FieldName = 'TOTGE2'
    end
    object PedLb2TOTREN: TFloatField
      DisplayLabel = '   % Markup'
      DisplayWidth = 10
      FieldName = 'TOTREN'
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
    object PedLb2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object PedLb2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Visible = False
    end
    object PedLb2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedLb2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedLb2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedLb2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedLb2DESLB2: TStringField
      FieldName = 'DESLB2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedLb2OBSLB2: TStringField
      FieldName = 'OBSLB2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedLb2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedLb2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedLb2LIQLB2: TFloatField
      FieldName = 'LIQLB2'
      Visible = False
    end
    object PedLb2BRTLB2: TFloatField
      FieldName = 'BRTLB2'
      Visible = False
    end
    object PedLb2QTPLB2: TFloatField
      FieldName = 'QTPLB2'
      Visible = False
    end
    object PedLb2QTSLB2: TFloatField
      FieldName = 'QTSLB2'
      Visible = False
    end
    object PedLb2SLDLB2: TFloatField
      FieldName = 'SLDLB2'
      Visible = False
    end
    object PedLb2QTDLB2: TFloatField
      FieldName = 'QTDLB2'
      Visible = False
    end
    object PedLb2VLULB2: TFloatField
      FieldName = 'VLULB2'
      Visible = False
    end
    object PedLb2VCHLB2: TFloatField
      FieldName = 'VCHLB2'
      Visible = False
    end
    object PedLb2VRELB2: TFloatField
      FieldName = 'VRELB2'
      Visible = False
    end
    object PedLb2VCPLB2: TFloatField
      FieldName = 'VCPLB2'
      Visible = False
    end
    object PedLb2VPRLB2: TFloatField
      FieldName = 'VPRLB2'
      Visible = False
    end
    object PedLb2VCSLB2: TFloatField
      FieldName = 'VCSLB2'
      Visible = False
    end
    object PedLb2DSCLB2: TFloatField
      FieldName = 'DSCLB2'
      Visible = False
    end
    object PedLb2VDSLB2: TFloatField
      FieldName = 'VDSLB2'
      Visible = False
    end
    object PedLb2DSPLB2: TFloatField
      FieldName = 'DSPLB2'
      Visible = False
    end
    object PedLb2VDPLB2: TFloatField
      FieldName = 'VDPLB2'
      Visible = False
    end
    object PedLb2DSRLB2: TFloatField
      FieldName = 'DSRLB2'
      Visible = False
    end
    object PedLb2VDRLB2: TFloatField
      FieldName = 'VDRLB2'
      Visible = False
    end
    object PedLb2PACLB2: TFloatField
      FieldName = 'PACLB2'
      Visible = False
    end
    object PedLb2VACLB2: TFloatField
      FieldName = 'VACLB2'
      Visible = False
    end
    object PedLb2DSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Visible = False
    end
    object PedLb2VDSCOM: TFloatField
      FieldName = 'VDSCOM'
      Visible = False
    end
    object PedLb2PCOLB2: TFloatField
      FieldName = 'PCOLB2'
      Visible = False
    end
    object PedLb2IPILB2: TFloatField
      FieldName = 'IPILB2'
      Visible = False
    end
    object PedLb2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Visible = False
    end
    object PedLb2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
    end
    object PedLb2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object PedLb2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object PedLb2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object PedLb2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object PedLb2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object PedLb2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object PedLb2TOTLB2: TFloatField
      FieldName = 'TOTLB2'
      Visible = False
    end
    object PedLb2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object PedLb2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object PedLb2BASCOM: TFloatField
      FieldName = 'BASCOM'
      Visible = False
    end
    object PedLb2TOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object PedLb2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object PedLb2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
    end
    object PedLb2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
    end
    object PedLb2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object PedLb2TOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedLb2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedLb2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedLb2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object PedLb2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object PedLb2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object PedLb2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedLb2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object PedLb2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object PedLb2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object PedLb2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object PedLb2FLGSEQ: TStringField
      FieldName = 'FLGSEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedLb2FLGRES: TStringField
      FieldName = 'FLGRES'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2FLGREQ: TStringField
      FieldName = 'FLGREQ'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedLb2CODVWA: TStringField
      FieldName = 'CODVWA'
      Visible = False
      FixedChar = True
      Size = 14
    end
    object PedLb2NRORE2: TIntegerField
      FieldName = 'NRORE2'
      Visible = False
    end
    object PedLb2REFLB2: TStringField
      FieldName = 'REFLB2'
      Visible = False
      FixedChar = True
    end
    object PedLb2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object DsLb2: TwwDataSource
    DataSet = PedLb2
    Left = 34
    Top = 296
  end
  object DsLib: TwwDataSource
    DataSet = PedLib
    Left = 34
    Top = 268
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 67
    Top = 268
  end
end
