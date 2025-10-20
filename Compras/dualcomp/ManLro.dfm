inherited fmManLro: TfmManLro
  Left = 320
  Top = 158
  Caption = 'Emissão de Nota Fiscal'
  ClientHeight = 482
  ClientWidth = 786
  OnClose = FormClose
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
    Left = 5
    Top = 10
    Width = 145
    Height = 14
    Caption = 'Operações Selecionadas'
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
    Top = 18
    Width = 186
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 5
    Top = 239
    Width = 32
    Height = 14
    Caption = 'Itens'
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
    Top = 247
    Width = 405
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object bEmitir: TSpeedButton
    Left = 577
    Top = 452
    Width = 208
    Height = 28
    Hint = 'Emitir Nota Fiscal'
    Caption = 'F4 - Emitir Nota Fiscal'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999CD9999CD9999CD9999CD99
      99CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEFEFE
      FEFDFCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFECD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFCD9999FEFEFDFEFCFAFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDCD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFCD9999FEFCFAFEFBF8FEFCFAFEFCFAFEFCFAFEFCFAFE
      FCFAFEFCFAFEFCFAFEFCFAFEFCFAFEFCFAFEFCFACD9999FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEFAF6FEF9F4B27E73B27E
      73B27E73B27E73B27E73B27E73B27E73B27E73B27E73FEFAF6FEFAF6CD9999FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEF8F3
      FEF7F1FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8
      F3FEF8F3CD9999FF00FFFF00FFCD9999CD9999CD9999CD9999CD9999CD9999CD
      9999CD9999FEF7EFFFF6EEFEF7EFFEF7EFFEF7EFFEF7EFFEF7EFFEF7EFFEF7EF
      FEF7EFFEF7EFFEF7EFFEF7EFCD9999FF00FFFF00FFCD9999FEFEFEFEFDFCFEFE
      FEFEFEFEFEFEFEFEFEFECD9999FEF5ECFFF4EBB27E73B27E73B27E73B27E73B2
      7E73B27E73B27E73B27E73B27E73FEF5ECFEF5ECCD9999FF00FFFF00FFCD9999
      FEFEFDFEFCFAFEFEFDFEFEFDFEFEFDFEFEFDCD9999FEF3E9FFF2E6FEF3E9FEF3
      E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9CD9999FF
      00FFFF00FFCD9999FEFCFAFEFBF8FEFCFAFEFCFAFEFCFAFEFCFACD9999FFF2E5
      FFF0E2FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2
      E5FFF2E5CD9999FF00FFFF00FFCD9999FEFAF6FEF9F4B27E73B27E73B27E73B2
      7E73CD9999FFF0E2FFEFDFB27E73B27E73B27E73B27E73B27E73B27E73B27E73
      B27E73B27E73FAEBDEF6E6D9CD9999FF00FFFF00FFCD9999FEF8F3FEF7F1FEF8
      F3FEF8F3FEF8F3FEF8F3CD9999FFEEDFFFECDBFFEEDFFFEEDFFFEEDFFFEEDFFF
      EEDFFFEEDFF9E8D9DECCC1D9CABDCFBDB4C8B3ACCD9999FF00FFFF00FFCD9999
      FEF7EFFFF6EEFEF7EFFEF7EFFEF7EFFEF7EFCD9999FFECDBFFEBD8FFECDBFFEC
      DBFFECDBFFECDBFFECDBFFECDBF5E2D2C4ABA7C2A8A5BBA39FC2AFA9CD9999FF
      00FFFF00FFCD9999FEF5ECFFF4EBB27E73B27E73B27E73B27E73CD9999FFEBD8
      FFEAD5FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8D9C8C5FEFEFDFEF6
      EFDEC9C0CD9999FF00FFFF00FFCD9999FEF3E9FFF2E6FEF3E9FEF3E9FEF3E9FE
      F3E9CD9999FFE9D5FFE8D3FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5
      C6ADA9FEF8F2E8D4CAC3A8A5FF00FFFF00FFFF00FFCD9999FFF2E5FFF0E2FFF2
      E5FFF2E5FFF2E5FFF2E5CD9999FFE7D1FFE7D0FFE7D1FFE7D1FFE7D1FFE7D1FF
      E7D1FFE7D1E7CEBFD3BFB9E8D5CCC3A8A5FF00FFFF00FFFF00FFFF00FFCD9999
      FFF0E2FFEFDFB27E73B27E73B27E73B27E73CD9999FFE6CFFFE6CFFFE6CFFFE6
      CFFFE6CFFFE6CFFFE6CFFFE6CFD5BBB2E0CCC5C3A8A5FF00FFFF00FFFF00FFFF
      00FFFF00FFCD9999FFEEDFFFECDBFFEEDFFFEEDFFFEEDFFFEEDFCD9999CD9999
      CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFCD9999FFECDBFFEBD8FFECDBFFECDBFFECDBFF
      ECDBFFECDBFFECDBF5E2D2C4ABA7C2A8A5BBA39FC2AFA9C3A8A5FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FFEBD8FFEAD5FFEB
      D8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8D9C8C5FEFEFDFEF6EFDEC9C0C3
      A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999
      FFE9D5FFE8D3FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5C6ADA9FEF8
      F2E8D4CAC3A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFCD9999FFE7D1FFE7D0FFE7D1FFE7D1FFE7D1FFE7D1FFE7D1FFE7D1
      E7CEBFD3BFB9E8D5CCC3A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFCD9999FFE6CFFFE6CFFFE6CFFFE6CFFFE6CFFF
      E6CFFFE6CFFFE6CFD5BBB2E0CCC5C3A8A5FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999CD9999CD9999CD99
      99CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = bEmitirClick
  end
  object btnRetornar: TSpeedButton
    Left = 361
    Top = 452
    Width = 208
    Height = 28
    Hint = 'Emitir Nota Fiscal'
    Caption = 'F3 - Retornar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999CD9999CD9999CD9999CD99
      99CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEFEFE
      FEFDFCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFECD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFCD9999FEFEFDFEFCFAFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDCD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFCD9999FEFCFAFEFBF8FEFCFAFEFCFAFEFCFAFEFCFAFE
      FCFAFEFCFAFEFCFAFEFCFAFEFCFAFEFCFAFEFCFACD9999FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEFAF6FEF9F4B27E73B27E
      73B27E73B27E73B27E73B27E73B27E73B27E73B27E73FEFAF6FEFAF6CD9999FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FEF8F3
      FEF7F1FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8
      F3FEF8F3CD9999FF00FFFF00FFCD9999CD9999CD9999CD9999CD9999CD9999CD
      9999CD9999FEF7EFFFF6EEFEF7EFFEF7EFFEF7EFFEF7EFFEF7EFFEF7EFFEF7EF
      FEF7EFFEF7EFFEF7EFFEF7EFCD9999FF00FFFF00FFCD9999FEFEFEFEFDFCFEFE
      FEFEFEFEFEFEFEFEFEFECD9999FEF5ECFFF4EBB27E73B27E73B27E73B27E73B2
      7E73B27E73B27E73B27E73B27E73FEF5ECFEF5ECCD9999FF00FFFF00FFCD9999
      FEFEFDFEFCFAFEFEFDFEFEFDFEFEFDFEFEFDCD9999FEF3E9FFF2E6FEF3E9FEF3
      E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9FEF3E9CD9999FF
      00FFFF00FFCD9999FEFCFAFEFBF8FEFCFAFEFCFAFEFCFAFEFCFACD9999FFF2E5
      FFF0E2FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2E5FFF2
      E5FFF2E5CD9999FF00FFFF00FFCD9999FEFAF6FEF9F4B27E73B27E73B27E73B2
      7E73CD9999FFF0E2FFEFDFB27E73B27E73B27E73B27E73B27E73B27E73B27E73
      B27E73B27E73FAEBDEF6E6D9CD9999FF00FFFF00FFCD9999FEF8F3FEF7F1FEF8
      F3FEF8F3FEF8F3FEF8F3CD9999FFEEDFFFECDBFFEEDFFFEEDFFFEEDFFFEEDFFF
      EEDFFFEEDFF9E8D9DECCC1D9CABDCFBDB4C8B3ACCD9999FF00FFFF00FFCD9999
      FEF7EFFFF6EEFEF7EFFEF7EFFEF7EFFEF7EFCD9999FFECDBFFEBD8FFECDBFFEC
      DBFFECDBFFECDBFFECDBFFECDBF5E2D2C4ABA7C2A8A5BBA39FC2AFA9CD9999FF
      00FFFF00FFCD9999FEF5ECFFF4EBB27E73B27E73B27E73B27E73CD9999FFEBD8
      FFEAD5FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8D9C8C5FEFEFDFEF6
      EFDEC9C0CD9999FF00FFFF00FFCD9999FEF3E9FFF2E6FEF3E9FEF3E9FEF3E9FE
      F3E9CD9999FFE9D5FFE8D3FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5
      C6ADA9FEF8F2E8D4CAC3A8A5FF00FFFF00FFFF00FFCD9999FFF2E5FFF0E2FFF2
      E5FFF2E5FFF2E5FFF2E5CD9999FFE7D1FFE7D0FFE7D1FFE7D1FFE7D1FFE7D1FF
      E7D1FFE7D1E7CEBFD3BFB9E8D5CCC3A8A5FF00FFFF00FFFF00FFFF00FFCD9999
      FFF0E2FFEFDFB27E73B27E73B27E73B27E73CD9999FFE6CFFFE6CFFFE6CFFFE6
      CFFFE6CFFFE6CFFFE6CFFFE6CFD5BBB2E0CCC5C3A8A5FF00FFFF00FFFF00FFFF
      00FFFF00FFCD9999FFEEDFFFECDBFFEEDFFFEEDFFFEEDFFFEEDFCD9999CD9999
      CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFCD9999FFECDBFFEBD8FFECDBFFECDBFFECDBFF
      ECDBFFECDBFFECDBF5E2D2C4ABA7C2A8A5BBA39FC2AFA9C3A8A5FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999FFEBD8FFEAD5FFEB
      D8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8FFEBD8D9C8C5FEFEFDFEF6EFDEC9C0C3
      A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999
      FFE9D5FFE8D3FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5FFE9D5C6ADA9FEF8
      F2E8D4CAC3A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFCD9999FFE7D1FFE7D0FFE7D1FFE7D1FFE7D1FFE7D1FFE7D1FFE7D1
      E7CEBFD3BFB9E8D5CCC3A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFCD9999FFE6CFFFE6CFFFE6CFFFE6CFFFE6CFFF
      E6CFFFE6CFFFE6CFD5BBB2E0CCC5C3A8A5FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCD9999CD9999CD9999CD99
      99CD9999CD9999CD9999CD9999CD9999CD9999CD9999FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = btnRetornarClick
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 4
    Top = 260
    Width = 781
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
    Height = 191
  end
  object dbLib: TdxDBGraphicEdit
    Left = 4
    Top = 32
    Width = 781
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
    Height = 202
  end
  object grNfs: ThGrid
    Tag = 1
    Left = 6
    Top = 34
    Width = 775
    Height = 196
    Selected.Strings = (
      'DTENFS'#9'10'#9'Emitida Em'#9'F'
      'SEQNFS'#9'10'#9'Nro. Operação  '#9'F'
      'NOMFOR'#9'40'#9'Fornecedor'#9'F'
      'QTINFS'#9'10'#9'Qtde Itens'#9'F'
      'TOTIT1'#9'10'#9'       Total de Itens'#9'F'
      'TOTGE1'#9'10'#9'   Total da Operação'#9'F')
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
  object Panel1: TPanel
    Left = 350
    Top = 5
    Width = 227
    Height = 25
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' No. Operação :'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object EdPsqSeqNfs: TdxColorEdit
      Left = 100
      Top = 1
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
      OnKeyPress = EdPsqSeqNfsKeyPress
      CharCase = ecUpperCase
      CorDeFoco = clInfoBk
    end
  end
  object pnCodFor: TPanel
    Left = 568
    Top = 234
    Width = 216
    Height = 25
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Código do Fornecedor :  0000000'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object bAtualizar: TBitBtn
    Left = 579
    Top = 4
    Width = 205
    Height = 27
    Caption = '&Localizar Operação'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
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
  object grNf2: ThGrid
    Tag = 1
    Left = 6
    Top = 262
    Width = 775
    Height = 185
    Selected.Strings = (
      'CODITE'#9'16'#9'Item'
      'DESNF2'#9'40'#9' '
      'QTPNF2'#9'10'#9'            Qtde'
      'VLUNF2'#9'10'#9'       Valor Unitário'
      'IPINF2'#9'3'#9'  IPI'
      'ICMNF2'#9'4'#9'  ICMS'
      'TOTITE'#9'10'#9'    Total do Item')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsNf2
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
  object CmpNfs: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.CodEmp,'
      '           CmpNfs.DteNfs,'
      '           CmpNfs.SeqNfs,'
      '           CmpNfs.DteFat,'
      '           CmpNfs.TotIt1,'
      '           CmpNfs.TotGe1,'
      '           CmpNfs.QtiNfs,'
      '           CmpNfs.CodFor,'
      '           CmpNfs.CodTip,'
      '           CmpNfs.SitNfs,'
      '           CMPNFS.id_CMPNFS,'
      '           FinFor.NomFor'
      'From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)'
      'Where CmpNfs.SitNfs = '#39'Aguardando Emissao de Nota Fiscal'#39
      'Order by CmpNfs.DteNfs,CmpNfs.SeqNfs')
    UpdateObject = UpdateSQL1
    ValidateWithMask = True
    Left = 7
    Top = 201
    object CmpNfsDTENFS: TDateTimeField
      DisplayLabel = 'Emitida Em'
      DisplayWidth = 10
      FieldName = 'DTENFS'
    end
    object CmpNfsSEQNFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Nro. Operação  '
      DisplayWidth = 10
      FieldName = 'SEQNFS'
    end
    object CmpNfsNOMFOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 40
      FieldName = 'NOMFOR'
      FixedChar = True
      Size = 40
    end
    object CmpNfsQTINFS: TIntegerField
      DisplayLabel = 'Qtde Itens'
      DisplayWidth = 10
      FieldName = 'QTINFS'
    end
    object CmpNfsTOTIT1: TFloatField
      DisplayLabel = '       Total de Itens'
      DisplayWidth = 10
      FieldName = 'TOTIT1'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsTOTGE1: TFloatField
      DisplayLabel = '   Total da Operação'
      DisplayWidth = 10
      FieldName = 'TOTGE1'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsCODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpNfsDTEFAT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEFAT'
      Visible = False
    end
    object CmpNfsCODFOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpNfsCODTIP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTIP'
      Visible = False
    end
    object CmpNfsSITNFS: TStringField
      DisplayWidth = 45
      FieldName = 'SITNFS'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object CmpNfsID_CMPNFS: TIntegerField
      FieldName = 'ID_CMPNFS'
      Visible = False
    end
  end
  object DsLib: TwwDataSource
    DataSet = CmpNfs
    OnDataChange = DsLibDataChange
    Left = 35
    Top = 201
  end
  object CmpNf2: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsLib
    SQL.Strings = (
      'Select CmpNf2.CodEmp,'
      '           CmpNf2.DteNfs,'
      '           CmpNf2.SeqNfs,'
      '           CmpNf2.SeqNf2,'
      '           CmpNf2.CodClp,'
      '           CmpNf2.CodGru,'
      '           CmpNf2.CodSub,'
      '           CmpNf2.CodPro,'
      '           CmpNf2.DesNf2,'
      '           CmpNf2.ObsNf2,'
      '           CmpNf2.QtpNf2,'
      '           CmpNf2.QtdNf2,'
      '           CmpNf2.QtnNf2,'
      '           CmpNf2.VluNf2,'
      '           CmpNf2.IpiNf2,'
      '           CmpNf2.IcmNf2,'
      '           CmpNf2.TotIte,'
      '           CmpNf2.NroNf2'
      'From CmpNf2'
      'Where CmpNf2.CodEmp = :CodEmp'
      '     and CmpNf2.DteNfs = :DteNfs'
      '     and CmpNf2.SeqNfs = :SeqNfs'
      'Order by CmpNf2.NroNf2')
    ValidateWithMask = True
    Left = 7
    Top = 418
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
    object CmpNf2CODITE: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = CmpNf2CODITEGetText
      Calculated = True
    end
    object CmpNf2DESNF2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 40
      FieldName = 'DESNF2'
      FixedChar = True
      Size = 70
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = '            Qtde'
      DisplayWidth = 10
      FieldName = 'QTPNF2'
      DisplayFormat = '###,###,##0'
      Precision = 2
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = '       Valor Unitário'
      DisplayWidth = 10
      FieldName = 'VLUNF2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = '  IPI'
      DisplayWidth = 3
      FieldName = 'IPINF2'
      DisplayFormat = '##0'
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = '  ICMS'
      DisplayWidth = 4
      FieldName = 'ICMNF2'
      DisplayFormat = '##0'
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = '    Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2QTDNF2: TFloatField
      DisplayLabel = '     Recebido'
      DisplayWidth = 10
      FieldName = 'QTDNF2'
      Visible = False
      DisplayFormat = '###,###,##0'
      Precision = 2
    end
    object CmpNf2QTNNF2: TFloatField
      DisplayLabel = '    Não Atendido'
      DisplayWidth = 10
      FieldName = 'QTNNF2'
      Visible = False
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpNf2DTENFS: TDateTimeField
      FieldName = 'DTENFS'
      Visible = False
    end
    object CmpNf2SEQNFS: TIntegerField
      FieldName = 'SEQNFS'
      Visible = False
    end
    object CmpNf2SEQNF2: TIntegerField
      FieldName = 'SEQNF2'
      Visible = False
    end
    object CmpNf2CODCLP: TStringField
      FieldName = 'CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpNf2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CmpNf2NRONF2: TIntegerField
      FieldName = 'NRONF2'
      Visible = False
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Visible = False
      FixedChar = True
      Size = 100
    end
  end
  object DsNf2: TwwDataSource
    DataSet = CmpNf2
    Left = 35
    Top = 418
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CmpNfs'
      'set'
      '  SITNFS = :SITNFS'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS')
    InsertSQL.Strings = (
      'insert into CmpNfs'
      '  (SITNFS)'
      'values'
      '  (:SITNFS)')
    DeleteSQL.Strings = (
      'delete from CmpNfs'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS')
    Left = 8
    Top = 160
  end
end
