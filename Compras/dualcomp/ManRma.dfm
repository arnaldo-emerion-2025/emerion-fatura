inherited fmManRma: TfmManRma
  Left = 173
  Top = 175
  Caption = 'Gerenciamento de Romaneios de Retorno'
  ClientHeight = 357
  ClientWidth = 775
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 775
    Height = 357
    Align = alClient
  end
  object Label7: TLabel
    Left = 6
    Top = 5
    Width = 136
    Height = 14
    Caption = 'Romaneios Pendentes'
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
    Left = 217
    Top = 12
    Width = 536
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label8: TLabel
    Left = 6
    Top = 138
    Width = 207
    Height = 14
    Caption = 'Itens não Retornados/Pendentes'
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
    Left = 217
    Top = 145
    Width = 536
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object LbText: TLabel
    Left = 6
    Top = 339
    Width = 136
    Height = 16
    Caption = 'ENTER-Alterar Janela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 682
    Top = 339
    Width = 88
    Height = 16
    Caption = 'ESC-Retornar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbNf2: TdxDBGraphicEdit
    Left = 4
    Top = 193
    Width = 770
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
    Height = 120
  end
  object dbNfs: TdxDBGraphicEdit
    Left = 4
    Top = 60
    Width = 770
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
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 78
  end
  object grNfs: ThGrid
    Left = 6
    Top = 62
    Width = 764
    Height = 72
    Selected.Strings = (
      'SEQNFS'#9'12'#9' '
      'NRONFS'#9'10'#9' '
      'HREFAT'#9'8'#9' '
      'DTEFAT'#9'10'#9' '
      'TOTITE'#9'12'#9' '
      'TOTIPI'#9'12'#9' '
      'TOTGER'#9'12'#9' '
      'SITNFS'#9'15'#9' '
      'LOGUSU'#9'13'#9' '#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsNfs
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grNfsKeyDown
    OnKeyUp = grNfsKeyUp
    OnMouseUp = grNfsMouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object grLabel1: TdxDBGraphicEdit
    Left = 4
    Top = 23
    Width = 770
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
    Height = 38
  end
  object grLabel2: TPanel
    Left = 6
    Top = 25
    Width = 764
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label32: TLabel
      Left = 2
      Top = 8
      Width = 86
      Height = 14
      Caption = 'Nro. Operação'
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
    object Label15: TLabel
      Left = 167
      Top = 8
      Width = 48
      Height = 14
      Caption = 'Emissão'
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
    object Label23: TLabel
      Left = 227
      Top = 8
      Width = 29
      Height = 14
      Caption = 'Hora'
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
    object Label24: TLabel
      Left = 316
      Top = 8
      Width = 67
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Itens'
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
    object Label14: TLabel
      Left = 564
      Top = 8
      Width = 53
      Height = 14
      Caption = 'Situação'
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
    object Label11: TLabel
      Left = 418
      Top = 8
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total IPI'
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
    object Label13: TLabel
      Left = 493
      Top = 8
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Geral'
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
    object Label16: TLabel
      Left = 672
      Top = 8
      Width = 76
      Height = 14
      Caption = 'Responsavel'
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
    object Label19: TLabel
      Left = 93
      Top = 8
      Width = 14
      Height = 14
      Caption = 'NF'
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
  end
  object dxDBGraphicEdit2: TdxDBGraphicEdit
    Left = 4
    Top = 156
    Width = 770
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
    Height = 38
  end
  object Panel1: TPanel
    Left = 6
    Top = 158
    Width = 764
    Height = 32
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 2
      Top = 8
      Width = 29
      Height = 14
      Caption = 'Item'
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
    object Label3: TLabel
      Left = 158
      Top = 8
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Solicitado'
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
    object Label4: TLabel
      Left = 242
      Top = 8
      Width = 57
      Height = 14
      Alignment = taRightJustify
      Caption = 'Atendido'
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
    object Label5: TLabel
      Left = 327
      Top = 8
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pendente'
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
    object Label6: TLabel
      Left = 392
      Top = 8
      Width = 83
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Unitário'
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
    object Label9: TLabel
      Left = 589
      Top = 8
      Width = 64
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Item'
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
    object Label10: TLabel
      Left = 742
      Top = 8
      Width = 7
      Height = 14
      Caption = 'E'
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
    object Label2: TLabel
      Left = 675
      Top = 8
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total IPI'
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
    object Label17: TLabel
      Left = 562
      Top = 8
      Width = 18
      Height = 14
      Alignment = taRightJustify
      Caption = 'IPI'
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
    object Label18: TLabel
      Left = 495
      Top = 8
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'ICMS'
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
  end
  object grNf2: ThGrid
    Left = 6
    Top = 195
    Width = 764
    Height = 114
    ControlType.Strings = (
      'FLGRES;CheckBox;Sim;Nao'
      'FLGENT;CheckBox;Sim;Nao')
    Selected.Strings = (
      'CODITE'#9'19'#9' '#9'F'
      'QTPNF2'#9'11'#9' '
      'QTDNF2'#9'11'#9' '
      'SLDNF2'#9'12'#9' '
      'VLUNF2'#9'12'#9' '
      'ICMNF2'#9'7'#9' '
      'IPINF2'#9'7'#9' '
      'TOTITE'#9'10'#9' '
      'TOTIPI'#9'10'#9' '
      'FLGENT'#9'4'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsNf2
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grNf2KeyDown
    OnKeyUp = grNf2KeyUp
    OnMouseUp = grNf2MouseUp
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnDesNf2: TPanel
    Left = 202
    Top = 313
    Width = 569
    Height = 25
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object CmpNfs: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNfs.*,'
      '           GerUsu.LogUsu'
      'From CmpNfs LEFT JOIN GerUsu ON (CmpNfs.CodUsu = GerUsu.CodUsu)'
      'Where CmpNfs.CodFor = :CodFor'
      
        '     and (CmpNfs.SitNfs = '#39'Concluido'#39'  or CmpNfs.SitNfs = '#39'Receb' +
        'ido Parcialmente'#39')'
      'Order by CmpNfs.SeqNfs')
    Left = 12
    Top = 246
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object CmpNfsSEQNFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'SEQNFS'
    end
    object CmpNfsNRONFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'NRONFS'
    end
    object CmpNfsHREFAT: TStringField
      DisplayLabel = ' '
      DisplayWidth = 8
      FieldName = 'HREFAT'
      FixedChar = True
      Size = 8
    end
    object CmpNfsDTEFAT: TDateTimeField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'DTEFAT'
    end
    object CmpNfsTOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsTOTIPI: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsTOTGER: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNfsSITNFS: TStringField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'SITNFS'
      FixedChar = True
      Size = 45
    end
    object CmpNfsLOGUSU: TStringField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object CmpNfsCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object CmpNfsDTENFS: TDateTimeField
      FieldName = 'DTENFS'
      Visible = False
    end
    object CmpNfsUFENFS: TStringField
      FieldName = 'UFENFS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsCODPFA: TStringField
      FieldName = 'CODPFA'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsMODPFA: TStringField
      FieldName = 'MODPFA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Visible = False
    end
    object CmpNfsPERPIS: TFloatField
      FieldName = 'PERPIS'
      Visible = False
    end
    object CmpNfsPERCOF: TFloatField
      FieldName = 'PERCOF'
      Visible = False
    end
    object CmpNfsCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object CmpNfsQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Visible = False
    end
    object CmpNfsCGCFOR: TStringField
      FieldName = 'CGCFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSFOR: TStringField
      FieldName = 'INSFOR'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsCODCF1: TStringField
      FieldName = 'CODCF1'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsCODCF2: TStringField
      FieldName = 'CODCF2'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsFRTNFS: TStringField
      FieldName = 'FRTNFS'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGENT: TStringField
      FieldName = 'FLGENT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsDESNAT: TStringField
      FieldName = 'DESNAT'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNfsINSSUB: TStringField
      FieldName = 'INSSUB'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsMARNFS: TStringField
      FieldName = 'MARNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsNUMNFS: TStringField
      FieldName = 'NUMNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsESPNFS: TStringField
      FieldName = 'ESPNFS'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object CmpNfsNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsINSTRA: TStringField
      FieldName = 'INSTRA'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object CmpNfsCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsTENTRA: TStringField
      FieldName = 'TENTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDTRA: TStringField
      FieldName = 'ENDTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsREFTRA: TStringField
      FieldName = 'REFTRA'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAITRA: TStringField
      FieldName = 'BAITRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFETRA: TStringField
      FieldName = 'UFETRA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsPRTTRA: TStringField
      FieldName = 'PRTTRA'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object CmpNfsFONTRA: TStringField
      FieldName = 'FONTRA'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFEPLC: TStringField
      FieldName = 'UFEPLC'
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
    object CmpNfsTENFOR: TStringField
      FieldName = 'TENFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsENDFOR: TStringField
      FieldName = 'ENDFOR'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNfsREFFOR: TStringField
      FieldName = 'REFFOR'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object CmpNfsNUMFOR: TStringField
      FieldName = 'NUMFOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNfsBAIFOR: TStringField
      FieldName = 'BAIFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsCIDFOR: TStringField
      FieldName = 'CIDFOR'
      Visible = False
      FixedChar = True
    end
    object CmpNfsUFEFOR: TStringField
      FieldName = 'UFEFOR'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNfsTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpNfsTXFICM: TStringField
      FieldName = 'TXFICM'
      Visible = False
      FixedChar = True
      Size = 160
    end
    object CmpNfsOBSNFS: TStringField
      FieldName = 'OBSNFS'
      Visible = False
      FixedChar = True
      Size = 240
    end
    object CmpNfsSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Visible = False
    end
    object CmpNfsQTINFS: TIntegerField
      FieldName = 'QTINFS'
      Visible = False
    end
    object CmpNfsLINNFS: TIntegerField
      FieldName = 'LINNFS'
      Visible = False
    end
    object CmpNfsQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Visible = False
    end
    object CmpNfsALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Visible = False
    end
    object CmpNfsINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Visible = False
    end
    object CmpNfsTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object CmpNfsINFBRT: TFloatField
      FieldName = 'INFBRT'
      Visible = False
    end
    object CmpNfsTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object CmpNfsBASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object CmpNfsBASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object CmpNfsTOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object CmpNfsBASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpNfsTOTSUB: TFloatField
      FieldName = 'TOTSUB'
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
    object CmpNfsICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Visible = False
    end
    object CmpNfsBSICMF: TFloatField
      FieldName = 'BSICMF'
      Visible = False
    end
    object CmpNfsBAICMF: TFloatField
      FieldName = 'BAICMF'
      Visible = False
    end
    object CmpNfsTOICMF: TFloatField
      FieldName = 'TOICMF'
      Visible = False
    end
    object CmpNfsICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Visible = False
    end
    object CmpNfsBSICMS: TFloatField
      FieldName = 'BSICMS'
      Visible = False
    end
    object CmpNfsBAICMS: TFloatField
      FieldName = 'BAICMS'
      Visible = False
    end
    object CmpNfsTOICMS: TFloatField
      FieldName = 'TOICMS'
      Visible = False
    end
    object CmpNfsICMDES: TFloatField
      FieldName = 'ICMDES'
      Visible = False
    end
    object CmpNfsBSICMD: TFloatField
      FieldName = 'BSICMD'
      Visible = False
    end
    object CmpNfsBAICMD: TFloatField
      FieldName = 'BAICMD'
      Visible = False
    end
    object CmpNfsTOICMD: TFloatField
      FieldName = 'TOICMD'
      Visible = False
    end
    object CmpNfsIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Visible = False
    end
    object CmpNfsBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Visible = False
    end
    object CmpNfsBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Visible = False
    end
    object CmpNfsTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Visible = False
    end
    object CmpNfsIPISEG: TFloatField
      FieldName = 'IPISEG'
      Visible = False
    end
    object CmpNfsBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Visible = False
    end
    object CmpNfsBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Visible = False
    end
    object CmpNfsTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Visible = False
    end
    object CmpNfsIPIDES: TFloatField
      FieldName = 'IPIDES'
      Visible = False
    end
    object CmpNfsBSIPID: TFloatField
      FieldName = 'BSIPID'
      Visible = False
    end
    object CmpNfsBAIPID: TFloatField
      FieldName = 'BAIPID'
      Visible = False
    end
    object CmpNfsTOIPID: TFloatField
      FieldName = 'TOIPID'
      Visible = False
    end
    object CmpNfsBASIP1: TFloatField
      FieldName = 'BASIP1'
      Visible = False
    end
    object CmpNfsTOTIP1: TFloatField
      FieldName = 'TOTIP1'
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
    object CmpNfsTOTIT1: TFloatField
      FieldName = 'TOTIT1'
      Visible = False
    end
    object CmpNfsTOTGE1: TFloatField
      FieldName = 'TOTGE1'
      Visible = False
    end
    object CmpNfsCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Visible = False
    end
    object CmpNfsHRCNFS: TStringField
      FieldName = 'HRCNFS'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object CmpNfsDTCNFS: TDateTimeField
      FieldName = 'DTCNFS'
      Visible = False
    end
    object CmpNfsUSCNFS: TIntegerField
      FieldName = 'USCNFS'
      Visible = False
    end
    object CmpNfsOBCNFS: TStringField
      FieldName = 'OBCNFS'
      Visible = False
      FixedChar = True
      Size = 150
    end
    object CmpNfsATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsINTFIN: TStringField
      FieldName = 'INTFIN'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsCONSUM: TStringField
      FieldName = 'CONSUM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsCODIPI: TStringField
      FieldName = 'CODIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNfsTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpNfsBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpNfsCODICM: TStringField
      FieldName = 'CODICM'
      Visible = False
      FixedChar = True
    end
    object CmpNfsTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNfsTRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNfsREDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpNfsBSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpNfsINCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpNfsINCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpNfsNROCOL: TStringField
      FieldName = 'NROCOL'
      Visible = False
      FixedChar = True
    end
    object CmpNfsDESREG: TStringField
      FieldName = 'DESREG'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNfsSEQOPE: TStringField
      FieldName = 'SEQOPE'
      Visible = False
      FixedChar = True
      Size = 22
    end
    object CmpNfsFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNfsFLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object CmpNf2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpNf2.*,'
      
        '           TextoOcor(CmpNf2.CodGru,'#39'.'#39',CmpNf2.CodSub,'#39'.'#39',CmpNf2.' +
        'CodPro,'#39#39','#39#39') as CodITe'
      'From CmpNf2'
      'Where CmpNf2.CodEmp = :CodEmp'
      '     and CmpNf2.DteNfs = :DteNfs'
      '     and CmpNf2.SeqNfs = :SeqNfs'
      '     and (CmpNf2.SldNf2 > 0 or CmpNf2.FlgEnt = '#39'Sim'#39')'
      'Order by CmpNf2.NroNf2')
    UpdateObject = UpNf2
    Left = 12
    Top = 274
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteNfs'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SeqNfs'
        ParamType = ptInput
      end>
    object CmpNf2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 19
      FieldName = 'CODITE'
      FixedChar = True
      Size = 100
    end
    object CmpNf2QTPNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTPNF2'
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2QTDNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'QTDNF2'
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2SLDNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'SLDNF2'
      DisplayFormat = '###,###,##0'
    end
    object CmpNf2VLUNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'VLUNF2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpNf2ICMNF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'ICMNF2'
      DisplayFormat = '###0.00'
    end
    object CmpNf2IPINF2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'IPINF2'
      DisplayFormat = '###0.00'
    end
    object CmpNf2TOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2TOTIPI: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpNf2FLGENT: TStringField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'FLGENT'
      FixedChar = True
      Size = 3
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
    object CmpNf2CODEIT: TIntegerField
      FieldName = 'CODEIT'
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
    object CmpNf2CODTAM: TStringField
      FieldName = 'CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2CODCOR: TStringField
      FieldName = 'CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object CmpNf2OBSNF2: TStringField
      FieldName = 'OBSNF2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object CmpNf2CODST1: TStringField
      FieldName = 'CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CmpNf2CODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CmpNf2CODUND: TStringField
      FieldName = 'CODUND'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REFNF2: TStringField
      FieldName = 'REFNF2'
      Visible = False
      FixedChar = True
    end
    object CmpNf2LIQNF2: TFloatField
      FieldName = 'LIQNF2'
      Visible = False
    end
    object CmpNf2BRTNF2: TFloatField
      FieldName = 'BRTNF2'
      Visible = False
    end
    object CmpNf2LINNF2: TIntegerField
      FieldName = 'LINNF2'
      Visible = False
    end
    object CmpNf2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2SEQNFG: TIntegerField
      FieldName = 'SEQNFG'
      Visible = False
    end
    object CmpNf2SEQNF3: TIntegerField
      FieldName = 'SEQNF3'
      Visible = False
    end
    object CmpNf2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Visible = False
    end
    object CmpNf2BASICM: TFloatField
      FieldName = 'BASICM'
      Visible = False
    end
    object CmpNf2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Visible = False
    end
    object CmpNf2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Visible = False
    end
    object CmpNf2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object CmpNf2TOTNF2: TFloatField
      FieldName = 'TOTNF2'
      Visible = False
    end
    object CmpNf2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Visible = False
    end
    object CmpNf2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Visible = False
    end
    object CmpNf2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Visible = False
    end
    object CmpNf2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Visible = False
    end
    object CmpNf2CODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2REGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CmpNf2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Visible = False
    end
    object CmpNf2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Visible = False
    end
    object CmpNf2REGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object CmpNf2TIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object CmpNf2TRBICM: TStringField
      FieldName = 'TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CmpNf2REDICM: TFloatField
      FieldName = 'REDICM'
      Visible = False
    end
    object CmpNf2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Visible = False
    end
    object CmpNf2INCREV: TFloatField
      FieldName = 'INCREV'
      Visible = False
    end
    object CmpNf2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Visible = False
    end
    object CmpNf2NRONFS: TIntegerField
      FieldName = 'NRONFS'
      Visible = False
    end
    object CmpNf2NRONF2: TIntegerField
      FieldName = 'NRONF2'
      Visible = False
    end
    object CmpNf2FLGATU: TStringField
      FieldName = 'FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
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
      '  FLGENT = :FLGENT'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  SEQNF2 = :OLD_SEQNF2')
    InsertSQL.Strings = (
      'insert into CmpNf2'
      
        '  (CODEMP, DTENFS, SEQNFS, SEQNF2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, '
      'CODPRO, '
      
        '   CODTAM, CODCOR, DESNF2, OBSNF2, CODST1, CODST2, CODUND, REFNF' +
        '2, '
      'LIQNF2, '
      
        '   BRTNF2, LINNF2, QTPNF2, QTDNF2, SLDNF2, VLUNF2, IPINF2, CLSIP' +
        'I, '
      'SEQNFG, '
      
        '   SEQNF3, ICMNF2, BASIPI, TOTIPI, BASICM, TOTICM, BASSUB, TOTSU' +
        'B, '
      'TOTITE, '
      
        '   TOTNF2, TOTLIQ, TOTBRT, TOTPIS, TOTCOF, CODSTR, TIPSTR, REGIP' +
        'I, '
      'TIPIPI, '
      
        '   TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBICM, REDICM, BSCIC' +
        'M, INCREV, '
      '   INCFIN, NRONFS, NRONF2, FLGATU, FLGENT)'
      'values'
      
        '  (:CODEMP, :DTENFS, :SEQNFS, :SEQNF2, :CODEIT, :CODCLP, :CODGRU' +
        ', '
      ':CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESNF2, :OBSNF2, :CODST1, :CODST2' +
        ', '
      ':CODUND, '
      
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
      '   :NRONF2, :FLGATU, :FLGENT)')
    DeleteSQL.Strings = (
      'delete from CmpNf2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTENFS = :OLD_DTENFS and'
      '  SEQNFS = :OLD_SEQNFS and'
      '  SEQNF2 = :OLD_SEQNF2')
    Left = 12
    Top = 302
  end
  object DsNfs: TDataSource
    DataSet = CmpNfs
    OnDataChange = DsNfsDataChange
    Left = 40
    Top = 246
  end
  object DsNf2: TDataSource
    DataSet = CmpNf2
    OnDataChange = DsNf2DataChange
    Left = 40
    Top = 274
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 40
    Top = 302
  end
end
