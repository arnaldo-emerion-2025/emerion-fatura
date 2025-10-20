inherited fmManRo6: TfmManRo6
  Left = 0
  Caption = 
    'Notas fiscais/Romaneios (Fornecedores) - Emissão de nota fiscal ' +
    'eletrônica'
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
  object bEnviar: TSpeedButton
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
    OnClick = bEnviarClick
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
  object grCmpNf21: TdxDBGraphicEdit
    Left = 2
    Top = 280
    Width = 782
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
  object grCmpNfs1: TdxDBGraphicEdit
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
  object grCmpNfs: ThGrid
    Tag = 1
    Left = 4
    Top = 38
    Width = 777
    Height = 211
    Selected.Strings = (
      'NRONFS'#9'12'#9'Nota Fiscal'
      'DTEFAT'#9'10'#9'Emissão'
      'CODPFA'#9'17'#9'Padrão Fat.'
      'NOMFOR'#9'51'#9'Fornecedor'#9'F'
      'TOTGE1'#9'12'#9'           Total da Nota')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCmpNfs
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
    Left = 202
    Top = 123
    Width = 382
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
      OnKeyPress = EdPsqNroNfsKeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
  end
  object bAtualizar: TBitBtn
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
  object pnFornecedor: TPanel
    Left = 584
    Top = 253
    Width = 200
    Height = 27
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do fornecedor:  '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object pnCodFor: TLabel
      Left = 190
      Top = 6
      Width = 8
      Height = 14
      Alignment = taRightJustify
      Caption = '0'
    end
  end
  object pnDesNf2: TPanel
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
  object grCmpNf2: ThGrid
    Tag = 1
    Left = 4
    Top = 282
    Width = 776
    Height = 131
    Selected.Strings = (
      'CODITE'#9'15'#9'Item'
      'CODCFO'#9'8'#9'   CFOP'
      'NCMNF2'#9'11'#9'       NCM'
      'CODST1'#9'3'#9'ST1'
      'CODST2'#9'4'#9' ST2'
      'CODUND'#9'6'#9'   UN    '
      'QTPNF2'#9'10'#9'           Qtde'
      'VLUNF2'#9'10'#9'        Unitário'
      'TOTITE'#9'10'#9'     Total item'
      'ICMNF2'#9'5'#9'     ICMS'
      'IPINF2'#9'3'#9'   IPI'
      'TOTIPI'#9'10'#9'      Total IPI')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCmpNf2
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 10
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
  object pnalterar: TPanel
    Left = 4
    Top = 345
    Width = 776
    Height = 26
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 11
    Visible = False
    OnExit = pnalterarExit
    object pnCodIte: TLabel
      Left = 3
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
    object pnQtdIte: TLabel
      Left = 412
      Top = 4
      Width = 21
      Height = 14
      Alignment = taRightJustify
      Caption = '750'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnTotIte: TLabel
      Left = 564
      Top = 4
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = '180,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnIcmIte: TLabel
      Left = 645
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
    object pnIpiIte: TLabel
      Left = 679
      Top = 4
      Width = 14
      Height = 14
      Alignment = taRightJustify
      Caption = '15'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnTotIpi: TLabel
      Left = 742
      Top = 4
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = '27,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnVlqIte: TLabel
      Left = 478
      Top = 4
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = '0,2400'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 110
      Top = 1
      Width = 60
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
      DataSource = DsCmpNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 169
      Top = 1
      Width = 84
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
      DataSource = DsCmpNf2
      MaxLength = 30
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 3
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 252
      Top = 1
      Width = 25
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
      OnKeyPress = EdPsqNroNfsKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsCmpNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 276
      Top = 1
      Width = 37
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
      OnKeyPress = EdPsqNroNfsKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsCmpNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 312
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
      DataSource = DsCmpNf2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object CmpNfs: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.Id_CmpNfs,'
      '           CmpNfs.CodEmp,'
      '           CmpNfs.DteFat,'
      '           CmpNfs.UfeNfs,'
      '           CmpNfs.QtiNfs,'
      '           CmpNfs.NroNfs,'
      '           CmpNfs.CodPfa,'
      '           CmpNfs.TipPfa,'
      '           CmpNfs.ModPfa,'
      '           CmpNfs.CodCf1,'
      '           CmpNfs.CodCf2,'
      '           CmpNfs.FlgSai,'
      '           CmpNfs.FlgEnt,'
      '           CmpNfs.CodFor,'
      '           CmpNfs.TipFrt,'
      '           CmpNfs.EspNfs,'
      '           CmpNfs.MarNfs,'
      '           CmpNfs.IntFin,'
      '           CmpNfs.DesNat,'
      '           CmpNfs.InsSub,'
      '           CmpNfs.CodTra,'
      '           CmpNfs.NomTra,'
      '           CmpNfs.CgcTra,'
      '           CmpNfs.InsTra,'
      '           CmpNfs.TenTra,'
      '           CmpNfs.EndTra,'
      '           CmpNfs.RefTra,'
      '           CmpNfs.NumTra,'
      '           CmpNfs.BaiTra,'
      '           CmpNfs.CidTra,'
      '           CmpNfs.UfeTra,'
      '           CmpNfs.CepTra,'
      '           CmpNfs.NumNfs,'
      '           CmpNfs.PlcTra,'
      '           CmpNfs.UfePlc,'
      '           CmpNfs.TefFor,'
      '           CmpNfs.EnfFor,'
      '           CmpNfs.RffFor,'
      '           CmpNfs.NrfFor,'
      '           CmpNfs.BafFor,'
      '           CmpNfs.CifFor,'
      '           CmpNfs.UffFor,'
      '           CmpNfs.CefFor,'
      '           CmpNfs.TenFor,'
      '           CmpNfs.EndFor,'
      '           CmpNfs.RefFor,'
      '           CmpNfs.NumFor,'
      '           CmpNfs.BaiFor,'
      '           CmpNfs.CidFor,'
      '           CmpNfs.UfeFor,'
      '           CmpNfs.CepFor,'
      '           CmpNfs.CgeFor,'
      '           CmpNfs.IneFor,'
      '           CmpNfs.InfLiq,'
      '           CmpNfs.InfBrt,'
      '           CmpNfs.AltVol,'
      '           CmpNfs.LotNfe,'
      '           CmpNfs.EnvNfe,'
      '           CmpNfs.SeqNfe,'
      '           CmpNfs.DteNfe,'
      '           CmpNfs.RecNfe,'
      '           CmpNfs.ProNfe,'
      '           CmpNfs.DopNfe,'
      '           CmpNfs.HreNfe,'
      '           CmpNfs.UsuNfe,'
      '           CmpNfs.DtePnf,'
      '           CmpNfs.HrePnf,'
      '           CmpNfs.ImpNfe,'
      '           CmpNfs.RetNfe,'
      '           CmpNfs.FlgAtu,'
      '           CmpNfs.Id_FinUff,'
      '           CmpNfs.Id_FinCif,'
      '           CmpNfs.Id_FinUfe,'
      '           CmpNfs.Id_FinCie,'
      '           CmpNfs.Id_TraUfe,'
      '           CmpNfs.Id_TraCie,'
      '           CmpNfs.TrbPis,'
      '           CmpNfs.PerPis,'
      '           CmpNfs.TrbCof,'
      '           CmpNfs.PerCof,'
      '           CmpNfs.TotIt1,'
      '           CmpNfs.TotFrt,'
      '           CmpNfs.TotSeg,'
      '           CmpNfs.TotDes,'
      '           CmpNfs.BasImp,'
      '           CmpNfs.TotImp,'
      '           CmpNfs.TotIp1,'
      '           CmpNfs.TotPis,'
      '           CmpNfs.TotCof,'
      '           CmpNfs.BasIc1,'
      '           CmpNfs.TotIc1,'
      '           CmpNfs.BasSu1,'
      '           CmpNfs.TotSu1,'
      '           CmpNfs.TotGe1,'
      '           CmpNfs.Ob1Nfs,'
      '           CmpNfs.Ob2Nfs,'
      '           CmpNfs.Ob3Nfs,'
      '           CmpNfs.Ob4Nfs,'
      '           CmpNfs.Ob5Nfs,'
      '           CmpNfs.Ob6Nfs,'
      '           CmpNfs.Ob7Nfs,'
      '           CmpNfs.Ob8Nfs,'
      '           CmpNfs.NfePis,'
      '           CmpNfs.NfeCof,'
      '           CmpNfs.NroPdi,'
      '           CmpNfs.DtePdi,'
      '           CmpNfs.LocPdi,'
      '           CmpNfs.UfePdi,'
      '           CmpNfs.DteAdu,'
      '           CmpNfs.ExpPdi,'
      '           CmpNfs.Id_EstSip,'
      '           CmpNfs.SitNfs,'
      '           FinFor.NomFor,'
      '           FinFor.EmaFor'
      'From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)'
      'Where CmpNfs.SitNfs = '#39'Concluido'#39
      '     and CmpNfs.FlgNFE = '#39'Sim'#39
      '     and CmpNfs.EnvNFE = '#39'Nao'#39
      'Order by CmpNfs.NroNfs')
    UpdateObject = UpCmpNfs
    ValidateWithMask = True
    Left = 5
    Top = 192
    object CmpNfsNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 12
      FieldName = 'NRONFS'
    end
    object CmpNfsDTEFAT: TDateTimeField
      DisplayLabel = 'Emissão'
      DisplayWidth = 10
      FieldName = 'DTEFAT'
    end
    object CmpNfsCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 17
      FieldName = 'CODPFA'
      Size = 15
    end
    object CmpNfsNOMFOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 51
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 70
    end
    object CmpNfsTOTGE1: TFloatField
      DisplayLabel = '           Total da Nota'
      DisplayWidth = 12
      FieldName = 'TOTGE1'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
      Visible = False
    end
    object CmpNfsCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpNfsUFENFS: TStringField
      FieldName = 'UFENFS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      Size = 7
    end
    object CmpNfsCODCF1: TStringField
      FieldName = 'CODCF1'
      Visible = False
      Size = 15
    end
    object CmpNfsCODCF2: TStringField
      FieldName = 'CODCF2'
      Visible = False
      Size = 15
    end
    object CmpNfsFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGENT: TStringField
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpNfsTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsESPNFS: TStringField
      FieldName = 'ESPNFS'
      Visible = False
      Size = 15
    end
    object CmpNfsMARNFS: TStringField
      FieldName = 'MARNFS'
      Visible = False
      Size = 15
    end
    object CmpNfsINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsDESNAT: TStringField
      FieldName = 'DESNAT'
      Visible = False
      Size = 100
    end
    object CmpNfsINSSUB: TStringField
      FieldName = 'INSSUB'
      Visible = False
      Size = 18
    end
    object CmpNfsCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
    end
    object CmpNfsNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Visible = False
      Size = 70
    end
    object CmpNfsCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Visible = False
      Size = 18
    end
    object CmpNfsINSTRA: TStringField
      FieldName = 'INSTRA'
      Visible = False
      Size = 18
    end
    object CmpNfsTENTRA: TStringField
      FieldName = 'TENTRA'
      Visible = False
      Size = 10
    end
    object CmpNfsENDTRA: TStringField
      FieldName = 'ENDTRA'
      Visible = False
      Size = 40
    end
    object CmpNfsREFTRA: TStringField
      FieldName = 'REFTRA'
      Visible = False
      Size = 40
    end
    object CmpNfsNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Visible = False
      Size = 10
    end
    object CmpNfsBAITRA: TStringField
      FieldName = 'BAITRA'
      Visible = False
    end
    object CmpNfsCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Visible = False
    end
    object CmpNfsUFETRA: TStringField
      FieldName = 'UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Visible = False
      Size = 7
    end
    object CmpNfsUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsTEFFOR: TStringField
      FieldName = 'TEFFOR'
      Visible = False
      Size = 10
    end
    object CmpNfsENFFOR: TStringField
      FieldName = 'ENFFOR'
      Visible = False
      Size = 70
    end
    object CmpNfsRFFFOR: TStringField
      FieldName = 'RFFFOR'
      Visible = False
      Size = 40
    end
    object CmpNfsNRFFOR: TStringField
      FieldName = 'NRFFOR'
      Visible = False
      Size = 10
    end
    object CmpNfsBAFFOR: TStringField
      FieldName = 'BAFFOR'
      Visible = False
    end
    object CmpNfsCIFFOR: TStringField
      FieldName = 'CIFFOR'
      Visible = False
    end
    object CmpNfsUFFFOR: TStringField
      FieldName = 'UFFFOR'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsCEFFOR: TStringField
      FieldName = 'CEFFOR'
      Visible = False
      Size = 8
    end
    object CmpNfsTENFOR: TStringField
      FieldName = 'TENFOR'
      Visible = False
      Size = 10
    end
    object CmpNfsENDFOR: TStringField
      FieldName = 'ENDFOR'
      Visible = False
      Size = 70
    end
    object CmpNfsREFFOR: TStringField
      FieldName = 'REFFOR'
      Visible = False
      Size = 40
    end
    object CmpNfsNUMFOR: TStringField
      FieldName = 'NUMFOR'
      Visible = False
      Size = 10
    end
    object CmpNfsBAIFOR: TStringField
      FieldName = 'BAIFOR'
      Visible = False
    end
    object CmpNfsCIDFOR: TStringField
      FieldName = 'CIDFOR'
      Visible = False
    end
    object CmpNfsUFEFOR: TStringField
      FieldName = 'UFEFOR'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsCEPFOR: TStringField
      FieldName = 'CEPFOR'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsCGEFOR: TStringField
      FieldName = 'CGEFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINEFOR: TStringField
      FieldName = 'INEFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Visible = False
    end
    object CmpNfsINFBRT: TFloatField
      FieldName = 'INFBRT'
      Visible = False
    end
    object CmpNfsALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Visible = False
    end
    object CmpNfsLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Visible = False
    end
    object CmpNfsENVNFE: TStringField
      FieldName = 'ENVNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Visible = False
      FixedChar = True
      Size = 44
    end
    object CmpNfsDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Visible = False
    end
    object CmpNfsRECNFE: TStringField
      FieldName = 'RECNFE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsPRONFE: TStringField
      FieldName = 'PRONFE'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Visible = False
    end
    object CmpNfsHRENFE: TStringField
      FieldName = 'HRENFE'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Visible = False
    end
    object CmpNfsDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Visible = False
    end
    object CmpNfsHREPNF: TStringField
      FieldName = 'HREPNF'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsRETNFE: TStringField
      FieldName = 'RETNFE'
      Visible = False
      Size = 100
    end
    object CmpNfsFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Visible = False
    end
    object CmpNfsID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Visible = False
    end
    object CmpNfsID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Visible = False
    end
    object CmpNfsID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Visible = False
    end
    object CmpNfsID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Visible = False
    end
    object CmpNfsID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Visible = False
    end
    object CmpNfsTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsPERPIS: TFloatField
      FieldName = 'PERPIS'
      Visible = False
    end
    object CmpNfsTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsPERCOF: TFloatField
      FieldName = 'PERCOF'
      Visible = False
    end
    object CmpNfsTOTIT1: TFloatField
      FieldName = 'TOTIT1'
      Visible = False
    end
    object CmpNfsTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Visible = False
    end
    object CmpNfsTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Visible = False
    end
    object CmpNfsTOTDES: TFloatField
      FieldName = 'TOTDES'
      Visible = False
    end
    object CmpNfsTOTIP1: TFloatField
      FieldName = 'TOTIP1'
      Visible = False
    end
    object CmpNfsTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object CmpNfsTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object CmpNfsBASIC1: TFloatField
      FieldName = 'BASIC1'
      Visible = False
    end
    object CmpNfsTOTIC1: TFloatField
      FieldName = 'TOTIC1'
      Visible = False
    end
    object CmpNfsBASSU1: TFloatField
      FieldName = 'BASSU1'
      Visible = False
    end
    object CmpNfsTOTSU1: TFloatField
      FieldName = 'TOTSU1'
      Visible = False
    end
    object CmpNfsOB1NFS: TStringField
      FieldName = 'OB1NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB2NFS: TStringField
      FieldName = 'OB2NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB3NFS: TStringField
      FieldName = 'OB3NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB4NFS: TStringField
      FieldName = 'OB4NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB5NFS: TStringField
      FieldName = 'OB5NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB6NFS: TStringField
      FieldName = 'OB6NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB7NFS: TStringField
      FieldName = 'OB7NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsOB8NFS: TStringField
      FieldName = 'OB8NFS'
      Visible = False
      Size = 80
    end
    object CmpNfsNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsNFECOF: TStringField
      FieldName = 'NFECOF'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsEMAFOR: TStringField
      FieldName = 'EMAFOR'
      Visible = False
      Size = 50
    end
    object CmpNfsNUMNFS: TStringField
      DisplayWidth = 15
      FieldName = 'NUMNFS'
      Visible = False
      Size = 15
    end
    object CmpNfsMODPFA: TStringField
      FieldName = 'MODPFA'
      Visible = False
    end
    object CmpNfsNROPDI: TStringField
      FieldName = 'NROPDI'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsDTEPDI: TDateTimeField
      FieldName = 'DTEPDI'
      Visible = False
    end
    object CmpNfsLOCPDI: TStringField
      FieldName = 'LOCPDI'
      Visible = False
      Size = 60
    end
    object CmpNfsUFEPDI: TStringField
      FieldName = 'UFEPDI'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsDTEADU: TDateTimeField
      FieldName = 'DTEADU'
      Visible = False
    end
    object CmpNfsEXPPDI: TStringField
      FieldName = 'EXPPDI'
      Visible = False
      Size = 60
    end
    object CmpNfsSITNFS: TStringField
      FieldName = 'SITNFS'
      Visible = False
      Size = 45
    end
    object CmpNfsBASIMP: TFloatField
      FieldName = 'BASIMP'
      Visible = False
    end
    object CmpNfsTOTIMP: TFloatField
      FieldName = 'TOTIMP'
      Visible = False
    end
    object CmpNfsID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Visible = False
    end
    object CmpNfsQTINFS: TIntegerField
      FieldName = 'QTINFS'
      Visible = False
    end
  end
  object DsCmpNfs: TwwDataSource
    DataSet = CmpNfs
    OnDataChange = DsCmpNfsDataChange
    Left = 33
    Top = 192
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 33
    Top = 220
  end
  object UpCmpNfs: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FLGSAI = :FLGSAI,'
      '  FLGENT = :FLGENT,'
      '  TIPFRT = :TIPFRT,'
      '  ESPNFS = :ESPNFS,'
      '  MARNFS = :MARNFS,'
      '  INTFIN = :INTFIN,'
      '  DESNAT = :DESNAT,'
      '  INSSUB = :INSSUB,'
      '  CODTRA = :CODTRA,'
      '  NOMTRA = :NOMTRA,'
      '  CGCTRA = :CGCTRA,'
      '  INSTRA = :INSTRA,'
      '  TENTRA = :TENTRA,'
      '  ENDTRA = :ENDTRA,'
      '  REFTRA = :REFTRA,'
      '  NUMTRA = :NUMTRA,'
      '  BAITRA = :BAITRA,'
      '  CIDTRA = :CIDTRA,'
      '  UFETRA = :UFETRA,'
      '  CEPTRA = :CEPTRA,'
      '  NUMNFS = :NUMNFS,'
      '  PLCTRA = :PLCTRA,'
      '  UFEPLC = :UFEPLC,'
      '  TEFFOR = :TEFFOR,'
      '  ENFFOR = :ENFFOR,'
      '  RFFFOR = :RFFFOR,'
      '  NRFFOR = :NRFFOR,'
      '  BAFFOR = :BAFFOR,'
      '  CIFFOR = :CIFFOR,'
      '  UFFFOR = :UFFFOR,'
      '  CEFFOR = :CEFFOR,'
      '  TENFOR = :TENFOR,'
      '  ENDFOR = :ENDFOR,'
      '  REFFOR = :REFFOR,'
      '  NUMFOR = :NUMFOR,'
      '  BAIFOR = :BAIFOR,'
      '  CIDFOR = :CIDFOR,'
      '  UFEFOR = :UFEFOR,'
      '  CEPFOR = :CEPFOR,'
      '  CGEFOR = :CGEFOR,'
      '  INEFOR = :INEFOR,'
      '  INFLIQ = :INFLIQ,'
      '  INFBRT = :INFBRT,'
      '  ALTVOL = :ALTVOL,'
      '  LOTNFE = :LOTNFE,'
      '  ENVNFE = :ENVNFE,'
      '  SEQNFE = :SEQNFE,'
      '  DTENFE = :DTENFE,'
      '  RECNFE = :RECNFE,'
      '  PRONFE = :PRONFE,'
      '  DOPNFE = :DOPNFE,'
      '  HRENFE = :HRENFE,'
      '  USUNFE = :USUNFE,'
      '  DTEPNF = :DTEPNF,'
      '  HREPNF = :HREPNF,'
      '  IMPNFE = :IMPNFE,'
      '  RETNFE = :RETNFE,'
      '  FLGATU = :FLGATU,'
      '  ID_FINUFF = :ID_FINUFF,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  ID_FINUFE = :ID_FINUFE,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  ID_TRAUFE = :ID_TRAUFE,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  ID_ESTSIP = :ID_ESTSIP,'
      '  TRBPIS = :TRBPIS,'
      '  PERPIS = :PERPIS,'
      '  TRBCOF = :TRBCOF,'
      '  PERCOF = :PERCOF,'
      '  NFEPIS = :NFEPIS,'
      '  NFECOF = :NFECOF'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      
        '  (ID_CMPNFS, CODEMP, DTEFAT, UFENFS, QTINFS, NRONFS, CODPFA, TI' +
        'PPFA, '
      'MODPFA, '
      
        '   CODCF1, CODCF2, FLGSAI, FLGENT, CODFOR, TIPFRT, ESPNFS, MARNF' +
        'S, '
      'INTFIN, '
      
        '   DESNAT, INSSUB, CODTRA, NOMTRA, CGCTRA, INSTRA, TENTRA, ENDTR' +
        'A, '
      'REFTRA, '
      
        '   NUMTRA, BAITRA, CIDTRA, UFETRA, CEPTRA, NUMNFS, PLCTRA, UFEPL' +
        'C, '
      'TEFFOR, '
      
        '   ENFFOR, RFFFOR, NRFFOR, BAFFOR, CIFFOR, UFFFOR, CEFFOR, TENFO' +
        'R, '
      'ENDFOR, '
      
        '   REFFOR, NUMFOR, BAIFOR, CIDFOR, UFEFOR, CEPFOR, CGEFOR, INEFO' +
        'R, '
      'INFLIQ, '
      
        '   INFBRT, ALTVOL, LOTNFE, ENVNFE, SEQNFE, DTENFE, RECNFE, PRONF' +
        'E, '
      'DOPNFE, '
      
        '   HRENFE, USUNFE, DTEPNF, HREPNF, IMPNFE, RETNFE, FLGATU, ID_FI' +
        'NUFF, '
      'ID_FINCIF, '
      
        '   ID_FINUFE, ID_FINCIE, ID_TRAUFE, ID_TRACIE, TRBPIS, PERPIS, T' +
        'RBCOF, '
      
        '   PERCOF, TOTIT1, TOTFRT, TOTSEG, TOTDES, BASIMP, TOTIMP, TOTIP' +
        '1, '
      'TOTPIS, '
      
        '   TOTCOF, BASIC1, TOTIC1, BASSU1, TOTSU1, TOTGE1, OB1NFS, OB2NF' +
        'S, '
      'OB3NFS, '
      
        '   OB4NFS, OB5NFS, OB6NFS, OB7NFS, OB8NFS, NFEPIS, NFECOF, NROPD' +
        'I, '
      'DTEPDI, '
      '   LOCPDI, UFEPDI, DTEADU, EXPPDI, ID_ESTSIP, SITNFS)'
      'values'
      
        '  (:ID_CMPNFS, :CODEMP, :DTEFAT, :UFENFS, :QTINFS, :NRONFS, :COD' +
        'PFA, '
      ':TIPPFA, '
      
        '   :MODPFA, :CODCF1, :CODCF2, :FLGSAI, :FLGENT, :CODFOR, :TIPFRT' +
        ', :ESPNFS, '
      
        '   :MARNFS, :INTFIN, :DESNAT, :INSSUB, :CODTRA, :NOMTRA, :CGCTRA' +
        ', '
      ':INSTRA, '
      
        '   :TENTRA, :ENDTRA, :REFTRA, :NUMTRA, :BAITRA, :CIDTRA, :UFETRA' +
        ', '
      ':CEPTRA, '
      
        '   :NUMNFS, :PLCTRA, :UFEPLC, :TEFFOR, :ENFFOR, :RFFFOR, :NRFFOR' +
        ', '
      ':BAFFOR, '
      
        '   :CIFFOR, :UFFFOR, :CEFFOR, :TENFOR, :ENDFOR, :REFFOR, :NUMFOR' +
        ', '
      ':BAIFOR, '
      
        '   :CIDFOR, :UFEFOR, :CEPFOR, :CGEFOR, :INEFOR, :INFLIQ, :INFBRT' +
        ', :ALTVOL, '
      
        '   :LOTNFE, :ENVNFE, :SEQNFE, :DTENFE, :RECNFE, :PRONFE, :DOPNFE' +
        ', '
      ':HRENFE, '
      
        '   :USUNFE, :DTEPNF, :HREPNF, :IMPNFE, :RETNFE, :FLGATU, :ID_FIN' +
        'UFF, '
      ':ID_FINCIF, '
      
        '   :ID_FINUFE, :ID_FINCIE, :ID_TRAUFE, :ID_TRACIE, :TRBPIS, :PER' +
        'PIS, '
      ':TRBCOF, '
      
        '   :PERCOF, :TOTIT1, :TOTFRT, :TOTSEG, :TOTDES, :BASIMP, :TOTIMP' +
        ', :TOTIP1, '
      
        '   :TOTPIS, :TOTCOF, :BASIC1, :TOTIC1, :BASSU1, :TOTSU1, :TOTGE1' +
        ', :OB1NFS, '
      
        '   :OB2NFS, :OB3NFS, :OB4NFS, :OB5NFS, :OB6NFS, :OB7NFS, :OB8NFS' +
        ', :NFEPIS, '
      
        '   :NFECOF, :NROPDI, :DTEPDI, :LOCPDI, :UFEPDI, :DTEADU, :EXPPDI' +
        ', '
      ':ID_ESTSIP, :SITNFS)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 5
    Top = 220
  end
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 68
    Top = 220
  end
  object FatArq: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.Id_CmpNfs,'
      '           CmpNfs.ArqNfe,'
      '           CmpNfs.FlgAtu'
      'From CmpNfs'
      'Where CmpNfs.Id_CmpNfs = :Id_CmpNfs')
    UpdateObject = UpFatArq
    ValidateWithMask = True
    Left = 68
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_CmpNfs'
        ParamType = ptInput
      end>
    object FatArqFLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatArqID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
    end
    object FatArqARQNFE: TBlobField
      FieldName = 'ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
  end
  object UpFatArq: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  ARQNFE = :ARQNFE,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      '  (ID_CMPNFS, ARQNFE, FLGATU)'
      'values'
      '  (:ID_CMPNFS, :ARQNFE, :FLGATU)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  ID_CMPNFS = :OLD_ID_CMPNFS')
    Left = 96
    Top = 192
  end
  object CmpNf2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpNfs
    SQL.Strings = (
      'Select CmpNf2.Id_CmpNf2,'
      '           CmpNf2.DesNf2,'
      '           CmpNf2.ObsNf2,'
      '           CmpNf2.QtpNf2,'
      '           CmpNf2.VluNf2,'
      '           CmpNf2.IpiNf2,'
      '           CmpNf2.IcmNf2,'
      '           CmpNf2.TotIte,'
      '           CmpNf2.TotIpi,'
      '           CmpNf2.CodCfo,'
      '           CmpNf2.CodSt1,'
      '           CmpNf2.CodSt2,'
      '           CmpNf2.ClsIpi,'
      '           CmpNf2.CodUnd,'
      '           CmpNf2.NroNf2,'
      
        '           CmpNf2.CodClp || _UNICODE_FSS '#39'-'#39' || CmpNf2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || CmpNf2.CodSub || _UNICODE_FSS '#39'.'#39' || CmpNf2' +
        '.CodPro as CodIte'
      'From CmpNf2'
      'Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'
      'Order by CmpNf2.NroNf2')
    UpdateObject = UpCmpNf2
    ValidateWithMask = True
    Left = 5
    Top = 356
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPNFS'
        ParamType = ptInput
      end>
    object CmpNf2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'CODITE'
      Size = 16
    end
    object CmpNf2CODCFO: TStringField
      Alignment = taCenter
      DisplayLabel = '   CFOP'
      DisplayWidth = 8
      FieldName = 'CODCFO'
      Size = 10
    end
    object CmpNf2NCMNF2: TStringField
      Alignment = taCenter
      DisplayLabel = '       NCM'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'NCMNF2'
      OnGetText = CmpNf2NCMNF2GetText
      Size = 10
      Calculated = True
    end
    object CmpNf2CODST1: TStringField
      Alignment = taCenter
      DisplayLabel = 'ST1'
      DisplayWidth = 3
      FieldName = 'CODST1'
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODST2: TStringField
      Alignment = taCenter
      DisplayLabel = ' ST2'
      DisplayWidth = 4
      FieldName = 'CODST2'
      FixedChar = True
      Size = 2
    end
    object CmpNf2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = '   UN    '
      DisplayWidth = 6
      FieldName = 'CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = '           Qtde'
      DisplayWidth = 10
      FieldName = 'QTPNF2'
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = '        Unitário'
      DisplayWidth = 10
      FieldName = 'VLUNF2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = '     Total item'
      DisplayWidth = 10
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = '     ICMS'
      DisplayWidth = 5
      FieldName = 'ICMNF2'
      DisplayFormat = '##0'
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = '   IPI'
      DisplayWidth = 3
      FieldName = 'IPINF2'
      DisplayFormat = '##0'
    end
    object CmpNf2TOTIPI: TFloatField
      DisplayLabel = '      Total IPI'
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2ID_CMPNF2: TIntegerField
      FieldName = 'ID_CMPNF2'
      Visible = False
    end
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Visible = False
      Size = 70
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Visible = False
      Size = 70
    end
    object CmpNf2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      Size = 30
    end
    object CmpNf2NRONF2: TIntegerField
      FieldName = 'NRONF2'
      Visible = False
    end
  end
  object UpCmpNf2: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNf2'
      'set'
      '  CODCFO = :CODCFO,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CLSIPI = :CLSIPI,'
      '  CODUND = :CODUND'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    InsertSQL.Strings = (
      'insert into CmpNf2'
      
        '  (ID_CMPNF2, DESNF2, OBSNF2, QTPNF2, VLUNF2, IPINF2, ICMNF2, TO' +
        'TITE, '
      'TOTIPI, '
      '   CODCFO, CODST1, CODST2, CLSIPI, CODUND, NRONF2)'
      'values'
      
        '  (:ID_CMPNF2, :DESNF2, :OBSNF2, :QTPNF2, :VLUNF2, :IPINF2, :ICM' +
        'NF2, '
      ':TOTITE, '
      
        '   :TOTIPI, :CODCFO, :CODST1, :CODST2, :CLSIPI, :CODUND, :NRONF2' +
        ')')
    DeleteSQL.Strings = (
      'delete from CmpNf2'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    Left = 5
    Top = 384
  end
  object DsCmpNf2: TwwDataSource
    DataSet = CmpNf2
    Left = 33
    Top = 356
  end
end
