object fmManListaNFeRef: TfmManListaNFeRef
  Left = 568
  Top = 180
  VertScrollBar.Tracking = True
  BorderStyle = bsSingle
  Caption = 'Emerion - Fatura Lista de NF Referênciada'
  ClientHeight = 371
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnCab: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 100
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object GroupBox1: TGroupBox
      Left = 8
      Top = 3
      Width = 689
      Height = 86
      Caption = 'Dados da NFe '
      TabOrder = 0
      object Label1: TLabel
        Left = 23
        Top = 21
        Width = 57
        Height = 13
        Caption = 'Nro. Nfe :'
      end
      object Label2: TLabel
        Left = 209
        Top = 21
        Width = 77
        Height = 13
        Caption = 'Destinatário :'
      end
      object Label3: TLabel
        Left = 6
        Top = 49
        Width = 74
        Height = 13
        Caption = 'Modalidade :'
      end
      object Label4: TLabel
        Left = 246
        Top = 49
        Width = 40
        Height = 13
        Caption = 'CNPJ :'
      end
      object DBEdit1: TDBEdit
        Left = 82
        Top = 17
        Width = 121
        Height = 21
        Color = 16577773
        DataField = 'NRONFS_GER'
        DataSource = dsRef
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 290
        Top = 17
        Width = 343
        Height = 21
        Color = 16577773
        DataField = 'NOMCLI'
        DataSource = dsRef
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 82
        Top = 45
        Width = 121
        Height = 21
        Color = 16577773
        DataField = 'MODPFA'
        DataSource = dsRef
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 290
        Top = 45
        Width = 121
        Height = 21
        Color = 16577773
        DataField = 'CGCCLI'
        DataSource = dsRef
        ReadOnly = True
        TabOrder = 3
      end
      object Button1: TButton
        Left = 510
        Top = 43
        Width = 122
        Height = 34
        Caption = '&Adicionar Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object pnFoot: TPanel
    Left = 0
    Top = 306
    Width = 703
    Height = 46
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnConcluir: TButton
      Left = 550
      Top = 5
      Width = 122
      Height = 34
      Caption = '&Concluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnConcluirClick
    end
    object btnFecha: TButton
      Left = 8
      Top = 5
      Width = 122
      Height = 34
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnFechaClick
    end
    object btnIncluir: TButton
      Left = 382
      Top = 5
      Width = 122
      Height = 34
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnIncluirClick
    end
    object btnExclui: TButton
      Left = 189
      Top = 5
      Width = 122
      Height = 34
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcluiClick
    end
  end
  object sbText: TStatusBar
    Left = 0
    Top = 352
    Width = 703
    Height = 19
    Panels = <
      item
        Width = 550
      end
      item
        Alignment = taRightJustify
        Text = 'ESC - Fechar'
        Width = 50
      end>
    SimplePanel = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 100
    Width = 703
    Height = 206
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Dados da Nota Fiscal'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 695
        Height = 153
        Color = 16577773
        DataSource = dsRef
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRONFS'
            Title.Caption = 'Nro. NFe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'Série'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MODELO'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODUF'
            Title.Alignment = taCenter
            Title.Caption = 'Cód. UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFE_REF'
            Title.Caption = 'Chave NFe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 293
            Visible = True
          end>
      end
      object DBEdit5: TDBEdit
        Left = 2
        Top = 156
        Width = 65
        Height = 21
        Color = 16577773
        DataField = 'NRONFS'
        DataSource = dsRef
        TabOrder = 1
      end
      object edSerie: TDBEdit
        Left = 68
        Top = 156
        Width = 63
        Height = 21
        Color = 16577773
        DataField = 'SERIE'
        DataSource = dsRef
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 132
        Top = 156
        Width = 65
        Height = 21
        Color = 16577773
        DataField = 'MODELO'
        DataSource = dsRef
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 199
        Top = 156
        Width = 63
        Height = 21
        Color = 16577773
        DataField = 'CODUF'
        DataSource = dsRef
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 263
        Top = 156
        Width = 123
        Height = 21
        Color = 16577773
        DataField = 'CNPJ'
        DataSource = dsRef
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 382
        Top = 156
        Width = 313
        Height = 21
        Color = 16577773
        DataField = 'NFE_REF'
        DataSource = dsRef
        TabOrder = 6
        OnEnter = DBEdit10Enter
        OnExit = DBEdit10Exit
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Do Cupon Fiscal'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 695
        Height = 153
        Color = 16577773
        DataSource = dsRef
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MODELO_ECF'
            Title.Caption = 'Modelo do Documento'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_ECF'
            Title.Caption = 'Nro. do ECF'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_COO'
            Title.Caption = 'Nro. do COO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_IMPRESSAO_ECF'
            Title.Caption = 'Tipo de IMpressão'
            Width = 130
            Visible = True
          end>
      end
      object edNroCoo: TDBEdit
        Left = 218
        Top = 156
        Width = 65
        Height = 21
        Color = 16577773
        DataField = 'NUM_COO'
        DataSource = dsRef
        TabOrder = 1
      end
      object edNroEcf: TDBEdit
        Left = 150
        Top = 156
        Width = 63
        Height = 21
        Color = 16577773
        DataField = 'NUM_ECF'
        DataSource = dsRef
        TabOrder = 2
      end
      object edModECF: TdxDBColorPickEdit
        Left = 0
        Top = 156
        Width = 147
        Color = 16577773
        Enabled = False
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        DataField = 'MODELO_ECF'
        DataSource = dsRef
        Items.Strings = (
          '2B - Maquina Restradora (Não ECF)'
          '2C - Cupom Fiscal PDV'
          '2D - Cupom Fiscal (Emitido por ECF)')
        CorDeFoco = clInfoBk
      end
    end
  end
  object SQLREF: TQuery
    CachedUpdates = True
    OnNewRecord = SQLREFNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select ref.id_fatger,ref.nfe_ref,ref.cnpj,ref.modelo,ref.serie,r' +
        'ef.nronfs,ref.coduf,'
      
        '       ref.MODELO_ECF, ref.NUM_ECF, ref.NUM_COO, ref.TIPO_IMPRES' +
        'SAO_ECF,'
      
        '       ger.nronfs NRONFS_GER,ger.codcli,cli.nomcli, ger.modpfa,g' +
        'er.numger,ger.cgccli'
      'from fatger_ref ref'
      'join fatger ger on ger.numger = ref.id_fatger'
      'join fincli cli on cli.codcli = ger.codcli'
      'where 1 <> 1'
      ' ')
    UpdateObject = upRef
    Left = 32
    Top = 152
    object SQLREFID_FATGER: TIntegerField
      FieldName = 'ID_FATGER'
    end
    object SQLREFNFE_REF: TStringField
      FieldName = 'NFE_REF'
      FixedChar = True
      Size = 44
    end
    object SQLREFCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object SQLREFNRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object SQLREFCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object SQLREFNRONFS_GER: TIntegerField
      FieldName = 'NRONFS_GER'
    end
    object SQLREFCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object SQLREFNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 70
    end
    object SQLREFMODPFA: TStringField
      FieldName = 'MODPFA'
    end
    object SQLREFNUMGER: TIntegerField
      FieldName = 'NUMGER'
    end
    object SQLREFCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Size = 18
    end
    object SQLREFMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object SQLREFSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object SQLREFMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      FixedChar = True
      Size = 2
    end
    object SQLREFNUM_COO: TStringField
      FieldName = 'NUM_COO'
      FixedChar = True
      Size = 6
    end
    object SQLREFTIPO_IMPRESSAO_ECF: TStringField
      FieldName = 'TIPO_IMPRESSAO_ECF'
      FixedChar = True
      Size = 1
    end
    object SQLREFNUM_ECF: TStringField
      FieldName = 'NUM_ECF'
      FixedChar = True
      Size = 6
    end
  end
  object dsRef: TDataSource
    DataSet = SQLREF
    OnDataChange = dsRefDataChange
    Left = 72
    Top = 152
  end
  object upRef: TUpdateSQL
    ModifySQL.Strings = (
      'update fatger_ref'
      'set'
      '  ID_FATGER = :ID_FATGER,'
      '  NFE_REF = :NFE_REF,'
      '  CNPJ = :CNPJ,'
      '  MODELO = :MODELO,'
      '  SERIE = :SERIE,'
      '  NRONFS = :NRONFS,'
      '  CODUF = :CODUF,'
      '  MODELO_ECF = :MODELO_ECF,'
      '  NUM_ECF = :NUM_ECF,'
      '  NUM_COO = :NUM_COO,'
      '  TIPO_IMPRESSAO_ECF = :TIPO_IMPRESSAO_ECF'
      'where'
      
        '  1 = 1 AND ((ID_FATGER = :OLD_ID_FATGER and NFE_REF = :OLD_NFE_' +
        'REF) OR'
      
        '             (ID_FATGER = :OLD_ID_FATGER and NUM_ECF = :OLD_NUM_' +
        'ECF AND NUM_COO = :OLD_NUM_COO))'
      ' ')
    InsertSQL.Strings = (
      'insert into fatger_ref'
      '  (ID_FATGER, NFE_REF, CNPJ, MODELO, SERIE, NRONFS, CODUF,'
      '   MODELO_ECF, NUM_ECF, NUM_COO, TIPO_IMPRESSAO_ECF)'
      'values'
      
        '  (:ID_FATGER, :NFE_REF, :CNPJ, :MODELO, :SERIE, :NRONFS, :CODUF' +
        ','
      '   :MODELO_ECF, :NUM_ECF, :NUM_COO, :TIPO_IMPRESSAO_ECF)'
      ' ')
    DeleteSQL.Strings = (
      'delete from fatger_ref'
      'where'
      '  ID_FATGER = :OLD_ID_FATGER and'
      '  NFE_REF = :OLD_NFE_REF')
    Left = 160
    Top = 160
  end
end
