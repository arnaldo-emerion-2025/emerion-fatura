inherited fmControle_NFE: TfmControle_NFE
  Left = 452
  Top = 206
  Caption = 'Controle de Notas Fiscais Eletrônicas'
  ClientHeight = 482
  ClientWidth = 784
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object barra: TToolBar
    Left = 0
    Top = 453
    Width = 784
    Height = 29
    Align = alBottom
    ButtonHeight = 28
    Caption = 'barra'
    EdgeBorders = []
    TabOrder = 0
    object Atualizar: TSpeedButton
      Left = 0
      Top = 2
      Width = 185
      Height = 28
      Caption = '&Atualizar informações'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = AtualizarClick
    end
    object ToolButton1: TToolButton
      Left = 185
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object bIncluir: TSpeedButton
      Left = 193
      Top = 2
      Width = 207
      Height = 28
      Caption = 'F4 - Emitir nota fiscal'
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
      Visible = False
      OnClick = bIncluirClick
    end
  end
  object PageControl1: TPageControl
    Left = 6
    Top = 9
    Width = 775
    Height = 433
    ActivePage = ts_dados
    TabOrder = 1
    object ts_dados: TTabSheet
      Caption = 'Notas Fiscais'
      object grid: ThGrid
        Tag = 1
        Left = 0
        Top = -1
        Width = 765
        Height = 307
        Selected.Strings = (
          'NRONFS'#9'7'#9'Nº Nota'
          'VTIPO'#9'14'#9'Tipo'
          'DTENFE'#9'11'#9'Emissão NF-e'
          'NUMRES'#9'8'#9' Pedido'#9'F'
          'CGCCLI'#9'15'#9'CNPJ/CPF'
          'NOMENT'#9'20'#9'Cliente'
          'TOTFAT'#9'15'#9'         Valor Total'
          'SITFAT'#9'15'#9'Situação'
          'SEQNFE'#9'50'#9'Chave da NF-e'
          'RETNFE'#9'100'#9'Último retorno da SEFAZ')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        ShowVertScrollBar = False
        BorderStyle = bsNone
        Color = 16577773
        DataSource = ds_local
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
    end
  end
  object pnMensag: TPanel
    Left = 201
    Top = 205
    Width = 382
    Height = 71
    BevelOuter = bvNone
    Caption = 'Mensagem'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object q_local: TwwQuery
    Active = True
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select fp.codemp, fp.nronfs, '#39'VENDA       '#39' as vtipo, fp.dtenfe,' +
        ' fp.numres, fp.cgccli, fp.noment, fp.totfat , fp.flgnfe,  fp.seq' +
        'nfe, fp.sitfat, fp.retnfe'
      '  from fatped fp'
      ' where fp.flgnfe = '#39'Sim'#39
      '   and fp.codemp = 3'
      'union'
      
        'select fg.codemp, fg.nronfs, '#39'OUTRAS NOTAS'#39' as vtipo,fg.dtenfe, ' +
        'fg.numger, fg.cgccli, fg.noment, fg.totger,  fg.flgnfe, fg.seqnf' +
        'e, fg.sitger, fg.retnfe'
      '  from fatger fg'
      ' where fg.flgnfe = '#39'Sim'#39
      '   and fg.codemp = 3'
      'union'
      
        'select fd.codemp, fd.nronfs, '#39'DEVOLUÇÃO   '#39' as vtipo , fd.dtenfe' +
        ', fd.numres, fd.cgccli, fd.noment, fd.totdev,  fd.flgnfe, fd.seq' +
        'nfe, fd.sitdev, fd.retnfe'
      '  from fatdev fd'
      ' where fd.flgnfe = '#39'Sim'#39
      '   and fd.codemp = 3'
      ''
      'order by 2,4')
    UniDirectional = True
    ValidateWithMask = True
    Left = 513
    Top = 11
    object q_localNRONFS: TIntegerField
      DisplayLabel = 'Nº Nota'
      DisplayWidth = 7
      FieldName = 'NRONFS'
    end
    object q_localVTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 14
      FieldName = 'VTIPO'
      FixedChar = True
      Size = 12
    end
    object q_localDTENFE: TDateTimeField
      DisplayLabel = 'Emissão NF-e'
      DisplayWidth = 11
      FieldName = 'DTENFE'
    end
    object q_localNUMRES: TIntegerField
      DisplayLabel = ' Pedido'
      DisplayWidth = 8
      FieldName = 'NUMRES'
    end
    object q_localCGCCLI: TStringField
      DisplayLabel = 'CNPJ/CPF'
      DisplayWidth = 15
      FieldName = 'CGCCLI'
      FixedChar = True
      Size = 18
    end
    object q_localNOMENT: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 20
      FieldName = 'NOMENT'
      FixedChar = True
      Size = 70
    end
    object q_localTOTFAT: TFloatField
      DisplayLabel = '         Valor Total'
      DisplayWidth = 15
      FieldName = 'TOTFAT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object q_localSITFAT: TStringField
      DisplayLabel = 'Situação'
      DisplayWidth = 15
      FieldName = 'SITFAT'
      FixedChar = True
      Size = 45
    end
    object q_localSEQNFE: TStringField
      DisplayLabel = 'Chave da NF-e'
      DisplayWidth = 50
      FieldName = 'SEQNFE'
      FixedChar = True
      Size = 44
    end
    object q_localRETNFE: TStringField
      DisplayLabel = 'Último retorno da SEFAZ'
      DisplayWidth = 100
      FieldName = 'RETNFE'
      Size = 100
    end
    object q_localFLGNFE: TStringField
      DisplayWidth = 3
      FieldName = 'FLGNFE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object q_localCODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Visible = False
    end
  end
  object ds_local: TwwDataSource
    DataSet = q_local
    Left = 545
    Top = 11
  end
end
