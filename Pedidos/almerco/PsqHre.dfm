inherited fmPsqHre: TfmPsqHre
  Left = 181
  Top = 179
  Caption = 'Rastreabilidade de pedidos'
  ClientHeight = 281
  ClientWidth = 763
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 763
    Height = 281
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label9: TLabel
    Left = 706
    Top = 261
    Width = 54
    Height = 16
    Caption = 'ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 2
    Top = 261
    Width = 77
    Height = 16
    Caption = 'F1-Detalhes'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 2
    Width = 761
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
    Height = 257
  end
  object grLog: ThGrid
    Tag = 1
    Left = 3
    Top = 4
    Width = 755
    Height = 251
    Selected.Strings = (
      'DTELOG'#9'10'#9'Data'
      'HRELOG'#9'8'#9'Horario'
      'SITANT'#9'35'#9'De'
      'SITATU'#9'35'#9'Para'
      'LOGUSU'#9'17'#9'Responsável')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLog
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
    TitleLines = 2
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object PedLog: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedLog.DteLog,'
      '           PedLog.HreLog,'
      '           PedLog.SitAnt,'
      '           PedLog.SitAtu,'
      '           PedLog.SeqLib,'
      '           GerUsu.LogUsu'
      'From PedLog,GerUsu'
      'Where PedLog.CodUsu = GerUsu.CodUsu'
      '     and PedLog.Id_PedRes = :Id_PedRes'
      'Order by PedLog.Id_PedLog'
      '')
    ValidateWithMask = True
    Left = 4
    Top = 226
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Id_PedRes'
        ParamType = ptInput
      end>
    object PedLogDTELOG: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DTELOG'
    end
    object PedLogHRELOG: TStringField
      DisplayLabel = 'Horario'
      DisplayWidth = 8
      FieldName = 'HRELOG'
      FixedChar = True
      Size = 8
    end
    object PedLogSITANT: TStringField
      DisplayLabel = 'De'
      DisplayWidth = 35
      FieldName = 'SITANT'
      FixedChar = True
      Size = 45
    end
    object PedLogSITATU: TStringField
      DisplayLabel = 'Para'
      DisplayWidth = 35
      FieldName = 'SITATU'
      FixedChar = True
      Size = 45
    end
    object PedLogLOGUSU: TStringField
      DisplayLabel = 'Responsável'
      DisplayWidth = 17
      FieldName = 'LOGUSU'
      FixedChar = True
      Size = 15
    end
    object PedLogSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Visible = False
    end
  end
  object DsLog: TwwDataSource
    DataSet = PedLog
    OnDataChange = DsLogDataChange
    Left = 32
    Top = 226
  end
end
