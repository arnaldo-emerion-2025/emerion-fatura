inherited fmManNge_NFE2: TfmManNge_NFE2
  Left = 275
  Top = 0
  Caption = 'Emerion - Outros Tipos de Notas Fiscais - Emissão de NF-e'
  ClientHeight = 642
  ClientWidth = 999
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 432
    Top = 640
    Width = 23
    Height = 22
    Visible = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 464
    Top = 640
    Width = 23
    Height = 30
    Visible = False
    OnClick = SpeedButton3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 285
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object Label29: TLabel
      Left = 18
      Top = 6
      Width = 102
      Height = 14
      Caption = 'Nro. Sequencial :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 18
      Top = 30
      Width = 59
      Height = 14
      Caption = 'Empresa :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 817
      Top = 30
      Width = 56
      Height = 14
      Caption = 'Emissão :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bpsqEmp: TSpeedButton
      Left = 274
      Top = 27
      Width = 25
      Height = 22
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
      OnClick = bpsqEmpClick
    end
    object Label23: TLabel
      Left = 301
      Top = 6
      Width = 86
      Height = 14
      Caption = 'Tipo de Nota :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdNumGer: TdxDBColorEdit
      Left = 165
      Top = 2
      Width = 108
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMGER'
      DataSource = DsGer
      ReadOnly = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
    object EdCodEmp: TdxDBColorEdit
      Left = 165
      Top = 26
      Width = 108
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnExit = EdCodEmpExit
      OnKeyDown = EdCodEmpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      OnKeyUp = EdCodEmpKeyUp
      OnMouseUp = EdCodEmpMouseUp
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'CODEMP'
      DataSource = DsGer
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdDteFat: TdxDBColorDateEdit
      Left = 883
      Top = 26
      Width = 104
      Hint = 'Data de Emissão da Nota Fiscal'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdTipPfaEnter
      Alignment = taCenter
      DataField = 'DTEFAT'
      DataSource = DsGer
      PopupBorder = pbFlat
      DateButtons = []
      SaveTime = False
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdTipPfa: TdxDBColorPickEdit
      Left = 393
      Top = 2
      Width = 96
      Hint = 'Tipo de Nota Generica'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      OnEnter = EdTipPfaEnter
      OnExit = EdTipPfaExit
      AutoSize = False
      DataField = 'TIPPFA'
      DataSource = DsGer
      ReadOnly = False
      ImmediateDropDown = False
      DropDownListStyle = True
      Items.Strings = (
        'Saida'
        'Entrada')
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 64
    end
    object GroupBox7: TGroupBox
      Left = 5
      Top = 51
      Width = 988
      Height = 66
      TabOrder = 5
      object Label4: TLabel
        Left = 12
        Top = 15
        Width = 50
        Height = 14
        Caption = 'Cliente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 12
        Top = 39
        Width = 67
        Height = 14
        Caption = 'Vendedor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bpsqCli: TSpeedButton
        Left = 269
        Top = 12
        Width = 25
        Height = 22
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
        OnClick = bpsqCliClick
      end
      object bpsqVen: TSpeedButton
        Left = 269
        Top = 35
        Width = 25
        Height = 22
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
        OnClick = bpsqVenClick
      end
      object Label55: TLabel
        Left = 640
        Top = 15
        Width = 67
        Height = 14
        Caption = 'CPF/CNPJ :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 874
        Top = 14
        Width = 55
        Height = 14
        Caption = 'Destino :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 640
        Top = 39
        Width = 39
        Height = 14
        Caption = 'Frete :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdCgcCli: TdxDBColorEdit
        Left = 709
        Top = 11
        Width = 159
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CGCCLI'
        DataSource = DsGer
        ReadOnly = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object EdCodVen: TdxDBColorEdit
        Left = 160
        Top = 34
        Width = 108
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        OnExit = EdCodVenExit
        OnKeyDown = EdCodVenKeyDown
        OnKeyPress = EdCodEmpKeyPress
        OnKeyUp = EdCodCliKeyUp
        OnMouseUp = EdCodCliMouseUp
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODVEN'
        DataSource = DsGer
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodCli: TdxDBColorEdit
        Left = 160
        Top = 11
        Width = 108
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        OnExit = EdCodCliExit
        OnKeyDown = EdCodCliKeyDown
        OnKeyPress = EdCodEmpKeyPress
        OnKeyUp = EdCodCliKeyUp
        OnMouseUp = EdCodCliMouseUp
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODCLI'
        DataSource = DsGer
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdUfeGer: TdxDBColorEdit
        Left = 940
        Top = 10
        Width = 43
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'UFEGER'
        DataSource = DsGer
        ReadOnly = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object EdFrtGer: TdxDBColorLookupEdit
        Left = 709
        Top = 35
        Width = 274
        Color = 16577773
        Enabled = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        DataField = 'ID_FRETE'
        DataSource = DsGer
        ListFieldName = 'IDNOM'
        KeyFieldName = 'ID'
        ListSource = dsTipFrt
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object edNomCli: TdxColorEdit
        Left = 294
        Top = 11
        Width = 337
        Color = 16577773
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object edNomVen: TdxColorEdit
        Left = 294
        Top = 34
        Width = 337
        Color = 16577773
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        TabStop = False
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
    object GroupBox8: TGroupBox
      Left = 7
      Top = 116
      Width = 988
      Height = 44
      TabOrder = 6
      object Label5: TLabel
        Left = 12
        Top = 16
        Width = 134
        Height = 14
        Caption = 'Padrao Faturamento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bpsqPfa: TSpeedButton
        Left = 268
        Top = 12
        Width = 25
        Height = 22
        Hint = 'Pesquisar Padrões de Faturamento Existentes'
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
        OnClick = bpsqPfaClick
      end
      object Label10: TLabel
        Left = 554
        Top = 16
        Width = 126
        Height = 14
        Caption = 'Tipo de classificação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnRef: TSpeedButton
        Left = 856
        Top = 10
        Width = 117
        Height = 27
        Caption = 'Nfe referência'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnRefClick
      end
      object EdCodPfa: TdxDBColorEdit
        Left = 159
        Top = 11
        Width = 108
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        OnExit = EdCodPFAExist
        OnKeyDown = EdCodPfaKeyDown
        OnKeyUp = EdCodEmpKeyUp
        OnMouseUp = EdCodEmpMouseUp
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODPFA'
        DataSource = DsGer
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object dxDBColorEdit1: TdxDBColorEdit
        Left = 691
        Top = 11
        Width = 150
        Hint = 'Cliente'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        OnExit = EdCodCliExit
        OnKeyDown = EdCodCliKeyDown
        OnKeyPress = EdCodEmpKeyPress
        OnKeyUp = EdCodCliKeyUp
        OnMouseUp = EdCodCliMouseUp
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'MODPFA'
        DataSource = DsGer
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 65
      end
      object edDescPfa: TdxColorEdit
        Left = 293
        Top = 11
        Width = 258
        Color = 16577773
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        ReadOnly = True
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 165
      Width = 999
      Height = 120
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      OnExit = Panel4Exit
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 999
        Height = 120
        ActivePage = tsFixar
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        object tsCalculado: TTabSheet
          Caption = 'Valor Calculado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 1
          ParentFont = False
          object Label54: TLabel
            Left = 1
            Top = 2
            Width = 64
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label56: TLabel
            Left = 1
            Top = 42
            Width = 31
            Height = 14
            Alignment = taRightJustify
            Caption = 'Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label57: TLabel
            Left = 144
            Top = 2
            Width = 67
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label58: TLabel
            Left = 144
            Top = 42
            Width = 44
            Height = 14
            Alignment = taRightJustify
            Caption = 'Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label60: TLabel
            Left = 286
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base St.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label61: TLabel
            Left = 286
            Top = 42
            Width = 101
            Height = 14
            Alignment = taRightJustify
            Caption = 'Outras Despesas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label62: TLabel
            Left = 429
            Top = 2
            Width = 53
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total St.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label64: TLabel
            Left = 429
            Top = 42
            Width = 85
            Height = 14
            Alignment = taRightJustify
            Caption = 'Desconto Inc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label65: TLabel
            Left = 857
            Top = 2
            Width = 118
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label66: TLabel
            Left = 857
            Top = 42
            Width = 83
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label69: TLabel
            Left = 714
            Top = 2
            Width = 52
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor Pis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label72: TLabel
            Left = 714
            Top = 42
            Width = 73
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor Cofins'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label76: TLabel
            Left = 572
            Top = 42
            Width = 53
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label79: TLabel
            Left = 572
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edFreteCalc: TdxDBColorCurrencyEdit
            Left = 1
            Top = 58
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 7
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTFRT'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit31: TdxDBColorCurrencyEdit
            Left = 1
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 0
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASIC1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit32: TdxDBColorCurrencyEdit
            Left = 144
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIC1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit33: TdxDBColorCurrencyEdit
            Left = 144
            Top = 58
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 8
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTSEG'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit34: TdxDBColorCurrencyEdit
            Left = 286
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASSU1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object D: TdxDBColorCurrencyEdit
            Left = 286
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 9
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTOUTDESP'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit36: TdxDBColorCurrencyEdit
            Left = 429
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTSU1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit37: TdxDBColorCurrencyEdit
            Left = 429
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTDESCINC'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit38: TdxDBColorCurrencyEdit
            Left = 857
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 6
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIT1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit39: TdxDBColorCurrencyEdit
            Left = 857
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 13
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTGE1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit40: TdxDBColorCurrencyEdit
            Left = 714
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 5
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTPIS'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit41: TdxDBColorCurrencyEdit
            Left = 714
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 12
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTCOF'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit42: TdxDBColorCurrencyEdit
            Left = 572
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 4
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASIP1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit43: TdxDBColorCurrencyEdit
            Left = 572
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 11
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIP1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
        end
        object tsFixar: TTabSheet
          Caption = 'Fixar Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnExit = tsFixarExit
          object Label28: TLabel
            Left = 1
            Top = 2
            Width = 64
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 1
            Top = 42
            Width = 31
            Height = 14
            Alignment = taRightJustify
            Caption = 'Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 144
            Top = 2
            Width = 67
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 144
            Top = 42
            Width = 44
            Height = 14
            Alignment = taRightJustify
            Caption = 'Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 286
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base St.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label40: TLabel
            Left = 286
            Top = 42
            Width = 101
            Height = 14
            Alignment = taRightJustify
            Caption = 'Outras Despesas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 429
            Top = 2
            Width = 53
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total St.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 429
            Top = 42
            Width = 85
            Height = 14
            Alignment = taRightJustify
            Caption = 'Desconto Inc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label36: TLabel
            Left = 857
            Top = 2
            Width = 118
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 857
            Top = 42
            Width = 83
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label49: TLabel
            Left = 714
            Top = 2
            Width = 52
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor Pis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label50: TLabel
            Left = 714
            Top = 42
            Width = 73
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor Cofins'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label51: TLabel
            Left = 572
            Top = 42
            Width = 53
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label52: TLabel
            Left = 572
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            Caption = 'Base IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object EdTotFrt: TdxDBColorCurrencyEdit
            Left = 1
            Top = 58
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 7
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTFRT'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdBasIc1: TdxDBColorCurrencyEdit
            Left = 1
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 0
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASIC1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotIc1: TdxDBColorCurrencyEdit
            Left = 144
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIC1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotSeg: TdxDBColorCurrencyEdit
            Left = 144
            Top = 58
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 8
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTSEG'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdBasSu1: TdxDBColorCurrencyEdit
            Left = 286
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASSU1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotDes: TdxDBColorCurrencyEdit
            Left = 286
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 9
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTOUTDESP'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotSu1: TdxDBColorCurrencyEdit
            Left = 429
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTSU1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotIp1: TdxDBColorCurrencyEdit
            Left = 429
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 10
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTDESCINC'
            DataSource = DsGer
            ReadOnly = False
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotIt1: TdxDBColorCurrencyEdit
            Left = 857
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 6
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIT1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object EdTotGe1: TdxDBColorCurrencyEdit
            Left = 857
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 13
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTGE1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit26: TdxDBColorCurrencyEdit
            Left = 714
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 5
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTPIS'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit27: TdxDBColorCurrencyEdit
            Left = 714
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 12
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTCOF'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit28: TdxDBColorCurrencyEdit
            Left = 572
            Top = 18
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 4
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BASIP1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
          object dxDBColorCurrencyEdit29: TdxDBColorCurrencyEdit
            Left = 572
            Top = 57
            Width = 130
            Color = 16577773
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = 14859373
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtInactive
            Style.HotTrack = True
            Style.Shadow = True
            TabOrder = 11
            TabStop = False
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTIP1'
            DataSource = DsGer
            ReadOnly = True
            DisplayFormat = '###,###,##0.00'
            Nullable = False
            UseThousandSeparator = True
            CorDeFoco = clInfoBk
            Height = 24
            StoredValues = 65
          end
        end
      end
    end
    object edNomEmp: TdxColorEdit
      Left = 299
      Top = 26
      Width = 503
      Color = 16577773
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      TabStop = False
      ReadOnly = True
      CorDeFoco = clInfoBk
      StoredValues = 64
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 373
    Width = 999
    Height = 250
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    OnEnter = Panel3Enter
    OnExit = Panel3Exit
    object Label3: TLabel
      Left = 761
      Top = 24
      Width = 82
      Height = 28
      Caption = 'Motivo Desoneracao:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object EdCodGru: TdxDBColorEdit
      Left = 29
      Top = 1
      Width = 47
      Hint = 'Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 75
      Top = 1
      Width = 52
      Hint = 'Sub-Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 126
      Top = 1
      Width = 62
      Hint = 'Código do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnEnter = EdCodGruEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpGe2: TdxDBColorCurrencyEdit
      Left = 436
      Top = 1
      Width = 81
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 9
      OnEnter = EdTipPfaEnter
      OnExit = EdQtpPe2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPGE2'
      DataSource = DsGe2
      DecimalPlaces = 6
      DisplayFormat = '0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluGe2: TdxDBColorCurrencyEdit
      Left = 517
      Top = 1
      Width = 91
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUGE2'
      DataSource = DsGe2
      DecimalPlaces = 6
      DisplayFormat = '0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIpiGe2: TdxDBColorCurrencyEdit
      Left = 659
      Top = 1
      Width = 48
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'IPIGE2'
      DataSource = DsGe2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdIcmGe2: TdxDBColorCurrencyEdit
      Left = 706
      Top = 1
      Width = 52
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ICMGE2'
      DataSource = DsGe2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt1: TdxDBColorEdit
      Left = 325
      Top = 1
      Width = 32
      Hint = 'Situação Tributária 1'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      OnEnter = EdCodSt1Enter
      OnKeyDown = EdCodSt1KeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST1'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSt2: TdxDBColorEdit
      Left = 356
      Top = 1
      Width = 41
      Hint = 'Situação Tributária 2'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      OnEnter = EdCodSt1Enter
      OnExit = EdCodSt2Exit
      OnKeyDown = EdCodSt2KeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODST2'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotGe2: TdxDBColorCurrencyEdit
      Left = 854
      Top = 1
      Width = 142
      Hint = 'Total do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTGE2'
      DataSource = DsGe2
      DisplayFormat = '###,###,##0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodCfo: TdxDBColorEdit
      Left = 187
      Top = 1
      Width = 58
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdTipPfaEnter
      OnExit = EdCodCfoExit
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCFO'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdClsIpi: TdxDBColorEdit
      Left = 244
      Top = 1
      Width = 82
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdTipPfaEnter
      OnKeyDown = EdClsIpiKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodUnd: TdxDBColorEdit
      Left = 396
      Top = 1
      Width = 41
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      OnEnter = EdCodSt1Enter
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODUND'
      DataSource = DsGe2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodClp: TdxDBColorEdit
      Left = 0
      Top = 1
      Width = 30
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      TabStop = False
      OnEnter = EdCodClpEnter
      OnExit = EdCodClpExit
      OnKeyDown = EdCodClpKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsGe2
      ReadOnly = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
    object EdObsGe2: TdxDBColorEdit
      Left = 0
      Top = 48
      Width = 756
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 18
      TabStop = False
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSGE2'
      DataSource = DsGe2
      ReadOnly = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
    object EdDesGe2: TdxDBColorEdit
      Left = 0
      Top = 24
      Width = 756
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESGE2'
      DataSource = DsGe2
      ReadOnly = False
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
    object edAliqPis: TdxDBColorCurrencyEdit
      Left = 757
      Top = 1
      Width = 44
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ALIQPIS'
      DataSource = DsGe2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edAliqCof: TdxDBColorCurrencyEdit
      Left = 800
      Top = 1
      Width = 55
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'ALIQCOF'
      DataSource = DsGe2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 112
      Width = 308
      Height = 68
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      object Label73: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label74: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label75: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label81: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 259
        Top = 24
        Width = 42
        Height = 14
        Caption = 'Red.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edTotIcmItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTICM'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edBaseICMSItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASICM'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 82
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMGE2'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorEdit2: TdxDBColorEdit
        Left = 165
        Top = 39
        Width = 23
        Hint = 'Unidade do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CODST1'
        DataSource = DsGe2
        ReadOnly = False
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorEdit7: TdxDBColorEdit
        Left = 187
        Top = 39
        Width = 45
        Hint = 'Unidade do Item'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        OnKeyDown = EdCodUndKeyDown
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CODST2'
        ReadOnly = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBLookupEdit1: TdxDBLookupEdit
        Left = 187
        Top = 39
        Width = 60
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CODST2'
        DataSource = DsGe2
        ReadOnly = False
        DropDownWidth = 550
        ImmediateDropDown = False
        ListFieldName = 'CODST2;NOMST2'
        KeyFieldName = 'CODST2'
        ListSource = fmManGDB.DSst2
        LookupKeyValue = Null
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit20: TdxDBColorCurrencyEdit
        Left = 250
        Top = 39
        Width = 55
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'REDICM'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
    object GroupBox4: TGroupBox
      Left = 312
      Top = 112
      Width = 239
      Height = 68
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      object Label83: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label84: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edTotIPIItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTIPI'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edBaseIPIItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASIPI'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit15: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'IPIGE2'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodIPI: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTIPI'
        DataSource = DsGe2
        ReadOnly = False
        DropDownWidth = 600
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMSIP'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsIPI
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox5: TGroupBox
      Left = 553
      Top = 179
      Width = 239
      Height = 68
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      object Label86: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit17: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTCOF'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edBaseCOFItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASCOF'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit19: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIQCOF'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodCOF: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTCOF'
        DataSource = DsGe2
        ReadOnly = False
        DropDownWidth = 800
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMCOF'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsCOF
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox2: TGroupBox
      Left = 312
      Top = 179
      Width = 239
      Height = 68
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      object Label77: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label78: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTPIS'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edBasePISItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASPIS'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIQPIS'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodPIS: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTPIS'
        DataSource = DsGe2
        ReadOnly = False
        DropDownWidth = 800
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMPIS'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsPIS
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 179
      Width = 308
      Height = 68
      Caption = 'ICMS Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      object Label67: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label71: TLabel
        Left = 133
        Top = 44
        Width = 32
        Height = 14
        Caption = 'MVA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 259
        Top = 24
        Width = 42
        Height = 14
        Caption = 'Red.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edTotIcmSTItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSUB'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edBaseStItem: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASSUB'
        DataSource = DsGe2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 82
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMSUB'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit16: TdxDBColorCurrencyEdit
        Left = 165
        Top = 39
        Width = 82
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MRGSUB'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit21: TdxDBColorCurrencyEdit
        Left = 250
        Top = 39
        Width = 55
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'REDSUB'
        DataSource = DsGe2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
    object GroupBox6: TGroupBox
      Left = 794
      Top = 55
      Width = 203
      Height = 192
      Caption = 'Totais'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
      object Label30: TLabel
        Left = 4
        Top = 17
        Width = 57
        Height = 14
        Caption = 'Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 4
        Top = 122
        Width = 70
        Height = 14
        Caption = 'ICMS Subs.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 4
        Top = 101
        Width = 18
        Height = 14
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 4
        Top = 164
        Width = 94
        Height = 14
        Caption = 'Total do Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label90: TLabel
        Left = 4
        Top = 38
        Width = 31
        Height = 14
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 4
        Top = 59
        Width = 44
        Height = 14
        Caption = 'Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 4
        Top = 80
        Width = 79
        Height = 14
        Caption = 'Outras Desp.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 4
        Top = 143
        Width = 55
        Height = 14
        Caption = 'Desc.Inc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdTotRes: TdxDBColorCurrencyEdit
        Left = 101
        Top = 13
        Width = 96
        Hint = 'Total do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTIT1'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object EdTotSub: TdxDBColorCurrencyEdit
        Left = 101
        Top = 118
        Width = 96
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSUB'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object EdTotIpi: TdxDBColorCurrencyEdit
        Left = 101
        Top = 97
        Width = 96
        Hint = 'Total da Nota'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTIPI'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object EdTotGer: TdxDBColorCurrencyEdit
        Left = 101
        Top = 160
        Width = 96
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 7
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTGE1'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit22: TdxDBColorCurrencyEdit
        Left = 101
        Top = 34
        Width = 96
        Hint = 'Total do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTFRT'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit23: TdxDBColorCurrencyEdit
        Left = 101
        Top = 55
        Width = 96
        Hint = 'Total do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSEG'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit24: TdxDBColorCurrencyEdit
        Left = 101
        Top = 76
        Width = 96
        Hint = 'Total do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTOUTDESP'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit25: TdxDBColorCurrencyEdit
        Left = 101
        Top = 139
        Width = 96
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTDESCINC'
        DataSource = DsGer
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
    end
    object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
      Left = 607
      Top = 1
      Width = 52
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PERIMPII'
      DataSource = DsGe2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object GroupBox9: TGroupBox
      Left = 2
      Top = 71
      Width = 790
      Height = 39
      TabOrder = 20
      object Label11: TLabel
        Left = 168
        Top = 15
        Width = 38
        Height = 14
        Caption = 'Vlr. II:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 347
        Top = 15
        Width = 87
        Height = 14
        Caption = 'Vlr. Desp.Adu:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 576
        Top = 15
        Width = 48
        Height = 14
        Caption = 'Vlr. IOF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 8
        Top = 15
        Width = 34
        Height = 14
        Caption = 'BC II:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edIOF: TdxDBColorCurrencyEdit
        Left = 631
        Top = 10
        Width = 110
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        OnEnter = EdTipPfaEnter
        OnExit = EdQtpPe2Exit
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRIOF'
        DataSource = DsGe2
        DecimalPlaces = 6
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object edBCII: TdxDBColorCurrencyEdit
        Left = 47
        Top = 10
        Width = 110
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRBCII'
        DataSource = DsGe2
        DecimalPlaces = 6
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object edDespAdu: TdxDBColorCurrencyEdit
        Left = 438
        Top = 10
        Width = 110
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRDESPATU'
        DataSource = DsGe2
        DecimalPlaces = 6
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object edII: TdxDBColorCurrencyEdit
        Left = 213
        Top = 10
        Width = 110
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        OnEnter = EdTipPfaEnter
        OnExit = EdQtpPe2Exit
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRIMPII'
        DataSource = DsGe2
        DecimalPlaces = 6
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
    end
    object GroupBox10: TGroupBox
      Left = 553
      Top = 112
      Width = 239
      Height = 68
      TabOrder = 27
      object Label6: TLabel
        Left = 35
        Top = 19
        Width = 36
        Height = 14
        Caption = 'Itens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 36
        Top = 43
        Width = 60
        Height = 14
        Caption = 'Seq.Item:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdSeqPe2: TdxDBColorCurrencyEdit
        Left = 119
        Top = 38
        Width = 92
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SEQPE2'
        DecimalPlaces = 0
        DisplayFormat = '###0'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object pnNroGe2: TPanel
        Left = 127
        Top = 19
        Width = 83
        Height = 14
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = '0000/0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object edMotivo: TdxDBColorLookupEdit
      Left = 845
      Top = 33
      Width = 152
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 19
      DataField = 'CODDESONERACAO'
      DataSource = DsGe2
      ListFieldName = 'MOTIVO'
      KeyFieldName = 'ID'
      ListSource = dsDesoneracao
      LookupKeyValue = Null
      CorDeFoco = clInfoBk
    end
    object pnReferencia: TPanel
      Left = 0
      Top = 24
      Width = 759
      Height = 48
      BevelOuter = bvNone
      TabOrder = 28
      Visible = False
      OnEnter = pnReferenciaEnter
      object Label8: TLabel
        Left = 508
        Top = 3
        Width = 91
        Height = 14
        Caption = 'Código na NFe:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdDesGe2_1: TdxDBColorEdit
        Left = 0
        Top = 0
        Width = 505
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'DESGE2'
        DataSource = DsGe2
        ReadOnly = False
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object EdObsGe2_1: TdxDBColorEdit
        Left = 0
        Top = 24
        Width = 756
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'OBSGE2'
        DataSource = DsGe2
        ReadOnly = False
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorEdit5: TdxDBColorEdit
        Left = 602
        Top = 0
        Width = 154
        Hint = 'Código do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'REFGE2'
        DataSource = DsGe2
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
    end
  end
  object grGe2: TDBGrid
    Left = 0
    Top = 285
    Width = 999
    Height = 88
    Align = alClient
    Color = 16577773
    DataSource = DsGe2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnEnter = grGe2Enter
    OnExit = grGe2Exit
    OnKeyDown = grGe2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCLP'
        Title.Caption = 'CL.'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODGRU'
        Title.Caption = 'Grupo'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSUB'
        Title.Caption = 'Sub'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'Produto'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCFO'
        Title.Caption = ' CFOP'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSIPI'
        Title.Alignment = taCenter
        Title.Caption = 'NCM'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODST1'
        Title.Alignment = taCenter
        Title.Caption = 'O.'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODST2'
        Title.Alignment = taCenter
        Title.Caption = 'CST'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODUND'
        Title.Alignment = taCenter
        Title.Caption = 'UN'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTPGE2'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLUGE2'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vl. Unit.'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIMPII'
        Title.Alignment = taRightJustify
        Title.Caption = '%II'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPIGE2'
        Title.Alignment = taRightJustify
        Title.Caption = '%IPI'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMGE2'
        Title.Alignment = taRightJustify
        Title.Caption = '%ICMS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQPIS'
        Title.Alignment = taRightJustify
        Title.Caption = '%Pis'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQCOF'
        Title.Alignment = taRightJustify
        Title.Caption = '%Cofins'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTITE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI'
        Visible = True
      end>
  end
  object sbInfo: TStatusBar
    Left = 0
    Top = 623
    Width = 999
    Height = 19
    Panels = <
      item
        Text = 'F1-Iniciais F2-Inteligente'
        Width = 700
      end
      item
        Alignment = taRightJustify
        Text = 'F12-Cont Esc-Sair'
        Width = 50
      end>
    SimplePanel = False
  end
  object FatGer: TwwQuery
    CachedUpdates = True
    AfterOpen = FatGerAfterOpen
    BeforePost = FatGerBeforePost
    OnNewRecord = FatGerNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select RTRIM(LTRIM(DESNAT)) DESNAT, FATGER.* From FatGer'
      'Where FatGer.CodEmp = :CodEmp'
      '     and FatGer.DteGer = :DteGer'
      '     and FatGer.NumGer = :NumGer')
    UpdateObject = UpGer
    ValidateWithMask = True
    Left = 2
    Top = 284
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteGer'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumGer'
        ParamType = ptInput
      end>
    object FatGerCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATGER.CODEMP'
    end
    object FatGerDTEGER: TDateTimeField
      FieldName = 'DTEGER'
      Origin = 'ISADE.FATGER.DTEGER'
    end
    object FatGerNUMGER: TIntegerField
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATGER.NUMGER'
    end
    object FatGerHREFAT: TStringField
      FieldName = 'HREFAT'
      Origin = 'ISADE.FATGER.HREFAT'
      FixedChar = True
      Size = 8
    end
    object FatGerUFEGER: TStringField
      FieldName = 'UFEGER'
      Origin = 'ISADE.FATGER.UFEGER'
      FixedChar = True
      Size = 2
    end
    object FatGerCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATGER.CODPFA'
      Size = 15
    end
    object FatGerTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATGER.TIPPFA'
      Size = 7
    end
    object FatGerCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATGER.CODCLI'
    end
    object FatGerCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATGER.CODVEN'
    end
    object FatGerDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATGER.DSCREG'
    end
    object FatGerPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATGER.PERPIS'
    end
    object FatGerPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATGER.PERCOF'
    end
    object FatGerCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATGER.CODFIL'
    end
    object FatGerQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATGER.QTDNFS'
    end
    object FatGerNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATGER.NRONFS'
    end
    object FatGerNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATGER.NROSUF'
    end
    object FatGerFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATGER.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatGerCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATGER.CGCCLI'
      Size = 18
    end
    object FatGerINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATGER.INSCLI'
      Size = 18
    end
    object FatGerCODCF1: TStringField
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATGER.CODCF1'
      Size = 15
    end
    object FatGerCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATGER.CODCF2'
      Size = 15
    end
    object FatGerFRTGER: TStringField
      FieldName = 'FRTGER'
      Origin = 'ISADE.FATGER.FRTGER'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATGER.FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATGER.FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatGerDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATGER.DESNAT'
      Size = 100
    end
    object FatGerINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATGER.INSSUB'
      Size = 18
    end
    object FatGerTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATGER.TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatGerMARGER: TStringField
      FieldName = 'MARGER'
      Origin = 'ISADE.FATGER.MARGER'
      Size = 15
    end
    object FatGerNROGER: TStringField
      FieldName = 'NROGER'
      Origin = 'ISADE.FATGER.NROGER'
      Size = 15
    end
    object FatGerESPGER: TStringField
      FieldName = 'ESPGER'
      Origin = 'ISADE.FATGER.ESPGER'
      Size = 15
    end
    object FatGerNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATGER.NOMTRA'
      Size = 70
    end
    object FatGerCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATGER.CGCTRA'
      Size = 18
    end
    object FatGerINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATGER.INSTRA'
      Size = 18
    end
    object FatGerCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATGER.CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatGerTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATGER.TENTRA'
      Size = 10
    end
    object FatGerENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATGER.ENDTRA'
      Size = 40
    end
    object FatGerREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATGER.REFTRA'
      Size = 40
    end
    object FatGerNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATGER.NUMTRA'
      Size = 10
    end
    object FatGerBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATGER.BAITRA'
    end
    object FatGerCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATGER.CIDTRA'
    end
    object FatGerUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATGER.UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatGerPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATGER.PLCTRA'
      Size = 7
    end
    object FatGerPRTTRA: TStringField
      FieldName = 'PRTTRA'
      Origin = 'ISADE.FATGER.PRTTRA'
      Size = 4
    end
    object FatGerFONTRA: TStringField
      FieldName = 'FONTRA'
      Origin = 'ISADE.FATGER.FONTRA'
    end
    object FatGerUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATGER.UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatGerCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATGER.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatGerTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATGER.TENCLI'
      Size = 10
    end
    object FatGerENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATGER.ENDCLI'
      Size = 70
    end
    object FatGerREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATGER.REFCLI'
      Size = 40
    end
    object FatGerNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATGER.NUMCLI'
      Size = 10
    end
    object FatGerBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATGER.BAICLI'
    end
    object FatGerCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATGER.CIDCLI'
    end
    object FatGerUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATGER.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatGerINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATGER.INECLI'
      Size = 18
    end
    object FatGerCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATGER.CGECLI'
      Size = 18
    end
    object FatGerTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATGER.TXFIPI'
      Size = 160
    end
    object FatGerTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATGER.TXFICM'
      Size = 160
    end
    object FatGerOBSGER: TStringField
      FieldName = 'OBSGER'
      Origin = 'ISADE.FATGER.OBSGER'
      Size = 240
    end
    object FatGerSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATGER.SEQITE'
    end
    object FatGerQTIGER: TIntegerField
      FieldName = 'QTIGER'
      Origin = 'ISADE.FATGER.QTIGER'
    end
    object FatGerLINGER: TIntegerField
      FieldName = 'LINGER'
      Origin = 'ISADE.FATGER.LINGER'
    end
    object FatGerQTPGER: TIntegerField
      FieldName = 'QTPGER'
      Origin = 'ISADE.FATGER.QTPGER'
    end
    object FatGerSTPGER: TIntegerField
      FieldName = 'STPGER'
      Origin = 'ISADE.FATGER.STPGER'
    end
    object FatGerQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATGER.QTDVOL'
    end
    object FatGerALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Origin = 'ISADE.FATGER.ALTVOL'
    end
    object FatGerINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATGER.INFLIQ'
    end
    object FatGerTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATGER.TOTLIQ'
      DisplayFormat = '#0.00'
    end
    object FatGerINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATGER.INFBRT'
    end
    object FatGerTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATGER.TOTBRT'
    end
    object FatGerBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATGER.BASIPI'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATGER.TOTIPI'
      DisplayFormat = '#0.00'
    end
    object FatGerBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATGER.BASICM'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATGER.TOTICM'
      DisplayFormat = '#0.00'
    end
    object FatGerBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATGER.BASSUB'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATGER.TOTSUB'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTITE: TFloatField
      FieldName = 'TOTITE'
      Origin = 'ISADE.FATGER.TOTITE'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATGER.TOTPIS'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATGER.TOTCOF'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATGER.TOTFRT'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATGER.TOTSEG'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATGER.TOTDES'
      DisplayFormat = '#0.00'
    end
    object FatGerICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.FATGER.ICMFRT'
      DisplayFormat = '#0.00'
    end
    object FatGerBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATGER.BSICMF'
      DisplayFormat = '#0.00'
    end
    object FatGerBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATGER.BAICMF'
      DisplayFormat = '#0.00'
    end
    object FatGerTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATGER.TOICMF'
      DisplayFormat = '#0.00'
    end
    object FatGerICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.FATGER.ICMSEG'
      DisplayFormat = '#0.00'
    end
    object FatGerBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATGER.BSICMS'
      DisplayFormat = '#0.00'
    end
    object FatGerBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATGER.BAICMS'
      DisplayFormat = '#0.00'
    end
    object FatGerTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATGER.TOICMS'
      DisplayFormat = '#0.00'
    end
    object FatGerICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.FATGER.ICMDES'
      DisplayFormat = '#0.00'
    end
    object FatGerBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATGER.BSICMD'
      DisplayFormat = '#0.00'
    end
    object FatGerBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATGER.BAICMD'
      DisplayFormat = '#0.00'
    end
    object FatGerTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATGER.TOICMD'
      DisplayFormat = '#0.00'
    end
    object FatGerIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.FATGER.IPIFRT'
      DisplayFormat = '#0.00'
    end
    object FatGerBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATGER.BSIPIF'
      DisplayFormat = '#0.00'
    end
    object FatGerBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATGER.BAIPIF'
      DisplayFormat = '#0.00'
    end
    object FatGerTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATGER.TOIPIF'
      DisplayFormat = '#0.00'
    end
    object FatGerIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.FATGER.IPISEG'
      DisplayFormat = '#0.00'
    end
    object FatGerBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATGER.BSIPIS'
      DisplayFormat = '#0.00'
    end
    object FatGerBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATGER.BAIPIS'
      DisplayFormat = '#0.00'
    end
    object FatGerTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATGER.TOIPIS'
      DisplayFormat = '#0.00'
    end
    object FatGerIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.FATGER.IPIDES'
      DisplayFormat = '#0.00'
    end
    object FatGerBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATGER.BSIPID'
      DisplayFormat = '#0.00'
    end
    object FatGerBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATGER.BAIPID'
      DisplayFormat = '#0.00'
    end
    object FatGerTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATGER.TOIPID'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATGER.TOTGER'
      DisplayFormat = '#0.00'
    end
    object FatGerLANGER: TFloatField
      FieldName = 'LANGER'
      Origin = 'ISADE.FATGER.LANGER'
      DisplayFormat = '#0.00'
    end
    object FatGerSLDGER: TFloatField
      FieldName = 'SLDGER'
      Origin = 'ISADE.FATGER.SLDGER'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATGER.TOTDSR'
      DisplayFormat = '#0.00'
    end
    object FatGerBASIP1: TFloatField
      FieldName = 'BASIP1'
      Origin = 'ISADE.FATGER.BASIP1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTIP1: TFloatField
      FieldName = 'TOTIP1'
      Origin = 'ISADE.FATGER.TOTIP1'
      DisplayFormat = '#0.00'
    end
    object FatGerBASIC1: TFloatField
      FieldName = 'BASIC1'
      Origin = 'ISADE.FATGER.BASIC1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTIC1: TFloatField
      FieldName = 'TOTIC1'
      Origin = 'ISADE.FATGER.TOTIC1'
      DisplayFormat = '#0.00'
    end
    object FatGerBASSU1: TFloatField
      FieldName = 'BASSU1'
      Origin = 'ISADE.FATGER.BASSU1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTSU1: TFloatField
      FieldName = 'TOTSU1'
      Origin = 'ISADE.FATGER.TOTSU1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTIT1: TFloatField
      FieldName = 'TOTIT1'
      Origin = 'ISADE.FATGER.TOTIT1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTGE1: TFloatField
      FieldName = 'TOTGE1'
      Origin = 'ISADE.FATGER.TOTGE1'
      DisplayFormat = '#0.00'
    end
    object FatGerCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATGER.CODUSU'
    end
    object FatGerHRCGER: TStringField
      FieldName = 'HRCGER'
      Origin = 'ISADE.FATGER.HRCGER'
      FixedChar = True
      Size = 8
    end
    object FatGerDTCGER: TDateTimeField
      FieldName = 'DTCGER'
      Origin = 'ISADE.FATGER.DTCGER'
    end
    object FatGerUSCGER: TIntegerField
      FieldName = 'USCGER'
      Origin = 'ISADE.FATGER.USCGER'
    end
    object FatGerOBCGER: TMemoField
      FieldName = 'OBCGER'
      Origin = 'ISADE.FATGER.OBCGER'
      BlobType = ftMemo
      Size = 500
    end
    object FatGerATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATGER.ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatGerLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATGER.LANEST'
      FixedChar = True
      Size = 3
    end
    object FatGerINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATGER.INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatGerCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATGER.CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATGER.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatGerCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATGER.CODIPI'
      Size = 30
    end
    object FatGerTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATGER.TIPIPI'
      Size = 7
    end
    object FatGerTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATGER.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatGerREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATGER.REDIPI'
    end
    object FatGerBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATGER.BSCIPI'
    end
    object FatGerCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATGER.CODICM'
    end
    object FatGerTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATGER.TIPICM'
      Size = 7
    end
    object FatGerTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATGER.TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatGerREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATGER.REDICM'
      DisplayFormat = '#0.00'
    end
    object FatGerBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATGER.BSCICM'
      DisplayFormat = '#0.00'
    end
    object FatGerINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATGER.INCREV'
    end
    object FatGerINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATGER.INCFIN'
    end
    object FatGerFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATGER.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatGerDTEATU: TDateTimeField
      FieldName = 'DTEATU'
      Origin = 'ISADE.FATGER.DTEATU'
    end
    object FatGerHREATU: TStringField
      FieldName = 'HREATU'
      Origin = 'ISADE.FATGER.HREATU'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUATU: TIntegerField
      FieldName = 'USUATU'
      Origin = 'ISADE.FATGER.USUATU'
    end
    object FatGerTRASDA: TIntegerField
      FieldName = 'TRASDA'
      Origin = 'ISADE.FATGER.TRASDA'
    end
    object FatGerDTESDA: TDateTimeField
      FieldName = 'DTESDA'
      Origin = 'ISADE.FATGER.DTESDA'
    end
    object FatGerHRESDA: TStringField
      FieldName = 'HRESDA'
      Origin = 'ISADE.FATGER.HRESDA'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUSDA: TIntegerField
      FieldName = 'USUSDA'
      Origin = 'ISADE.FATGER.USUSDA'
    end
    object FatGerOBSSDA: TStringField
      FieldName = 'OBSSDA'
      Origin = 'ISADE.FATGER.OBSSDA'
      Size = 240
    end
    object FatGerCODVEI: TIntegerField
      FieldName = 'CODVEI'
      Origin = 'ISADE.FATGER.CODVEI'
    end
    object FatGerDTEENT: TDateTimeField
      FieldName = 'DTEENT'
      Origin = 'ISADE.FATGER.DTEENT'
    end
    object FatGerHREENT: TStringField
      FieldName = 'HREENT'
      Origin = 'ISADE.FATGER.HREENT'
      FixedChar = True
      Size = 8
    end
    object FatGerUSUENT: TIntegerField
      FieldName = 'USUENT'
      Origin = 'ISADE.FATGER.USUENT'
    end
    object FatGerOBSENT: TStringField
      FieldName = 'OBSENT'
      Origin = 'ISADE.FATGER.OBSENT'
      Size = 240
    end
    object FatGerDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATGER.DESREG'
      Size = 100
    end
    object FatGerSEQGER: TStringField
      FieldName = 'SEQGER'
      Origin = 'ISADE.FATGER.SEQGER'
      FixedChar = True
      Size = 22
    end
    object FatGerSITGER: TStringField
      FieldName = 'SITGER'
      Origin = 'ISADE.FATGER.SITGER'
      Size = 45
    end
    object FatGerNROCOL: TStringField
      FieldName = 'NROCOL'
      Origin = 'ISADE.FATGER.NROCOL'
    end
    object FatGerDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.FATGER.DTEFAT'
    end
    object FatGerFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATGER.FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATGER.FLGENV'
      FixedChar = True
      Size = 3
    end
    object FatGerBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATGER.BASISS'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATGER.TOTISS'
      DisplayFormat = '#0.00'
    end
    object FatGerBASIS1: TFloatField
      FieldName = 'BASIS1'
      Origin = 'ISADE.FATGER.BASIS1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTIS1: TFloatField
      FieldName = 'TOTIS1'
      Origin = 'ISADE.FATGER.TOTIS1'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTSER: TFloatField
      FieldName = 'TOTSER'
      Origin = 'ISADE.FATGER.TOTSER'
      DisplayFormat = '#0.00'
    end
    object FatGerTOTSE1: TFloatField
      FieldName = 'TOTSE1'
      Origin = 'ISADE.FATGER.TOTSE1'
      DisplayFormat = '#0.00'
    end
    object FatGerQTISER: TIntegerField
      FieldName = 'QTISER'
      Origin = 'ISADE.FATGER.QTISER'
    end
    object FatGerSEQSER: TIntegerField
      FieldName = 'SEQSER'
      Origin = 'ISADE.FATGER.SEQSER'
    end
    object FatGerFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.FATGER.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATGER.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatGerNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.FATGER.NOMENT'
      FixedChar = True
      Size = 70
    end
    object FatGerCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATGER.CODTCL'
    end
    object FatGerTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.FATGER.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatGerTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.FATGER.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatGerID_FATGER: TIntegerField
      FieldName = 'ID_FATGER'
      Origin = 'ISADE.FATGER.ID_FATGER'
    end
    object FatGerQTIGE2: TIntegerField
      FieldName = 'QTIGE2'
      Origin = 'ISADE.FATGER.QTIGE2'
    end
    object FatGerSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.FATGER.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object FatGerDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.FATGER.DTENFE'
    end
    object FatGerMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATGER.MODPFA'
    end
    object FatGerRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.FATGER.RECNFE'
      FixedChar = True
      Size = 15
    end
    object FatGerARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.FATGER.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object FatGerBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Origin = 'ISADE.FATGER.BAFCLI'
    end
    object FatGerCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Origin = 'ISADE.FATGER.CEFCLI'
      Size = 8
    end
    object FatGerCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Origin = 'ISADE.FATGER.CIFCLI'
    end
    object FatGerCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATGER.CODTRA'
    end
    object FatGerDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.FATGER.DOPNFE'
    end
    object FatGerDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.FATGER.DTCNFE'
    end
    object FatGerDTECAN: TDateTimeField
      FieldName = 'DTECAN'
      Origin = 'ISADE.FATGER.DTECAN'
    end
    object FatGerDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.FATGER.DTECNE'
    end
    object FatGerDTENPF: TDateTimeField
      FieldName = 'DTENPF'
      Origin = 'ISADE.FATGER.DTENPF'
    end
    object FatGerENFCLI: TStringField
      FieldName = 'ENFCLI'
      Origin = 'ISADE.FATGER.ENFCLI'
      Size = 70
    end
    object FatGerFLGSEG: TStringField
      FieldName = 'FLGSEG'
      Origin = 'ISADE.FATGER.FLGSEG'
      FixedChar = True
      Size = 3
    end
    object FatGerHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.FATGER.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object FatGerHRECAN: TStringField
      FieldName = 'HRECAN'
      Origin = 'ISADE.FATGER.HRECAN'
      FixedChar = True
      Size = 8
    end
    object FatGerHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.FATGER.HRECNE'
      FixedChar = True
      Size = 8
    end
    object FatGerHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.FATGER.HRENFE'
      FixedChar = True
      Size = 8
    end
    object FatGerHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.FATGER.HREPNF'
      FixedChar = True
      Size = 8
    end
    object FatGerID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.FATGER.ID_ESTSIP'
    end
    object FatGerID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.FATGER.ID_FINCIE'
    end
    object FatGerID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.FATGER.ID_FINCIF'
    end
    object FatGerID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.FATGER.ID_FINUFE'
    end
    object FatGerID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.FATGER.ID_FINUFF'
    end
    object FatGerID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.FATGER.ID_TRACIE'
    end
    object FatGerID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.FATGER.ID_TRAUFE'
    end
    object FatGerIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.FATGER.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.FATGER.LOTNFE'
    end
    object FatGerNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.FATGER.NFECOF'
      FixedChar = True
      Size = 2
    end
    object FatGerNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.FATGER.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object FatGerNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Origin = 'ISADE.FATGER.NRFCLI'
      Size = 10
    end
    object FatGerNRONOT: TIntegerField
      FieldName = 'NRONOT'
      Origin = 'ISADE.FATGER.NRONOT'
    end
    object FatGerOB1CAN: TStringField
      FieldName = 'OB1CAN'
      Origin = 'ISADE.FATGER.OB1CAN'
      Size = 80
    end
    object FatGerOB1ENT: TStringField
      FieldName = 'OB1ENT'
      Origin = 'ISADE.FATGER.OB1ENT'
      Size = 80
    end
    object FatGerOB1SDA: TStringField
      FieldName = 'OB1SDA'
      Origin = 'ISADE.FATGER.OB1SDA'
      Size = 80
    end
    object FatGerOB2CAN: TStringField
      FieldName = 'OB2CAN'
      Origin = 'ISADE.FATGER.OB2CAN'
      Size = 80
    end
    object FatGerOB2ENT: TStringField
      FieldName = 'OB2ENT'
      Origin = 'ISADE.FATGER.OB2ENT'
      Size = 80
    end
    object FatGerOB2SDA: TStringField
      FieldName = 'OB2SDA'
      Origin = 'ISADE.FATGER.OB2SDA'
      Size = 80
    end
    object FatGerOB3CAN: TStringField
      FieldName = 'OB3CAN'
      Origin = 'ISADE.FATGER.OB3CAN'
      Size = 80
    end
    object FatGerOB3ENT: TStringField
      FieldName = 'OB3ENT'
      Origin = 'ISADE.FATGER.OB3ENT'
      Size = 80
    end
    object FatGerOB3SDA: TStringField
      FieldName = 'OB3SDA'
      Origin = 'ISADE.FATGER.OB3SDA'
      Size = 80
    end
    object FatGerOB4CAN: TStringField
      FieldName = 'OB4CAN'
      Origin = 'ISADE.FATGER.OB4CAN'
      Size = 80
    end
    object FatGerOB4ENT: TStringField
      FieldName = 'OB4ENT'
      Origin = 'ISADE.FATGER.OB4ENT'
      Size = 80
    end
    object FatGerOB4SDA: TStringField
      FieldName = 'OB4SDA'
      Origin = 'ISADE.FATGER.OB4SDA'
      Size = 80
    end
    object FatGerOB5CAN: TStringField
      FieldName = 'OB5CAN'
      Origin = 'ISADE.FATGER.OB5CAN'
      Size = 80
    end
    object FatGerOB5ENT: TStringField
      FieldName = 'OB5ENT'
      Origin = 'ISADE.FATGER.OB5ENT'
      Size = 80
    end
    object FatGerOB5SDA: TStringField
      FieldName = 'OB5SDA'
      Origin = 'ISADE.FATGER.OB5SDA'
      Size = 80
    end
    object FatGerQTDNOT: TIntegerField
      FieldName = 'QTDNOT'
      Origin = 'ISADE.FATGER.QTDNOT'
    end
    object FatGerQTIGE3: TIntegerField
      FieldName = 'QTIGE3'
      Origin = 'ISADE.FATGER.QTIGE3'
    end
    object FatGerQTISGE: TIntegerField
      FieldName = 'QTISGE'
      Origin = 'ISADE.FATGER.QTISGE'
    end
    object FatGerRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Origin = 'ISADE.FATGER.RFFCLI'
      Size = 40
    end
    object FatGerSEQFIN: TIntegerField
      FieldName = 'SEQFIN'
      Origin = 'ISADE.FATGER.SEQFIN'
    end
    object FatGerSEQINI: TIntegerField
      FieldName = 'SEQINI'
      Origin = 'ISADE.FATGER.SEQINI'
    end
    object FatGerSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.FATGER.SERNOT'
      Size = 10
    end
    object FatGerSERSEL: TStringField
      FieldName = 'SERSEL'
      Origin = 'ISADE.FATGER.SERSEL'
      Size = 10
    end
    object FatGerTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Origin = 'ISADE.FATGER.TEFCLI'
      Size = 10
    end
    object FatGerUFECOM: TStringField
      FieldName = 'UFECOM'
      Origin = 'ISADE.FATGER.UFECOM'
      FixedChar = True
      Size = 2
    end
    object FatGerUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Origin = 'ISADE.FATGER.UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatGerUSUCAN: TIntegerField
      FieldName = 'USUCAN'
      Origin = 'ISADE.FATGER.USUCAN'
    end
    object FatGerUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.FATGER.USUNFE'
    end
    object FatGerPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.FATGER.PRONFE'
      FixedChar = True
      Size = 15
    end
    object FatGerDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.FATGER.DTEPNF'
    end
    object FatGerRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.FATGER.RETNFE'
      Size = 100
    end
    object FatGerENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.FATGER.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.FATGER.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object FatGerDTECOM: TDateTimeField
      FieldName = 'DTECOM'
      Origin = 'ISADE.FATGER.DTECOM'
    end
    object FatGerRTENFE: TStringField
      FieldName = 'RTENFE'
      Origin = 'ISADE.FATGER.RTENFE'
      Size = 100
    end
    object FatGerNFSCOM: TIntegerField
      FieldName = 'NFSCOM'
      Origin = 'ISADE.FATGER.NFSCOM'
    end
    object FatGerSEQCOM: TStringField
      FieldName = 'SEQCOM'
      Origin = 'ISADE.FATGER.SEQCOM'
      FixedChar = True
      Size = 44
    end
    object FatGerPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.FATGER.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object FatGerFLGREC: TStringField
      FieldName = 'FLGREC'
      Origin = 'ISADE.FATGER.FLGREC'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGAPR: TStringField
      FieldName = 'FLGAPR'
      Origin = 'ISADE.FATGER.FLGAPR'
      FixedChar = True
      Size = 1
    end
    object FatGerFLGQTD: TStringField
      FieldName = 'FLGQTD'
      Origin = 'ISADE.FATGER.FLGQTD'
      FixedChar = True
      Size = 1
    end
    object FatGerNFETH: TSmallintField
      FieldName = 'NFETH'
      Origin = 'ISADE.FATGER.NFETH'
    end
    object FatGerARQNFECANC: TBlobField
      FieldName = 'ARQNFECANC'
      Origin = 'ISADE.FATGER.ARQNFECANC'
      BlobType = ftBlob
      Size = 1
    end
    object FatGerNFETHCANC: TSmallintField
      FieldName = 'NFETHCANC'
      Origin = 'ISADE.FATGER.NFETHCANC'
    end
    object FatGerOBSDES: TStringField
      FieldName = 'OBSDES'
      Origin = 'ISADE.FATGER.OBSDES'
      Size = 150
    end
    object FatGerLOCEMB: TStringField
      FieldName = 'LOCEMB'
      Origin = 'ISADE.FATGER.LOCEMB'
      Size = 60
    end
    object FatGerUFEMB: TStringField
      FieldName = 'UFEMB'
      Origin = 'ISADE.FATGER.UFEMB'
      FixedChar = True
      Size = 2
    end
    object FatGerID_ESTDIP: TIntegerField
      FieldName = 'ID_ESTDIP'
      Origin = 'ISADE.FATGER.ID_ESTDIP'
    end
    object FatGerTOTIMPII: TFloatField
      FieldName = 'TOTIMPII'
      Origin = 'ISADE.FATGER.TOTIMPII'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGerSERIENF: TSmallintField
      FieldName = 'SERIENF'
      Origin = 'ISADE.FATGER.SERIENF'
    end
    object FatGerSERIECONTINGENCIA: TSmallintField
      FieldName = 'SERIECONTINGENCIA'
      Origin = 'ISADE.FATGER.SERIECONTINGENCIA'
    end
    object FatGerNUMCONTINGENCIA: TSmallintField
      FieldName = 'NUMCONTINGENCIA'
      Origin = 'ISADE.FATGER.NUMCONTINGENCIA'
    end
    object FatGerOB1GER: TStringField
      FieldName = 'OB1GER'
      Origin = 'ISADE.FATGER.OB1GER'
      Size = 80
    end
    object FatGerOB2GER: TStringField
      FieldName = 'OB2GER'
      Origin = 'ISADE.FATGER.OB2GER'
      Size = 80
    end
    object FatGerOB3GER: TStringField
      FieldName = 'OB3GER'
      Origin = 'ISADE.FATGER.OB3GER'
      Size = 80
    end
    object FatGerOB4GER: TStringField
      FieldName = 'OB4GER'
      Origin = 'ISADE.FATGER.OB4GER'
      Size = 80
    end
    object FatGerOB5GER: TStringField
      FieldName = 'OB5GER'
      Origin = 'ISADE.FATGER.OB5GER'
      Size = 80
    end
    object FatGerOB6GER: TStringField
      FieldName = 'OB6GER'
      Origin = 'ISADE.FATGER.OB6GER'
      Size = 80
    end
    object FatGerOB7GER: TStringField
      FieldName = 'OB7GER'
      Origin = 'ISADE.FATGER.OB7GER'
      Size = 80
    end
    object FatGerOB8GER: TStringField
      FieldName = 'OB8GER'
      Origin = 'ISADE.FATGER.OB8GER'
      Size = 80
    end
    object FatGerLIBERA_RESP: TStringField
      FieldName = 'LIBERA_RESP'
      Origin = 'ISADE.FATGER.LIBERA_RESP'
      FixedChar = True
      Size = 1
    end
    object FatGerLIBERA_CODUSU: TIntegerField
      FieldName = 'LIBERA_CODUSU'
      Origin = 'ISADE.FATGER.LIBERA_CODUSU'
    end
    object FatGerLIBERA_DTEHRE: TDateTimeField
      FieldName = 'LIBERA_DTEHRE'
      Origin = 'ISADE.FATGER.LIBERA_DTEHRE'
    end
    object FatGerNFEIPI: TStringField
      FieldName = 'NFEIPI'
      Origin = 'ISADE.FATGER.NFEIPI'
      FixedChar = True
      Size = 2
    end
    object FatGerFLGDENEGADA: TStringField
      FieldName = 'FLGDENEGADA'
      Origin = 'ISADE.FATGER.FLGDENEGADA'
      FixedChar = True
      Size = 1
    end
    object FatGerTOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
      Origin = 'ISADE.FATGER.TOTOUTDESP'
    end
    object FatGerTOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
      Origin = 'ISADE.FATGER.TOTDESCINC'
    end
    object FatGerENVDPEC: TStringField
      FieldName = 'ENVDPEC'
      Origin = 'ISADE.FATGER.ENVDPEC'
      FixedChar = True
      Size = 1
    end
    object FatGerUSUDPEC: TIntegerField
      FieldName = 'USUDPEC'
      Origin = 'ISADE.FATGER.USUDPEC'
    end
    object FatGerJUSTDPEC: TStringField
      FieldName = 'JUSTDPEC'
      Origin = 'ISADE.FATGER.JUSTDPEC'
      Size = 255
    end
    object FatGerPROTDPEC: TStringField
      FieldName = 'PROTDPEC'
      Origin = 'ISADE.FATGER.PROTDPEC'
      Size = 255
    end
    object FatGerNFE_PROTOCOLO: TMemoField
      FieldName = 'NFE_PROTOCOLO'
      Origin = 'ISADE.FATGER.NFE_PROTOCOLO'
      BlobType = ftMemo
      Size = 300
    end
    object FatGerNFE_RECIBO: TMemoField
      FieldName = 'NFE_RECIBO'
      Origin = 'ISADE.FATGER.NFE_RECIBO'
      BlobType = ftMemo
      Size = 300
    end
    object FatGerTOTVOL: TIntegerField
      FieldName = 'TOTVOL'
      Origin = 'ISADE.FATGER.TOTVOL'
    end
    object FatGerID_FRETE: TIntegerField
      FieldName = 'ID_FRETE'
      Origin = 'ISADE.FATGER.ID_FRETE'
    end
    object FatGerFRTICM: TFloatField
      FieldName = 'FRTICM'
      Origin = 'ISADE.FATGER.FRTICM'
    end
    object FatGerSEGICM: TFloatField
      FieldName = 'SEGICM'
      Origin = 'ISADE.FATGER.SEGICM'
    end
    object FatGerDESICM: TFloatField
      FieldName = 'DESICM'
      Origin = 'ISADE.FATGER.DESICM'
    end
    object FatGerFRTIPI: TFloatField
      FieldName = 'FRTIPI'
      Origin = 'ISADE.FATGER.FRTIPI'
    end
    object FatGerSEGIPI: TFloatField
      FieldName = 'SEGIPI'
      Origin = 'ISADE.FATGER.SEGIPI'
    end
    object FatGerDESIPI: TFloatField
      FieldName = 'DESIPI'
      Origin = 'ISADE.FATGER.DESIPI'
    end
    object FatGerDESNAT_1: TStringField
      FieldName = 'DESNAT_1'
      Size = 100
    end
    object FatGerID_FATDEV: TIntegerField
      FieldName = 'ID_FATDEV'
    end
    object FatGerTOTIBPT: TFloatField
      FieldName = 'TOTIBPT'
    end
    object FatGerCHAVENFE_DEV: TStringField
      FieldName = 'CHAVENFE_DEV'
      FixedChar = True
      Size = 44
    end
    object FatGerID_CMPENT: TIntegerField
      FieldName = 'ID_CMPENT'
    end
    object FatGerID_LOJFAT: TIntegerField
      FieldName = 'ID_LOJFAT'
    end
    object FatGerFLGPLAN: TStringField
      FieldName = 'FLGPLAN'
      FixedChar = True
      Size = 1
    end
    object FatGerREGTRBEMP: TIntegerField
      FieldName = 'REGTRBEMP'
    end
    object FatGerINDIC_CF: TIntegerField
      FieldName = 'INDIC_CF'
    end
    object FatGerINDIC_PRESENCA: TIntegerField
      FieldName = 'INDIC_PRESENCA'
    end
  end
  object FatGe2: TwwQuery
    CachedUpdates = True
    OnNewRecord = FatGe2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsGer
    SQL.Strings = (
      'Select  FatGe2.*,'
      
        '        (select first 1 '#39'*'#39' from di where di.id_cmpnf2 = fatge2.' +
        'id_fatge2) as DI'
      ''
      '  From FatGe2'
      ' Where FatGe2.CodEmp = :CodEmp'
      '   and FatGe2.DteGer = :DteGer'
      '   and FatGe2.NumGer = :NumGer'
      'Order by FatGe2.NroGe2')
    UpdateObject = UpGe2
    ValidateWithMask = True
    Left = 2
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDateTime
        Name = 'DTEGER'
        ParamType = ptInput
        Value = '06/03/2019'
      end
      item
        DataType = ftInteger
        Name = 'NUMGER'
        ParamType = ptInput
        Value = '1117'
      end>
    object FatGe2CODCLP: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATGE2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object FatGe2CODGRU: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATGE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatGe2CODSUB: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATGE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatGe2CODPRO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATGE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatGe2CODCFO: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCFO'
      Origin = 'ISADE.FATGE2.CODCFO'
      FixedChar = True
      Size = 10
    end
    object FatGe2CLSIPI: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      Origin = 'ISADE.FATGE2.CLSIPI'
      FixedChar = True
      Size = 15
    end
    object FatGe2CODST1: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.FATGE2.CODST1'
      FixedChar = True
      Size = 1
    end
    object FatGe2CODST2: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST2'
      Origin = 'ISADE.FATGE2.CODST2'
      FixedChar = True
      Size = 3
    end
    object FatGe2CODUND: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.FATGE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object FatGe2QTPGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'QTPGE2'
      Origin = 'ISADE.FATGE2.QTPGE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatGe2VLUGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'VLUGE2'
      Origin = 'ISADE.FATGE2.VLUGE2'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 4
    end
    object FatGe2IPIGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'IPIGE2'
      Origin = 'ISADE.FATGE2.IPIGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatGe2ICMGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMGE2'
      Origin = 'ISADE.FATGE2.ICMGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FatGe2TOTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'TOTGE2'
      Origin = 'ISADE.FATGE2.TOTGE2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2CSTGE2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'CSTGE2'
      Origin = 'ISADE.FATGE2.CSTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FatGe2TOTITE: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTITE'
      Origin = 'ISADE.FATGE2.TOTITE'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2CODEMP: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATGE2.CODEMP'
      Visible = False
    end
    object FatGe2DTEGER: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEGER'
      Origin = 'ISADE.FATGE2.DTEGER'
      Visible = False
    end
    object FatGe2NUMGER: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATGE2.NUMGER'
      Visible = False
    end
    object FatGe2SEQGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGE2'
      Origin = 'ISADE.FATGE2.SEQGE2'
      Visible = False
    end
    object FatGe2CODEIT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEIT'
      Origin = 'ISADE.FATGE2.CODEIT'
      Visible = False
    end
    object FatGe2CODTAM: TStringField
      DisplayWidth = 10
      FieldName = 'CODTAM'
      Origin = 'ISADE.FATGE2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatGe2CODCOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODCOR'
      Origin = 'ISADE.FATGE2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object FatGe2DESGE2: TStringField
      DisplayWidth = 70
      FieldName = 'DESGE2'
      Origin = 'ISADE.FATGE2.DESGE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object FatGe2OBSGE2: TStringField
      DisplayWidth = 100
      FieldName = 'OBSGE2'
      Origin = 'ISADE.FATGE2.OBSGE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FatGe2LIQGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQGE2'
      Origin = 'ISADE.FATGE2.LIQGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object FatGe2BRTGE2: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTGE2'
      Origin = 'ISADE.FATGE2.BRTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object FatGe2LINGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINGE2'
      Origin = 'ISADE.FATGE2.LINGE2'
      Visible = False
    end
    object FatGe2BASIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATGE2.BASIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATGE2.TOTIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2BASICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Origin = 'ISADE.FATGE2.BASICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTICM: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATGE2.TOTICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTLIQ: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATGE2.TOTLIQ'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTBRT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATGE2.TOTBRT'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATGE2.TOTPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TOTCOF: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATGE2.TOTCOF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2NROGE2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROGE2'
      Origin = 'ISADE.FATGE2.NROGE2'
      Visible = False
    end
    object FatGe2NRONFS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATGE2.NRONFS'
      Visible = False
    end
    object FatGe2TIPIPI: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATGE2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2TRBIPI: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATGE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2REDIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATGE2.REDIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2BSCIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATGE2.BSCIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2TIPICM: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATGE2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2TRBICM: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATGE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2REDICM: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Origin = 'ISADE.FATGE2.REDICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2BSCICM: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATGE2.BSCICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FatGe2INCREV: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Origin = 'ISADE.FATGE2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2INCFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATGE2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FatGe2REGIPI: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Origin = 'ISADE.FATGE2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatGe2REGICM: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Origin = 'ISADE.FATGE2.REGICM'
      Visible = False
      FixedChar = True
    end
    object FatGe2REFGE2: TStringField
      FieldName = 'REFGE2'
      Origin = 'ISADE.FATGE2.REFGE2'
      Visible = False
      FixedChar = True
    end
    object FatGe2QTDGE2: TFloatField
      FieldName = 'QTDGE2'
      Origin = 'ISADE.FATGE2.QTDGE2'
      Visible = False
    end
    object FatGe2SLDGE2: TFloatField
      FieldName = 'SLDGE2'
      Origin = 'ISADE.FATGE2.SLDGE2'
      Visible = False
    end
    object FatGe2VCHGE2: TFloatField
      FieldName = 'VCHGE2'
      Origin = 'ISADE.FATGE2.VCHGE2'
      Visible = False
    end
    object FatGe2VREGE2: TFloatField
      FieldName = 'VREGE2'
      Origin = 'ISADE.FATGE2.VREGE2'
      Visible = False
    end
    object FatGe2VCRGE2: TFloatField
      FieldName = 'VCRGE2'
      Origin = 'ISADE.FATGE2.VCRGE2'
      Visible = False
    end
    object FatGe2VCPGE2: TFloatField
      FieldName = 'VCPGE2'
      Origin = 'ISADE.FATGE2.VCPGE2'
      Visible = False
    end
    object FatGe2VPRGE2: TFloatField
      FieldName = 'VPRGE2'
      Origin = 'ISADE.FATGE2.VPRGE2'
      Visible = False
    end
    object FatGe2VMEGE2: TFloatField
      FieldName = 'VMEGE2'
      Origin = 'ISADE.FATGE2.VMEGE2'
      Visible = False
    end
    object FatGe2VPFGE2: TFloatField
      FieldName = 'VPFGE2'
      Origin = 'ISADE.FATGE2.VPFGE2'
      Visible = False
    end
    object FatGe2CSTCST: TFloatField
      FieldName = 'CSTCST'
      Origin = 'ISADE.FATGE2.CSTCST'
      Visible = False
    end
    object FatGe2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.FATGE2.VCHCST'
      Visible = False
    end
    object FatGe2VRECST: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.FATGE2.VRECST'
      Visible = False
    end
    object FatGe2VCRCST: TFloatField
      FieldName = 'VCRCST'
      Origin = 'ISADE.FATGE2.VCRCST'
      Visible = False
    end
    object FatGe2VCPCST: TFloatField
      FieldName = 'VCPCST'
      Origin = 'ISADE.FATGE2.VCPCST'
      Visible = False
    end
    object FatGe2VPRCST: TFloatField
      FieldName = 'VPRCST'
      Origin = 'ISADE.FATGE2.VPRCST'
      Visible = False
    end
    object FatGe2VMECST: TFloatField
      FieldName = 'VMECST'
      Origin = 'ISADE.FATGE2.VMECST'
      Visible = False
    end
    object FatGe2VPFCST: TFloatField
      FieldName = 'VPFCST'
      Origin = 'ISADE.FATGE2.VPFCST'
      Visible = False
    end
    object FatGe2DSRGE2: TFloatField
      FieldName = 'DSRGE2'
      Origin = 'ISADE.FATGE2.DSRGE2'
      Visible = False
    end
    object FatGe2VDRGE2: TFloatField
      FieldName = 'VDRGE2'
      Origin = 'ISADE.FATGE2.VDRGE2'
      Visible = False
    end
    object FatGe2VLQGE2: TFloatField
      FieldName = 'VLQGE2'
      Origin = 'ISADE.FATGE2.VLQGE2'
      Visible = False
    end
    object FatGe2SEQNFG: TIntegerField
      FieldName = 'SEQNFG'
      Origin = 'ISADE.FATGE2.SEQNFG'
      Visible = False
    end
    object FatGe2SEQGE4: TIntegerField
      FieldName = 'SEQGE4'
      Origin = 'ISADE.FATGE2.SEQGE4'
      Visible = False
    end
    object FatGe2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATGE2.BASSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATGE2.TOTSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATGE2.TOTDSR'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.FATGE2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object FatGe2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.FATGE2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object FatGe2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.FATGE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatGe2FLGLIB: TStringField
      FieldName = 'FLGLIB'
      Origin = 'ISADE.FATGE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object FatGe2CODTXF: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.FATGE2.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object FatGe2TRBSUB: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.FATGE2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FatGe2ICMSUB: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.FATGE2.ICMSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2MRGSUB: TFloatField
      FieldName = 'MRGSUB'
      Origin = 'ISADE.FATGE2.MRGSUB'
      Visible = False
    end
    object FatGe2BASESB: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.FATGE2.BASESB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2ID_FATGE2: TIntegerField
      FieldName = 'ID_FATGE2'
      Origin = 'ISADE.FATGE2.ID_FATGE2'
      Visible = False
    end
    object FatGe2BAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATGE2.BAIPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATGE2.TOTDES'
      Visible = False
    end
    object FatGe2DESNC1: TStringField
      FieldName = 'DESNC1'
      Origin = 'ISADE.FATGE2.DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC2: TStringField
      FieldName = 'DESNC2'
      Origin = 'ISADE.FATGE2.DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC3: TStringField
      FieldName = 'DESNC3'
      Origin = 'ISADE.FATGE2.DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC4: TStringField
      FieldName = 'DESNC4'
      Origin = 'ISADE.FATGE2.DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC5: TStringField
      FieldName = 'DESNC5'
      Origin = 'ISADE.FATGE2.DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC6: TStringField
      FieldName = 'DESNC6'
      Origin = 'ISADE.FATGE2.DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC7: TStringField
      FieldName = 'DESNC7'
      Origin = 'ISADE.FATGE2.DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2DESNC8: TStringField
      FieldName = 'DESNC8'
      Origin = 'ISADE.FATGE2.DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FatGe2TOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATGE2.TOTSEG'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATGE2.TOTFRT'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2BAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATGE2.BAICMF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATGE2.TOICMF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2BAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATGE2.BAICMS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATGE2.TOICMS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2BAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATGE2.BAICMD'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATGE2.TOICMD'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2BAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATGE2.BAIPIF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATGE2.TOIPIF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATGE2.TOIPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2BAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATGE2.BAIPID'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2TOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATGE2.TOIPID'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FatGe2VLRBCII: TFloatField
      FieldName = 'VLRBCII'
      Origin = 'ISADE.FATGE2.VLRBCII'
      Visible = False
    end
    object FatGe2VLRDESPATU: TFloatField
      FieldName = 'VLRDESPATU'
      Origin = 'ISADE.FATGE2.VLRDESPATU'
      Visible = False
    end
    object FatGe2VLRIOF: TFloatField
      FieldName = 'VLRIOF'
      Origin = 'ISADE.FATGE2.VLRIOF'
      Visible = False
    end
    object FatGe2VLRIMPII: TFloatField
      FieldName = 'VLRIMPII'
      Origin = 'ISADE.FATGE2.VLRIMPII'
      Visible = False
    end
    object FatGe2PERIMPII: TFloatField
      FieldName = 'PERIMPII'
      Origin = 'ISADE.FATGE2.PERIMPII'
      Visible = False
    end
    object FatGe2ALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
      Origin = 'ISADE.FATGE2.ALIQPIS'
      DisplayFormat = '0.00'
      EditFormat = '0,00'
    end
    object FatGe2BASCOF: TFloatField
      FieldName = 'BASCOF'
      Origin = 'ISADE.FATGE2.BASCOF'
    end
    object FatGe2ALIQCOF: TFloatField
      FieldName = 'ALIQCOF'
      Origin = 'ISADE.FATGE2.ALIQCOF'
      DisplayFormat = '0.00'
      EditFormat = '0,00'
    end
    object FatGe2BASPIS: TFloatField
      FieldName = 'BASPIS'
      Origin = 'ISADE.FATGE2.BASPIS'
    end
    object FatGe2TOTPISZF: TFloatField
      FieldName = 'TOTPISZF'
    end
    object FatGe2TOTCOFZF: TFloatField
      FieldName = 'TOTCOFZF'
    end
    object FatGe2FLGCABRITO: TStringField
      FieldName = 'FLGCABRITO'
      FixedChar = True
      Size = 1
    end
    object FatGe2PERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object FatGe2PERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object FatGe2CSTIPI: TStringField
      FieldName = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object FatGe2CSTPIS: TStringField
      FieldName = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object FatGe2CSTCOF: TStringField
      FieldName = 'CSTCOF'
      FixedChar = True
      Size = 2
    end
    object FatGe2TRBPIS: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatGe2TRBCOF: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatGe2ID_DI: TIntegerField
      FieldName = 'ID_DI'
    end
    object FatGe2TOTVOL: TIntegerField
      FieldName = 'TOTVOL'
    end
    object FatGe2FLG_DESC_ZF_PIS: TStringField
      FieldName = 'FLG_DESC_ZF_PIS'
      FixedChar = True
      Size = 1
    end
    object FatGe2FLG_DESC_ZF_COF: TStringField
      FieldName = 'FLG_DESC_ZF_COF'
      FixedChar = True
      Size = 1
    end
    object FatGe2ALIQPIS_ZF: TFloatField
      FieldName = 'ALIQPIS_ZF'
    end
    object FatGe2ALIQCOF_ZF: TFloatField
      FieldName = 'ALIQCOF_ZF'
    end
    object FatGe2FRTICM: TFloatField
      FieldName = 'FRTICM'
    end
    object FatGe2SEGICM: TFloatField
      FieldName = 'SEGICM'
    end
    object FatGe2DESICM: TFloatField
      FieldName = 'DESICM'
    end
    object FatGe2FRTIPI: TFloatField
      FieldName = 'FRTIPI'
    end
    object FatGe2SEGIPI: TFloatField
      FieldName = 'SEGIPI'
    end
    object FatGe2DESIPI: TFloatField
      FieldName = 'DESIPI'
    end
    object FatGe2TOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
    end
    object FatGe2TOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
    end
    object FatGe2REDSUB: TFloatField
      FieldName = 'REDSUB'
    end
    object FatGe2TOTIBPT: TFloatField
      FieldName = 'TOTIBPT'
    end
    object FatGe2TOTDESONERADO: TFloatField
      FieldName = 'TOTDESONERADO'
    end
    object FatGe2BASICM_DESON: TFloatField
      FieldName = 'BASICM_DESON'
    end
    object FatGe2TOTICM_DESON: TFloatField
      FieldName = 'TOTICM_DESON'
    end
    object FatGe2BASSUB_DESON: TFloatField
      FieldName = 'BASSUB_DESON'
    end
    object FatGe2TOTSUB_DESON: TFloatField
      FieldName = 'TOTSUB_DESON'
    end
    object FatGe2FRTSUB: TFloatField
      FieldName = 'FRTSUB'
    end
    object FatGe2SEGSUB: TFloatField
      FieldName = 'SEGSUB'
    end
    object FatGe2DESSUB: TFloatField
      FieldName = 'DESSUB'
    end
    object FatGe2DSCSUB: TFloatField
      FieldName = 'DSCSUB'
    end
    object FatGe2DSCIPI: TFloatField
      FieldName = 'DSCIPI'
    end
    object FatGe2DSCICM: TFloatField
      FieldName = 'DSCICM'
    end
    object FatGe2CODDESONERACAO: TIntegerField
      FieldName = 'CODDESONERACAO'
    end
    object FatGe2ID_ESTICM: TIntegerField
      FieldName = 'ID_ESTICM'
    end
    object FatGe2DI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 1
    end
    object FatGe2CEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object FatGe2BAS_UFDEST: TFloatField
      FieldName = 'BAS_UFDEST'
    end
    object FatGe2ALIQ_FCPUFDEST: TFloatField
      FieldName = 'ALIQ_FCPUFDEST'
    end
    object FatGe2ALIQ_ICMSUFDEST: TFloatField
      FieldName = 'ALIQ_ICMSUFDEST'
    end
    object FatGe2ALIQ_ICMSINTER: TFloatField
      FieldName = 'ALIQ_ICMSINTER'
    end
    object FatGe2ALIQ_ICMSINTERPART: TFloatField
      FieldName = 'ALIQ_ICMSINTERPART'
    end
    object FatGe2TOT_FCPUFDEST: TFloatField
      FieldName = 'TOT_FCPUFDEST'
    end
    object FatGe2TOT_ICMSUFDEST: TFloatField
      FieldName = 'TOT_ICMSUFDEST'
    end
    object FatGe2TOT_ICMSUFREMET: TFloatField
      FieldName = 'TOT_ICMSUFREMET'
    end
    object FatGe2DIFAL: TFloatField
      FieldName = 'DIFAL'
    end
    object FatGe2COD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      FixedChar = True
      Size = 3
    end
    object FatGe2BASICMCRED: TFloatField
      FieldName = 'BASICMCRED'
    end
    object FatGe2TOTICMCRED: TFloatField
      FieldName = 'TOTICMCRED'
    end
    object FatGe2ICMGE2CRED: TFloatField
      FieldName = 'ICMGE2CRED'
    end
  end
  object UpGer: TUpdateSQL
    ModifySQL.Strings = (
      'update FatGer'
      'set'
      '  DESNAT = :DESNAT,'
      '  CODEMP = :CODEMP,'
      '  DTEGER = :DTEGER,'
      '  NUMGER = :NUMGER,'
      '  HREFAT = :HREFAT,'
      '  UFEGER = :UFEGER,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  CODCLI = :CODCLI,'
      '  CODVEN = :CODVEN,'
      '  DSCREG = :DSCREG,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CODFIL = :CODFIL,'
      '  QTDNFS = :QTDNFS,'
      '  NRONFS = :NRONFS,'
      '  NROSUF = :NROSUF,'
      '  FLGAVI = :FLGAVI,'
      '  CGCCLI = :CGCCLI,'
      '  INSCLI = :INSCLI,'
      '  CODCF1 = :CODCF1,'
      '  CODCF2 = :CODCF2,'
      '  FRTGER = :FRTGER,'
      '  FLGENT = :FLGENT,'
      '  FLGSAI = :FLGSAI,'
      '  INSSUB = :INSSUB,'
      '  TIPFRT = :TIPFRT,'
      '  MARGER = :MARGER,'
      '  NROGER = :NROGER,'
      '  ESPGER = :ESPGER,'
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
      '  CEPCLI = :CEPCLI,'
      '  TENCLI = :TENCLI,'
      '  ENDCLI = :ENDCLI,'
      '  REFCLI = :REFCLI,'
      '  NUMCLI = :NUMCLI,'
      '  BAICLI = :BAICLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFECLI = :UFECLI,'
      '  INECLI = :INECLI,'
      '  CGECLI = :CGECLI,'
      '  TXFIPI = :TXFIPI,'
      '  TXFICM = :TXFICM,'
      '  OBSGER = :OBSGER,'
      '  SEQITE = :SEQITE,'
      '  QTIGER = :QTIGER,'
      '  LINGER = :LINGER,'
      '  QTPGER = :QTPGER,'
      '  STPGER = :STPGER,'
      '  QTDVOL = :QTDVOL,'
      '  ALTVOL = :ALTVOL,'
      '  INFLIQ = :INFLIQ,'
      '  TOTLIQ = :TOTLIQ,'
      '  INFBRT = :INFBRT,'
      '  TOTBRT = :TOTBRT,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ICMFRT = :ICMFRT,'
      '  BSICMF = :BSICMF,'
      '  BAICMF = :BAICMF,'
      '  TOICMF = :TOICMF,'
      '  ICMSEG = :ICMSEG,'
      '  BSICMS = :BSICMS,'
      '  BAICMS = :BAICMS,'
      '  TOICMS = :TOICMS,'
      '  ICMDES = :ICMDES,'
      '  BSICMD = :BSICMD,'
      '  BAICMD = :BAICMD,'
      '  TOICMD = :TOICMD,'
      '  IPIFRT = :IPIFRT,'
      '  BSIPIF = :BSIPIF,'
      '  BAIPIF = :BAIPIF,'
      '  TOIPIF = :TOIPIF,'
      '  IPISEG = :IPISEG,'
      '  BSIPIS = :BSIPIS,'
      '  BAIPIS = :BAIPIS,'
      '  TOIPIS = :TOIPIS,'
      '  IPIDES = :IPIDES,'
      '  BSIPID = :BSIPID,'
      '  BAIPID = :BAIPID,'
      '  TOIPID = :TOIPID,'
      '  TOTGER = :TOTGER,'
      '  LANGER = :LANGER,'
      '  SLDGER = :SLDGER,'
      '  TOTDSR = :TOTDSR,'
      '  BASIP1 = :BASIP1,'
      '  TOTIP1 = :TOTIP1,'
      '  BASIC1 = :BASIC1,'
      '  TOTIC1 = :TOTIC1,'
      '  BASSU1 = :BASSU1,'
      '  TOTSU1 = :TOTSU1,'
      '  TOTIT1 = :TOTIT1,'
      '  TOTGE1 = :TOTGE1,'
      '  CODUSU = :CODUSU,'
      '  HRCGER = :HRCGER,'
      '  DTCGER = :DTCGER,'
      '  USCGER = :USCGER,'
      '  OBCGER = :OBCGER,'
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
      '  FLGATU = :FLGATU,'
      '  DTEATU = :DTEATU,'
      '  HREATU = :HREATU,'
      '  USUATU = :USUATU,'
      '  TRASDA = :TRASDA,'
      '  DTESDA = :DTESDA,'
      '  HRESDA = :HRESDA,'
      '  USUSDA = :USUSDA,'
      '  OBSSDA = :OBSSDA,'
      '  CODVEI = :CODVEI,'
      '  DTEENT = :DTEENT,'
      '  HREENT = :HREENT,'
      '  USUENT = :USUENT,'
      '  OBSENT = :OBSENT,'
      '  DESREG = :DESREG,'
      '  SEQGER = :SEQGER,'
      '  SITGER = :SITGER,'
      '  NROCOL = :NROCOL,'
      '  DTEFAT = :DTEFAT,'
      '  FLGNFS = :FLGNFS,'
      '  FLGENV = :FLGENV,'
      '  BASISS = :BASISS,'
      '  TOTISS = :TOTISS,'
      '  BASIS1 = :BASIS1,'
      '  TOTIS1 = :TOTIS1,'
      '  TOTSER = :TOTSER,'
      '  TOTSE1 = :TOTSE1,'
      '  QTISER = :QTISER,'
      '  SEQSER = :SEQSER,'
      '  FLGSIN = :FLGSIN,'
      '  OB1GER = :OB1GER,'
      '  OB2GER = :OB2GER,'
      '  OB3GER = :OB3GER,'
      '  OB4GER = :OB4GER,'
      '  OB5GER = :OB5GER,'
      '  OB6GER = :OB6GER,'
      '  OB7GER = :OB7GER,'
      '  OB8GER = :OB8GER,'
      '  FLGIMP = :FLGIMP,'
      '  NOMENT = :NOMENT,'
      '  MODPFA = :MODPFA,'
      '  BAFCLI = :BAFCLI,'
      '  CEFCLI = :CEFCLI,'
      '  CIFCLI = :CIFCLI,'
      '  ENFCLI = :ENFCLI,'
      '  ID_FINCIE = :ID_FINCIE,'
      '  ID_FINCIF = :ID_FINCIF,'
      '  ID_TRACIE = :ID_TRACIE,'
      '  NRFCLI = :NRFCLI,'
      '  RFFCLI = :RFFCLI,'
      '  TEFCLI = :TEFCLI,'
      '  UFECOM = :UFECOM,'
      '  UFFCLI = :UFFCLI,'
      '  ENVNFE = :ENVNFE,'
      '  FLGNFE = :FLGNFE,'
      '  DTECOM = :DTECOM,'
      '  NFSCOM = :NFSCOM,'
      '  SEQCOM = :SEQCOM,'
      '  TOTOUTDESP = :TOTOUTDESP,'
      '  TOTDESCINC = :TOTDESCINC,'
      '  ID_FRETE = :ID_FRETE,'
      '  FRTICM = :FRTICM,'
      '  SEGICM = :SEGICM,'
      '  DESICM = :DESICM,'
      '  FRTIPI = :FRTIPI,'
      '  SEGIPI = :SEGIPI,'
      '  DESIPI = :DESIPI,'
      '  ID_CMPENT = :ID_CMPENT,'
      '  ID_LOJFAT = :ID_LOJFAT,'
      '  INDIC_CF = :INDIC_CF,'
      '  INDIC_PRESENCA = :INDIC_PRESENCA'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER'
      ' ')
    InsertSQL.Strings = (
      'insert into FatGer'
      
        '  (DESNAT, CODEMP, DTEGER, NUMGER, HREFAT, UFEGER, CODPFA, TIPPF' +
        'A, CODCLI, '
      
        '   CODVEN, DSCREG, PERPIS, PERCOF, CODFIL, QTDNFS, NRONFS, NROSU' +
        'F, FLGAVI, '
      
        '   CGCCLI, INSCLI, CODCF1, CODCF2, FRTGER, FLGENT, FLGSAI, INSSU' +
        'B, TIPFRT, '
      
        '   MARGER, NROGER, ESPGER, NOMTRA, CGCTRA, INSTRA, CEPTRA, TENTR' +
        'A, ENDTRA, '
      
        '   REFTRA, NUMTRA, BAITRA, CIDTRA, UFETRA, PLCTRA, PRTTRA, FONTR' +
        'A, UFEPLC, '
      
        '   CEPCLI, TENCLI, ENDCLI, REFCLI, NUMCLI, BAICLI, CIDCLI, UFECL' +
        'I, INECLI, '
      
        '   CGECLI, TXFIPI, TXFICM, OBSGER, SEQITE, QTIGER, LINGER, QTPGE' +
        'R, STPGER, '
      
        '   QTDVOL, ALTVOL, INFLIQ, TOTLIQ, INFBRT, TOTBRT, BASIPI, TOTIP' +
        'I, BASICM, '
      
        '   TOTICM, BASSUB, TOTSUB, TOTITE, TOTPIS, TOTCOF, TOTFRT, TOTSE' +
        'G, TOTDES, '
      
        '   ICMFRT, BSICMF, BAICMF, TOICMF, ICMSEG, BSICMS, BAICMS, TOICM' +
        'S, ICMDES, '
      
        '   BSICMD, BAICMD, TOICMD, IPIFRT, BSIPIF, BAIPIF, TOIPIF, IPISE' +
        'G, BSIPIS, '
      
        '   BAIPIS, TOIPIS, IPIDES, BSIPID, BAIPID, TOIPID, TOTGER, LANGE' +
        'R, SLDGER, '
      
        '   TOTDSR, BASIP1, TOTIP1, BASIC1, TOTIC1, BASSU1, TOTSU1, TOTIT' +
        '1, TOTGE1, '
      
        '   CODUSU, HRCGER, DTCGER, USCGER, OBCGER, ATUEST, LANEST, INTFI' +
        'N, CONSUM, '
      
        '   FLGCTB, CODIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, CODICM, TIPIC' +
        'M, TRBICM, '
      
        '   REDICM, BSCICM, INCREV, INCFIN, FLGATU, DTEATU, HREATU, USUAT' +
        'U, TRASDA, '
      
        '   DTESDA, HRESDA, USUSDA, OBSSDA, CODVEI, DTEENT, HREENT, USUEN' +
        'T, OBSENT, '
      
        '   DESREG, SEQGER, SITGER, NROCOL, DTEFAT, FLGNFS, FLGENV, BASIS' +
        'S, TOTISS, '
      
        '   BASIS1, TOTIS1, TOTSER, TOTSE1, QTISER, SEQSER, FLGSIN, OB1GE' +
        'R, OB2GER, '
      
        '   OB3GER, OB4GER, OB5GER, OB6GER, OB7GER, OB8GER, FLGIMP, NOMEN' +
        'T, MODPFA, '
      
        '   BAFCLI, CEFCLI, CIFCLI, ENFCLI, ID_FINCIE, ID_FINCIF, ID_TRAC' +
        'IE, NRFCLI, '
      
        '   RFFCLI, TEFCLI, UFECOM, UFFCLI, ENVNFE, FLGNFE, DTECOM, NFSCO' +
        'M, SEQCOM, '
      
        '   TOTOUTDESP, TOTDESCINC, ID_FRETE, FRTICM, SEGICM, DESICM, FRT' +
        'IPI, SEGIPI, '
      '   DESIPI, ID_CMPENT, ID_LOJFAT, INDIC_CF, INDIC_PRESENCA)'
      'values'
      
        '  (:DESNAT, :CODEMP, :DTEGER, :NUMGER, :HREFAT, :UFEGER, :CODPFA' +
        ', :TIPPFA, '
      
        '   :CODCLI, :CODVEN, :DSCREG, :PERPIS, :PERCOF, :CODFIL, :QTDNFS' +
        ', :NRONFS, '
      
        '   :NROSUF, :FLGAVI, :CGCCLI, :INSCLI, :CODCF1, :CODCF2, :FRTGER' +
        ', :FLGENT, '
      
        '   :FLGSAI, :INSSUB, :TIPFRT, :MARGER, :NROGER, :ESPGER, :NOMTRA' +
        ', :CGCTRA, '
      
        '   :INSTRA, :CEPTRA, :TENTRA, :ENDTRA, :REFTRA, :NUMTRA, :BAITRA' +
        ', :CIDTRA, '
      
        '   :UFETRA, :PLCTRA, :PRTTRA, :FONTRA, :UFEPLC, :CEPCLI, :TENCLI' +
        ', :ENDCLI, '
      
        '   :REFCLI, :NUMCLI, :BAICLI, :CIDCLI, :UFECLI, :INECLI, :CGECLI' +
        ', :TXFIPI, '
      
        '   :TXFICM, :OBSGER, :SEQITE, :QTIGER, :LINGER, :QTPGER, :STPGER' +
        ', :QTDVOL, '
      
        '   :ALTVOL, :INFLIQ, :TOTLIQ, :INFBRT, :TOTBRT, :BASIPI, :TOTIPI' +
        ', :BASICM, '
      
        '   :TOTICM, :BASSUB, :TOTSUB, :TOTITE, :TOTPIS, :TOTCOF, :TOTFRT' +
        ', :TOTSEG, '
      
        '   :TOTDES, :ICMFRT, :BSICMF, :BAICMF, :TOICMF, :ICMSEG, :BSICMS' +
        ', :BAICMS, '
      
        '   :TOICMS, :ICMDES, :BSICMD, :BAICMD, :TOICMD, :IPIFRT, :BSIPIF' +
        ', :BAIPIF, '
      
        '   :TOIPIF, :IPISEG, :BSIPIS, :BAIPIS, :TOIPIS, :IPIDES, :BSIPID' +
        ', :BAIPID, '
      
        '   :TOIPID, :TOTGER, :LANGER, :SLDGER, :TOTDSR, :BASIP1, :TOTIP1' +
        ', :BASIC1, '
      
        '   :TOTIC1, :BASSU1, :TOTSU1, :TOTIT1, :TOTGE1, :CODUSU, :HRCGER' +
        ', :DTCGER, '
      
        '   :USCGER, :OBCGER, :ATUEST, :LANEST, :INTFIN, :CONSUM, :FLGCTB' +
        ', :CODIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :CODICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :FLGATU, :DTEATU, :HREATU, :USUATU' +
        ', :TRASDA, '
      
        '   :DTESDA, :HRESDA, :USUSDA, :OBSSDA, :CODVEI, :DTEENT, :HREENT' +
        ', :USUENT, '
      
        '   :OBSENT, :DESREG, :SEQGER, :SITGER, :NROCOL, :DTEFAT, :FLGNFS' +
        ', :FLGENV, '
      
        '   :BASISS, :TOTISS, :BASIS1, :TOTIS1, :TOTSER, :TOTSE1, :QTISER' +
        ', :SEQSER, '
      
        '   :FLGSIN, :OB1GER, :OB2GER, :OB3GER, :OB4GER, :OB5GER, :OB6GER' +
        ', :OB7GER, '
      
        '   :OB8GER, :FLGIMP, :NOMENT, :MODPFA, :BAFCLI, :CEFCLI, :CIFCLI' +
        ', :ENFCLI, '
      
        '   :ID_FINCIE, :ID_FINCIF, :ID_TRACIE, :NRFCLI, :RFFCLI, :TEFCLI' +
        ', :UFECOM, '
      
        '   :UFFCLI, :ENVNFE, :FLGNFE, :DTECOM, :NFSCOM, :SEQCOM, :TOTOUT' +
        'DESP, :TOTDESCINC, '
      
        '   :ID_FRETE, :FRTICM, :SEGICM, :DESICM, :FRTIPI, :SEGIPI, :DESI' +
        'PI, :ID_CMPENT, '
      '   :ID_LOJFAT, :INDIC_CF, :INDIC_PRESENCA)'
      ' ')
    DeleteSQL.Strings = (
      'delete from FatGer'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER')
    Left = 58
    Top = 284
  end
  object UpGe2: TUpdateSQL
    ModifySQL.Strings = (
      'update FatGe2'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTEGER = :DTEGER,'
      '  NUMGER = :NUMGER,'
      '  SEQGE2 = :SEQGE2,'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESGE2 = :DESGE2,'
      '  OBSGE2 = :OBSGE2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  REFGE2 = :REFGE2,'
      '  LIQGE2 = :LIQGE2,'
      '  BRTGE2 = :BRTGE2,'
      '  LINGE2 = :LINGE2,'
      '  QTPGE2 = :QTPGE2,'
      '  QTDGE2 = :QTDGE2,'
      '  SLDGE2 = :SLDGE2,'
      '  VLUGE2 = :VLUGE2,'
      '  CSTGE2 = :CSTGE2,'
      '  VCHGE2 = :VCHGE2,'
      '  VREGE2 = :VREGE2,'
      '  VCRGE2 = :VCRGE2,'
      '  VCPGE2 = :VCPGE2,'
      '  VPRGE2 = :VPRGE2,'
      '  VMEGE2 = :VMEGE2,'
      '  VPFGE2 = :VPFGE2,'
      '  CSTCST = :CSTCST,'
      '  VCHCST = :VCHCST,'
      '  VRECST = :VRECST,'
      '  VCRCST = :VCRCST,'
      '  VCPCST = :VCPCST,'
      '  VPRCST = :VPRCST,'
      '  VMECST = :VMECST,'
      '  VPFCST = :VPFCST,'
      '  DSRGE2 = :DSRGE2,'
      '  VDRGE2 = :VDRGE2,'
      '  VLQGE2 = :VLQGE2,'
      '  IPIGE2 = :IPIGE2,'
      '  CLSIPI = :CLSIPI,'
      '  SEQNFG = :SEQNFG,'
      '  SEQGE4 = :SEQGE4,'
      '  ICMGE2 = :ICMGE2,'
      '  BASIPI = :BASIPI,'
      '  TOTIPI = :TOTIPI,'
      '  BASICM = :BASICM,'
      '  TOTICM = :TOTICM,'
      '  BASSUB = :BASSUB,'
      '  TOTSUB = :TOTSUB,'
      '  TOTITE = :TOTITE,'
      '  TOTGE2 = :TOTGE2,'
      '  TOTLIQ = :TOTLIQ,'
      '  TOTBRT = :TOTBRT,'
      '  TOTPIS = :TOTPIS,'
      '  TOTCOF = :TOTCOF,'
      '  TOTDSR = :TOTDSR,'
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
      '  FLASEQ = :FLASEQ,'
      '  FLGLIB = :FLGLIB,'
      '  NRONFS = :NRONFS,'
      '  NROGE2 = :NROGE2,'
      '  CODTXF = :CODTXF,'
      '  CODCFO = :CODCFO,'
      '  TRBSUB = :TRBSUB,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  TOTFRT = :TOTFRT,'
      '  TOTSEG = :TOTSEG,'
      '  TOTDES = :TOTDES,'
      '  ID_FATGE2 = :ID_FATGE2,'
      '  DESNC1 = :DESNC1,'
      '  DESNC2 = :DESNC2,'
      '  DESNC3 = :DESNC3,'
      '  DESNC4 = :DESNC4,'
      '  DESNC5 = :DESNC5,'
      '  DESNC6 = :DESNC6,'
      '  DESNC7 = :DESNC7,'
      '  DESNC8 = :DESNC8,'
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
      '  VLRBCII = :VLRBCII,'
      '  VLRDESPATU = :VLRDESPATU,'
      '  VLRIOF = :VLRIOF,'
      '  VLRIMPII = :VLRIMPII,'
      '  PERIMPII = :PERIMPII,'
      '  TOTPISZF = :TOTPISZF,'
      '  TOTCOFZF = :TOTCOFZF,'
      '  FLGCABRITO = :FLGCABRITO,'
      '  PERPIS = :PERPIS,'
      '  PERCOF = :PERCOF,'
      '  CSTIPI = :CSTIPI,'
      '  CSTPIS = :CSTPIS,'
      '  CSTCOF = :CSTCOF,'
      '  BASPIS = :BASPIS,'
      '  BASCOF = :BASCOF,'
      '  ALIQPIS = :ALIQPIS,'
      '  ALIQCOF = :ALIQCOF,'
      '  TRBPIS = :TRBPIS,'
      '  TRBCOF = :TRBCOF,'
      '  ID_DI = :ID_DI,'
      '  TOTVOL = :TOTVOL,'
      '  FLG_DESC_ZF_PIS = :FLG_DESC_ZF_PIS,'
      '  FLG_DESC_ZF_COF = :FLG_DESC_ZF_COF,'
      '  ALIQPIS_ZF = :ALIQPIS_ZF,'
      '  ALIQCOF_ZF = :ALIQCOF_ZF,'
      '  FRTICM = :FRTICM,'
      '  SEGICM = :SEGICM,'
      '  DESICM = :DESICM,'
      '  FRTIPI = :FRTIPI,'
      '  SEGIPI = :SEGIPI,'
      '  DESIPI = :DESIPI,'
      '  TOTOUTDESP = :TOTOUTDESP,'
      '  TOTDESCINC = :TOTDESCINC,'
      '  REDSUB = :REDSUB,'
      '  TOTIBPT = :TOTIBPT,'
      '  TOTDESONERADO = :TOTDESONERADO,'
      '  CODDESONERACAO = :CODDESONERACAO,'
      '  BASICM_DESON = :BASICM_DESON,'
      '  TOTICM_DESON = :TOTICM_DESON,'
      '  BASSUB_DESON = :BASSUB_DESON,'
      '  TOTSUB_DESON = :TOTSUB_DESON,'
      '  FRTSUB = :FRTSUB,'
      '  SEGSUB = :SEGSUB,'
      '  DESSUB = :DESSUB,'
      '  DSCSUB = :DSCSUB,'
      '  DSCIPI = :DSCIPI,'
      '  DSCICM = :DSCICM,'
      '  ID_ESTICM = :ID_ESTICM,'
      '  CEST = :CEST,'
      '  BAS_UFDEST = :BAS_UFDEST,'
      '  ALIQ_FCPUFDEST = :ALIQ_FCPUFDEST,'
      '  ALIQ_ICMSUFDEST = :ALIQ_ICMSUFDEST,'
      '  ALIQ_ICMSINTER = :ALIQ_ICMSINTER,'
      '  ALIQ_ICMSINTERPART = :ALIQ_ICMSINTERPART,'
      '  TOT_FCPUFDEST = :TOT_FCPUFDEST,'
      '  TOT_ICMSUFDEST = :TOT_ICMSUFDEST,'
      '  TOT_ICMSUFREMET = :TOT_ICMSUFREMET,'
      '  DIFAL = :DIFAL,'
      '  COD_ENQ = :COD_ENQ,'
      '  BASICMCRED = :BASICMCRED,'
      '  TOTICMCRED = :TOTICMCRED,'
      '  ICMGE2CRED = :ICMGE2CRED'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGE2 = :OLD_SEQGE2')
    InsertSQL.Strings = (
      'insert into FatGe2'
      
        '  (CODEMP, DTEGER, NUMGER, SEQGE2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      
        '   CODTAM, CODCOR, DESGE2, OBSGE2, CODST1, CODST2, CODUND, REFGE' +
        '2, LIQGE2, '
      
        '   BRTGE2, LINGE2, QTPGE2, QTDGE2, SLDGE2, VLUGE2, CSTGE2, VCHGE' +
        '2, VREGE2, '
      
        '   VCRGE2, VCPGE2, VPRGE2, VMEGE2, VPFGE2, CSTCST, VCHCST, VRECS' +
        'T, VCRCST, '
      
        '   VCPCST, VPRCST, VMECST, VPFCST, DSRGE2, VDRGE2, VLQGE2, IPIGE' +
        '2, CLSIPI, '
      
        '   SEQNFG, SEQGE4, ICMGE2, BASIPI, TOTIPI, BASICM, TOTICM, BASSU' +
        'B, TOTSUB, '
      
        '   TOTITE, TOTGE2, TOTLIQ, TOTBRT, TOTPIS, TOTCOF, TOTDSR, CODST' +
        'R, TIPSTR, '
      
        '   REGIPI, TIPIPI, TRBIPI, REDIPI, BSCIPI, REGICM, TIPICM, TRBIC' +
        'M, REDICM, '
      
        '   BSCICM, INCREV, INCFIN, FLASEQ, FLGLIB, NRONFS, NROGE2, CODTX' +
        'F, CODCFO, '
      
        '   TRBSUB, ICMSUB, MRGSUB, BASESB, TOTFRT, TOTSEG, TOTDES, ID_FA' +
        'TGE2, DESNC1, '
      
        '   DESNC2, DESNC3, DESNC4, DESNC5, DESNC6, DESNC7, DESNC8, BAICM' +
        'F, TOICMF, '
      
        '   BAICMS, TOICMS, BAICMD, TOICMD, BAIPIF, TOIPIF, BAIPIS, TOIPI' +
        'S, BAIPID, '
      
        '   TOIPID, VLRBCII, VLRDESPATU, VLRIOF, VLRIMPII, PERIMPII, TOTP' +
        'ISZF, TOTCOFZF, '
      
        '   FLGCABRITO, PERPIS, PERCOF, CSTIPI, CSTPIS, CSTCOF, BASPIS, B' +
        'ASCOF, '
      
        '   ALIQPIS, ALIQCOF, TRBPIS, TRBCOF, ID_DI, TOTVOL, FLG_DESC_ZF_' +
        'PIS, FLG_DESC_ZF_COF, '
      
        '   ALIQPIS_ZF, ALIQCOF_ZF, FRTICM, SEGICM, DESICM, FRTIPI, SEGIP' +
        'I, DESIPI, '
      
        '   TOTOUTDESP, TOTDESCINC, REDSUB, TOTIBPT, TOTDESONERADO, CODDE' +
        'SONERACAO, '
      
        '   BASICM_DESON, TOTICM_DESON, BASSUB_DESON, TOTSUB_DESON, FRTSU' +
        'B, SEGSUB, '
      
        '   DESSUB, DSCSUB, DSCIPI, DSCICM, ID_ESTICM, CEST, BAS_UFDEST, ' +
        'ALIQ_FCPUFDEST, '
      
        '   ALIQ_ICMSUFDEST, ALIQ_ICMSINTER, ALIQ_ICMSINTERPART, TOT_FCPU' +
        'FDEST, '
      
        '   TOT_ICMSUFDEST, TOT_ICMSUFREMET, DIFAL, COD_ENQ, BASICMCRED, ' +
        'TOTICMCRED, '
      '   ICMGE2CRED)'
      'values'
      
        '  (:CODEMP, :DTEGER, :NUMGER, :SEQGE2, :CODEIT, :CODCLP, :CODGRU' +
        ', :CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESGE2, :OBSGE2, :CODST1, :CODST2' +
        ', :CODUND, '
      
        '   :REFGE2, :LIQGE2, :BRTGE2, :LINGE2, :QTPGE2, :QTDGE2, :SLDGE2' +
        ', :VLUGE2, '
      
        '   :CSTGE2, :VCHGE2, :VREGE2, :VCRGE2, :VCPGE2, :VPRGE2, :VMEGE2' +
        ', :VPFGE2, '
      
        '   :CSTCST, :VCHCST, :VRECST, :VCRCST, :VCPCST, :VPRCST, :VMECST' +
        ', :VPFCST, '
      
        '   :DSRGE2, :VDRGE2, :VLQGE2, :IPIGE2, :CLSIPI, :SEQNFG, :SEQGE4' +
        ', :ICMGE2, '
      
        '   :BASIPI, :TOTIPI, :BASICM, :TOTICM, :BASSUB, :TOTSUB, :TOTITE' +
        ', :TOTGE2, '
      
        '   :TOTLIQ, :TOTBRT, :TOTPIS, :TOTCOF, :TOTDSR, :CODSTR, :TIPSTR' +
        ', :REGIPI, '
      
        '   :TIPIPI, :TRBIPI, :REDIPI, :BSCIPI, :REGICM, :TIPICM, :TRBICM' +
        ', :REDICM, '
      
        '   :BSCICM, :INCREV, :INCFIN, :FLASEQ, :FLGLIB, :NRONFS, :NROGE2' +
        ', :CODTXF, '
      
        '   :CODCFO, :TRBSUB, :ICMSUB, :MRGSUB, :BASESB, :TOTFRT, :TOTSEG' +
        ', :TOTDES, '
      
        '   :ID_FATGE2, :DESNC1, :DESNC2, :DESNC3, :DESNC4, :DESNC5, :DES' +
        'NC6, :DESNC7, '
      
        '   :DESNC8, :BAICMF, :TOICMF, :BAICMS, :TOICMS, :BAICMD, :TOICMD' +
        ', :BAIPIF, '
      
        '   :TOIPIF, :BAIPIS, :TOIPIS, :BAIPID, :TOIPID, :VLRBCII, :VLRDE' +
        'SPATU, '
      
        '   :VLRIOF, :VLRIMPII, :PERIMPII, :TOTPISZF, :TOTCOFZF, :FLGCABR' +
        'ITO, :PERPIS, '
      
        '   :PERCOF, :CSTIPI, :CSTPIS, :CSTCOF, :BASPIS, :BASCOF, :ALIQPI' +
        'S, :ALIQCOF, '
      
        '   :TRBPIS, :TRBCOF, :ID_DI, :TOTVOL, :FLG_DESC_ZF_PIS, :FLG_DES' +
        'C_ZF_COF, '
      
        '   :ALIQPIS_ZF, :ALIQCOF_ZF, :FRTICM, :SEGICM, :DESICM, :FRTIPI,' +
        ' :SEGIPI, '
      
        '   :DESIPI, :TOTOUTDESP, :TOTDESCINC, :REDSUB, :TOTIBPT, :TOTDES' +
        'ONERADO, '
      
        '   :CODDESONERACAO, :BASICM_DESON, :TOTICM_DESON, :BASSUB_DESON,' +
        ' :TOTSUB_DESON, '
      
        '   :FRTSUB, :SEGSUB, :DESSUB, :DSCSUB, :DSCIPI, :DSCICM, :ID_EST' +
        'ICM, :CEST, '
      
        '   :BAS_UFDEST, :ALIQ_FCPUFDEST, :ALIQ_ICMSUFDEST, :ALIQ_ICMSINT' +
        'ER, :ALIQ_ICMSINTERPART, '
      
        '   :TOT_FCPUFDEST, :TOT_ICMSUFDEST, :TOT_ICMSUFREMET, :DIFAL, :C' +
        'OD_ENQ, '
      '   :BASICMCRED, :TOTICMCRED, :ICMGE2CRED)')
    DeleteSQL.Strings = (
      'delete from FatGe2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTEGER = :OLD_DTEGER and'
      '  NUMGER = :OLD_NUMGER and'
      '  SEQGE2 = :OLD_SEQGE2')
    Left = 56
    Top = 320
  end
  object DsGe2: TDataSource
    DataSet = FatGe2
    OnStateChange = DsGe2StateChange
    OnDataChange = DsGe2DataChange
    Left = 30
    Top = 320
  end
  object DsGer: TDataSource
    DataSet = FatGer
    OnDataChange = DsGerDataChange
    Left = 33
    Top = 284
  end
  object TipFrt: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select frt.id, frt.descfrt, Cast(frt.id as varchar(3)) || '#39' - '#39' ' +
        '|| frt.descfrt IDNOM from tipfrt frt')
    UniDirectional = True
    ValidateWithMask = True
    Left = 106
    Top = 316
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel|*.xls'
    Left = 284
    Top = 633
  end
  object wwQuery1: TwwQuery
    CachedUpdates = True
    OnNewRecord = FatGe2NewRecord
    DatabaseName = 'ISade'
    DataSource = DsGer
    SQL.Strings = (
      'Select RTRIM(LTRIM(CLSIPI)) CLSIPI,FATGE2.* From FatGe2'
      'Where FatGe2.CodEmp = :CodEmp'
      '     and FatGe2.DteGer = :DteGer'
      '     and FatGe2.NumGer = :NumGer'
      'Order by FatGe2.NroGe2')
    UpdateMode = upWhereKeyOnly
    ValidateWithMask = True
    Left = 210
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEGER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMGER'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'CODCLP'
      Origin = 'ISADE.FATGE2.CODCLP'
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.FATGE2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object StringField3: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.FATGE2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object StringField4: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODPRO'
      Origin = 'ISADE.FATGE2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object StringField5: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 7
      FieldName = 'CODCFO'
      Origin = 'ISADE.FATGE2.CODCFO'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'CLSIPI'
      Origin = 'ISADE.FATGE2.CLSIPI'
      FixedChar = True
      Size = 15
    end
    object StringField7: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST1'
      Origin = 'ISADE.FATGE2.CODST1'
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'CODST2'
      Origin = 'ISADE.FATGE2.CODST2'
      FixedChar = True
      Size = 3
    end
    object StringField9: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.FATGE2.CODUND'
      FixedChar = True
      Size = 3
    end
    object FloatField1: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'QTPGE2'
      Origin = 'ISADE.FATGE2.QTPGE2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'VLUGE2'
      Origin = 'ISADE.FATGE2.VLUGE2'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 4
    end
    object FloatField3: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'IPIGE2'
      Origin = 'ISADE.FATGE2.IPIGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FloatField4: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 5
      FieldName = 'ICMGE2'
      Origin = 'ISADE.FATGE2.ICMGE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object FloatField5: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 11
      FieldName = 'TOTGE2'
      Origin = 'ISADE.FATGE2.TOTGE2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField6: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 12
      FieldName = 'CSTGE2'
      Origin = 'ISADE.FATGE2.CSTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object FloatField7: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 13
      FieldName = 'TOTITE'
      Origin = 'ISADE.FATGE2.TOTITE'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATGE2.CODEMP'
      Visible = False
    end
    object DateTimeField1: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DTEGER'
      Origin = 'ISADE.FATGE2.DTEGER'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATGE2.NUMGER'
      Visible = False
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQGE2'
      Origin = 'ISADE.FATGE2.SEQGE2'
      Visible = False
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODEIT'
      Origin = 'ISADE.FATGE2.CODEIT'
      Visible = False
    end
    object StringField10: TStringField
      DisplayWidth = 10
      FieldName = 'CODTAM'
      Origin = 'ISADE.FATGE2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object StringField11: TStringField
      DisplayWidth = 10
      FieldName = 'CODCOR'
      Origin = 'ISADE.FATGE2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object StringField12: TStringField
      DisplayWidth = 70
      FieldName = 'DESGE2'
      Origin = 'ISADE.FATGE2.DESGE2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object StringField13: TStringField
      DisplayWidth = 100
      FieldName = 'OBSGE2'
      Origin = 'ISADE.FATGE2.OBSGE2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object FloatField8: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQGE2'
      Origin = 'ISADE.FATGE2.LIQGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'BRTGE2'
      Origin = 'ISADE.FATGE2.BRTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 4
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'LINGE2'
      Origin = 'ISADE.FATGE2.LINGE2'
      Visible = False
    end
    object FloatField10: TFloatField
      DisplayWidth = 10
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATGE2.BASIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField11: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATGE2.TOTIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField12: TFloatField
      DisplayWidth = 10
      FieldName = 'BASICM'
      Origin = 'ISADE.FATGE2.BASICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField13: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATGE2.TOTICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATGE2.TOTLIQ'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField15: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATGE2.TOTBRT'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField16: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATGE2.TOTPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField17: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATGE2.TOTCOF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROGE2'
      Origin = 'ISADE.FATGE2.NROGE2'
      Visible = False
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATGE2.NRONFS'
      Visible = False
    end
    object StringField14: TStringField
      DisplayWidth = 7
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATGE2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField15: TStringField
      DisplayWidth = 3
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATGE2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField18: TFloatField
      DisplayWidth = 10
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATGE2.REDIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField19: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATGE2.BSCIPI'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object StringField16: TStringField
      DisplayWidth = 7
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATGE2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField17: TStringField
      DisplayWidth = 3
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATGE2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField20: TFloatField
      DisplayWidth = 10
      FieldName = 'REDICM'
      Origin = 'ISADE.FATGE2.REDICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField21: TFloatField
      DisplayWidth = 10
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATGE2.BSCICM'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 2
    end
    object FloatField22: TFloatField
      DisplayWidth = 10
      FieldName = 'INCREV'
      Origin = 'ISADE.FATGE2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object FloatField23: TFloatField
      DisplayWidth = 10
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATGE2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object StringField18: TStringField
      DisplayWidth = 30
      FieldName = 'REGIPI'
      Origin = 'ISADE.FATGE2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField19: TStringField
      DisplayWidth = 20
      FieldName = 'REGICM'
      Origin = 'ISADE.FATGE2.REGICM'
      Visible = False
      FixedChar = True
    end
    object StringField20: TStringField
      FieldName = 'REFGE2'
      Origin = 'ISADE.FATGE2.REFGE2'
      Visible = False
      FixedChar = True
    end
    object FloatField24: TFloatField
      FieldName = 'QTDGE2'
      Origin = 'ISADE.FATGE2.QTDGE2'
      Visible = False
    end
    object FloatField25: TFloatField
      FieldName = 'SLDGE2'
      Origin = 'ISADE.FATGE2.SLDGE2'
      Visible = False
    end
    object FloatField26: TFloatField
      FieldName = 'VCHGE2'
      Origin = 'ISADE.FATGE2.VCHGE2'
      Visible = False
    end
    object FloatField27: TFloatField
      FieldName = 'VREGE2'
      Origin = 'ISADE.FATGE2.VREGE2'
      Visible = False
    end
    object FloatField28: TFloatField
      FieldName = 'VCRGE2'
      Origin = 'ISADE.FATGE2.VCRGE2'
      Visible = False
    end
    object FloatField29: TFloatField
      FieldName = 'VCPGE2'
      Origin = 'ISADE.FATGE2.VCPGE2'
      Visible = False
    end
    object FloatField30: TFloatField
      FieldName = 'VPRGE2'
      Origin = 'ISADE.FATGE2.VPRGE2'
      Visible = False
    end
    object FloatField31: TFloatField
      FieldName = 'VMEGE2'
      Origin = 'ISADE.FATGE2.VMEGE2'
      Visible = False
    end
    object FloatField32: TFloatField
      FieldName = 'VPFGE2'
      Origin = 'ISADE.FATGE2.VPFGE2'
      Visible = False
    end
    object FloatField33: TFloatField
      FieldName = 'CSTCST'
      Origin = 'ISADE.FATGE2.CSTCST'
      Visible = False
    end
    object FloatField34: TFloatField
      FieldName = 'VCHCST'
      Origin = 'ISADE.FATGE2.VCHCST'
      Visible = False
    end
    object FloatField35: TFloatField
      FieldName = 'VRECST'
      Origin = 'ISADE.FATGE2.VRECST'
      Visible = False
    end
    object FloatField36: TFloatField
      FieldName = 'VCRCST'
      Origin = 'ISADE.FATGE2.VCRCST'
      Visible = False
    end
    object FloatField37: TFloatField
      FieldName = 'VCPCST'
      Origin = 'ISADE.FATGE2.VCPCST'
      Visible = False
    end
    object FloatField38: TFloatField
      FieldName = 'VPRCST'
      Origin = 'ISADE.FATGE2.VPRCST'
      Visible = False
    end
    object FloatField39: TFloatField
      FieldName = 'VMECST'
      Origin = 'ISADE.FATGE2.VMECST'
      Visible = False
    end
    object FloatField40: TFloatField
      FieldName = 'VPFCST'
      Origin = 'ISADE.FATGE2.VPFCST'
      Visible = False
    end
    object FloatField41: TFloatField
      FieldName = 'DSRGE2'
      Origin = 'ISADE.FATGE2.DSRGE2'
      Visible = False
    end
    object FloatField42: TFloatField
      FieldName = 'VDRGE2'
      Origin = 'ISADE.FATGE2.VDRGE2'
      Visible = False
    end
    object FloatField43: TFloatField
      FieldName = 'VLQGE2'
      Origin = 'ISADE.FATGE2.VLQGE2'
      Visible = False
    end
    object IntegerField8: TIntegerField
      FieldName = 'SEQNFG'
      Origin = 'ISADE.FATGE2.SEQNFG'
      Visible = False
    end
    object IntegerField9: TIntegerField
      FieldName = 'SEQGE4'
      Origin = 'ISADE.FATGE2.SEQGE4'
      Visible = False
    end
    object FloatField44: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATGE2.BASSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField45: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATGE2.TOTSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField46: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATGE2.TOTDSR'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object StringField21: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.FATGE2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object StringField22: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.FATGE2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object StringField23: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.FATGE2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'FLGLIB'
      Origin = 'ISADE.FATGE2.FLGLIB'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField25: TStringField
      DisplayWidth = 30
      FieldName = 'CODTXF'
      Origin = 'ISADE.FATGE2.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'TRBSUB'
      Origin = 'ISADE.FATGE2.TRBSUB'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField47: TFloatField
      FieldName = 'ICMSUB'
      Origin = 'ISADE.FATGE2.ICMSUB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField48: TFloatField
      FieldName = 'MRGSUB'
      Origin = 'ISADE.FATGE2.MRGSUB'
      Visible = False
    end
    object FloatField49: TFloatField
      FieldName = 'BASESB'
      Origin = 'ISADE.FATGE2.BASESB'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_FATGE2'
      Origin = 'ISADE.FATGE2.ID_FATGE2'
      Visible = False
    end
    object FloatField50: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATGE2.BAIPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField51: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATGE2.TOTDES'
      Visible = False
    end
    object StringField27: TStringField
      FieldName = 'DESNC1'
      Origin = 'ISADE.FATGE2.DESNC1'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField28: TStringField
      FieldName = 'DESNC2'
      Origin = 'ISADE.FATGE2.DESNC2'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField29: TStringField
      FieldName = 'DESNC3'
      Origin = 'ISADE.FATGE2.DESNC3'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField30: TStringField
      FieldName = 'DESNC4'
      Origin = 'ISADE.FATGE2.DESNC4'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField31: TStringField
      FieldName = 'DESNC5'
      Origin = 'ISADE.FATGE2.DESNC5'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField32: TStringField
      FieldName = 'DESNC6'
      Origin = 'ISADE.FATGE2.DESNC6'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField33: TStringField
      FieldName = 'DESNC7'
      Origin = 'ISADE.FATGE2.DESNC7'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object StringField34: TStringField
      FieldName = 'DESNC8'
      Origin = 'ISADE.FATGE2.DESNC8'
      Visible = False
      FixedChar = True
      Size = 80
    end
    object FloatField52: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATGE2.TOTSEG'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField53: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATGE2.TOTFRT'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField54: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATGE2.BAICMF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField55: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATGE2.TOICMF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField56: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATGE2.BAICMS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField57: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATGE2.TOICMS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField58: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATGE2.BAICMD'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField59: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATGE2.TOICMD'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField60: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATGE2.BAIPIF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField61: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATGE2.TOIPIF'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField62: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATGE2.TOIPIS'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField63: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATGE2.BAIPID'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField64: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATGE2.TOIPID'
      Visible = False
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object FloatField65: TFloatField
      FieldName = 'VLRBCII'
      Origin = 'ISADE.FATGE2.VLRBCII'
      Visible = False
    end
    object FloatField66: TFloatField
      FieldName = 'VLRDESPATU'
      Origin = 'ISADE.FATGE2.VLRDESPATU'
      Visible = False
    end
    object FloatField67: TFloatField
      FieldName = 'VLRIOF'
      Origin = 'ISADE.FATGE2.VLRIOF'
      Visible = False
    end
    object FloatField68: TFloatField
      FieldName = 'VLRIMPII'
      Origin = 'ISADE.FATGE2.VLRIMPII'
      Visible = False
    end
    object FloatField69: TFloatField
      FieldName = 'PERIMPII'
      Origin = 'ISADE.FATGE2.PERIMPII'
      Visible = False
    end
    object FloatField70: TFloatField
      FieldName = 'ALIQPIS'
      Origin = 'ISADE.FATGE2.ALIQPIS'
      DisplayFormat = '0.00'
      EditFormat = '0,00'
    end
    object FloatField71: TFloatField
      FieldName = 'BASCOF'
      Origin = 'ISADE.FATGE2.BASCOF'
    end
    object FloatField72: TFloatField
      FieldName = 'ALIQCOF'
      Origin = 'ISADE.FATGE2.ALIQCOF'
      DisplayFormat = '0.00'
      EditFormat = '0,00'
    end
    object FloatField73: TFloatField
      FieldName = 'BASPIS'
      Origin = 'ISADE.FATGE2.BASPIS'
    end
    object StringField35: TStringField
      FieldName = 'CLSIPI_1'
      Size = 30
    end
    object FloatField74: TFloatField
      FieldName = 'TOTPISZF'
    end
    object FloatField75: TFloatField
      FieldName = 'TOTCOFZF'
    end
    object StringField36: TStringField
      FieldName = 'FLGCABRITO'
      FixedChar = True
      Size = 1
    end
    object FloatField76: TFloatField
      FieldName = 'PERPIS'
    end
    object FloatField77: TFloatField
      FieldName = 'PERCOF'
    end
    object StringField37: TStringField
      FieldName = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object StringField38: TStringField
      FieldName = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object StringField39: TStringField
      FieldName = 'CSTCOF'
      FixedChar = True
      Size = 2
    end
    object StringField40: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object StringField41: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_DI'
    end
    object IntegerField12: TIntegerField
      FieldName = 'TOTVOL'
    end
    object StringField42: TStringField
      FieldName = 'FLG_DESC_ZF_PIS'
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'FLG_DESC_ZF_COF'
      FixedChar = True
      Size = 1
    end
    object FloatField78: TFloatField
      FieldName = 'ALIQPIS_ZF'
    end
    object FloatField79: TFloatField
      FieldName = 'ALIQCOF_ZF'
    end
    object FloatField80: TFloatField
      FieldName = 'FRTICM'
    end
    object FloatField81: TFloatField
      FieldName = 'SEGICM'
    end
    object FloatField82: TFloatField
      FieldName = 'DESICM'
    end
    object FloatField83: TFloatField
      FieldName = 'FRTIPI'
    end
    object FloatField84: TFloatField
      FieldName = 'SEGIPI'
    end
    object FloatField85: TFloatField
      FieldName = 'DESIPI'
    end
    object FloatField86: TFloatField
      FieldName = 'TOTOUTDESP'
    end
    object FloatField87: TFloatField
      FieldName = 'TOTDESCINC'
    end
    object wwQuery1REDSUB: TFloatField
      FieldName = 'REDSUB'
    end
  end
  object dsTipFrt: TDataSource
    DataSet = TipFrt
    Left = 110
    Top = 348
  end
  object quSQL: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 106
    Top = 284
  end
  object desoneracao: TQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select ID, ID || '#39' - '#39' || MOTIVO as MOTIVO from DESONERACAO')
    Left = 266
    Top = 319
    object desoneracaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ISADE.DESONERACAO.ID'
    end
    object desoneracaoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'ISADE.DESONERACAO.ID'
      Size = 94
    end
  end
  object dsDesoneracao: TDataSource
    DataSet = desoneracao
    Left = 298
    Top = 319
  end
end
