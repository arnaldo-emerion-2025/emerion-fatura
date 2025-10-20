inherited fmManSep: TfmManSep
  Left = 0
  Caption = 'Aguardando Separacao de Estoque'
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
  object Label3: TLabel
    Left = 5
    Top = 247
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
    Left = 138
    Top = 255
    Width = 8
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bExcluir: TSpeedButton
    Left = 553
    Top = 440
    Width = 231
    Height = 42
    Hint = 'Retornar Pedido ao Vendedor'
    Caption = 'F6-Retornar ao Vendedor'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      9E0D0000424D9E0D000000000000360000002800000022000000210000000100
      180000000000680D0000D40E0000D40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0B6C4C5A6B3B4A6B3
      B4A6B3B4A6B3B4A6B3B4A6B3B4A6B3B4A6B3B4BCCBCCC0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0A9B7B8
      5D73790C34430C34430C34430C34430C34430C34430C34430C34437D8B8EB6C4
      C5C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD06C7475204A5F56C8FF56C8FF56C8FF56C8FF56C8FF5CC8FF1C7899
      1C7899030F139CA8A9C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D07A84845B62625B62625B626233373B192332445E79445E7952729290C8FF8B
      C1F64B5E79196985196985030D109CA8A9A0ACAAB2C0C0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD06168693F45743F44883F44883F44883F448B3F448C3F44883F44
      883C447F35546C51C3F95E83A76FC8FF33C8FF05181F353939646B65828B86AC
      B9B8C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD02F33335C618F6E8DD0608DD0608DD0608DD0
      608DD048689C14152B10112305181F35C8FF90C8FF90C8FF1233420105060000
      005459547077707A827CA4B0AEC0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD02F333363688F7198D060
      98D06098D07398D05C668C242C4E5861BF474D9B05181F35C8FF90C8FF90C8FF
      37BFEC2CB9EB08222B080B0C4C524E6D746D737A7499A4A1BDCCCDC0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD02F33
      3363688F7198D06098D06098D07198D07898D06095D05B80C63F44890414192C
      A5D27EC8FF90C8FF90C8FF3BC8FF08252F2A54741730423C4343666D66707770
      8C9692B6C4C4C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD02F333363688F7198D06098D06098D06098D06098D0648DD05A61
      AC1E20411A1C39020C0F30C8FF6288AE8DC4F93BC8FF08252F48719B3E75A31A
      3A52313C3F5E645E707770848D88AEBBBBC0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0747D7E6A72721A1C1C63688F7198D06398D06398D06098D0
      6098D06898D07391D06079D0545BB6020C0F30C8FF00000087BBEF3BC8FF0825
      2F274E763F76A7376F9A20466329373F5358537077707D8680A5B1AFC0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0575E5E3A57733757770D151D63688F7198D063
      98D06398D06098D06098D06098D06098D0608FD0545BB6020C0F30C8FF537393
      8CC2F83BC8FF08252F0024484276AC4178A72F6790255171233743474B477077
      7078807A9AA5A2C0CFD0C0CFD0C0CFD00000C0CFD00B0C0C5484B56097CF1725
      3363688F7198D06098D06098D06098D06C98D06276A12C4660608FD0545BB600
      03040D39492939492939491139491D466121537B1D50803D72A63E75A32F6790
      295A7D213A4C393C39707770747B758E9894C0CFD0C0CFD00000C0CFD00B0C0C
      5484B56097CF17253363688F7198D06098D06098D06098D07198D063688F1725
      33608FD0545BB605070A507EAE79A8D62C5B7E2756792D638B2F67900E416E3C
      70A5447BAB2F67904078A737689905213D292B29707770717871808984C0CFD0
      0000C0CFD00B0C0C5484B56097CF1F31435B62868088BA7F88BA7F88BA7F88BA
      8088BA7F86B87D84B57780BA4C53A50F18216097CF90C8FF356D962F67902F67
      902F67902E658F1245731E5380447BAC33679A1549761F45621D1F1E78807A81
      8984BDCCCDC0CFD00000C0CFD00B0C0C5484B56097CF6097CF2D476216233116
      23311623311623311623311623311623311623311F32446097CF6097CF90C8FF
      356D962F67902F67902F67902F6790114471295C8F2A5D8F1A4F7B2F67902046
      632F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD00B0C0C5484B56097CF6097
      CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF63
      99D09ABDE0B9DCFF7FA2BD386D952F67902F67902F6790114471144577295E8C
      2F67902F67902046632F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD00B0C0C
      5484B56097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF6097CF6097
      CF6EA0D3AFCBE7AEC9E396B2AF96B2AF96B2AF97B3C442759A2F67902F679011
      4471366A9E477EAF2F67902F67902046632F3333C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD00B0C0C5484B56097CF6097CF6097CF6097CF6097CF6097CF6097CF
      6097CF7FABD8C4D8EDB1C1E55E5EC1595AAF1126232F67602F6760729893A8BF
      CA4F7EA12F6790114471366A9E477EAF2F67902F67902046632F3333C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD00B0C0C5484B56097CF6097CF6097CF6097CF60
      97CF6097CF94B9DED9E6F3A8B1E03C3CB33E3FAF4044BE00009A00007A0B1816
      0B18160B181633B1D3A9D9EB608BAA114471366A9E477EAF2F67902F67902046
      632F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD00B0C0C5484B56097CF6097
      CF6298CF6499D0B0CCE7ECF4F99195981B1B502E31B4555CC9575EC9545AC700
      009200009F00008F00000C0097C200C3F814ABFFA4D5F6587999396CA0477EAF
      2F67902F67902046632F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD00B0C0C
      5484B574A4D579A7D6B9CDE0D6D9DCAEEDEDAFFFFF748F8F23264D6067CF6067
      CF6067CF545AC900009F0000900000A00000A000001300A2CF00A3FF0097FF86
      BEE5A1BBD65487B32F67902F67902046632F3333C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD00B0C0C7C9EC1ADC0D2B4C2D038546F113B475DB0B0AFFFFF748F8F
      23264D6067CF6067CF6067CF545AC900009F0000900000A00000A000001300A2
      CF00A3FF0097FF00385F6D767D96B2C75180A22F67902046632F3333C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0575E5E8B8C8C7289A01A4570000E1D3C9F9F7B
      FFFF8DDEDD4E6B6A23264D6067CF7076D4A2A6E3969ADF383BC4000096000099
      00009F00001300A2CF00B2FF009DFF0060A20F3D5D617D9299B4C8658FAD2046
      632F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0747D7E7072721C2C
      3C00676E3CD4D47BFFFF5FB2AF1A3A36444557B7BAE9BABDEEC1C5FFBBBFFF8B
      92FC4F53D400009800009700001200A2CF00C8FF00A6FF0097FF00416F173348
      89A9C0DCE5EC6F808D2F3333C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD023262600000000AFAF3CFFFF55C4C13E7E78285852324A476F7086AAAF
      FF9097FF9097FF9097FF9097FF6267E106069F00001300A2CF00C8FF00A6FF00
      97FF00416F5F676E8D979F505050606363929D9EC0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0232626009C9C00F0F03CFFFF44A9A5437A73689F9D
      7BAFB4597983373A629097FF9097FF9097FF9097FF1A1B2E01011E008FBA00C1
      F600C8FF00A6FF0097FF00416F1717175E64649CA9A9A7B4B5C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0B7C5C638474704ABAB3EF7F779
      FAFA64B5B2619998A6DBDFC4F2F288A9AB1F233D757BD00B10190B1019000000
      00B5E200B9EB00DFEB00E8EB00E6EB00E5EB086D6F626A6ABAC8C9C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0575E5E568E8E84E7E7B1FFFFB9ECEEAFE3E78EAFAF000B17012B540E1F2F31
      68945A86A735353503C0C01D36362C2C2C2424240A0A0A191B1B7D8788C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD070797A577D7D9BD3D3CFFFFFB4DEDE5D787D0018
      30164371769BBF799BBEA7A7A7A7A7A70F0F0FA4A7A9DDDFE2C1C2C238383878
      8182C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD087919263747497BABA
      819F9F252D357992AB7B8FA48585858383835B62625B62621B1C1CB3B7BAE8F0
      F6CCCED03C3C3C788182C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD09AA6A66572726C7878898989646464676969747D7E798283C0CFD0C0CFD0
      858E8F4F505062646749494A636A6AA3B0B1C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0A9B7B87178795A5D5E8D989996A2A3C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD097A2A3919C9D8E999AB0BDBEC0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0B6C4C5AEBCBDC0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      0000}
    ParentFont = False
    OnClick = bExcluirClick
  end
  object bImprimir: TSpeedButton
    Left = 321
    Top = 440
    Width = 231
    Height = 42
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
  object bIncluir: TSpeedButton
    Left = 89
    Top = 440
    Width = 231
    Height = 42
    Hint = 'Realizar nova Liberação para o Pedido'
    Caption = 'F4-Liberar para Faturar'
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
  object dbRe2: TdxDBGraphicEdit
    Left = 0
    Top = 271
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
    TabOrder = 4
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 168
  end
  object dbRes: TdxDBGraphicEdit
    Left = 0
    Top = 31
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
    TabOrder = 3
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 211
  end
  object grRes: ThGrid
    Tag = 1
    Left = 2
    Top = 33
    Width = 780
    Height = 205
    Selected.Strings = (
      'NUMRES'#9'7'#9'No. Pedido'
      'NOMPFA'#9'32'#9'Padrão de Faturamento'
      'CLIENTE'#9'41'#9'Cliente'
      'TOTGER'#9'12'#9'  Total Pedido'
      'SLDGER'#9'10'#9'            Saldo')
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
  object Panel1: TPanel
    Left = 387
    Top = 3
    Width = 190
    Height = 28
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
    TabOrder = 1
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
  object pnDteRes: TPanel
    Left = 626
    Top = 242
    Width = 158
    Height = 29
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Emitido Em '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object pnImpresso: TPanel
    Left = 467
    Top = 242
    Width = 158
    Height = 29
    BevelOuter = bvNone
    Caption = '  Impresso'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object grRe2: ThGrid
    Tag = 1
    Left = 2
    Top = 273
    Width = 780
    Height = 162
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'#9'F'
      'DESRE2'#9'75'#9' '#9'F'
      'SLDRE2'#9'10'#9'              Quantidade'#9'F')
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
    TabOrder = 6
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
    TabOrder = 7
    OnClick = batualizarClick
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
  object pnApeTra: TPanel
    Left = 147
    Top = 242
    Width = 319
    Height = 29
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object pnQtdReg: TPanel
    Left = 196
    Top = 3
    Width = 190
    Height = 28
    BevelOuter = bvNone
    Caption = ' 0 Pedido(s)'
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
      '           PedRes.UfeRes,'
      '           PedRes.HreRes,'
      '           PedRes.DtfRes,'
      '           PedRes.CodPfa,'
      '           PedRes.TipPfa,'
      '           PedRes.CodVen,'
      '           PedRes.CodAtd,'
      '           PedRes.CodCli,'
      '           PedRes.CodTra,'
      '           PedRes.CodFil,'
      '           PedRes.LanEst,'
      '           PedRes.QtiRes,'
      '           PedRes.QtpRes,'
      '           PedRes.QtdImp,'
      '           PedRes.FlgSld,'
      '           PedRes.TotRes,'
      '           PedRes.TotIpi,'
      '           PedRes.TotGer,'
      '           PedRes.SldGer,'
      '           PedRes.FlgImp,'
      '           PedRes.PedAnt,'
      '           PedRes.SitRes,'
      '           FinTra.ApeTra,'
      '           EstPfa.DsrPfa,'
      '           FinCli.NomCli'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      
        '                      LEFT JOIN FinTra ON (PedRes.CodTra = FinTr' +
        'a.CodTra) '
      
        '                      LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPf' +
        'a.CodPfa'
      
        '                                                  AND  PedRes.Ti' +
        'pPfa = EstPfa.TipPfa)'
      'Where PedRes.SitRes = '#39'Aguardando Separacao de Estoque'#39' '
      'Order by PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 3
    Top = 181
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 7
      FieldName = 'NUMRES'
    end
    object PedResNOMPFA: TStringField
      DisplayLabel = 'Padrão de Faturamento'
      DisplayWidth = 32
      FieldKind = fkCalculated
      FieldName = 'NOMPFA'
      OnGetText = PedResNOMPFAGetText
      Size = 40
      Calculated = True
    end
    object PedResCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 41
      FieldKind = fkCalculated
      FieldName = 'CLIENTE'
      OnGetText = PedResCLIENTEGetText
      Size = 100
      Calculated = True
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = '  Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDGER: TFloatField
      DisplayLabel = '            Saldo'
      DisplayWidth = 10
      FieldName = 'SLDGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedResDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedResTOTRES: TFloatField
      FieldName = 'TOTRES'
      Visible = False
    end
    object PedResTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
    end
    object PedResAPETRA: TStringField
      FieldName = 'APETRA'
      Visible = False
      FixedChar = True
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Visible = False
    end
    object PedResCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Visible = False
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResQTIRES: TIntegerField
      FieldName = 'QTIRES'
      Visible = False
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
      Visible = False
    end
    object PedResFLGSLD: TStringField
      FieldName = 'FLGSLD'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResQTDIMP: TIntegerField
      FieldName = 'QTDIMP'
      Visible = False
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTFRES: TDateTimeField
      FieldName = 'DTFRES'
      Visible = False
    end
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResUFERES: TStringField
      FieldName = 'UFERES'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedResCODATD: TIntegerField
      FieldName = 'CODATD'
      Visible = False
    end
    object PedResCODPFA: TStringField
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedResDSRPFA: TStringField
      FieldName = 'DSRPFA'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedResNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
  end
  object DsRes: TwwDataSource
    DataSet = PedRes
    OnDataChange = DsResDataChange
    Left = 31
    Top = 181
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 181
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
    OpcoesPreview.CaptionPreview = 'Aguardando Separacao de Estoque'
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
    TitulodoRelatorio = 'Aguardando Separacao de Estoque'
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
    Left = 31
    Top = 209
  end
  object UpRes: TUpdateSQL
    ModifySQL.Strings = (
      'update PedRes'
      'set'
      '  UFERES = :UFERES,'
      '  HRERES = :HRERES,'
      '  DTFRES = :DTFRES,'
      '  CODVEN = :CODVEN,'
      '  CODATD = :CODATD,'
      '  CODCLI = :CODCLI,'
      '  CODTRA = :CODTRA,'
      '  CODFIL = :CODFIL,'
      '  LANEST = :LANEST,'
      '  QTIRES = :QTIRES,'
      '  QTPRES = :QTPRES,'
      '  QTDIMP = :QTDIMP,'
      '  FLGSLD = :FLGSLD,'
      '  TOTRES = :TOTRES,'
      '  TOTIPI = :TOTIPI,'
      '  TOTGER = :TOTGER,'
      '  SLDGER = :SLDGER,'
      '  FLGIMP = :FLGIMP,'
      '  PEDANT = :PEDANT,'
      '  SITRES = :SITRES'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    InsertSQL.Strings = (
      'insert into PedRes'
      '  (CODEMP, DTERES, NUMRES, UFERES, HRERES, DTFRES, CODVEN, '
      'CODATD, CODCLI, '
      
        '   CODTRA, CODFIL, LANEST, QTIRES, QTPRES, QTDIMP, FLGSLD, TOTRE' +
        'S, '
      'TOTIPI, '
      '   TOTGER, SLDGER, FLGIMP, PEDANT, SITRES)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :UFERES, :HRERES, :DTFRES, :CODVEN' +
        ', '
      ':CODATD, '
      
        '   :CODCLI, :CODTRA, :CODFIL, :LANEST, :QTIRES, :QTPRES, :QTDIMP' +
        ', :FLGSLD, '
      
        '   :TOTRES, :TOTIPI, :TOTGER, :SLDGER, :FLGIMP, :PEDANT, :SITRES' +
        ')')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 3
    Top = 209
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
      '           PedRe2.NroRe2,'
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.SldRe2,'
      
        '           PedRe2.CodGru || _UNICODE_FSS '#39'.'#39' || PedRe2.CodSub ||' +
        ' _UNICODE_FSS '#39'.'#39' || PedRe2.CodPro as DscPro'
      'From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 3
    Top = 406
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
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 75
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2SLDRE2: TFloatField
      DisplayLabel = '              Quantidade'
      DisplayWidth = 10
      FieldName = 'SLDRE2'
      DisplayFormat = '###,###,##0'
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = '              Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      Visible = False
      DisplayFormat = '###,###,##0'
      Precision = 4
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
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    Left = 31
    Top = 406
  end
  object quSQL1: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 91
    Top = 181
  end
end
