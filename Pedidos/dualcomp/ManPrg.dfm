inherited fmManPrg: TfmManPrg
  Left = 0
  Caption = 'Pedidos Aguardando Periodo de Programação'
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
    Width = 55
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bIncluir: TSpeedButton
    Left = 286
    Top = 452
    Width = 248
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
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF006000006D00006E00006600065905FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF005B00005B00008400008400008400008600008000036A03
      7FA479B2928FB2928FB2928FB2928FB2928FB2928FB2928FB2928FB2928FB292
      8FB2928FB2928FB2928FFF00FF005A00008200008000008000008100007E0000
      8000008200008200016E02B4D1B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2928FFF00FF005A000081001C971C0487
      04007D00209A21058806007E00008200007B00268125FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2928F036C08018802
      0184014FB652A4D9A30581054CB04D9DD79E058405007F00008300016F019C8B
      75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2
      928F098913099C0F0B9D130192055AC2627DCA7E00740052B5527FCA80007D00
      008300007400656C419E64589E64589E64589E64589E64589E64589E64589E64
      58FFFFFFFFFFFFB2928F119E2314AF2214B02420B42F6CCC75C2EAC50F95115E
      BB5FD8EFD80487040081000070008BB1839E64589E64589E64589E64589E6458
      9E64589E64589E6458FFFFFAFFFFFAB2928F18AD3720C1371AC23474DD87FFFF
      FFB6E6BB64C76BFFFFFFD0EBD00282020082000073019A9C7EFFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAB2928FFF00FF2DD34E
      2EDA5347DD6890E7A142C55320AD2C76CA79289F28007E000082000E65079E64
      589E64589E64589E64589E64589E64589E64589E64589E6458FFFFF8FFFFF8B2
      928FFF00FF2ACF5744F47436E66222CF4118BB2E0FA61C008E03007F00008200
      00730082A7759E64589E64589E64589E64589E64589E64589E64589E64589E64
      58FFFBF0FFFBF0B2928FFF00FFFF00FF34DD653CE9672DD44C1FBD3411A91E06
      930A008300007700467B37FFFAEDFFFAEDFFFAEDFFFAEDFFFAEDFFFAEDFFFAED
      FFFAEDFFFAEDFFFAEDFFFAEDFFFAEDB2928FFF00FFFF00FFFF00FF23C44F24C6
      4718B7300AA419048E0D0F6F0C5F6B3E9E64589E64589E64589E64589E64589E
      64589E64589E64589E64589E64589E6458FFFBEDFFFBEDB2928FFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF7E9C74BCD4AFD7BFAF9E64589E64589E64589E64
      589E64589E64589E64589E64589E64589E64589E64589E6458FFF8E7FFF8E7B2
      928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFFEFE3FFEFE3FFEFE3
      FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEFE3FFEF
      E3FFEFE3FFEFE3B2928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFE
      EBDAFEEBDA9E64589E64589E64589E64589E64589E64589E64589E64589E6458
      9E64589E64589E6458FFF7E3FFF7E3B2928FFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFB2928FFFEBD9FFEBD99E64589E64589E64589E64589E64589E64589E
      64589E64589E64589E64589E64589E6458F2E2CEF2E2CEB2928FFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFB2928FFCE5D0FEE6D1FCE3CFFCE3CFFCE3CFFCE3
      CFFCE3CFFCE3CFFCE3CFFCE6D0EBD3C0CCB7A6BDAA99B19F90A79789AB9C8CB2
      928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFCE2CCFFE7D0FFE7D0
      FFE7D0FFE7D0FFE7D0FFE7D0FFE7D0FFE7D0FFE9D1F4DECAC2B6AAA79C91988E
      84ACA095BCA59CB2928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFC
      E1C9FFE5CCFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBFFE6CE
      FEFAF7FCFEFFFFFEF6EAD3C7B2928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFB2928FFCE0C6FFE3CAFFE2C9FFE2C9FFE2C9FFE2C9FFE2C9FFE2C9FF
      E2C9FFE2C9FCDEC4EFE6DEFFFFFEEDD9CCB2928FFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFB2928FFCDEC4FFE2C6FFE1C5FFE1C5FFE1C5FFE1
      C5FFE1C5FFE1C5FFE1C5FFE3C7EED0B6E0D5CAF3E3D8B2928FFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFCDCC1FFE0C4FFDEC2
      FFDEC2FFDEC2FFDEC2FFDEC2FFDEC2FFDEC2FFE2C5E9CCB1DDCBBFB2928FFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2928FFF
      E0C2FFE5C5FFE3C4FFE3C4FFE3C4FFE3C4FFE3C4FFE3C4FFE3C4FFE6C6EACEB6
      B2928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFB2928FB2928FB2928FB2928FB2928FB2928FB2928FB2928FB2928FB2
      928FB2928FB2928FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = bIncluirClick
  end
  object bRetornar: TSpeedButton
    Left = 536
    Top = 452
    Width = 248
    Height = 28
    Hint = 'Retornar Pedido ao Vendedor'
    Caption = 'F6-Retornar ao Vendedor'
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
      FFFF00FFFF00FFFF00FFFF00FF1C90C61C90C6007FBF007FBF007FBFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C90C67ACEEE22A6DE1C90C61C90
      C61C90C61C90C6007FBF031823020F16031823FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C90C6D3F0FB
      55CCFE55CCFE55CCFE4CC6F838B7ED1C90C61F556D00496E07639206476A0133
      4A01334A00628F007FBFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF1C90C688CEE67BD9FE55CCFE55CCFE55CCFE55CCFE55CCFE5EA6C4016DA1
      0179B4035A843F3C465349501F556D1C90C6007FBF007FBF007FBF0081BFFF00
      FFFF00FFFF00FFFF00FF1C90C61C90C6BAEBFF55CCFE55CCFE55CCFE55CCFE55
      CCFE55CCFE2280A6016DA1404957AF6A689E5C5B55474D2D5A6D1C90C61C90C6
      1C90C6007FBFFF00FFFF00FFFF00FFFF00FF1C90C61C90C6DEF3FB58D0FE58D0
      FE58D0FE58D0FE58D0FE58D0FE509CB1404957D98F8BC68787AF72729E5C5B59
      43462B4C5758D0FE38B6EE1C90C6007FBFFF00FFFF00FFFF00FF1C90C61C90C6
      88CEE68BE2FE5DD7FE5DD7FE5DD7FE5DD7FE5DD7FE5DD7FE908E90E39C9ADD9C
      9CC18383AF73739C5D5C6046483350573DBCEE1C90C6007FBFFF00FFFF00FFFF
      00FF1C90C63FB2E21C90C6C0F2FF63DCFE63DCFE63DCFE63DCFE63DCFE63DCFE
      63DCFE8A8C8FE09999DD9C9CC18383AF73739E5E5D634747284D576ED7F61C90
      C6007FBFFF00FFFF00FF1C90C641B5E91C90C6CBEDF768E2FF68E2FF68E2FF68
      E2FF68E2FF68E2FF68E2FF68E2FF8F9290DD9797DD9C9CC18383AF73739E5E5D
      604648375B621C90C6007FBFFF00FFFF00FF1C90C642B7EE1C90C676C5E2A0F0
      FF6DE9FF6DE9FF6DE9FF6DE9FF6DE9FF6DE9FF6DE9FF6DE9FF8F9290DA9696DE
      9D9DC28484AF73739E5F5E6046484E67651C90C6FF00FFFF00FF1C90C644BAF4
      CFC6BD1C90C6EBFCFF7AEFFF73EEFF73EEFF73EEFF73EEFF73EEFF73EEFF73EE
      FF73EEFF969792D89596DE9D9DC28484B576759E58562D5A6D346B7D035A84FF
      00FF1C90C6996B67FAE9E11C90C645ADD7EDFEFFC9FAFFB8F8FFB0F8FF98F6FF
      81F4FF7AF3FF7AF3FF7AF3FF7AF3FFA19893D89596E6A09FC77D7A346B7D0089
      CA1181AC12465EFF00FF1C90C6B5928CFFFEF4FFF0E31C90C61C90C61C90C61C
      90C61C90C666BDDED5EEF7BCFAFF91F4FF91F4FF91F4FF91F4FFBC9E95C58483
      357A9900A7EA0096CE0335AC00059A001D301C90C6CFC6BDFFFFFEFFF4EDFFF0
      E3FFEEDDFFEDD3FFE7CBFFE6C21C90C61C90C688CEE6E2FCFFB1F6FFACF6FFAC
      F6FFACF6FF599CB700A7EA00B8EF0040BC0116B400039E0D8CC6956763F2EBEA
      FFFFFFFFFBF6FFF4EDFFF0E3FFEEDDFFEAD4FFE5CCFFE2C5FFDEBC1C90C61C90
      C6E6F6FBDEFBFFC6F7FFBFF6FFBFF6FF1F93B60040BC0119E60119E600039E1C
      90C6956763DEC2BDFAE9E1FEFBFBFFFFFFFFFEF4FFF3E6FFEEDDFFEAD4FFE5CC
      FFE2C5FFDEBFFFDDB61C90C61C90C69AD5EAADDEEFADDEEFDDF2F80007A10003
      A000029EF3FFFF1C90C61C90C66BE6FF6BE6FFA08F83C7A7A4E9CFC9FFEFE7FF
      F8EDFFF6E5FFEEDAFFE7CFFFE2C5FFDEBFFEDAB6FFD8B01C90C61C90C61C90C6
      1C90C61C90C61C90C61C90C61C90C61C90C61C90C67BF0FF74F0FF74F0FF74F0
      FF81A6A3A3958FBC9E95E2C0B1FBDDCAFFEDD8FFEED7FFE7CBFFDEBFFFDAB8FF
      D8B0FFD5ABFFBC8C1C90C6FF00FFFF00FFFF00FFFF00FFFF00FF1C90C697F3FB
      7DFAFF7DFAFF7DFAFF7DFAFF7DFAFF7DFAFF83FAFF8C9892B49080E1B69EF3D3
      BBFFE3C9FFE3C5FFDEBCFFDDB6E5B08C1C90C6FF00FFFF00FFFF00FFFF00FFFF
      00FF1C90C65EBDDE86FBFF7EFBFF7EFBFF7EFBFF7EFBFF7EFBFF22ACD71C90C6
      1C90C61C90C6C48769D49977E5B08CF2C7A6FFD5ABD99A751C90C6FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF1C90C665CCE6A9F4FBB4FCFF9CFCFF9CFCFF89
      F3FB1C90C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD49977D99A75
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C90C61C90C61C90
      C61C90C61C90C61C90C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = bRetornarClick
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 2
    Top = 289
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
    TabOrder = 6
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 162
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
    Height = 228
  end
  object grRes: ThGrid
    Tag = 1
    Left = 4
    Top = 33
    Width = 778
    Height = 222
    Selected.Strings = (
      'DTFRES'#9'10'#9'Programado Para '
      'NUMRES'#9'10'#9'No. Pedido'
      'CODVEN'#9'5'#9'Vend'
      'CODPFA'#9'16'#9'Padrão Fat.'
      'NOMCLI'#9'46'#9'Cliente'
      'TOTGER'#9'12'#9'       Total Pedido'#9'F')
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
    Top = 259
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
  object pnDteRes: TPanel
    Left = 434
    Top = 259
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
    TabOrder = 4
  end
  object grRe2: ThGrid
    Tag = 1
    Left = 4
    Top = 291
    Width = 777
    Height = 156
    Selected.Strings = (
      'DSCPRO'#9'14'#9'Item'
      'DESRE2'#9'48'#9' '
      'QTPRE2'#9'10'#9'    Quantidade'
      'VLQRE2'#9'10'#9'      Unitário'
      'ICMRE2'#9'4'#9'    ICMS'
      'TOTRE2'#9'10'#9'            Total Item'#9'F')
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
    TabOrder = 8
  end
  object PedRes: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.CodEmp,'
      '           PedRes.DteRes,'
      '           PedRes.NumRes,'
      '           PedRes.DtfRes,'
      '           PedRes.CodVen,'
      '           PedRes.CodPfa,'
      '           PedRes.CodCli,'
      '           PedRes.TotGer,'
      '           PedRes.SitRes,'
      '           FinCli.NomCli'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      'Where PedRes.SitRes = '#39'Aguardando Periodo de Programacao'#39
      'Order by PedRes.DtfRes,PedRes.NumRes')
    UpdateObject = UpRes
    ValidateWithMask = True
    Left = 5
    Top = 198
    object PedResDTFRES: TDateTimeField
      DisplayLabel = 'Programado Para '
      DisplayWidth = 10
      FieldName = 'DTFRES'
      EditMask = '!99/99/9999;1;_'
    end
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'No. Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
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
      DisplayWidth = 46
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = '       Total Pedido'
      DisplayWidth = 12
      FieldName = 'TOTGER'
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
    Top = 198
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 226
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
      
        '  (CODEMP, DTERES, NUMRES, DTFRES, CODVEN, CODPFA, CODCLI, TOTGE' +
        'R, '
      'SITRES)'
      'values'
      
        '  (:CODEMP, :DTERES, :NUMRES, :DTFRES, :CODVEN, :CODPFA, :CODCLI' +
        ', '
      ':TOTGER, '
      '   :SITRES)')
    DeleteSQL.Strings = (
      'delete from PedRes'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTERES = :OLD_DTERES and'
      '  NUMRES = :OLD_NUMRES')
    Left = 5
    Top = 226
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
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.IcmRe2,'
      '           PedRe2.TotRe2,'
      '           PedRe2.FlgVal,'
      '           PedRe2.FlgPac,'
      '           PedRe2.FlgLib,'
      '           PedRe2.NroRe2,'
      
        '           CodGru || _UNICODE_FSS '#39'.'#39' || CodSub || _UNICODE_FSS ' +
        #39'.'#39' || CodPro as DscPro'
      'From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
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
      end>
    object PedRe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldName = 'DSCPRO'
      Size = 14
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 48
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = '    Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '      Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedRe2ICMRE2: TFloatField
      DisplayLabel = '    ICMS'
      DisplayWidth = 4
      FieldName = 'ICMRE2'
      Precision = 2
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = '            Total Item'
      DisplayWidth = 10
      FieldName = 'TOTRE2'
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
  end
  object DsRe2: TwwDataSource
    DataSet = PedRe2
    Left = 33
    Top = 418
  end
end
