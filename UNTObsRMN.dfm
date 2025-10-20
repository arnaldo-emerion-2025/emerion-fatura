object FrmObsRMN: TFrmObsRMN
  Left = 310
  Top = 133
  Width = 627
  Height = 359
  Caption = 'Romaneios'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 611
    Height = 321
    Align = alClient
    Color = clBtnFace
    ParentColor = False
  end
  object blFinalizar: TSpeedButton
    Left = 473
    Top = 293
    Width = 128
    Height = 28
    Hint = 'Finaliza a Operação'
    Caption = 'F12 - Finalizar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = blFinalizarClick
  end
  object Panel3: TPanel
    Left = 3
    Top = 3
    Width = 603
    Height = 27
    BevelOuter = bvNone
    TabOrder = 0
    object Label11: TLabel
      Left = 4
      Top = 4
      Width = 84
      Height = 16
      Caption = 'Observações'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object dxDBColorMemo1: TdxDBColorMemo
    Left = 8
    Top = 32
    Width = 593
    Color = 16577773
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 1
    OnKeyDown = dxDBColorMemo1KeyDown
    CharCase = ecUpperCase
    DataField = 'OBCNFS'
    DataSource = fmManRom.DsNfs
    CorDeFoco = clInfoBk
    Height = 265
  end
end
