object frmPrincipal: TfrmPrincipal
  Left = 192
  Top = 107
  Width = 399
  Height = 207
  Caption = 'Codigo de Barras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnconfirmar: TBitBtn
    Left = 91
    Top = 128
    Width = 209
    Height = 41
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnconfirmarClick
  end
  object ProgressBar: TdxfProgressBar
    Left = 7
    Top = 56
    Width = 377
    Height = 44
    BarBevelOuter = bvNone
    BevelOuter = bvLowered
    Orientation = orHorizontal
    Max = 100
    Min = 0
    Position = 0
    ShowText = True
    ShowTextStyle = stsPercent
    BeginColor = clNavy
    EndColor = clWhite
    Style = sExSolid
    Step = 10
    TransparentGlyph = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EstPro: TQuery
    Active = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodClp,CodGru,CodSub,CodPro,CbaEmb From EstPro'
      'Where EstPro.CodClp = :CodClp')
    Left = 8
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'CodClp'
        ParamType = ptInput
      end>
    object EstProCODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object EstProCODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object EstProCODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object EstProCODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object EstProCBAEMB: TStringField
      FieldName = 'CBAEMB'
      FixedChar = True
    end
  end
  object quSQL: TQuery
    DatabaseName = 'ISade'
    Left = 36
    Top = 112
  end
end
