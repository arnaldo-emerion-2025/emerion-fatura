inherited fmConClf: TfmConClf
  Left = 231
  Top = 254
  BorderIcons = [biSystemMenu]
  Caption = 'Classificação Fiscal'
  ClientHeight = 87
  ClientWidth = 290
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 290
    Height = 87
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label1: TLabel
    Left = 19
    Top = 21
    Width = 95
    Height = 14
    Caption = 'Classificação Fiscal'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 123
    Top = 21
    Width = 12
    Height = 14
    Caption = ' : '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object EdPsqClsPro: TdxColorEdit
    Left = 140
    Top = 18
    Width = 130
    Hint = 'Item'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    CharCase = ecUpperCase
    MaxLength = 30
    CorDeFoco = clInfoBk
    StoredValues = 2
  end
  object bPesquisa: TBitBtn
    Left = 140
    Top = 51
    Width = 130
    Height = 30
    Caption = '&Selecionar'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = bPesquisaClick
  end
end
