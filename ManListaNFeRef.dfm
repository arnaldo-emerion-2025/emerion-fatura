object fmManListaNFeRef: TfmManListaNFeRef
  Left = 333
  Top = 193
  VertScrollBar.Tracking = True
  BorderStyle = bsSingle
  Caption = 'Emerion - Fatura Lista de NF Referênciada'
  ClientHeight = 338
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
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
        OnClick = Button1Click
      end
    end
  end
  object pnFoot: TPanel
    Left = 0
    Top = 250
    Width = 703
    Height = 69
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
      Top = 29
      Width = 122
      Height = 34
      Caption = '&Concluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnConcluirClick
    end
    object DBEdit5: TDBEdit
      Left = 2
      Top = 3
      Width = 65
      Height = 21
      Color = 16577773
      DataField = 'NRONFS'
      DataSource = dsRef
      TabOrder = 0
    end
    object edSerie: TDBEdit
      Left = 68
      Top = 3
      Width = 63
      Height = 21
      Color = 16577773
      DataField = 'SERIE'
      DataSource = dsRef
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 132
      Top = 3
      Width = 65
      Height = 21
      Color = 16577773
      DataField = 'MODELO'
      DataSource = dsRef
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 199
      Top = 3
      Width = 63
      Height = 21
      Color = 16577773
      DataField = 'CODUF'
      DataSource = dsRef
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 263
      Top = 3
      Width = 123
      Height = 21
      Color = 16577773
      DataField = 'CNPJ'
      DataSource = dsRef
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 387
      Top = 3
      Width = 313
      Height = 21
      Color = 16577773
      DataField = 'NFE_REF'
      DataSource = dsRef
      TabOrder = 5
      OnEnter = DBEdit10Enter
      OnExit = DBEdit10Exit
      OnKeyDown = DBEdit10KeyDown
    end
    object btnFecha: TButton
      Left = 8
      Top = 29
      Width = 122
      Height = 34
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnFechaClick
    end
    object btnIncluir: TButton
      Left = 382
      Top = 29
      Width = 122
      Height = 34
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnIncluirClick
    end
    object btnExclui: TButton
      Left = 189
      Top = 29
      Width = 122
      Height = 34
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btnExcluiClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 100
    Width = 703
    Height = 150
    Align = alClient
    Color = 16577773
    DataSource = dsRef
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 2
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
  object sbText: TStatusBar
    Left = 0
    Top = 319
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
  object SQLREF: TQuery
    CachedUpdates = True
    OnNewRecord = SQLREFNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select ref.id_fatger,ref.nfe_ref,ref.cnpj,ref.modelo,ref.serie,r' +
        'ef.nronfs,ref.coduf,'
      
        'ger.nronfs NRONFS_GER,ger.codcli,cli.nomcli, ger.modpfa,ger.numg' +
        'er,ger.cgccli'
      'from fatger_ref ref'
      'join fatger ger on ger.numger = ref.id_fatger'
      'join fincli cli on cli.codcli = ger.codcli'
      'where 1 <> 1')
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
      '  CODUF = :CODUF'
      'where'
      '  ID_FATGER = :OLD_ID_FATGER and'
      '  NFE_REF = :OLD_NFE_REF')
    InsertSQL.Strings = (
      'insert into fatger_ref'
      '  (ID_FATGER, NFE_REF, CNPJ, MODELO, SERIE, NRONFS, CODUF)'
      'values'
      
        '  (:ID_FATGER, :NFE_REF, :CNPJ, :MODELO, :SERIE, :NRONFS, :CODUF' +
        ')')
    DeleteSQL.Strings = (
      'delete from fatger_ref'
      'where'
      '  ID_FATGER = :OLD_ID_FATGER and'
      '  NFE_REF = :OLD_NFE_REF')
    Left = 160
    Top = 160
  end
end
