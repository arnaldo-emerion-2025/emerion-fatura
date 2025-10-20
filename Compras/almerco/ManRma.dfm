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
    Left = 5
    Top = 193
    Width = 767
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
      'ID_CMPNFS'#9'12'#9' '
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
    Left = 5
    Top = 156
    Width = 767
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
    Left = 7
    Top = 158
    Width = 761
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
    Left = 7
    Top = 195
    Width = 761
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
      'Select CmpNfs.Id_CmpNfs,'
      '           CmpNfs.NroNfs,'
      '           CmpNfs.DteFat,'
      '           CmpNfs.HreFat,'
      '           CmpNfs.TotIte,'
      '           CmpNfs.TotIpi,'
      '           CmpNfs.TotGer,'
      '           CmpNfs.SitNfs,'
      '           GerUsu.LogUsu'
      'From CmpNfs LEFT JOIN GerUsu ON (CmpNfs.CodUsu = GerUsu.CodUsu)'
      'Where CmpNfs.CodFor = :CodFor'
      
        '     and (CmpNfs.SitNfs = '#39'Concluido'#39'  or CmpNfs.SitNfs = '#39'Receb' +
        'ido Parcialmente'#39')'
      'Order by CmpNfs.Id_CmpNfs')
    Left = 7
    Top = 105
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFor'
        ParamType = ptInput
      end>
    object CmpNfsID_CMPNFS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'ID_CMPNFS'
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
  end
  object CmpNf2: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsNfs
    SQL.Strings = (
      'Select CmpNf2.Id_CmpNf2,'
      '           CmpNf2.CodClp,'
      '           CmpNf2.CodGru,'
      '           CmpNf2.CodSub,'
      '           CmpNf2.CodPro,'
      '           CmpNf2.DesNf2,'
      '           CmpNf2.QtpNf2,'
      '           CmpNf2.QtdNf2,'
      '           CmpNf2.SldNf2,'
      '           CmpNf2.VluNf2,'
      '           CmpNf2.IcmNf2,'
      '           CmpNf2.IpiNf2,'
      '           CmpNf2.TotIte,'
      '           CmpNf2.TotIpi,'
      '           CmpNf2.FlgAtu,'
      '           CmpNf2.FlgEnt'
      'From CmpNf2'
      'Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'
      '     and (CmpNf2.SldNf2 > 0 or CmpNf2.FlgEnt = '#39'Sim'#39')'
      'Order by CmpNf2.NroNf2')
    UpdateObject = UpNf2
    Left = 7
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CMPNFS'
        ParamType = ptInput
      end>
    object CmpNf2CODITE: TStringField
      DisplayLabel = ' '
      DisplayWidth = 19
      FieldKind = fkCalculated
      FieldName = 'CODITE'
      OnGetText = CmpNf2CODITEGetText
      Calculated = True
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
    object CmpNf2ID_CMPNF2: TIntegerField
      FieldName = 'ID_CMPNF2'
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
    object CmpNf2DESNF2: TStringField
      FieldName = 'DESNF2'
      Visible = False
      Size = 70
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
      '  FLGATU = :FLGATU,'
      '  FLGENT = :FLGENT'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    InsertSQL.Strings = (
      'insert into CmpNf2'
      '  (ID_CMPNF2, CODCLP, CODGRU, CODSUB, CODPRO, DESNF2, QTPNF2, '
      'QTDNF2, SLDNF2, '
      '   VLUNF2, ICMNF2, IPINF2, TOTITE, TOTIPI, FLGATU, FLGENT)'
      'values'
      
        '  (:ID_CMPNF2, :CODCLP, :CODGRU, :CODSUB, :CODPRO, :DESNF2, :QTP' +
        'NF2, '
      ':QTDNF2, '
      
        '   :SLDNF2, :VLUNF2, :ICMNF2, :IPINF2, :TOTITE, :TOTIPI, :FLGATU' +
        ', :FLGENT)')
    DeleteSQL.Strings = (
      'delete from CmpNf2'
      'where'
      '  ID_CMPNF2 = :OLD_ID_CMPNF2')
    Left = 7
    Top = 280
  end
  object DsNfs: TDataSource
    DataSet = CmpNfs
    Left = 35
    Top = 105
  end
  object DsNf2: TDataSource
    DataSet = CmpNf2
    OnDataChange = DsNf2DataChange
    Left = 35
    Top = 252
  end
  object quSql: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 35
    Top = 280
  end
  object quSQL1: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 63
    Top = 280
  end
end
