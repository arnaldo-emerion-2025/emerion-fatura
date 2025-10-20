inherited fmManLnRMA_NFE: TfmManLnRMA_NFE
  Left = 500
  Top = 162
  Caption = 'Notas fiscais (RMA) - Envio da NF-e à SEFAZ '
  ClientHeight = 483
  ClientWidth = 787
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 787
    Height = 483
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label2: TLabel
    Left = 4
    Top = 11
    Width = 115
    Height = 14
    Caption = 'Notas selecionadas'
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
  object benviar: TSpeedButton
    Left = 552
    Top = 446
    Width = 232
    Height = 34
    Caption = 'Enviar nota fiscal'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000F00A0000F00A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000756F5986847D696867626262848484000000000000000000
      00000000000000000000000000000000000000000000E9FF00D7FF00DDFF00CB
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FF003EFF8A93A4CDC7C2888887636363000000000000000000
      00000000000000000000000000000000000000E0FF0CC8F9A4EDFC25CCF500C0
      F600D0FF00EDFF00000000000000000000000000000000000000000000000000
      00000000FF0545FF2A76FF4BADFFE0E6E4CFCBC7686868000000000000000000
      00000000000000000000000000000000E5FF00BEF5D6FDFEF2FFFFFAFFFFD8FD
      FF65DCF800C4F900CEFF00DAFF00FDFF00000000000000000000000000000000
      00FF0446FF2E79FF56B4FF68D5FF5BBDFFAEAEAE8C8A84000000000000000000
      00000000000000000000000000000000C9FF84E6F9EAFFFFE0FFFFE2FFFFE7FF
      FFF2FFFFFBFFFFA5EEFC30CEF600BDF500D2FF00E9FF0000000000000039FF06
      42FF2F7BFF59B7FF6CD6FF5FC0FF3B8FFF1853FC857F72000000000000000000
      00000000000000000000000000DDFF1EC9F6EDFFFFDCFFFFABE1EB9ED7E4CBF5
      F9E7FFFFE6FFFFEDFFFFF9FFFFE0FFFF70DFF800C6F922D5FFC2E2E6385CEF30
      7AFC5AB9FF6CD6FF5EBFFF3E8EFF0E4DFF0033FF000000000000000000000000
      00000000000000000000CEFF00B4EDB9F8FCD8FFFFD9FFFF7AC0D571B8CF73B9
      D085C4D7C4E7EFEAFDFEF5FFFFF5FFFFF8FFFFFFFFFFDBF4F995938A5B72974A
      ABF46DD9FF5DBEFF3D8DFF0E4AFF002DFF000000000000000000000000000000
      00000000000000000000C5FF36CBF0E0FFFFCEFFFFD0FFFFD2FFFFAEE5EE9ED2
      E1BDDAE397A7AE7C858D7D858E7F868E7E8489AAB0B1E2E8E88E8E8DE2D9D279
      A4B54DB1F83A8BFF306AFFE0EBFF000000000000000000000000000000000000
      00000000000000FFFF00AAE8B3F8FDD0FFFFCBFFFFCCFFFFCFFFFFDEFFFFD1DC
      DD798086B2A995E4C999EFCB8FF0CA8FF0D0A1BDB4A44D535A909092EEEDECEA
      E1D84B70AA3869F2A8E2FC12C3F900D2FF00E8FF000000000000000000000000
      00000000000000C6FF23C0EAD9FFFFC7FFFFADECF2CAFFFFD9FFFFD2DFE08184
      87E4C694F6D090EFCD93ECCB94EBCE9BEED5A6EFC88DEECF9C64676D9A9B9C94
      94939F9A8CE8EFF7FBFFFFF4FFFF8FE6F91CCCFA00D4FF000000000000000000
      00000000000000BEFD8BEBF8CAFFFF99E1EA63B5CE6DBBD1C7E5EB838A8FE4C9
      9AF2D399ECD09AECD099ECCF98ECCD90ECC88BEFD2A3F0D39FEECE9E4C525AAE
      C4CCC0D4DABBE3EDE6FFFFEEFFFFFFFFFF17CBF900D6FF000000000000000000
      00000000CFFF00B2E8CFFFFFBFFFFFBAFCFD8BD6E594CFDEA6B9C0ADA38FF1D5
      9FEAD3A2EBD7A4EDD6A6EED5A2EDD39EECD098ECCA8DF0D4A7F4D091B2AB9DA0
      B1B893C7DA63AAC8B7E4EDFCFFFF2DC9F300C6FF000000000000000000000000
      00000000C1FE48D0EEC5FFFFB7FFFFBBFFFFC1FFFFDFFFFF9AA4A9D9C89DECD9
      A9EAD9ADEAD9AEEAD9ADEBD9ABECD9A8ECD4A1EDD09AECCC8FF4DBB1EED1A38B
      9296E1FBFCABDFEAEFFFFF74DFF700B3F000FFFF000000000000000000000000
      00000000B9F793F0FABAFFFFB8FFFFB8FFFFB9FFFFDFFFFF8D9398F4DFABF4E6
      BDF1E5BDF0E7C4EDE3BEEDDFB5EADAAEE8D7A7E8D19FE9CD94EFD6A8F5D39A88
      9095EAFFFFE3FFFFBCF8FD00B7EE00DFFF000000000000000000000000000000
      00C2FF00AEE4C3FFFFB0FFFF88DCE79AEAF2B6FFFFE0FFFF90969CF8E4B4F5EE
      CCF7F0D5F7F0D0F5EDCCF2E9C3EFE1B9EBDBAEE8D6A6E7CE9AEBD3A3EFCE9987
      8F95EAFFFFE5FFFF08BFF100DBFF000000000000000000000000000000000000
      00C0FD34C4E9BCFFFF94EBF158B3CD5FB9CF5FB8CFB0E0EAA4AEB3DBCFA9FCF6
      DCFAF6DDF9FAEBF9F5E0F7F0CEF4ECC7F2E2B7EEDBACEAD29FEED5A4E2CA9E85
      9097EEFFFF64D9F300C4FF000000000000000000000000000000000000000000
      00B8F668E0F2B0FFFFADFFFF97EEF380D8E566C2D788C9DCB5CAD0ACA797F7F9
      DDFAFCF0FCFDFAFCFEF3F9F4D6F5EFCFF2E4BBEFDDAFEED6A4F8DBA1AAA192BA
      C8C9D5FFFF00B2EB00D9FF000000000000000000000000000000000000000000
      00B0EF97F9FDA8FFFFA6FFFFA9FFFFAEFFFFB2FFFFAAFAFDCFF1F4A0A2A7E0DD
      C0F8FCE8FAFDF4F5F8E9F3F2DAF1ECCBF0E4BBF0DDB0F3DDA5E4CE9E7C848AEA
      FBFB40CCED00C1FD00000000000000000000000000000000000000000000B5F3
      00A8DEB2FFFFA2FFFFA5FFFFA6FFFFA5FFFFA6FFFFABFFFFBDFFFFDFF5F59C9D
      9CE5E2C8F9FDE8F8F9E6F3F1D8F0E9C6F0E2B6F3DFACDFCBA0808386D0E1E2C1
      FCFD00ADE500E0FF000000000000000000000000000000000000000000009ED2
      1DB7E1ACFFFF95F8FA79DBE78DECF3A2FFFFACFFFFAAFFFFA9FFFFC4FFFFDCF3
      F3A0A3A7B0AE9EDFD8B9FAF0C4F7E9BBDCCEA9ACA6967D8589B7CFD6DCFFFF48
      CFEE00BDFA000000000000000000000000000000000000000000000000009FD5
      42CCE8A8FFFF74DBE750B5CE53B8CF54B8CF62C3D876D7E58DEAF1A4FFFEC1FF
      FFDBFAFAC3D3D4A0A7AB898D9085898F959DA1B1BFC1D5F3F5C5FFFFC7FFFF00
      ADE400C8FF000000000000000000000000000000000000000000000000009AD4
      60DCF0A3FFFF9BFFFF85EBF272D8E55FC4D853B7CF53B6CE53B7CE54B5CE5FBE
      D47DD5E4B0EFF3D1FDFEDFFFFFDEFFFFD6FFFFC8FFFFB6FFFFBCFFFF76E2F500
      B8F60000000000000000000000000000000000000000000000000000000097D1
      7AEDF69FFFFF9AFFFF9CFFFF9FFFFFA0FFFF9BFFFF87ECF276D9E660C4D853B5
      CD53B4CD53B3CE52B3CC5BBAD273D0E18BE4ECA4F9FBB1FFFFC1FFFF26BEE600
      C4FD0000000000000000000000000000000000000000000000000000000096CF
      A0FFFFAAFFFFA2FFFF9FFFFF9BFFFF9AFFFF9BFFFF9CFFFF9EFFFFA2FFFF9FFF
      FF8CEEF478D9E663C4D751B3CC52B2CB51B1CB4AABC896EDF2BBFFFF00A7DE00
      ACFF00000000000000000000000000000000000000000000000000000000A3D4
      12ADD937C1E35BDAED85F2F9A7FFFFABFFFFA6FFFFA2FFFF9EFFFF9BFFFF9AFF
      FF9DFFFFA2FFFFA6FFFFA3FFFF90EEF47AD9E668C8DAA9FEFD81EBF700B3F200
      00000000000000000000000000000000000000000000000000000000000052B9
      00B2F000AEEC00AEEB00A6E50098D60FAAD936C2E45DDAEE85F2F8A8FFFFAAFF
      FFA6FFFFA2FFFF9FFFFF9FFFFFA0FFFFA5FFFFA7FFFFB1FFFF4BD0EB00B8F500
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000D4C800AEF100B0F000AEED00AAE5009FD111AD
      D937C4E55EDBEE84F3FAA9FFFFACFFFFA8FFFFA6FFFFB4FFFF20B9E000BAF500
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000094FF00B6
      EA00B2ED00B0EC00AAE900A0D810AEDB38C6E660DCEF97FCFE00A9DD00C7FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000094E600B2F300B3EE00B0EE00B1F000C7FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    ParentFont = False
    OnClick = benviarClick
  end
  object Label3: TLabel
    Left = 4
    Top = 259
    Width = 76
    Height = 14
    Caption = 'Observações'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 4
    Top = 456
    Width = 76
    Height = 14
    Caption = 'Observações'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grFatPe21: TdxDBGraphicEdit
    Left = 2
    Top = 280
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
    TabOrder = 2
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 137
  end
  object grFatPed1: TdxDBGraphicEdit
    Left = 2
    Top = 36
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
    TabOrder = 1
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 217
  end
  object grFatPed: ThGrid
    Tag = 1
    Left = 4
    Top = 38
    Width = 777
    Height = 211
    Selected.Strings = (
      'NRONFS'#9'10'#9'Nota Fiscal'
      'DTEFAT'#9'18'#9'Emissão'
      'CODPFA'#9'15'#9'Padrão Fat.'
      'NOMFOR'#9'50'#9'Fornecedor'#9'F'
      'TOTGER'#9'10'#9'Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DSCmpNFS
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnMensag: TPanel
    Left = 18
    Top = 123
    Width = 750
    Height = 71
    BevelOuter = bvNone
    Caption = 'Aguarde. Verificando status do serviço.'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object pnQtdReg1: TPanel
    Left = 150
    Top = 4
    Width = 98
    Height = 30
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object pnQtdReg: TPanel
      Left = 3
      Top = 7
      Width = 93
      Height = 13
      BevelOuter = bvNone
      Caption = '0 Nota(s)'
      Color = clRed
      TabOrder = 0
    end
  end
  object pnTotReg1: TPanel
    Left = 250
    Top = 4
    Width = 118
    Height = 30
    Alignment = taRightJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object pnTotReg: TLabel
      Left = 86
      Top = 7
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
    end
  end
  object Panel1: TPanel
    Left = 370
    Top = 4
    Width = 207
    Height = 30
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 5
      Top = 7
      Width = 91
      Height = 14
      Caption = 'No. nota fiscal:'
    end
    object EdPsqNroNfs: TdxColorEdit
      Left = 98
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
      Alignment = taRightJustify
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
  end
  object batualizar: TBitBtn
    Left = 579
    Top = 3
    Width = 205
    Height = 32
    Caption = '&Localizar nota fiscal'
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
  object pnCliente: TPanel
    Left = 595
    Top = 253
    Width = 189
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do cliente:  '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object pnCodCli: TLabel
      Left = 177
      Top = 6
      Width = 8
      Height = 14
      Alignment = taRightJustify
      Caption = '0'
    end
  end
  object pnDesPe2: TPanel
    Left = 3
    Top = 417
    Width = 780
    Height = 27
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
    TabOrder = 9
  end
  object pn_erro: TPanel
    Left = 1
    Top = 38
    Width = 785
    Height = 214
    BevelOuter = bvNone
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Visible = False
    object memo_erro: TMemo
      Left = 1
      Top = 1
      Width = 783
      Height = 177
      Color = clWhite
      Lines.Strings = (
        'memo_erro')
      TabOrder = 0
    end
    object bt_erro: TButton
      Left = 285
      Top = 184
      Width = 185
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = bt_erroClick
    end
  end
  object Button1: TButton
    Left = 384
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 12
    Visible = False
    OnClick = Button1Click
  end
  object CorpoMail: TMemo
    Left = 16
    Top = 483
    Width = 185
    Height = 89
    Lines.Strings = (
      'Autorização de uso - Protocolo:#PROTOCOLO#'
      ''
      
        'Você está recebendo a Nota Fiscal Eletrônica número #NUMERONOTA#' +
        ' série #SERIE# da #EMITENTE#. com validade jurídica garantida pe' +
        'la assinatura digital e pela autorização de uso da Secretaria Es' +
        'tadual de Fazenda, que substitui a tradicional nota fiscal model' +
        'o 1 em papel.'
      ''
      
        'Para acompanhar o produto, a #EMITENTE# encaminhou uma represent' +
        'ação gráfica simplificada da Nota Fiscal Eletrônica, intitulada ' +
        'DANFE - Documento Auxiliar da Nota Fiscal Eletrônica, em papel A' +
        '4, em única via, que contem a chave de acesso com 44 posições qu' +
        'e serve de base para sua escrituração fiscal. '
      ''
      
        'Para verificar a validade, autenticidade e a existência de Autor' +
        'ização de Uso da NF-e basta acessar através da Internet o ambien' +
        'te nacional da Receita Federal do Brasil http://www.nfe.fazenda.' +
        'gov.br/portal ou o site da Secretaria Estadual de Fazenda de seu' +
        ' Estado, digitando a chave de acesso constante no DANFE. '
      ''
      
        '"As informações contidas neste e-mail, inclusive nos seus anexos' +
        ', são confidenciais, protegidas legalmente e só podem ser utiliz' +
        'adas com exclusividade pelo seu destinatário. São proibidas a di' +
        'vulgação, cópia e distribuição desta mensagem por quem a recebeu' +
        ' por erro e poderá ser considerado ato ilegal. O seu conteúdo é ' +
        'de responsabilidade do autor. Se você não for o verdadeiro desti' +
        'natário deste e-mail deverá avisar ao remetente e excluir de seu' +
        ' computador. Grato pela compreensão e cumprimento de nossa Polít' +
        'ica de Segurança." '
      '')
    ScrollBars = ssBoth
    TabOrder = 13
  end
  object Memo1: TMemo
    Left = 224
    Top = 483
    Width = 185
    Height = 89
    Lines.Strings = (
      'Autorização de uso - Protocolo:#PROTOCOLO#'
      ''
      
        'Você está recebendo a Nota Fiscal Eletrônica número #NUMERONOTA#' +
        ' série #SERIE# da #EMITENTE#. com validade jurídica garantida pe' +
        'la assinatura digital e pela autorização de uso da Secretaria Es' +
        'tadual de Fazenda, que substitui a tradicional nota fiscal model' +
        'o 1 em papel.'
      ''
      
        'Para acompanhar o produto, a #EMITENTE# encaminhou uma represent' +
        'ação gráfica simplificada da Nota Fiscal Eletrônica, intitulada ' +
        'DANFE - Documento Auxiliar da Nota Fiscal Eletrônica, em papel A' +
        '4, em única via, que contem a chave de acesso com 44 posições qu' +
        'e serve de base para sua escrituração fiscal. '
      ''
      
        'Para verificar a validade, autenticidade e a existência de Autor' +
        'ização de Uso da NF-e basta acessar através da Internet o ambien' +
        'te nacional da Receita Federal do Brasil http://www.nfe.fazenda.' +
        'gov.br/portal ou o site da Secretaria Estadual de Fazenda de seu' +
        ' Estado, digitando a chave de acesso constante no DANFE. '
      ''
      
        '"As informações contidas neste e-mail, inclusive nos seus anexos' +
        ', são confidenciais, protegidas legalmente e só podem ser utiliz' +
        'adas com exclusividade pelo seu destinatário. São proibidas a di' +
        'vulgação, cópia e distribuição desta mensagem por quem a recebeu' +
        ' por erro e poderá ser considerado ato ilegal. O seu conteúdo é ' +
        'de responsabilidade do autor. Se você não for o verdadeiro desti' +
        'natário deste e-mail deverá avisar ao remetente e excluir de seu' +
        ' computador. Grato pela compreensão e cumprimento de nossa Polít' +
        'ica de Segurança." '
      ''
      '')
    ScrollBars = ssBoth
    TabOrder = 14
    Visible = False
  end
  object grFatPe2: ThGrid
    Tag = 1
    Left = 4
    Top = 282
    Width = 777
    Height = 131
    Selected.Strings = (
      'CODGRU'#9'9'#9'Item'#9'F'
      'CODSUB'#9'10'#9' '#9'F'
      'CODPRO'#9'11'#9' '#9'F'
      'CODST1'#9'4'#9' ST1'#9'F'
      'CODST2'#9'4'#9' ST2'#9'F'
      'CODUND'#9'6'#9' UN'#9'F'
      'QTPNF2'#9'16'#9' QTDE'#9'F'
      'TOTNF2'#9'10'#9'Total Item'#9'F'
      'ICMNF2'#9'10'#9' ICMS'#9'F'
      'IPINF2'#9'10'#9' IPI'#9'F'
      'TOTIPI'#9'10'#9'Total IPI'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DSCMPNF2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 15
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grFatPe2KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnalterar: TPanel
    Left = 2
    Top = 336
    Width = 781
    Height = 65
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 10
    Visible = False
    OnExit = pnalterarExit
    object Label6: TLabel
      Left = 1
      Top = 4
      Width = 103
      Height = 14
      Caption = '1-001.0001.00016'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 432
      Top = 4
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = '6,3745'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 521
      Top = 4
      Width = 57
      Height = 14
      Alignment = taRightJustify
      Caption = '27.699,48'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 621
      Top = 4
      Width = 14
      Height = 14
      Alignment = taRightJustify
      Caption = '12'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 675
      Top = 4
      Width = 7
      Height = 14
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 749
      Top = 4
      Width = 25
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 109
      Top = 1
      Width = 62
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      OnKeyPress = EdCodCfoKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCFO'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 170
      Top = 1
      Width = 104
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      TabOrder = 1
      OnKeyPress = EdCodCfoKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DSCMPNF2
      MaxLength = 30
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 3
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 273
      Top = 1
      Width = 23
      Hint = 'Situação Tributária 1'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      TabOrder = 2
      OnEnter = EdCodSt1Enter
      OnExit = EdCodSt1Exit
      OnKeyDown = EdCodSt1KeyDown
      OnKeyPress = EdPsqNumResKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 295
      Top = 1
      Width = 38
      Hint = 'Situação Tributária 2'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      OnEnter = EdCodSt1Enter
      OnExit = EdCodSt2Exit
      OnKeyDown = EdCodSt2KeyDown
      OnKeyPress = EdPsqNumResKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 332
      Top = 1
      Width = 42
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      OnEnter = EdCodSt1Enter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Eddespe2: TdxDBColorEdit
      Left = 1
      Top = 30
      Width = 390
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      Visible = False
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESNF2'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object Edobspe2: TdxDBColorEdit
      Left = 392
      Top = 30
      Width = 390
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
      Visible = False
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSNF2'
      DataSource = DSCMPNF2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 220
  end
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 65
    Top = 220
  end
  object DSCmpNFS: TDataSource
    DataSet = CmpNfs
    OnDataChange = DSCmpNFSDataChange
    Left = 80
    Top = 248
  end
  object UpNfs: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  DTEFAT = :DTEFAT,'
      '  HREFAT = :HREFAT,'
      '  UFENFS = :UFENFS,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  MODPFA = :MODPFA,'
      '  CODFOR = :CODFOR,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CODFIL = :CODFIL,'
      '  QTDNFS = :QTDNFS,'
      '  NRONFS = :NRONFS,'
      '  CGCFOR = :CGCFOR,'
      '  INSFOR = :INSFOR,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTNFS = :FRTNFS,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARNFS = :MARNFS,'
      '  NUMNFS = :NUMNFS,'
      '  ESPNFS = :ESPNFS,'
      '  NOMTRA = :NOMTRA,'
      '  CGCTRA = :CGCTRA,'
      '  INSTRA = :INSTRA,'
      '  CEPTRA = :CEPTRA,'
      '  TENTRA = :TENTRA,'
      '  ENDTRA = :ENDTRA,'
      '  REFTRA = :REFTRA,'
      '  NUMTRA = :NUMTRA,'
      '  BAITRA = :BAITRA,'
      '  CIDTRA = :CIDTRA,'
      '  UFETRA = :UFETRA,'
      '  PLCTRA = :PLCTRA,'
      '  PRTTRA = :PRTTRA,'
      '  FONTRA = :FONTRA,'
      '  UFEPLC = :UFEPLC,'
      '  CEPFOR = :CEPFOR,'
      '  TENFOR = :TENFOR,'
      '  ENDFOR = :ENDFOR,'
      '  REFFOR = :REFFOR,'
      '  NUMFOR = :NUMFOR,'
      '  BAIFOR = :BAIFOR,'
      '  CIDFOR = :CIDFOR,'
      '  UFEFOR = :UFEFOR,'
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSNFS = :OBSNFS,'
      '  SEQITE = :SEQITE,'
      '  QTINFS = :QTINFS,'
      '  LINNFS = :LINNFS,'
      '  QTDVOL = :QTDVOL,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ICMFRT = :ICMFRT,'
      '  BSICMF = :BSICMF,'
      '  ICMSEG = :ICMSEG,'
      '  BSICMS = :BSICMS,'
      '  ICMDES = :ICMDES,'
      '  BSICMD = :BSICMD,'
      '  IPIFRT = :IPIFRT,'
      '  BSIPIF = :BSIPIF,'
      '  IPISEG = :IPISEG,'
      '  BSIPIS = :BSIPIS,'
      '  IPIDES = :IPIDES,'
      '  BSIPID = :BSIPID,'
      '  CODUSU = :CODUSU,'
      '  HRCNFS = :HRCNFS,'
      '  DTCNFS = :DTCNFS,'
      '  USCNFS = :USCNFS,'
      '  OBCNFS = :OBCNFS,'
      '  ATUEST = :ATUEST,'
      '  LANEST = :LANEST,'
      '  INTFIN = :INTFIN,'
      '  CONSUM = :CONSUM,'
      '  FLGCTB = :FLGCTB,'
      '  CODIPI = :CODIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  CODICM = :CODICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  NROCOL = :NROCOL,'
      '  SEQOPE = :SEQOPE,'
      '  SITNFS = :SITNFS,'
      '  FLGNFS = :FLGNFS,'
      '  FLGATU = :FLGATU,'
      '  CODTIP = :CODTIP,'
      '  DESREG = :DESREG,'
      '  FLGENV = :FLGENV,'
      '  FLGSIN = :FLGSIN,'
      '  OB1NFS = :OB1NFS,'
      '  OB2NFS = :OB2NFS,'
      '  OB3NFS = :OB3NFS,'
      '  OB4NFS = :OB4NFS,'
      '  OB5NFS = :OB5NFS,'
      '  OB6NFS = :OB6NFS,'
      '  OB7NFS = :OB7NFS,'
      '  OB8NFS = :OB8NFS,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT,'
      '  DTFNFS = :DTFNFS,'
      '  HRFNFS = :HRFNFS,'
      '  USFNFS = :USFNFS,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTGER = :TOTGER,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  BAICMF = :BAICMF,'
      '  TOICMF = :TOICMF,'
      '  BAICMS = :BAICMS,'
      '  TOICMS = :TOICMS,'
      '  BAICMD = :BAICMD,'
      '  TOICMD = :TOICMD,'
      '  BAIPIF = :BAIPIF,'
      '  TOIPIF = :TOIPIF,'
      '  BAIPIS = :BAIPIS,'
      '  TOIPIS = :TOIPIS,'
      '  BAIPID = :BAIPID,'
      '  TOIPID = :TOIPID,'
      '  BASIP1 = :BASIP1,'
      '  TOTIP1 = :TOTIP1,'
      '  BASIC1 = :BASIC1,'
      '  TOTIC1 = :TOTIC1,'
      '  BASSU1 = :BASSU1,'
      '  TOTSU1 = :TOTSU1,'
      '  TOTIT1 = :TOTIT1,'
      '  TOTGE1 = :TOTGE1,'
      '  OBFNFS = :OBFNFS,'
      '  CODTFO = :CODTFO,'
      '  BAFFOR = :BAFFOR,'
      '  CEFFOR = :CEFFOR,'
      '  CGEFOR = :CGEFOR,'
      '  CIFFOR = :CIFFOR,'
      '  CODTRA = :CODTRA,'
      '  DOPNFE = :DOPNFE,'
      '  DTCNFE = :DTCNFE,'
      '  DTEADU = :DTEADU,'
      '  DTECNE = :DTECNE,'
      '  DTENFE = :DTENFE,'
      '  DTEPDI = :DTEPDI,'
      '  DTEPNF = :DTEPNF,'
      '  ENFFOR = :ENFFOR,'
      '  ENVNFE = :ENVNFE,'
      '  EXPPDI = :EXPPDI,'
      '  FLGEMI = :FLGEMI,'
      '  FLGNFE = :FLGNFE,'
      '  FLGUSA = :FLGUSA,'
      '  HRCNFE = :HRCNFE,'
      '  HRECNE = :HRECNE,'
      '  HRENFE = :HRENFE,'
      '  HREPNF = :HREPNF,'
      '  ID_ESTSIP = :ID_ESTSIP,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINUFF = :ID_FINUFF,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  ID_TRAUFE = :ID_TRAUFE,'
      '  IMPNFE = :IMPNFE,'
      '  INEFOR = :INEFOR,'
      '  LOCPDI = :LOCPDI,'
      '  LOTNFE = :LOTNFE,'
      '  NFECOF = :NFECOF,'
      '  NFEPIS = :NFEPIS,'
      '  NRFFOR = :NRFFOR,'
      '  NROPDI = :NROPDI,'
      '  PRCNFE = :PRCNFE,'
      '  PRONFE = :PRONFE,'
      '  RECNFE = :RECNFE,'
      '  RETNFE = :RETNFE,'
      '  RFFFOR = :RFFFOR,'
      '  SEQNFE = :SEQNFE,'
      '  TEFFOR = :TEFFOR,'
      '  TRBCOF = :TRBCOF,'
      '  TRBPIS = :TRBPIS,'
      '  UFEPDI = :UFEPDI,'
      '  UFFFOR = :UFFFOR,'
      '  USUNFE = :USUNFE'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  ID_CMPNFS = :OLD_ID_CMPNFS'
      ' ')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      
        '  (DTEFAT, HREFAT, UFENFS, CODPFA, TIPPFA, MODPFA, CODFOR, PERPI' +
        'S, PERCOF, '
      
        '   CODFIL, QTDNFS, NRONFS, CGCFOR, INSFOR, CODCF1, CODCF2, FRTNF' +
        'S, FLGENT, '
      
        '   FLGSAI, DESNAT, INSSUB, TIPFRT, MARNFS, NUMNFS, ESPNFS, NOMTR' +
        'A, CGCTRA, '
      
        '   INSTRA, CEPTRA, TENTRA, ENDTRA, REFTRA, NUMTRA, BAITRA, CIDTR' +
        'A, UFETRA, '
      
        '   PLCTRA, PRTTRA, FONTRA, UFEPLC, CEPFOR, TENFOR, ENDFOR, REFFO' +
        'R, NUMFOR, '
      
        '   BAIFOR, CIDFOR, UFEFOR, TXFIPI, TXFICM, OBSNFS, SEQITE, QTINF' +
        'S, LINNFS, '
      
        '   QTDVOL, ALTVOL, INFLIQ, INFBRT, TOTFRT, TOTSEG, TOTDES, ICMFR' +
        'T, BSICMF, '
      
        '   ICMSEG, BSICMS, ICMDES, BSICMD, IPIFRT, BSIPIF, IPISEG, BSIPI' +
        'S, IPIDES, '
      
        '   BSIPID, CODUSU, HRCNFS, DTCNFS, USCNFS, OBCNFS, ATUEST, LANES' +
        'T, INTFIN, '
      
        '   CONSUM, FLGCTB, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODIC' +
        'M, TIPICM, '
      
        '   TRBICM, REDICM, BSCICM, INCREV, INCFIN, NROCOL, SEQOPE, SITNF' +
        'S, FLGNFS, '
      
        '   FLGATU, CODTIP, DESREG, FLGENV, FLGSIN, OB1NFS, OB2NFS, OB3NF' +
        'S, OB4NFS, '
      
        '   OB5NFS, OB6NFS, OB7NFS, OB8NFS, FLGIMP, NOMENT, DTFNFS, HRFNF' +
        'S, USFNFS, '
      
        '   TOTLIQ, TOTBRT, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, TOTITE, '
      
        '   TOTGER, TOTPIS, TOTCOF, BAICMF, TOICMF, BAICMS, TOICMS, BAICM' +
        'D, TOICMD, '
      
        '   BAIPIF, TOIPIF, BAIPIS, TOIPIS, BAIPID, TOIPID, BASIP1, TOTIP' +
        '1, BASIC1, '
      
        '   TOTIC1, BASSU1, TOTSU1, TOTIT1, TOTGE1, OBFNFS, CODTFO, BAFFO' +
        'R, CEFFOR, '
      
        '   CGEFOR, CIFFOR, CODTRA, DOPNFE, DTCNFE, DTEADU, DTECNE, DTENF' +
        'E, DTEPDI, '
      
        '   DTEPNF, ENFFOR, ENVNFE, EXPPDI, FLGEMI, FLGNFE, FLGUSA, HRCNF' +
        'E, HRECNE, '
      
        '   HRENFE, HREPNF, ID_ESTSIP, ID_FINCIE, ID_FINCIF, ID_FINUFE, I' +
        'D_FINUFF, '
      
        '   ID_TRACIE, ID_TRAUFE, IMPNFE, INEFOR, LOCPDI, LOTNFE, NFECOF,' +
        ' NFEPIS, '
      
        '   NRFFOR, NROPDI, PRCNFE, PRONFE, RECNFE, RETNFE, RFFFOR, SEQNF' +
        'E, TEFFOR, '
      '   TRBCOF, TRBPIS, UFEPDI, UFFFOR, USUNFE)'
      'values'
      
        '  (:DTEFAT, :HREFAT, :UFENFS, :CODPFA, :TIPPFA, :MODPFA, :CODFOR' +
        ', :PERPIS, '
      
        '   :PERCOF, :CODFIL, :QTDNFS, :NRONFS, :CGCFOR, :INSFOR, :CODCF1' +
        ', :CODCF2, '
      
        '   :FRTNFS, :FLGENT, :FLGSAI, :DESNAT, :INSSUB, :TIPFRT, :MARNFS' +
        ', :NUMNFS, '
      
        '   :ESPNFS, :NOMTRA, :CGCTRA, :INSTRA, :CEPTRA, :TENTRA, :ENDTRA' +
        ', :REFTRA, '
      
        '   :NUMTRA, :BAITRA, :CIDTRA, :UFETRA, :PLCTRA, :PRTTRA, :FONTRA' +
        ', :UFEPLC, '
      
        '   :CEPFOR, :TENFOR, :ENDFOR, :REFFOR, :NUMFOR, :BAIFOR, :CIDFOR' +
        ', :UFEFOR, '
      
        '   :TXFIPI, :TXFICM, :OBSNFS, :SEQITE, :QTINFS, :LINNFS, :QTDVOL' +
        ', :ALTVOL, '
      
        '   :INFLIQ, :INFBRT, :TOTFRT, :TOTSEG, :TOTDES, :ICMFRT, :BSICMF' +
        ', :ICMSEG, '
      
        '   :BSICMS, :ICMDES, :BSICMD, :IPIFRT, :BSIPIF, :IPISEG, :BSIPIS' +
        ', :IPIDES, '
      
        '   :BSIPID, :CODUSU, :HRCNFS, :DTCNFS, :USCNFS, :OBCNFS, :ATUEST' +
        ', :LANEST, '
      
        '   :INTFIN, :CONSUM, :FLGCTB, :CODIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :CODICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :NROCOL, '
      
        '   :SEQOPE, :SITNFS, :FLGNFS, :FLGATU, :CODTIP, :DESREG, :FLGENV' +
        ', :FLGSIN, '
      
        '   :OB1NFS, :OB2NFS, :OB3NFS, :OB4NFS, :OB5NFS, :OB6NFS, :OB7NFS' +
        ', :OB8NFS, '
      
        '   :FLGIMP, :NOMENT, :DTFNFS, :HRFNFS, :USFNFS, :TOTLIQ, :TOTBRT' +
        ', :BASIPI, '
      
        '   :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTGER' +
        ', :TOTPIS, '
      
        '   :TOTCOF, :BAICMF, :TOICMF, :BAICMS, :TOICMS, :BAICMD, :TOICMD' +
        ', :BAIPIF, '
      
        '   :TOIPIF, :BAIPIS, :TOIPIS, :BAIPID, :TOIPID, :BASIP1, :TOTIP1' +
        ', :BASIC1, '
      
        '   :TOTIC1, :BASSU1, :TOTSU1, :TOTIT1, :TOTGE1, :OBFNFS, :CODTFO' +
        ', :BAFFOR, '
      
        '   :CEFFOR, :CGEFOR, :CIFFOR, :CODTRA, :DOPNFE, :DTCNFE, :DTEADU' +
        ', :DTECNE, '
      
        '   :DTENFE, :DTEPDI, :DTEPNF, :ENFFOR, :ENVNFE, :EXPPDI, :FLGEMI' +
        ', :FLGNFE, '
      
        '   :FLGUSA, :HRCNFE, :HRECNE, :HRENFE, :HREPNF, :ID_ESTSIP, :ID_' +
        'FINCIE, '
      
        '   :ID_FINCIF, :ID_FINUFE, :ID_FINUFF, :ID_TRACIE, :ID_TRAUFE, :' +
        'IMPNFE, '
      
        '   :INEFOR, :LOCPDI, :LOTNFE, :NFECOF, :NFEPIS, :NRFFOR, :NROPDI' +
        ', :PRCNFE, '
      
        '   :PRONFE, :RECNFE, :RETNFE, :RFFFOR, :SEQNFE, :TEFFOR, :TRBCOF' +
        ', :TRBPIS, '
      '   :UFEPDI, :UFFFOR, :USUNFE)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 51
    Top = 247
  end
  object CmpNfs: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.*,'
      '           FinFor.NomFor,'
      '           FinFor.EmaFor'
      'From cmpnfs LEFT JOIN FinFOR ON (CodFOR = FinFOr.CodFor)'
      'Where FlgNFE = '#39'Sim'#39
      '     and EnvNFE = '#39'Nao'#39
      'Order by NroNfs')
    UpdateObject = UpNfs
    ValidateWithMask = True
    Left = 23
    Top = 247
    object CmpNfsNRONFS: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object CmpNfsDTEFAT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 18
      FieldName = 'DTEFAT'
    end
    object CmpNfsCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 15
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object CmpNfsNOMFOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 50
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 70
    end
    object CmpNfsTOTGER: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTGER'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object CmpNfsCODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpNfsDTENFS: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTENFS'
      Visible = False
    end
    object CmpNfsSEQNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNFS'
      Visible = False
    end
    object CmpNfsCODTIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Visible = False
    end
    object CmpNfsHREFAT: TStringField
      DisplayWidth = 8
      FieldName = 'HREFAT'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsUFENFS: TStringField
      DisplayWidth = 2
      FieldName = 'UFENFS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsTIPPFA: TStringField
      DisplayWidth = 7
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsMODPFA: TStringField
      DisplayWidth = 20
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCODFOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpNfsPERPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'PERPIS'
      Visible = False
    end
    object CmpNfsPERCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'PERCOF'
      Visible = False
    end
    object CmpNfsCODFIL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFIL'
      Visible = False
    end
    object CmpNfsQTDNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDNFS'
      Visible = False
    end
    object CmpNfsCGCFOR: TStringField
      DisplayWidth = 18
      FieldName = 'CGCFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSFOR: TStringField
      DisplayWidth = 18
      FieldName = 'INSFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsCODCF1: TStringField
      DisplayWidth = 15
      FieldName = 'CODCF1'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsCODCF2: TStringField
      DisplayWidth = 15
      FieldName = 'CODCF2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsFRTNFS: TStringField
      DisplayWidth = 3
      FieldName = 'FRTNFS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGENT: TStringField
      DisplayWidth = 1
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGSAI: TStringField
      DisplayWidth = 1
      FieldName = 'FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsDESNAT: TStringField
      DisplayWidth = 100
      FieldName = 'DESNAT'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNfsINSSUB: TStringField
      DisplayWidth = 18
      FieldName = 'INSSUB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsTIPFRT: TStringField
      DisplayWidth = 1
      FieldName = 'TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsMARNFS: TStringField
      DisplayWidth = 15
      FieldName = 'MARNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsNUMNFS: TStringField
      DisplayWidth = 15
      FieldName = 'NUMNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsESPNFS: TStringField
      DisplayWidth = 15
      FieldName = 'ESPNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsNOMTRA: TStringField
      DisplayWidth = 70
      FieldName = 'NOMTRA'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsCGCTRA: TStringField
      DisplayWidth = 18
      FieldName = 'CGCTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSTRA: TStringField
      DisplayWidth = 18
      FieldName = 'INSTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsCEPTRA: TStringField
      DisplayWidth = 8
      FieldName = 'CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsTENTRA: TStringField
      DisplayWidth = 10
      FieldName = 'TENTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDTRA: TStringField
      DisplayWidth = 40
      FieldName = 'ENDTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsREFTRA: TStringField
      DisplayWidth = 40
      FieldName = 'REFTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMTRA: TStringField
      DisplayWidth = 10
      FieldName = 'NUMTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAITRA: TStringField
      DisplayWidth = 20
      FieldName = 'BAITRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCIDTRA: TStringField
      DisplayWidth = 20
      FieldName = 'CIDTRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFETRA: TStringField
      DisplayWidth = 2
      FieldName = 'UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsPLCTRA: TStringField
      DisplayWidth = 7
      FieldName = 'PLCTRA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsPRTTRA: TStringField
      DisplayWidth = 4
      FieldName = 'PRTTRA'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpNfsFONTRA: TStringField
      DisplayWidth = 20
      FieldName = 'FONTRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFEPLC: TStringField
      DisplayWidth = 2
      FieldName = 'UFEPLC'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsCEPFOR: TStringField
      DisplayWidth = 8
      FieldName = 'CEPFOR'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsTENFOR: TStringField
      DisplayWidth = 10
      FieldName = 'TENFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDFOR: TStringField
      DisplayWidth = 70
      FieldName = 'ENDFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsREFFOR: TStringField
      DisplayWidth = 40
      FieldName = 'REFFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMFOR: TStringField
      DisplayWidth = 10
      FieldName = 'NUMFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAIFOR: TStringField
      DisplayWidth = 20
      FieldName = 'BAIFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCIDFOR: TStringField
      DisplayWidth = 20
      FieldName = 'CIDFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFEFOR: TStringField
      DisplayWidth = 2
      FieldName = 'UFEFOR'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsTXFIPI: TStringField
      DisplayWidth = 160
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpNfsTXFICM: TStringField
      DisplayWidth = 160
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpNfsOBSNFS: TStringField
      DisplayWidth = 240
      FieldName = 'OBSNFS'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpNfsSEQITE: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQITE'
      Visible = False
    end
    object CmpNfsQTINFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTINFS'
      Visible = False
    end
    object CmpNfsLINNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINNFS'
      Visible = False
    end
    object CmpNfsQTDVOL: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDVOL'
      Visible = False
    end
    object CmpNfsALTVOL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ALTVOL'
      Visible = False
    end
    object CmpNfsINFLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'INFLIQ'
      Visible = False
    end
    object CmpNfsTOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object CmpNfsINFBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'INFBRT'
      Visible = False
    end
    object CmpNfsTOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Visible = False
    end
    object CmpNfsBASIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Visible = False
    end
    object CmpNfsTOTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Visible = False
    end
    object CmpNfsBASICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Visible = False
    end
    object CmpNfsTOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Visible = False
    end
    object CmpNfsBASSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpNfsTOTSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSUB'
      Visible = False
    end
    object CmpNfsTOTITE: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTITE'
      Visible = False
    end
    object CmpNfsTOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Visible = False
    end
    object CmpNfsTOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Visible = False
    end
    object CmpNfsTOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Visible = False
    end
    object CmpNfsTOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Visible = False
    end
    object CmpNfsTOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Visible = False
    end
    object CmpNfsICMFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMFRT'
      Visible = False
    end
    object CmpNfsBSICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'BSICMF'
      Visible = False
    end
    object CmpNfsBAICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMF'
      Visible = False
    end
    object CmpNfsTOICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMF'
      Visible = False
    end
    object CmpNfsICMSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSEG'
      Visible = False
    end
    object CmpNfsBSICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BSICMS'
      Visible = False
    end
    object CmpNfsBAICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMS'
      Visible = False
    end
    object CmpNfsTOICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMS'
      Visible = False
    end
    object CmpNfsICMDES: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMDES'
      Visible = False
    end
    object CmpNfsBSICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'BSICMD'
      Visible = False
    end
    object CmpNfsBAICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMD'
      Visible = False
    end
    object CmpNfsTOICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMD'
      Visible = False
    end
    object CmpNfsIPIFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'IPIFRT'
      Visible = False
    end
    object CmpNfsBSIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'BSIPIF'
      Visible = False
    end
    object CmpNfsBAIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIF'
      Visible = False
    end
    object CmpNfsTOIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIF'
      Visible = False
    end
    object CmpNfsIPISEG: TFloatField
      DisplayWidth = 10
      FieldName = 'IPISEG'
      Visible = False
    end
    object CmpNfsBSIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'BSIPIS'
      Visible = False
    end
    object CmpNfsBAIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIS'
      Visible = False
    end
    object CmpNfsTOIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIS'
      Visible = False
    end
    object CmpNfsIPIDES: TFloatField
      DisplayWidth = 10
      FieldName = 'IPIDES'
      Visible = False
    end
    object CmpNfsBSIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'BSIPID'
      Visible = False
    end
    object CmpNfsBAIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPID'
      Visible = False
    end
    object CmpNfsTOIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPID'
      Visible = False
    end
    object CmpNfsBASIP1: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIP1'
      Visible = False
    end
    object CmpNfsTOTIP1: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIP1'
      Visible = False
    end
    object CmpNfsBASIC1: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIC1'
      Visible = False
    end
    object CmpNfsTOTIC1: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIC1'
      Visible = False
    end
    object CmpNfsBASSU1: TFloatField
      DisplayWidth = 10
      FieldName = 'BASSU1'
      Visible = False
    end
    object CmpNfsTOTSU1: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSU1'
      Visible = False
    end
    object CmpNfsTOTIT1: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIT1'
      Visible = False
    end
    object CmpNfsTOTGE1: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTGE1'
      Visible = False
    end
    object CmpNfsCODUSU: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODUSU'
      Visible = False
    end
    object CmpNfsHRCNFS: TStringField
      DisplayWidth = 8
      FieldName = 'HRCNFS'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsDTCNFS: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCNFS'
      Visible = False
    end
    object CmpNfsUSCNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'USCNFS'
      Visible = False
    end
    object CmpNfsOBCNFS: TStringField
      DisplayWidth = 150
      FieldName = 'OBCNFS'
      Visible = False
      FixedChar = True
      Size = 150
    end
    object CmpNfsATUEST: TStringField
      DisplayWidth = 3
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsLANEST: TStringField
      DisplayWidth = 3
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsINTFIN: TStringField
      DisplayWidth = 3
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsCONSUM: TStringField
      DisplayWidth = 3
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGCTB: TStringField
      DisplayWidth = 3
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsCODIPI: TStringField
      DisplayWidth = 30
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNfsTIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBIPI: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpNfsBSCIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpNfsCODICM: TStringField
      DisplayWidth = 20
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object CmpNfsTIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBICM: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDICM: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpNfsBSCICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpNfsINCREV: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpNfsINCFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpNfsNROCOL: TStringField
      DisplayWidth = 20
      FieldName = 'NROCOL'
      Visible = False
      FixedChar = True
    end
    object CmpNfsSEQOPE: TStringField
      DisplayWidth = 22
      FieldName = 'SEQOPE'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object CmpNfsSITNFS: TStringField
      DisplayWidth = 45
      FieldName = 'SITNFS'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object CmpNfsFLGNFS: TStringField
      DisplayWidth = 1
      FieldName = 'FLGNFS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGATU: TStringField
      DisplayWidth = 1
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGENV: TStringField
      DisplayWidth = 3
      FieldName = 'FLGENV'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsQTDENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDENT'
      Visible = False
    end
    object CmpNfsDESREG: TStringField
      DisplayWidth = 100
      FieldName = 'DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNfsFLGSIN: TStringField
      DisplayWidth = 3
      FieldName = 'FLGSIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsOB1NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB1NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB2NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB2NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB3NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB3NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB4NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB4NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB5NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB5NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB6NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB6NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB7NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB7NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsOB8NFS: TStringField
      DisplayWidth = 80
      FieldName = 'OB8NFS'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNfsFLGIMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsID_TRAUFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRAUFE'
      Visible = False
    end
    object CmpNfsID_TRACIE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRACIE'
      Visible = False
    end
    object CmpNfsID_FINUFF: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FINUFF'
      Visible = False
    end
    object CmpNfsID_FINCIF: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FINCIF'
      Visible = False
    end
    object CmpNfsID_FINUFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FINUFE'
      Visible = False
    end
    object CmpNfsID_FINCIE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FINCIE'
      Visible = False
    end
    object CmpNfsCEFFOR: TStringField
      DisplayWidth = 8
      FieldName = 'CEFFOR'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsTEFFOR: TStringField
      DisplayWidth = 10
      FieldName = 'TEFFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsENFFOR: TStringField
      DisplayWidth = 70
      FieldName = 'ENFFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsRFFFOR: TStringField
      DisplayWidth = 40
      FieldName = 'RFFFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsNRFFOR: TStringField
      DisplayWidth = 10
      FieldName = 'NRFFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAFFOR: TStringField
      DisplayWidth = 20
      FieldName = 'BAFFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCIFFOR: TStringField
      DisplayWidth = 20
      FieldName = 'CIFFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFFFOR: TStringField
      DisplayWidth = 2
      FieldName = 'UFFFOR'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsNFEPIS: TStringField
      DisplayWidth = 3
      FieldName = 'NFEPIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsTRBPIS: TStringField
      DisplayWidth = 3
      FieldName = 'TRBPIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsNFECOF: TStringField
      DisplayWidth = 3
      FieldName = 'NFECOF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsTRBCOF: TStringField
      DisplayWidth = 3
      FieldName = 'TRBCOF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGNFE: TStringField
      DisplayWidth = 3
      FieldName = 'FLGNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsENVNFE: TStringField
      DisplayWidth = 3
      FieldName = 'ENVNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsSEQNFE: TStringField
      DisplayWidth = 44
      FieldName = 'SEQNFE'
      Visible = False
      FixedChar = True
      Size = 44
    end
    object CmpNfsDTENFE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTENFE'
      Visible = False
    end
    object CmpNfsRECNFE: TStringField
      DisplayWidth = 15
      FieldName = 'RECNFE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsPRONFE: TStringField
      DisplayWidth = 15
      FieldName = 'PRONFE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsLOTNFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'LOTNFE'
      Visible = False
    end
    object CmpNfsDTEPNF: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEPNF'
      Visible = False
    end
    object CmpNfsHREPNF: TStringField
      DisplayWidth = 8
      FieldName = 'HREPNF'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsDOPNFE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOPNFE'
      Visible = False
    end
    object CmpNfsHRENFE: TStringField
      DisplayWidth = 8
      FieldName = 'HRENFE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsUSUNFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUNFE'
      Visible = False
    end
    object CmpNfsIMPNFE: TStringField
      DisplayWidth = 3
      FieldName = 'IMPNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsRETNFE: TStringField
      DisplayWidth = 100
      FieldName = 'RETNFE'
      Visible = False
      Size = 100
    end
    object CmpNfsDTCNFE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTCNFE'
      Visible = False
    end
    object CmpNfsHRCNFE: TStringField
      DisplayWidth = 8
      FieldName = 'HRCNFE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsPRCNFE: TStringField
      DisplayWidth = 15
      FieldName = 'PRCNFE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsDTECNE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTECNE'
      Visible = False
    end
    object CmpNfsHRECNE: TStringField
      DisplayWidth = 8
      FieldName = 'HRECNE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsARQNFE: TBlobField
      DisplayWidth = 10
      FieldName = 'ARQNFE'
      Visible = False
      BlobType = ftBlob
      Size = 1
    end
    object CmpNfsCGEFOR: TStringField
      DisplayWidth = 18
      FieldName = 'CGEFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINEFOR: TStringField
      DisplayWidth = 18
      FieldName = 'INEFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsCODTRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTRA'
      Visible = False
    end
    object CmpNfsDTECOM: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTECOM'
      Visible = False
    end
    object CmpNfsHRECOM: TStringField
      DisplayWidth = 8
      FieldName = 'HRECOM'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsSEQCOM: TStringField
      DisplayWidth = 44
      FieldName = 'SEQCOM'
      Visible = False
      FixedChar = True
      Size = 44
    end
    object CmpNfsNFSCOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFSCOM'
      Visible = False
    end
    object CmpNfsUFECOM: TStringField
      DisplayWidth = 2
      FieldName = 'UFECOM'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsID_ESTSIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTSIP'
      Visible = False
    end
    object CmpNfsNOMENT: TStringField
      DisplayWidth = 70
      FieldName = 'NOMENT'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsDTFNFS: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTFNFS'
      Visible = False
    end
    object CmpNfsHRFNFS: TStringField
      DisplayWidth = 8
      FieldName = 'HRFNFS'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsUSFNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'USFNFS'
      Visible = False
    end
    object CmpNfsOBFNFS: TStringField
      DisplayWidth = 150
      FieldName = 'OBFNFS'
      Visible = False
      FixedChar = True
      Size = 150
    end
    object CmpNfsCODTFO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTFO'
      Visible = False
    end
    object CmpNfsID_CMPNFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CMPNFS'
      Visible = False
    end
    object CmpNfsNROPDI: TStringField
      DisplayWidth = 10
      FieldName = 'NROPDI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsDTEPDI: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEPDI'
      Visible = False
    end
    object CmpNfsLOCPDI: TStringField
      DisplayWidth = 60
      FieldName = 'LOCPDI'
      Visible = False
      Size = 60
    end
    object CmpNfsUFEPDI: TStringField
      DisplayWidth = 2
      FieldName = 'UFEPDI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsDTEADU: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEADU'
      Visible = False
    end
    object CmpNfsEXPPDI: TStringField
      DisplayWidth = 60
      FieldName = 'EXPPDI'
      Visible = False
      Size = 60
    end
    object CmpNfsFLGUSA: TStringField
      DisplayWidth = 3
      FieldName = 'FLGUSA'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGEMI: TStringField
      DisplayWidth = 3
      FieldName = 'FLGEMI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsNFETH: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFETH'
      Visible = False
    end
    object CmpNfsDTECAN: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTECAN'
      Visible = False
    end
    object CmpNfsNFETHCANC: TIntegerField
      DisplayWidth = 10
      FieldName = 'NFETHCANC'
      Visible = False
    end
    object CmpNfsARQNFECANC: TBlobField
      DisplayWidth = 10
      FieldName = 'ARQNFECANC'
      Visible = False
      BlobType = ftBlob
      Size = 1
    end
    object CmpNfsHRECAN: TStringField
      DisplayWidth = 8
      FieldName = 'HRECAN'
      Visible = False
      Size = 8
    end
    object CmpNfsUSUCAN: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUCAN'
      Visible = False
    end
    object CmpNfsEMAFOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMAFOR'
      Visible = False
      FixedChar = True
      Size = 50
    end
  end
  object CmpNf2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DSCmpNFS
    SQL.Strings = (
      'Select * From CmpNf2'
      'Where CmpNf2.CodEmp = :CodEmp'
      '     and CmpNf2.DteNfs = :DteNfs'
      '     and CmpNf2.SeqNfs = :SeqNfs'
      'Order by CmpNf2.NroNf2')
    UpdateObject = UpNf2
    ValidateWithMask = True
    Left = 23
    Top = 275
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTENFS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQNFS'
        ParamType = ptInput
      end>
    object CmpNf2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = 'Item'
      DisplayWidth = 9
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATGE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpNf2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATGE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpNf2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATGE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpNf2CODST1: TStringField
      DisplayLabel = ' ST1'
      DisplayWidth = 4
      FieldName = 'CODST1'
      Origin = 'ISADE.CMPNF2.CODST1'
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODST2: TStringField
      DisplayLabel = ' ST2'
      DisplayWidth = 4
      FieldName = 'CODST2'
      Origin = 'ISADE.CMPNF2.CODST2'
      FixedChar = True
      Size = 2
    end
    object CmpNf2CODUND: TStringField
      DisplayLabel = ' UN'
      DisplayWidth = 6
      FieldName = 'CODUND'
      Origin = 'ISADE.CMPNF2.CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = ' QTDE'
      DisplayWidth = 16
      FieldName = 'QTPNF2'
      Origin = 'ISADE.CMPNF2.QTPNF2'
      DisplayFormat = '###,###,##0'
      Precision = 2
    end
    object CmpNf2TOTNF2: TFloatField
      DisplayLabel = 'Total Item'
      DisplayWidth = 10
      FieldName = 'TOTNF2'
      Origin = 'ISADE.CMPNF2.TOTNF2'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = ' ICMS'
      DisplayWidth = 10
      FieldName = 'ICMNF2'
      Origin = 'ISADE.CMPNF2.ICMNF2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = ' IPI'
      DisplayWidth = 10
      FieldName = 'IPINF2'
      Origin = 'ISADE.CMPNF2.IPINF2'
      DisplayFormat = '##0.00'
      Precision = 2
    end
    object CmpNf2TOTIPI: TFloatField
      DisplayLabel = 'Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Origin = 'ISADE.CMPNF2.TOTIPI'
    end
    object CmpNf2CODCLP: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATGE2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 16
      FieldName = 'VLUNF2'
      Origin = 'ISADE.CMPNF2.VLUNF2'
      Visible = False
      DisplayFormat = '###,###,###0.0000'
      Precision = 4
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 17
      FieldName = 'TOTITE'
      Origin = 'ISADE.CMPNF2.TOTITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object CmpNf2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.CMPNF2.CODEMP'
      Visible = False
    end
    object CmpNf2DTENFS: TDateTimeField
      FieldName = 'DTENFS'
      Origin = 'ISADE.CMPNF2.DTENFS'
      Visible = False
    end
    object CmpNf2SEQNFS: TIntegerField
      FieldName = 'SEQNFS'
      Origin = 'ISADE.CMPNF2.SEQNFS'
      Visible = False
    end
    object CmpNf2SEQNF2: TIntegerField
      FieldName = 'SEQNF2'
      Origin = 'ISADE.CMPNF2.SEQNF2'
      Visible = False
    end
    object CmpNf2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.CMPNF2.CODEIT'
      Visible = False
    end
    object CmpNf2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.CMPNF2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.CMPNF2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Origin = 'ISADE.CMPNF2.DESNF2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Origin = 'ISADE.CMPNF2.OBSNF2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNf2REFNF2: TStringField
      FieldName = 'REFNF2'
      Origin = 'ISADE.CMPNF2.REFNF2'
      Visible = False
      FixedChar = True
    end
    object CmpNf2LIQNF2: TFloatField
      FieldName = 'LIQNF2'
      Origin = 'ISADE.CMPNF2.LIQNF2'
      Visible = False
    end
    object CmpNf2BRTNF2: TFloatField
      FieldName = 'BRTNF2'
      Origin = 'ISADE.CMPNF2.BRTNF2'
      Visible = False
    end
    object CmpNf2LINNF2: TIntegerField
      FieldName = 'LINNF2'
      Origin = 'ISADE.CMPNF2.LINNF2'
      Visible = False
    end
    object CmpNf2QTDNF2: TFloatField
      FieldName = 'QTDNF2'
      Origin = 'ISADE.CMPNF2.QTDNF2'
      Visible = False
    end
    object CmpNf2SLDNF2: TFloatField
      FieldName = 'SLDNF2'
      Origin = 'ISADE.CMPNF2.SLDNF2'
      Visible = False
    end
    object CmpNf2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.CMPNF2.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2SEQNFG: TIntegerField
      FieldName = 'SEQNFG'
      Origin = 'ISADE.CMPNF2.SEQNFG'
      Visible = False
    end
    object CmpNf2SEQNF3: TIntegerField
      FieldName = 'SEQNF3'
      Origin = 'ISADE.CMPNF2.SEQNF3'
      Visible = False
    end
    object CmpNf2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.CMPNF2.BASIPI'
      Visible = False
    end
    object CmpNf2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.CMPNF2.BASICM'
      Visible = False
    end
    object CmpNf2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.CMPNF2.TOTICM'
      Visible = False
    end
    object CmpNf2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.CMPNF2.BASSUB'
      Visible = False
    end
    object CmpNf2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.CMPNF2.TOTSUB'
      Visible = False
    end
    object CmpNf2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.CMPNF2.TOTLIQ'
      Visible = False
    end
    object CmpNf2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.CMPNF2.TOTBRT'
      Visible = False
    end
    object CmpNf2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.CMPNF2.TOTPIS'
      Visible = False
    end
    object CmpNf2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.CMPNF2.TOTCOF'
      Visible = False
    end
    object CmpNf2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.CMPNF2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.CMPNF2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.CMPNF2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.CMPNF2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.CMPNF2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.CMPNF2.REDIPI'
      Visible = False
    end
    object CmpNf2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.CMPNF2.BSCIPI'
      Visible = False
    end
    object CmpNf2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.CMPNF2.REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.CMPNF2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.CMPNF2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.CMPNF2.REDICM'
      Visible = False
    end
    object CmpNf2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.CMPNF2.BSCICM'
      Visible = False
    end
    object CmpNf2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.CMPNF2.INCREV'
      Visible = False
    end
    object CmpNf2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.CMPNF2.INCFIN'
      Visible = False
    end
    object CmpNf2NRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.CMPNF2.NRONFS'
      Visible = False
    end
    object CmpNf2NRONF2: TIntegerField
      FieldName = 'NRONF2'
      Origin = 'ISADE.CMPNF2.NRONF2'
      Visible = False
    end
    object CmpNf2FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.CMPNF2.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNf2FLGENT: TStringField
      DisplayWidth = 3
      FieldName = 'FLGENT'
      Origin = 'ISADE.CMPNF2.FLGENT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTINFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTINFE'
      Origin = 'ISADE.CMPNF2.QTINFE'
      Visible = False
    end
    object CmpNf2SEQNFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNFE'
      Origin = 'ISADE.CMPNF2.SEQNFE'
      Visible = False
    end
    object CmpNf2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.CMPNF2.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2DESNC1: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC1'
      Origin = 'ISADE.CMPNF2.DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC2: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC2'
      Origin = 'ISADE.CMPNF2.DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC3: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC3'
      Origin = 'ISADE.CMPNF2.DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC4: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC4'
      Origin = 'ISADE.CMPNF2.DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC5: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC5'
      Origin = 'ISADE.CMPNF2.DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC6: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC6'
      Origin = 'ISADE.CMPNF2.DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC7: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC7'
      Origin = 'ISADE.CMPNF2.DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2DESNC8: TStringField
      DisplayWidth = 80
      FieldName = 'DESNC8'
      Origin = 'ISADE.CMPNF2.DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object CmpNf2TRBSUB: TStringField
      DisplayWidth = 3
      FieldName = 'TRBSUB'
      Origin = 'ISADE.CMPNF2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2ICMSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      Origin = 'ISADE.CMPNF2.ICMSUB'
      Visible = False
    end
    object CmpNf2MRGSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      Origin = 'ISADE.CMPNF2.MRGSUB'
      Visible = False
    end
    object CmpNf2BASESB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASESB'
      Origin = 'ISADE.CMPNF2.BASESB'
      Visible = False
    end
    object CmpNf2TOTFRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTFRT'
      Origin = 'ISADE.CMPNF2.TOTFRT'
      Visible = False
    end
    object CmpNf2TOTSEG: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTSEG'
      Origin = 'ISADE.CMPNF2.TOTSEG'
      Visible = False
    end
    object CmpNf2TOTDES: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTDES'
      Origin = 'ISADE.CMPNF2.TOTDES'
      Visible = False
    end
    object CmpNf2BAICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMF'
      Origin = 'ISADE.CMPNF2.BAICMF'
      Visible = False
    end
    object CmpNf2TOICMF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMF'
      Origin = 'ISADE.CMPNF2.TOICMF'
      Visible = False
    end
    object CmpNf2BAICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMS'
      Origin = 'ISADE.CMPNF2.BAICMS'
      Visible = False
    end
    object CmpNf2TOICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMS'
      Origin = 'ISADE.CMPNF2.TOICMS'
      Visible = False
    end
    object CmpNf2BAICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'BAICMD'
      Origin = 'ISADE.CMPNF2.BAICMD'
      Visible = False
    end
    object CmpNf2TOICMD: TFloatField
      DisplayWidth = 10
      FieldName = 'TOICMD'
      Origin = 'ISADE.CMPNF2.TOICMD'
      Visible = False
    end
    object CmpNf2BAIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIF'
      Origin = 'ISADE.CMPNF2.BAIPIF'
      Visible = False
    end
    object CmpNf2TOIPIF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIF'
      Origin = 'ISADE.CMPNF2.TOIPIF'
      Visible = False
    end
    object CmpNf2BAIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPIS'
      Origin = 'ISADE.CMPNF2.BAIPIS'
      Visible = False
    end
    object CmpNf2TOIPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPIS'
      Origin = 'ISADE.CMPNF2.TOIPIS'
      Visible = False
    end
    object CmpNf2BAIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'BAIPID'
      Origin = 'ISADE.CMPNF2.BAIPID'
      Visible = False
    end
    object CmpNf2TOIPID: TFloatField
      DisplayWidth = 10
      FieldName = 'TOIPID'
      Origin = 'ISADE.CMPNF2.TOIPID'
      Visible = False
    end
    object CmpNf2CODCFO: TStringField
      DisplayWidth = 10
      FieldName = 'CODCFO'
      Origin = 'ISADE.CMPNF2.CODCFO'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2QTNNF2: TFloatField
      DisplayWidth = 10
      FieldName = 'QTNNF2'
      Origin = 'ISADE.CMPNF2.QTNNF2'
      Visible = False
    end
    object CmpNf2NROADI: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROADI'
      Origin = 'ISADE.CMPNF2.NROADI'
      Visible = False
    end
    object CmpNf2SEQADI: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQADI'
      Origin = 'ISADE.CMPNF2.SEQADI'
      Visible = False
    end
    object CmpNf2FABADI: TStringField
      DisplayWidth = 60
      FieldName = 'FABADI'
      Origin = 'ISADE.CMPNF2.FABADI'
      Visible = False
      Size = 60
    end
    object CmpNf2DSCADI: TFloatField
      DisplayWidth = 10
      FieldName = 'DSCADI'
      Origin = 'ISADE.CMPNF2.DSCADI'
      Visible = False
    end
  end
  object UpNf2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNf2'
      'set'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESNF2 = :DESNF2,'
      '  OBSNF2 = :OBSNF2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFNF2 = :REFNF2,'
      '  LIQNF2 = :LIQNF2,'
      '  BRTNF2 = :BRTNF2,'
      '  LINNF2 = :LINNF2,'
      '  QTPNF2 = :QTPNF2,'
      '  QTDNF2 = :QTDNF2,'
      '  SLDNF2 = :SLDNF2,'
      '  VLUNF2 = :VLUNF2,'
      '  IPINF2 = :IPINF2,'
      '  CLSIPI = :CLSIPI,'
      '  SEQNFG = :SEQNFG,'
      '  SEQNF3 = :SEQNF3,'
      '  ICMNF2 = :ICMNF2,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTNF2 = :TOTNF2,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  TRBIPI = :TRBIPI,'
      '  REDIPI = :REDIPI,'
      '  BSCIPI = :BSCIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  TRBICM = :TRBICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  NRONFS = :NRONFS,'
      '  NRONF2 = :NRONF2,'
      '  FLGATU = :FLGATU,'
      '  FLGENT = :FLGENT,'
      '  QTINFE = :QTINFE,'
      '  SEQNFE = :SEQNFE,'
      '  CODTXF = :CODTXF'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  SEQNF2 = :OLD_SEQNF2')
    InsertSQL.Strings = (
      'insert into CmpNf2'
      
        '  (CODEMP, DTENFS, SEQNFS, SEQNF2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      
        '   CODTAM, CODCOR, DESNF2, OBSNF2, CODST1, CODST2, CODUND, REFNF' +
        '2, LIQNF2, '
      
        '   BRTNF2, LINNF2, QTPNF2, QTDNF2, SLDNF2, VLUNF2, IPINF2, CLSIP' +
        'I, SEQNFG, '
      
        '   SEQNF3, ICMNF2, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, TOTITE, '
      
        '   TOTNF2, TOTLIQ, TOTBRT, TOTPIS, TOTCOF, CODSTR, TIPSTR, REGIP' +
        'I, TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      
        '   INCFIN, NRONFS, NRONF2, FLGATU, FLGENT, QTINFE, SEQNFE, CODTX' +
        'F)'
      'values'
      
        '  (:CODEMP, :DTENFS, :SEQNFS, :SEQNF2, :CODEIT, :CODCLP, :CODGRU' +
        ', :CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESNF2, :OBSNF2, :CODST1, :CODST2' +
        ', :CODUND, '
      
        '   :REFNF2, :LIQNF2, :BRTNF2, :LINNF2, :QTPNF2, :QTDNF2, :SLDNF2' +
        ', :VLUNF2, '
      
        '   :IPINF2, :CLSIPI, :SEQNFG, :SEQNF3, :ICMNF2, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTNF2, :TOTLIQ, :TOTBRT' +
        ', :TOTPIS, '
      
        '   :TOTCOF, :CODSTR, :TIPSTR, :REGIPI, :TIPIPI, :TRBIPI, :REDIPI' +
        ', :BSCIPI, '
      
        '   :REGICM, :TIPICM, :TRBICM, :REDICM, :BSCICM, :INCREV, :INCFIN' +
        ', :NRONFS, '
      '   :NRONF2, :FLGATU, :FLGENT, :QTINFE, :SEQNFE, :CODTXF)')
    DeleteSQL.Strings = (
      'delete from CmpNf2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  SEQNF2 = :OLD_SEQNF2')
    Left = 51
    Top = 275
  end
  object DSCMPNF2: TDataSource
    DataSet = CmpNf2
    OnDataChange = DSCMPNF2DataChange
    Left = 80
    Top = 280
  end
  object UpFatArq: TUpdateSQL
    ModifySQL.Strings = (
      'update cmpnfs'
      'set'
      '  ARQNFE = :ARQNFE,'
      '  FLGATU = :FLGATU,'
      '  NFETH = :NFETH,'
      '  SITNFS = :SITNFS'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    InsertSQL.Strings = (
      'insert into cmpnfs'
      '  (ARQNFE, FLGATU, NFETH, SITNFS)'
      'values'
      '  (:ARQNFE, :FLGATU, :NFETH, :SITNFS)')
    DeleteSQL.Strings = (
      'delete from cmpnfs'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 53
    Top = 304
  end
  object FatArq: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodEmp,'
      '       DteNFS,'
      '       NumNFS,'
      '       SeqNFS,'
      '       ArqNfe,'
      '       FlgAtu,'
      '       id_cmpnfs,'
      '       nfeth,'
      '     '
      'sitnfs'
      'From cmpnfs')
    UpdateObject = UpFatArq
    ValidateWithMask = True
    Left = 25
    Top = 304
    object FatArqCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object FatArqDTENFS: TDateTimeField
      FieldName = 'DTENFS'
    end
    object FatArqNUMNFS: TStringField
      FieldName = 'NUMNFS'
      FixedChar = True
      Size = 15
    end
    object FatArqSEQNFS: TIntegerField
      FieldName = 'SEQNFS'
    end
    object FatArqARQNFE: TBlobField
      FieldName = 'ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object FatArqFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatArqID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
    end
    object FatArqNFETH: TIntegerField
      FieldName = 'NFETH'
    end
    object FatArqSITNFS: TStringField
      FieldName = 'SITNFS'
      FixedChar = True
      Size = 45
    end
  end
  object IdSMTP1: TIdSMTP
    ASCIIFilter = False
    InterceptEnabled = False
    RecvBufferSize = 8192
    Port = 25
    SocksInfo.Authentication = saNoAuthentication
    SocksInfo.Port = 0
    SocksInfo.Version = svNoSocks
    AuthenticationType = atNone
    Left = 144
    Top = 264
  end
  object IdMessage1: TIdMessage
    BccList = <>
    CCList = <>
    NoDecode = False
    Recipients = <>
    ReplyTo = <>
    UseNowForDate = True
    Left = 176
    Top = 264
  end
end
