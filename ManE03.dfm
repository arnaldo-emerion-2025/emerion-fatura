inherited fmManE03: TfmManE03
  Left = 246
  Top = 200
  Caption = 'Itens devolvidos'
  ClientHeight = 735
  ClientWidth = 1126
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    DataSource = DsFatDv3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 226
      AutoSize = True
      BandType = btHeader
      Degrade.OppositeColor = clGray
      BeforePrint = RLBand1BeforePrint
      object ppNomEmp: TRLLabel
        Left = 133
        Top = 16
        Width = 511
        Height = 19
        Caption = 'EMERION CONSULTORIA E SISTEMAS DE INFORMATICA LTDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 2
        Top = 143
        Width = 46
        Height = 13
        Caption = 'Cliente:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppCodCli: TRLDBText
        Left = 56
        Top = 143
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'CODCLI'
        DataSource = DsFatDev
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppCgcCli: TRLLabel
        Left = 599
        Top = 143
        Width = 156
        Height = 13
        Caption = '                                                   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 130
        Top = 122
        Width = 69
        Height = 13
        AutoSize = False
        DataField = 'DTEDEV'
        DataSource = DsFatDev
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppImagem: TRLImage
        Left = 3
        Top = 16
        Width = 128
        Height = 84
        Stretch = True
      end
      object ppEndEmp: TRLLabel
        Left = 136
        Top = 38
        Width = 218
        Height = 13
        Caption = 'R MANOEL GALVAO, 26 SALAS 1 E 2 MOOCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppCepEmp: TRLLabel
        Left = 562
        Top = 38
        Width = 81
        Height = 13
        Caption = 'Cep. 03190-010'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppCidEmp: TRLLabel
        Left = 136
        Top = 54
        Width = 118
        Height = 13
        Caption = 'MUNICIPIO SAO PAULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppUfeEmp: TRLLabel
        Left = 562
        Top = 54
        Width = 103
        Height = 13
        Caption = 'ESTADO SAO PAULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppFonEmp: TRLLabel
        Left = 136
        Top = 70
        Width = 124
        Height = 13
        Caption = 'FONE: (0011) 2021-7285'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppFaxEmp: TRLLabel
        Left = 562
        Top = 70
        Width = 116
        Height = 13
        Caption = 'FAX: (0011) 2021-7285'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppWebEmp: TRLLabel
        Left = 136
        Top = 86
        Width = 138
        Height = 13
        Caption = 'http://www.emerion.com.br'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppEmaEmp: TRLLabel
        Left = 562
        Top = 86
        Width = 161
        Height = 13
        Caption = 'e-mail: emerion@emerion.com.br'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw14: TRLDraw
        Left = 2
        Top = 137
        Width = 1039
        Height = 3
        DrawKind = dkLine
        Pen.Width = 3
      end
      object ppPedido: TRLLabel
        Left = 734
        Top = 117
        Width = 310
        Height = 19
        Alignment = taRightJustify
        Caption = 'Autorização de devolução no. 000001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ppNomCli: TRLLabel
        Left = 120
        Top = 143
        Width = 402
        Height = 13
        Caption = 
          '                                                                ' +
          '                                                                ' +
          '     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel62: TRLLabel
        Left = 533
        Top = 143
        Width = 56
        Height = 13
        Caption = 'Cnpj/Cpf:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel63: TRLLabel
        Left = 2
        Top = 164
        Width = 37
        Height = 13
        Caption = 'Fone:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppFonCli: TRLLabel
        Left = 47
        Top = 164
        Width = 402
        Height = 13
        Caption = 
          '                                                                ' +
          '                                                                ' +
          '     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel65: TRLLabel
        Left = 524
        Top = 164
        Width = 43
        Height = 13
        Caption = 'E_mail:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppEmaCli: TRLLabel
        Left = 577
        Top = 164
        Width = 156
        Height = 13
        Caption = '                                                   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 2
        Top = 178
        Width = 1039
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel109: TRLLabel
        Left = 2
        Top = 122
        Width = 124
        Height = 13
        Caption = 'Processo emitido em:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 783
        Top = 143
        Width = 94
        Height = 13
        Caption = 'Inscrição estadual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppInsCli: TRLLabel
        Left = 889
        Top = 143
        Width = 156
        Height = 13
        Caption = '                                                   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 2
        Top = 195
        Width = 159
        Height = 13
        Caption = 'No. da nota fiscal do cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 171
        Top = 195
        Width = 84
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NFSCLI'
        DataSource = DsFatDev
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 283
        Top = 195
        Width = 236
        Height = 13
        Caption = 'Data de emissão da nota fiscal do cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 530
        Top = 195
        Width = 84
        Height = 13
        AutoSize = False
        DataField = 'DTENFE'
        DataSource = DsFatDev
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 223
        Width = 1039
        Height = 3
        DrawKind = dkLine
        Pen.Width = 3
      end
      object ppCgcEmp: TRLLabel
        Left = 136
        Top = 101
        Width = 32
        Height = 13
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ppInsEmp: TRLLabel
        Left = 562
        Top = 101
        Width = 94
        Height = 13
        Caption = 'Inscrição estadual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 289
      Width = 1047
      Height = 476
      DataSource = DsFatDv3
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1047
        Height = 137
        DataFields = 'NROPE2'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 1047
          Height = 34
          BandType = btTitle
          BeforePrint = RLBand3BeforePrint
          object RLLabel18: TRLLabel
            Left = 2
            Top = 13
            Width = 194
            Height = 13
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Style = bsClear
            Caption = 'Itens dentro do prazo de garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup2: TRLGroup
          Left = 0
          Top = 34
          Width = 1047
          Height = 99
          DataFields = 'ID_FATDEV'
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 81
            AutoSize = True
            BandType = btTitle
            object RLDraw3: TRLDraw
              Left = 2
              Top = 62
              Width = 1039
              Height = 1
              DrawKind = dkLine
            end
            object RLLabel21: TRLLabel
              Left = 2
              Top = 64
              Width = 73
              Height = 15
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'CFOP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel22: TRLLabel
              Left = 77
              Top = 64
              Width = 93
              Height = 15
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Código'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel23: TRLLabel
              Left = 172
              Top = 64
              Width = 289
              Height = 15
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Descrição'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel24: TRLLabel
              Left = 463
              Top = 64
              Width = 68
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Qtde'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel25: TRLLabel
              Left = 533
              Top = 64
              Width = 83
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Valor unitário'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDraw4: TRLDraw
              Left = 2
              Top = 80
              Width = 1039
              Height = 1
              DrawKind = dkLine
            end
            object RLLabel26: TRLLabel
              Left = 693
              Top = 64
              Width = 49
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = '% ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel27: TRLLabel
              Left = 744
              Top = 64
              Width = 71
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Total ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel28: TRLLabel
              Left = 817
              Top = 64
              Width = 38
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = '% IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel29: TRLLabel
              Left = 857
              Top = 64
              Width = 71
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Total IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel30: TRLLabel
              Left = 930
              Top = 64
              Width = 69
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Desc. ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel31: TRLLabel
              Left = 1001
              Top = 64
              Width = 41
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = '% IVA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel13: TRLLabel
              Left = 2
              Top = 6
              Width = 140
              Height = 13
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Notas fiscais devolvidas '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel2: TRLLabel
              Left = 2
              Top = 43
              Width = 97
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Nota fiscal de no.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText2: TRLDBText
              Left = 113
              Top = 43
              Width = 69
              Height = 13
              AutoSize = False
              DataField = 'NFSCLI'
              DataSource = DsFatDev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel3: TRLLabel
              Left = 218
              Top = 43
              Width = 68
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Emitida em:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText3: TRLDBText
              Left = 300
              Top = 43
              Width = 69
              Height = 13
              AutoSize = False
              DataField = 'DTEFAT'
              DataSource = DsFatDv3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel4: TRLLabel
              Left = 436
              Top = 43
              Width = 57
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Vendedor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 506
              Top = 43
              Width = 239
              Height = 13
              AutoSize = False
              DataField = 'APEVEN'
              DataSource = DsFatDv3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel38: TRLLabel
              Left = 618
              Top = 64
              Width = 73
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Total item'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel40: TRLLabel
              Left = 3
              Top = 24
              Width = 97
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsClear
              Caption = 'Nossa Nota Fiscal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText32: TRLDBText
              Left = 114
              Top = 24
              Width = 69
              Height = 13
              AutoSize = False
              DataField = 'NUMNFS'
              DataSource = DsFatDev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 81
            Width = 1047
            Height = 15
            AutoSize = True
            Degrade.OppositeColor = clInfoBk
            object RLDBText5: TRLDBText
              Left = 77
              Top = 2
              Width = 93
              Height = 13
              AutoSize = False
              DataField = 'CODITE'
              DataSource = DsFatDv3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 2
              Top = 2
              Width = 73
              Height = 13
              AutoSize = False
              DataField = 'CODCFO'
              DataSource = DsFatDv3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText6BeforePrint
            end
            object RLDBText7: TRLDBText
              Left = 172
              Top = 2
              Width = 289
              Height = 13
              AutoSize = False
              DataField = 'DESDV2'
              DataSource = DsFatDv3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 463
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ULTQTD'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.0000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText8BeforePrint
            end
            object RLDBText9: TRLDBText
              Left = 533
              Top = 2
              Width = 83
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLUDV2'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.0000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText9BeforePrint
            end
            object RLDBText10: TRLDBText
              Left = 693
              Top = 2
              Width = 49
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ICMDV2'
              DataSource = DsFatDv3
              DisplayMask = '##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText10BeforePrint
            end
            object RLDBText11: TRLDBText
              Left = 744
              Top = 2
              Width = 71
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTICM'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText11BeforePrint
            end
            object RLDBText12: TRLDBText
              Left = 817
              Top = 2
              Width = 38
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'IPIDV2'
              DataSource = DsFatDv3
              DisplayMask = '##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText12BeforePrint
            end
            object RLDBText13: TRLDBText
              Left = 857
              Top = 2
              Width = 71
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTIPI'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText13BeforePrint
            end
            object RLDBText14: TRLDBText
              Left = 930
              Top = 2
              Width = 69
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTDSR'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText14BeforePrint
            end
            object RLDBText15: TRLDBText
              Left = 1001
              Top = 2
              Width = 41
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'MRGSUB'
              DataSource = DsFatDv3
              DisplayMask = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText37: TRLDBText
              Left = 618
              Top = 2
              Width = 73
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTDV2'
              DataSource = DsFatDv3
              DisplayMask = '##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLDBText37BeforePrint
            end
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 137
        Width = 1047
        Height = 138
        BandType = btSummary
        object RLLabel47: TRLLabel
          Left = 3
          Top = 58
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base de cálculo do ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 195
          Top = 58
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 612
          Top = 58
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do ICMS substituição'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 387
          Top = 58
          Width = 222
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base de cálculo do ICMS substituição'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel53: TRLLabel
          Left = 640
          Top = 21
          Width = 191
          Height = 13
          Caption = 'Total desconto ICMS obrigatório  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 828
          Top = 76
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTDEV'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText16BeforePrint
        end
        object RLDBText17: TRLDBText
          Left = 612
          Top = 117
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTIPI'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText17BeforePrint
        end
        object RLDBText18: TRLDBText
          Left = 612
          Top = 76
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTSUB'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText18BeforePrint
        end
        object RLDBText19: TRLDBText
          Left = 880
          Top = 21
          Width = 119
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTDSR'
          DisplayMask = '###,###,##0.00'
        end
        object RLDBText20: TRLDBText
          Left = 826
          Top = 117
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTGER'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
        end
        object RLLabel7: TRLLabel
          Left = 828
          Top = 58
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 387
          Top = 76
          Width = 222
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'BASSUB'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText21BeforePrint
        end
        object RLDBText22: TRLDBText
          Left = 195
          Top = 76
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTICM'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText22BeforePrint
        end
        object RLDBText23: TRLDBText
          Left = 3
          Top = 76
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'BASICM'
          DataSource = DsFatDev
          DisplayMask = '#0.00'
          BeforePrint = RLDBText23BeforePrint
        end
        object RLLabel9: TRLLabel
          Left = 3
          Top = 99
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 195
          Top = 99
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do seguro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 387
          Top = 99
          Width = 222
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Outras despesas acessórias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 612
          Top = 99
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor total do IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 826
          Top = 99
          Width = 213
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor total da nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 387
          Top = 117
          Width = 222
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTDES'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText24BeforePrint
        end
        object RLDBText25: TRLDBText
          Left = 195
          Top = 117
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTSEG'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText25BeforePrint
        end
        object RLDBText26: TRLDBText
          Left = 3
          Top = 117
          Width = 189
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTFRT'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          BeforePrint = RLDBText26BeforePrint
        end
        object RLDraw1: TRLDraw
          Left = 2
          Top = 2
          Width = 1039
          Height = 3
          DrawKind = dkLine
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 275
        Width = 1047
        Height = 262
        BandType = btSummary
        object RLDraw7: TRLDraw
          Left = 2
          Top = 19
          Width = 1039
          Height = 3
          DrawKind = dkLine
          Pen.Width = 3
        end
        object RLLabel15: TRLLabel
          Left = 2
          Top = 30
          Width = 133
          Height = 13
          Caption = 'Credito disponibilizado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 147
          Top = 30
          Width = 134
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTDEV'
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 324
          Top = 30
          Width = 55
          Height = 13
          Caption = 'Utilizado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object RLDBText28: TRLDBText
          Left = 390
          Top = 30
          Width = 134
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object RLLabel17: TRLLabel
          Left = 572
          Top = 30
          Width = 97
          Height = 13
          Caption = 'Saldo disponivel:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object RLDBText29: TRLDBText
          Left = 682
          Top = 30
          Width = 134
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataSource = DsFatDev
          DisplayMask = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object RLLabel32: TRLLabel
          Left = 2
          Top = 47
          Width = 122
          Height = 13
          Caption = 'Alegações do cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 6
          Top = 135
          Width = 1034
          Height = 16
          Caption = 
            'Antes de enviar a mercadoria, favor passar por fax uma cópia da ' +
            'NF de devolução, após o envio da mercadoria enviar um fax do com' +
            'provante da transportadora '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 38
          Top = 151
          Width = 970
          Height = 16
          Caption = 
            'Só receberemos devoluções com frete CIF (Frete Pago pelo cliente' +
            '). Após analise técnica, caso não seja constatado defeito de fab' +
            'ricação, e sim defeito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 203
          Top = 169
          Width = 640
          Height = 16
          Caption = 
            'proveniente(s) de uso inadequado, o comprador receberá mercadori' +
            'a devolvida em perfeito estado.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 147
          Top = 47
          Width = 893
          Height = 16
          DataField = 'OBSMDV'
          DataSource = DsFatDev
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 765
      Width = 1047
      Height = 29
      BandType = btFooter
      object RLDraw6: TRLDraw
        Left = 4
        Top = 4
        Width = 1036
        Height = 3
        DrawKind = dkLine
        Pen.Width = 3
      end
      object RLLabel35: TRLLabel
        Left = 878
        Top = 13
        Width = 39
        Height = 13
        Caption = 'Página:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 875
        Top = 13
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel36: TRLLabel
        Left = 969
        Top = 13
        Width = 21
        Height = 13
        Caption = ' de '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 997
        Top = 13
        Width = 112
        Height = 16
        Info = itLastPageNumber
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 264
      Width = 1047
      Height = 17
      AutoSize = True
      BandType = btHeader
      BeforePrint = RLBand7BeforePrint
      object RLLabel5: TRLLabel
        Left = 2
        Top = 4
        Width = 212
        Height = 13
        Caption = 'Código fiscal para a operação (CFOP):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 223
        Top = 4
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 317
        Top = 4
        Width = 481
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 281
      Width = 1047
      Height = 8
      BandType = btHeader
      object RLDraw5: TRLDraw
        Left = 2
        Top = 1
        Width = 1039
        Height = 9
        DrawKind = dkLine
        Pen.Width = 3
      end
    end
  end
  object FatDev: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From FatDev'
      'Where FatDev.CodEmp = :CODEMP and'
      '      FatDev.DteRes = :DTERES and'
      '      FatDev.NumRes = :NUMRES and'
      '      FatDev.SeqLib = :SEQLIB and'
      '      FatDev.SeqFat = :SEQFAT and'
      '      FatDev.SeqDev = :SEQDEV')
    ValidateWithMask = True
    Left = 641
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQLIB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQFAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQDEV'
        ParamType = ptInput
      end>
    object FatDevCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.FATDEV.CODEMP'
    end
    object FatDevDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.FATDEV.DTERES'
    end
    object FatDevNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.FATDEV.NUMRES'
    end
    object FatDevSEQLIB: TIntegerField
      FieldName = 'SEQLIB'
      Origin = 'ISADE.FATDEV.SEQLIB'
    end
    object FatDevSEQFAT: TIntegerField
      FieldName = 'SEQFAT'
      Origin = 'ISADE.FATDEV.SEQFAT'
    end
    object FatDevSEQDEV: TIntegerField
      FieldName = 'SEQDEV'
      Origin = 'ISADE.FATDEV.SEQDEV'
    end
    object FatDevNUMNFS: TIntegerField
      FieldName = 'NUMNFS'
      Origin = 'ISADE.FATDEV.NUMNFS'
    end
    object FatDevDTEDEV: TDateTimeField
      FieldName = 'DTEDEV'
      Origin = 'ISADE.FATDEV.DTEDEV'
    end
    object FatDevHREDEV: TStringField
      FieldName = 'HREDEV'
      Origin = 'ISADE.FATDEV.HREDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevUFEDEV: TStringField
      FieldName = 'UFEDEV'
      Origin = 'ISADE.FATDEV.UFEDEV'
      FixedChar = True
      Size = 2
    end
    object FatDevCODPFA: TStringField
      FieldName = 'CODPFA'
      Origin = 'ISADE.FATDEV.CODPFA'
      Size = 15
    end
    object FatDevTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Origin = 'ISADE.FATDEV.TIPPFA'
      Size = 7
    end
    object FatDevDSCREG: TFloatField
      FieldName = 'DSCREG'
      Origin = 'ISADE.FATDEV.DSCREG'
    end
    object FatDevPERPIS: TFloatField
      FieldName = 'PERPIS'
      Origin = 'ISADE.FATDEV.PERPIS'
    end
    object FatDevPERCOF: TFloatField
      FieldName = 'PERCOF'
      Origin = 'ISADE.FATDEV.PERCOF'
    end
    object FatDevCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Origin = 'ISADE.FATDEV.CODFIL'
    end
    object FatDevQTDNFS: TIntegerField
      FieldName = 'QTDNFS'
      Origin = 'ISADE.FATDEV.QTDNFS'
    end
    object FatDevNRONFS: TIntegerField
      FieldName = 'NRONFS'
      Origin = 'ISADE.FATDEV.NRONFS'
    end
    object FatDevNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.FATDEV.NROSUF'
    end
    object FatDevFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.FATDEV.FLGAVI'
      FixedChar = True
      Size = 1
    end
    object FatDevCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Origin = 'ISADE.FATDEV.CGCCLI'
      Size = 18
    end
    object FatDevINSCLI: TStringField
      FieldName = 'INSCLI'
      Origin = 'ISADE.FATDEV.INSCLI'
      Size = 18
    end
    object FatDevCODCF1: TStringField
      FieldName = 'CODCF1'
      Origin = 'ISADE.FATDEV.CODCF1'
      Size = 15
    end
    object FatDevCODCF2: TStringField
      FieldName = 'CODCF2'
      Origin = 'ISADE.FATDEV.CODCF2'
      Size = 15
    end
    object FatDevFRTDEV: TStringField
      FieldName = 'FRTDEV'
      Origin = 'ISADE.FATDEV.FRTDEV'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGENT: TStringField
      FieldName = 'FLGENT'
      Origin = 'ISADE.FATDEV.FLGENT'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGSAI: TStringField
      FieldName = 'FLGSAI'
      Origin = 'ISADE.FATDEV.FLGSAI'
      FixedChar = True
      Size = 1
    end
    object FatDevDESNAT: TStringField
      FieldName = 'DESNAT'
      Origin = 'ISADE.FATDEV.DESNAT'
      Size = 100
    end
    object FatDevINSSUB: TStringField
      FieldName = 'INSSUB'
      Origin = 'ISADE.FATDEV.INSSUB'
      Size = 18
    end
    object FatDevTIPFRT: TStringField
      FieldName = 'TIPFRT'
      Origin = 'ISADE.FATDEV.TIPFRT'
      FixedChar = True
      Size = 1
    end
    object FatDevMARDEV: TStringField
      FieldName = 'MARDEV'
      Origin = 'ISADE.FATDEV.MARDEV'
      Size = 15
    end
    object FatDevNRODEV: TStringField
      FieldName = 'NRODEV'
      Origin = 'ISADE.FATDEV.NRODEV'
      Size = 15
    end
    object FatDevESPDEV: TStringField
      FieldName = 'ESPDEV'
      Origin = 'ISADE.FATDEV.ESPDEV'
      Size = 15
    end
    object FatDevNOMTRA: TStringField
      FieldName = 'NOMTRA'
      Origin = 'ISADE.FATDEV.NOMTRA'
      Size = 70
    end
    object FatDevCGCTRA: TStringField
      FieldName = 'CGCTRA'
      Origin = 'ISADE.FATDEV.CGCTRA'
      Size = 18
    end
    object FatDevINSTRA: TStringField
      FieldName = 'INSTRA'
      Origin = 'ISADE.FATDEV.INSTRA'
      Size = 18
    end
    object FatDevCEPTRA: TStringField
      FieldName = 'CEPTRA'
      Origin = 'ISADE.FATDEV.CEPTRA'
      FixedChar = True
      Size = 8
    end
    object FatDevTENTRA: TStringField
      FieldName = 'TENTRA'
      Origin = 'ISADE.FATDEV.TENTRA'
      Size = 10
    end
    object FatDevENDTRA: TStringField
      FieldName = 'ENDTRA'
      Origin = 'ISADE.FATDEV.ENDTRA'
      Size = 40
    end
    object FatDevREFTRA: TStringField
      FieldName = 'REFTRA'
      Origin = 'ISADE.FATDEV.REFTRA'
      Size = 40
    end
    object FatDevNUMTRA: TStringField
      FieldName = 'NUMTRA'
      Origin = 'ISADE.FATDEV.NUMTRA'
      Size = 10
    end
    object FatDevBAITRA: TStringField
      FieldName = 'BAITRA'
      Origin = 'ISADE.FATDEV.BAITRA'
    end
    object FatDevCIDTRA: TStringField
      FieldName = 'CIDTRA'
      Origin = 'ISADE.FATDEV.CIDTRA'
    end
    object FatDevUFETRA: TStringField
      FieldName = 'UFETRA'
      Origin = 'ISADE.FATDEV.UFETRA'
      FixedChar = True
      Size = 2
    end
    object FatDevPLCTRA: TStringField
      FieldName = 'PLCTRA'
      Origin = 'ISADE.FATDEV.PLCTRA'
      Size = 7
    end
    object FatDevUFEPLC: TStringField
      FieldName = 'UFEPLC'
      Origin = 'ISADE.FATDEV.UFEPLC'
      FixedChar = True
      Size = 2
    end
    object FatDevCEPCLI: TStringField
      FieldName = 'CEPCLI'
      Origin = 'ISADE.FATDEV.CEPCLI'
      FixedChar = True
      Size = 8
    end
    object FatDevTENCLI: TStringField
      FieldName = 'TENCLI'
      Origin = 'ISADE.FATDEV.TENCLI'
      Size = 10
    end
    object FatDevENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ISADE.FATDEV.ENDCLI'
      Size = 70
    end
    object FatDevREFCLI: TStringField
      FieldName = 'REFCLI'
      Origin = 'ISADE.FATDEV.REFCLI'
      Size = 40
    end
    object FatDevNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Origin = 'ISADE.FATDEV.NUMCLI'
      Size = 10
    end
    object FatDevBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'ISADE.FATDEV.BAICLI'
    end
    object FatDevCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'ISADE.FATDEV.CIDCLI'
    end
    object FatDevUFECLI: TStringField
      FieldName = 'UFECLI'
      Origin = 'ISADE.FATDEV.UFECLI'
      FixedChar = True
      Size = 2
    end
    object FatDevINECLI: TStringField
      FieldName = 'INECLI'
      Origin = 'ISADE.FATDEV.INECLI'
      Size = 18
    end
    object FatDevCGECLI: TStringField
      FieldName = 'CGECLI'
      Origin = 'ISADE.FATDEV.CGECLI'
      Size = 18
    end
    object FatDevTXFIPI: TStringField
      FieldName = 'TXFIPI'
      Origin = 'ISADE.FATDEV.TXFIPI'
      Size = 160
    end
    object FatDevTXFICM: TStringField
      FieldName = 'TXFICM'
      Origin = 'ISADE.FATDEV.TXFICM'
      Size = 160
    end
    object FatDevOBSDEV: TStringField
      FieldName = 'OBSDEV'
      Origin = 'ISADE.FATDEV.OBSDEV'
      Size = 240
    end
    object FatDevQTDDEV: TIntegerField
      FieldName = 'QTDDEV'
      Origin = 'ISADE.FATDEV.QTDDEV'
    end
    object FatDevSEQITE: TIntegerField
      FieldName = 'SEQITE'
      Origin = 'ISADE.FATDEV.SEQITE'
    end
    object FatDevQTIDEV: TIntegerField
      FieldName = 'QTIDEV'
      Origin = 'ISADE.FATDEV.QTIDEV'
    end
    object FatDevLINDEV: TIntegerField
      FieldName = 'LINDEV'
      Origin = 'ISADE.FATDEV.LINDEV'
    end
    object FatDevQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
      Origin = 'ISADE.FATDEV.QTDVOL'
    end
    object FatDevINFLIQ: TFloatField
      FieldName = 'INFLIQ'
      Origin = 'ISADE.FATDEV.INFLIQ'
    end
    object FatDevTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.FATDEV.TOTLIQ'
    end
    object FatDevINFBRT: TFloatField
      FieldName = 'INFBRT'
      Origin = 'ISADE.FATDEV.INFBRT'
    end
    object FatDevTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.FATDEV.TOTBRT'
    end
    object FatDevBASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.FATDEV.BASIPI'
    end
    object FatDevTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.FATDEV.TOTIPI'
    end
    object FatDevBASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.FATDEV.BASICM'
    end
    object FatDevTOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.FATDEV.TOTICM'
    end
    object FatDevBASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.FATDEV.BASSUB'
    end
    object FatDevTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.FATDEV.TOTSUB'
    end
    object FatDevTOTDEV: TFloatField
      FieldName = 'TOTDEV'
      Origin = 'ISADE.FATDEV.TOTDEV'
    end
    object FatDevTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.FATDEV.TOTPIS'
    end
    object FatDevTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.FATDEV.TOTCOF'
    end
    object FatDevTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.FATDEV.TOTFRT'
    end
    object FatDevTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.FATDEV.TOTSEG'
    end
    object FatDevTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'ISADE.FATDEV.TOTDES'
    end
    object FatDevICMFRT: TFloatField
      FieldName = 'ICMFRT'
      Origin = 'ISADE.FATDEV.ICMFRT'
    end
    object FatDevBSICMF: TFloatField
      FieldName = 'BSICMF'
      Origin = 'ISADE.FATDEV.BSICMF'
    end
    object FatDevBAICMF: TFloatField
      FieldName = 'BAICMF'
      Origin = 'ISADE.FATDEV.BAICMF'
    end
    object FatDevTOICMF: TFloatField
      FieldName = 'TOICMF'
      Origin = 'ISADE.FATDEV.TOICMF'
    end
    object FatDevICMSEG: TFloatField
      FieldName = 'ICMSEG'
      Origin = 'ISADE.FATDEV.ICMSEG'
    end
    object FatDevBSICMS: TFloatField
      FieldName = 'BSICMS'
      Origin = 'ISADE.FATDEV.BSICMS'
    end
    object FatDevBAICMS: TFloatField
      FieldName = 'BAICMS'
      Origin = 'ISADE.FATDEV.BAICMS'
    end
    object FatDevTOICMS: TFloatField
      FieldName = 'TOICMS'
      Origin = 'ISADE.FATDEV.TOICMS'
    end
    object FatDevICMDES: TFloatField
      FieldName = 'ICMDES'
      Origin = 'ISADE.FATDEV.ICMDES'
    end
    object FatDevBSICMD: TFloatField
      FieldName = 'BSICMD'
      Origin = 'ISADE.FATDEV.BSICMD'
    end
    object FatDevBAICMD: TFloatField
      FieldName = 'BAICMD'
      Origin = 'ISADE.FATDEV.BAICMD'
    end
    object FatDevTOICMD: TFloatField
      FieldName = 'TOICMD'
      Origin = 'ISADE.FATDEV.TOICMD'
    end
    object FatDevIPIFRT: TFloatField
      FieldName = 'IPIFRT'
      Origin = 'ISADE.FATDEV.IPIFRT'
    end
    object FatDevBSIPIF: TFloatField
      FieldName = 'BSIPIF'
      Origin = 'ISADE.FATDEV.BSIPIF'
    end
    object FatDevBAIPIF: TFloatField
      FieldName = 'BAIPIF'
      Origin = 'ISADE.FATDEV.BAIPIF'
    end
    object FatDevTOIPIF: TFloatField
      FieldName = 'TOIPIF'
      Origin = 'ISADE.FATDEV.TOIPIF'
    end
    object FatDevIPISEG: TFloatField
      FieldName = 'IPISEG'
      Origin = 'ISADE.FATDEV.IPISEG'
    end
    object FatDevBSIPIS: TFloatField
      FieldName = 'BSIPIS'
      Origin = 'ISADE.FATDEV.BSIPIS'
    end
    object FatDevBAIPIS: TFloatField
      FieldName = 'BAIPIS'
      Origin = 'ISADE.FATDEV.BAIPIS'
    end
    object FatDevTOIPIS: TFloatField
      FieldName = 'TOIPIS'
      Origin = 'ISADE.FATDEV.TOIPIS'
    end
    object FatDevIPIDES: TFloatField
      FieldName = 'IPIDES'
      Origin = 'ISADE.FATDEV.IPIDES'
    end
    object FatDevBSIPID: TFloatField
      FieldName = 'BSIPID'
      Origin = 'ISADE.FATDEV.BSIPID'
    end
    object FatDevBAIPID: TFloatField
      FieldName = 'BAIPID'
      Origin = 'ISADE.FATDEV.BAIPID'
    end
    object FatDevTOIPID: TFloatField
      FieldName = 'TOIPID'
      Origin = 'ISADE.FATDEV.TOIPID'
    end
    object FatDevTOTGER: TFloatField
      FieldName = 'TOTGER'
      Origin = 'ISADE.FATDEV.TOTGER'
      DisplayFormat = '##0.00'
      currency = True
    end
    object FatDevBASCOM: TFloatField
      FieldName = 'BASCOM'
      Origin = 'ISADE.FATDEV.BASCOM'
    end
    object FatDevTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Origin = 'ISADE.FATDEV.TOTCOM'
    end
    object FatDevTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.FATDEV.TOTDSR'
    end
    object FatDevDESREG: TStringField
      FieldName = 'DESREG'
      Origin = 'ISADE.FATDEV.DESREG'
      Size = 100
    end
    object FatDevCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'ISADE.FATDEV.CODUSU'
    end
    object FatDevATUEST: TStringField
      FieldName = 'ATUEST'
      Origin = 'ISADE.FATDEV.ATUEST'
      FixedChar = True
      Size = 3
    end
    object FatDevLANEST: TStringField
      FieldName = 'LANEST'
      Origin = 'ISADE.FATDEV.LANEST'
      FixedChar = True
      Size = 3
    end
    object FatDevINTFIN: TStringField
      FieldName = 'INTFIN'
      Origin = 'ISADE.FATDEV.INTFIN'
      FixedChar = True
      Size = 3
    end
    object FatDevCONSUM: TStringField
      FieldName = 'CONSUM'
      Origin = 'ISADE.FATDEV.CONSUM'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGCTB: TStringField
      FieldName = 'FLGCTB'
      Origin = 'ISADE.FATDEV.FLGCTB'
      FixedChar = True
      Size = 3
    end
    object FatDevCODIPI: TStringField
      FieldName = 'CODIPI'
      Origin = 'ISADE.FATDEV.CODIPI'
      Size = 30
    end
    object FatDevTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.FATDEV.TIPIPI'
      Size = 7
    end
    object FatDevTRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.FATDEV.TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatDevREDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.FATDEV.REDIPI'
    end
    object FatDevBSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.FATDEV.BSCIPI'
    end
    object FatDevCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.FATDEV.CODICM'
    end
    object FatDevTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.FATDEV.TIPICM'
      Size = 7
    end
    object FatDevTRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.FATDEV.TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatDevREDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.FATDEV.REDICM'
    end
    object FatDevBSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.FATDEV.BSCICM'
      DisplayFormat = '#0.00'
    end
    object FatDevINCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.FATDEV.INCREV'
    end
    object FatDevINCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.FATDEV.INCFIN'
    end
    object FatDevOBSMDV: TMemoField
      FieldName = 'OBSMDV'
      Origin = 'ISADE.FATDEV.OBSMDV'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevSEQREG: TStringField
      FieldName = 'SEQREG'
      Origin = 'ISADE.FATDEV.SEQREG'
      FixedChar = True
      Size = 22
    end
    object FatDevFLGDIF: TStringField
      FieldName = 'FLGDIF'
      Origin = 'ISADE.FATDEV.FLGDIF'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGDEV: TStringField
      FieldName = 'FLGDEV'
      Origin = 'ISADE.FATDEV.FLGDEV'
      FixedChar = True
      Size = 1
    end
    object FatDevFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.FATDEV.FLGATU'
      FixedChar = True
      Size = 1
    end
    object FatDevSITDEV: TStringField
      FieldName = 'SITDEV'
      Origin = 'ISADE.FATDEV.SITDEV'
      Size = 45
    end
    object FatDevCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'ISADE.FATDEV.CODCLI'
    end
    object FatDevCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Origin = 'ISADE.FATDEV.CODVEN'
    end
    object FatDevMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.FATDEV.MODPFA'
    end
    object FatDevFLGNFS: TStringField
      FieldName = 'FLGNFS'
      Origin = 'ISADE.FATDEV.FLGNFS'
      FixedChar = True
      Size = 1
    end
    object FatDevHRCDEV: TStringField
      FieldName = 'HRCDEV'
      Origin = 'ISADE.FATDEV.HRCDEV'
      FixedChar = True
      Size = 8
    end
    object FatDevDTCDEV: TDateTimeField
      FieldName = 'DTCDEV'
      Origin = 'ISADE.FATDEV.DTCDEV'
    end
    object FatDevUSUCFT: TIntegerField
      FieldName = 'USUCFT'
      Origin = 'ISADE.FATDEV.USUCFT'
    end
    object FatDevOBSCFT: TMemoField
      FieldName = 'OBSCFT'
      Origin = 'ISADE.FATDEV.OBSCFT'
      BlobType = ftMemo
      Size = 500
    end
    object FatDevFLGSIN: TStringField
      FieldName = 'FLGSIN'
      Origin = 'ISADE.FATDEV.FLGSIN'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGFSC: TStringField
      FieldName = 'FLGFSC'
      Origin = 'ISADE.FATDEV.FLGFSC'
      FixedChar = True
      Size = 3
    end
    object FatDevSERNOT: TStringField
      FieldName = 'SERNOT'
      Origin = 'ISADE.FATDEV.SERNOT'
      Size = 3
    end
    object FatDevMODDEV: TStringField
      FieldName = 'MODDEV'
      Origin = 'ISADE.FATDEV.MODDEV'
    end
    object FatDevOB1DEV: TStringField
      FieldName = 'OB1DEV'
      Origin = 'ISADE.FATDEV.OB1DEV'
      Size = 80
    end
    object FatDevOB2DEV: TStringField
      FieldName = 'OB2DEV'
      Origin = 'ISADE.FATDEV.OB2DEV'
      Size = 80
    end
    object FatDevOB3DEV: TStringField
      FieldName = 'OB3DEV'
      Origin = 'ISADE.FATDEV.OB3DEV'
      Size = 80
    end
    object FatDevOB4DEV: TStringField
      FieldName = 'OB4DEV'
      Origin = 'ISADE.FATDEV.OB4DEV'
      Size = 80
    end
    object FatDevOB5DEV: TStringField
      FieldName = 'OB5DEV'
      Origin = 'ISADE.FATDEV.OB5DEV'
      Size = 80
    end
    object FatDevOB6DEV: TStringField
      FieldName = 'OB6DEV'
      Origin = 'ISADE.FATDEV.OB6DEV'
      Size = 80
    end
    object FatDevOB7DEV: TStringField
      FieldName = 'OB7DEV'
      Origin = 'ISADE.FATDEV.OB7DEV'
      Size = 80
    end
    object FatDevOB8DEV: TStringField
      FieldName = 'OB8DEV'
      Origin = 'ISADE.FATDEV.OB8DEV'
      Size = 80
    end
    object FatDevFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Origin = 'ISADE.FATDEV.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object FatDevNOMENT: TStringField
      FieldName = 'NOMENT'
      Origin = 'ISADE.FATDEV.NOMENT'
      Size = 70
    end
    object FatDevQTDDSE: TIntegerField
      FieldName = 'QTDDSE'
      Origin = 'ISADE.FATDEV.QTDDSE'
    end
    object FatDevSEQDSE: TIntegerField
      FieldName = 'SEQDSE'
      Origin = 'ISADE.FATDEV.SEQDSE'
    end
    object FatDevTOTDSE: TFloatField
      FieldName = 'TOTDSE'
      Origin = 'ISADE.FATDEV.TOTDSE'
    end
    object FatDevBASISS: TFloatField
      FieldName = 'BASISS'
      Origin = 'ISADE.FATDEV.BASISS'
    end
    object FatDevTOTISS: TFloatField
      FieldName = 'TOTISS'
      Origin = 'ISADE.FATDEV.TOTISS'
    end
    object FatDevTOTFAT: TFloatField
      FieldName = 'TOTFAT'
      Origin = 'ISADE.FATDEV.TOTFAT'
    end
    object FatDevFLGTOT: TStringField
      FieldName = 'FLGTOT'
      Origin = 'ISADE.FATDEV.FLGTOT'
      FixedChar = True
      Size = 3
    end
    object FatDevCODTCL: TIntegerField
      FieldName = 'CODTCL'
      Origin = 'ISADE.FATDEV.CODTCL'
    end
    object FatDevFLGENV: TStringField
      FieldName = 'FLGENV'
      Origin = 'ISADE.FATDEV.FLGENV'
      FixedChar = True
      Size = 3
    end
    object FatDevNFSCLI: TIntegerField
      FieldName = 'NFSCLI'
      Origin = 'ISADE.FATDEV.NFSCLI'
    end
    object FatDevARQNFE: TBlobField
      FieldName = 'ARQNFE'
      Origin = 'ISADE.FATDEV.ARQNFE'
      BlobType = ftBlob
      Size = 1
    end
    object FatDevBAFCLI: TStringField
      FieldName = 'BAFCLI'
      Origin = 'ISADE.FATDEV.BAFCLI'
      FixedChar = True
    end
    object FatDevCEFCLI: TStringField
      FieldName = 'CEFCLI'
      Origin = 'ISADE.FATDEV.CEFCLI'
      Size = 8
    end
    object FatDevCIFCLI: TStringField
      FieldName = 'CIFCLI'
      Origin = 'ISADE.FATDEV.CIFCLI'
      FixedChar = True
    end
    object FatDevCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Origin = 'ISADE.FATDEV.CODTRA'
    end
    object FatDevDOPNFE: TDateTimeField
      FieldName = 'DOPNFE'
      Origin = 'ISADE.FATDEV.DOPNFE'
    end
    object FatDevDTCNFE: TDateTimeField
      FieldName = 'DTCNFE'
      Origin = 'ISADE.FATDEV.DTCNFE'
    end
    object FatDevDTECNE: TDateTimeField
      FieldName = 'DTECNE'
      Origin = 'ISADE.FATDEV.DTECNE'
    end
    object FatDevDTENFE: TDateTimeField
      FieldName = 'DTENFE'
      Origin = 'ISADE.FATDEV.DTENFE'
    end
    object FatDevDTEPNF: TDateTimeField
      FieldName = 'DTEPNF'
      Origin = 'ISADE.FATDEV.DTEPNF'
    end
    object FatDevENFCLI: TStringField
      FieldName = 'ENFCLI'
      Origin = 'ISADE.FATDEV.ENFCLI'
      Size = 70
    end
    object FatDevENVNFE: TStringField
      FieldName = 'ENVNFE'
      Origin = 'ISADE.FATDEV.ENVNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGNFE: TStringField
      FieldName = 'FLGNFE'
      Origin = 'ISADE.FATDEV.FLGNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevFLGNOT: TStringField
      FieldName = 'FLGNOT'
      Origin = 'ISADE.FATDEV.FLGNOT'
      FixedChar = True
      Size = 3
    end
    object FatDevHRCNFE: TStringField
      FieldName = 'HRCNFE'
      Origin = 'ISADE.FATDEV.HRCNFE'
      FixedChar = True
      Size = 8
    end
    object FatDevHRECNE: TStringField
      FieldName = 'HRECNE'
      Origin = 'ISADE.FATDEV.HRECNE'
      FixedChar = True
      Size = 8
    end
    object FatDevHRENFE: TStringField
      FieldName = 'HRENFE'
      Origin = 'ISADE.FATDEV.HRENFE'
      FixedChar = True
      Size = 8
    end
    object FatDevHREPNF: TStringField
      FieldName = 'HREPNF'
      Origin = 'ISADE.FATDEV.HREPNF'
      FixedChar = True
      Size = 8
    end
    object FatDevID_ESTSIP: TIntegerField
      FieldName = 'ID_ESTSIP'
      Origin = 'ISADE.FATDEV.ID_ESTSIP'
    end
    object FatDevID_FINCIE: TIntegerField
      FieldName = 'ID_FINCIE'
      Origin = 'ISADE.FATDEV.ID_FINCIE'
    end
    object FatDevID_FINCIF: TIntegerField
      FieldName = 'ID_FINCIF'
      Origin = 'ISADE.FATDEV.ID_FINCIF'
    end
    object FatDevID_FINUFE: TIntegerField
      FieldName = 'ID_FINUFE'
      Origin = 'ISADE.FATDEV.ID_FINUFE'
    end
    object FatDevID_FINUFF: TIntegerField
      FieldName = 'ID_FINUFF'
      Origin = 'ISADE.FATDEV.ID_FINUFF'
    end
    object FatDevID_TRACIE: TIntegerField
      FieldName = 'ID_TRACIE'
      Origin = 'ISADE.FATDEV.ID_TRACIE'
    end
    object FatDevID_TRAUFE: TIntegerField
      FieldName = 'ID_TRAUFE'
      Origin = 'ISADE.FATDEV.ID_TRAUFE'
    end
    object FatDevIMPNFE: TStringField
      FieldName = 'IMPNFE'
      Origin = 'ISADE.FATDEV.IMPNFE'
      FixedChar = True
      Size = 3
    end
    object FatDevLOTNFE: TIntegerField
      FieldName = 'LOTNFE'
      Origin = 'ISADE.FATDEV.LOTNFE'
    end
    object FatDevNFECOF: TStringField
      FieldName = 'NFECOF'
      Origin = 'ISADE.FATDEV.NFECOF'
      FixedChar = True
      Size = 2
    end
    object FatDevNFEPIS: TStringField
      FieldName = 'NFEPIS'
      Origin = 'ISADE.FATDEV.NFEPIS'
      FixedChar = True
      Size = 2
    end
    object FatDevNRFCLI: TStringField
      FieldName = 'NRFCLI'
      Origin = 'ISADE.FATDEV.NRFCLI'
      FixedChar = True
      Size = 10
    end
    object FatDevPRCNFE: TStringField
      FieldName = 'PRCNFE'
      Origin = 'ISADE.FATDEV.PRCNFE'
      FixedChar = True
      Size = 15
    end
    object FatDevPRONFE: TStringField
      FieldName = 'PRONFE'
      Origin = 'ISADE.FATDEV.PRONFE'
      FixedChar = True
      Size = 15
    end
    object FatDevRECNFE: TStringField
      FieldName = 'RECNFE'
      Origin = 'ISADE.FATDEV.RECNFE'
      FixedChar = True
      Size = 15
    end
    object FatDevRETNFE: TStringField
      FieldName = 'RETNFE'
      Origin = 'ISADE.FATDEV.RETNFE'
      Size = 100
    end
    object FatDevRFFCLI: TStringField
      FieldName = 'RFFCLI'
      Origin = 'ISADE.FATDEV.RFFCLI'
      FixedChar = True
      Size = 40
    end
    object FatDevSEQNFE: TStringField
      FieldName = 'SEQNFE'
      Origin = 'ISADE.FATDEV.SEQNFE'
      FixedChar = True
      Size = 44
    end
    object FatDevTEFCLI: TStringField
      FieldName = 'TEFCLI'
      Origin = 'ISADE.FATDEV.TEFCLI'
      Size = 10
    end
    object FatDevTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.FATDEV.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatDevTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.FATDEV.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatDevUFFCLI: TStringField
      FieldName = 'UFFCLI'
      Origin = 'ISADE.FATDEV.UFFCLI'
      FixedChar = True
      Size = 2
    end
    object FatDevUSUNFE: TIntegerField
      FieldName = 'USUNFE'
      Origin = 'ISADE.FATDEV.USUNFE'
    end
    object FatDevBASCAT: TFloatField
      FieldName = 'BASCAT'
      Origin = 'ISADE.FATDEV.BASCAT'
    end
    object FatDevTOTCAT: TFloatField
      FieldName = 'TOTCAT'
      Origin = 'ISADE.FATDEV.TOTCAT'
    end
    object FatDevID_FATDEV: TIntegerField
      FieldName = 'ID_FATDEV'
      Origin = 'ISADE.FATDEV.ID_FATDEV'
    end
    object FatDevDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
      Origin = 'ISADE.FATDEV.DTEFAT'
    end
    object FatDevFLGEMI: TStringField
      FieldName = 'FLGEMI'
      Origin = 'ISADE.FATDEV.FLGEMI'
      FixedChar = True
      Size = 3
    end
    object FatDevALTVOL: TIntegerField
      FieldName = 'ALTVOL'
      Origin = 'ISADE.FATDEV.ALTVOL'
    end
    object FatDevNFETH: TSmallintField
      FieldName = 'NFETH'
      Origin = 'ISADE.FATDEV.NFETH'
    end
    object FatDevARQNFECANC: TBlobField
      FieldName = 'ARQNFECANC'
      Origin = 'ISADE.FATDEV.ARQNFECANC'
      BlobType = ftBlob
      Size = 1
    end
    object FatDevNFETHCANC: TSmallintField
      FieldName = 'NFETHCANC'
      Origin = 'ISADE.FATDEV.NFETHCANC'
    end
    object FatDevDTECAN: TDateTimeField
      FieldName = 'DTECAN'
      Origin = 'ISADE.FATDEV.DTECAN'
    end
    object FatDevHRECAN: TStringField
      FieldName = 'HRECAN'
      Origin = 'ISADE.FATDEV.HRECAN'
      FixedChar = True
      Size = 8
    end
    object FatDevUSUCAN: TIntegerField
      FieldName = 'USUCAN'
      Origin = 'ISADE.FATDEV.USUCAN'
    end
    object FatDevOB1CAN: TStringField
      FieldName = 'OB1CAN'
      Origin = 'ISADE.FATDEV.OB1CAN'
      Size = 80
    end
    object FatDevOB2CAN: TStringField
      FieldName = 'OB2CAN'
      Origin = 'ISADE.FATDEV.OB2CAN'
      Size = 80
    end
    object FatDevOB3CAN: TStringField
      FieldName = 'OB3CAN'
      Origin = 'ISADE.FATDEV.OB3CAN'
      Size = 80
    end
    object FatDevOB4CAN: TStringField
      FieldName = 'OB4CAN'
      Origin = 'ISADE.FATDEV.OB4CAN'
      Size = 80
    end
    object FatDevOB5CAN: TStringField
      FieldName = 'OB5CAN'
      Origin = 'ISADE.FATDEV.OB5CAN'
      Size = 80
    end
    object FatDevSERIENF: TSmallintField
      FieldName = 'SERIENF'
      Origin = 'ISADE.FATDEV.SERIENF'
    end
    object FatDevSERIECONTINGENCIA: TSmallintField
      FieldName = 'SERIECONTINGENCIA'
      Origin = 'ISADE.FATDEV.SERIECONTINGENCIA'
    end
    object FatDevNUMCONTINGENCIA: TSmallintField
      FieldName = 'NUMCONTINGENCIA'
      Origin = 'ISADE.FATDEV.NUMCONTINGENCIA'
    end
    object FatDevFLGDENEGADA: TStringField
      FieldName = 'FLGDENEGADA'
      Origin = 'ISADE.FATDEV.FLGDENEGADA'
      FixedChar = True
      Size = 1
    end
    object FatDevNFE_PROTOCOLO: TMemoField
      FieldName = 'NFE_PROTOCOLO'
      Origin = 'ISADE.FATDEV.NFE_PROTOCOLO'
      BlobType = ftMemo
      Size = 300
    end
    object FatDevNFE_RECIBO: TMemoField
      FieldName = 'NFE_RECIBO'
      Origin = 'ISADE.FATDEV.NFE_RECIBO'
      BlobType = ftMemo
      Size = 300
    end
    object FatDevENVDPEC: TStringField
      FieldName = 'ENVDPEC'
      Origin = 'ISADE.FATDEV.ENVDPEC'
      FixedChar = True
      Size = 1
    end
    object FatDevUSUDPEC: TIntegerField
      FieldName = 'USUDPEC'
      Origin = 'ISADE.FATDEV.USUDPEC'
    end
    object FatDevJUSTDPEC: TStringField
      FieldName = 'JUSTDPEC'
      Origin = 'ISADE.FATDEV.JUSTDPEC'
      Size = 255
    end
    object FatDevPROTDPEC: TStringField
      FieldName = 'PROTDPEC'
      Origin = 'ISADE.FATDEV.PROTDPEC'
      Size = 255
    end
    object FatDevTOTVOL: TIntegerField
      FieldName = 'TOTVOL'
      Origin = 'ISADE.FATDEV.TOTVOL'
    end
    object FatDevNUMGER: TIntegerField
      FieldName = 'NUMGER'
      Origin = 'ISADE.FATDEV.NUMGER'
    end
    object FatDevCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'ISADE.FATDEV.CSTPIS'
      FixedChar = True
      Size = 2
    end
    object FatDevCSTCOF: TStringField
      FieldName = 'CSTCOF'
      Origin = 'ISADE.FATDEV.CSTCOF'
      FixedChar = True
      Size = 2
    end
    object FatDevALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
      Origin = 'ISADE.FATDEV.ALIQPIS'
    end
    object FatDevALIQCOF: TFloatField
      FieldName = 'ALIQCOF'
      Origin = 'ISADE.FATDEV.ALIQCOF'
    end
    object FatDevTOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
      Origin = 'ISADE.FATDEV.TOTOUTDESP'
    end
    object FatDevTOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
      Origin = 'ISADE.FATDEV.TOTDESCINC'
    end
    object FatDevID_FRETE: TIntegerField
      FieldName = 'ID_FRETE'
      Origin = 'ISADE.FATDEV.ID_FRETE'
    end
    object FatDevCRED_SEM_SUB: TStringField
      FieldName = 'CRED_SEM_SUB'
      Origin = 'ISADE.FATDEV.CRED_SEM_SUB'
      FixedChar = True
      Size = 1
    end
    object FatDevID_ESTICM: TIntegerField
      FieldName = 'ID_ESTICM'
      Origin = 'ISADE.FATDEV.ID_ESTICM'
    end
    object FatDevID_ESTIPI: TIntegerField
      FieldName = 'ID_ESTIPI'
      Origin = 'ISADE.FATDEV.ID_ESTIPI'
    end
  end
  object DsFatDev: TwwDataSource
    DataSet = FatDev
    Left = 670
    Top = 9
  end
  object FatDv3: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsFatDev
    SQL.Strings = (
      'Select FatDv2.*,'
      '           FatPed.NroNfs,'
      '           FatPed.DteFat,'
      '           FinVen.ApeVen,'
      
        '           FatDv2.CodClp || _UNICODE_FSS '#39'-'#39' || FATDV2.CodGru ||' +
        ' _UNICODE_FSS '#39'.'#39' || FATDV2.CodSub || _UNICODE_FSS '#39'.'#39' || FATDV2' +
        '.CodPro as CodIte'
      'From FatDv2'
      ''
      '    INNER JOIN FatDev ON (FATDV2.CodEmp = FatDev.CodEmp)'
      '                     AND (FATDV2.DteRes = FatDev.DteRes)'
      '                     AND (FATDV2.NumRes = FatDev.NumRes)'
      '                     AND (FATDV2.SeqLib = FatDev.SeqLib)'
      '                     AND (FATDV2.SeqFat = FatDev.SeqFat)'
      '                     AND (FATDV2.id_fatdev = FATDEV.id_fatdev)'
      ''
      '    LEFT JOIN FatPed ON (FatDev.CodEmp = FatPed.CodEmp)'
      '                    AND (FatDev.DteRes = FatPed.DteRes)'
      '                    AND (FatDev.NumRes = FatPed.NumRes)'
      '                    AND (FatDev.SeqLib = FatPed.SeqLib)'
      '                    AND (FatDev.SeqFat = FatPed.SeqFat)'
      ''
      '    LEFT JOIN FinVen ON (FatPed.CodVen = FinVen.CodVen)'
      ''
      'Where FatDv2.Id_FatDev = :Id_FatDev'
      '    and FatDv2.UltQtd > 0'
      'Order by FatPed.NroNfs DESC')
    ValidateWithMask = True
    Left = 699
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_FATDEV'
        ParamType = ptUnknown
      end>
    object FatDv3CODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object FatDv3DTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object FatDv3NUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object FatDv3SEQLIB: TIntegerField
      FieldName = 'SEQLIB'
    end
    object FatDv3SEQFAT: TIntegerField
      FieldName = 'SEQFAT'
    end
    object FatDv3SEQDEV: TIntegerField
      FieldName = 'SEQDEV'
    end
    object FatDv3SEQDV2: TIntegerField
      FieldName = 'SEQDV2'
    end
    object FatDv3CODEIT: TIntegerField
      FieldName = 'CODEIT'
    end
    object FatDv3CODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object FatDv3CODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object FatDv3CODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object FatDv3CODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object FatDv3CODTAM: TStringField
      FieldName = 'CODTAM'
      Size = 10
    end
    object FatDv3CODCOR: TStringField
      FieldName = 'CODCOR'
      Size = 10
    end
    object FatDv3DESDV2: TStringField
      FieldName = 'DESDV2'
      Size = 70
    end
    object FatDv3OBSDV2: TStringField
      FieldName = 'OBSDV2'
      Size = 100
    end
    object FatDv3CODST1: TStringField
      FieldName = 'CODST1'
      FixedChar = True
      Size = 1
    end
    object FatDv3CODST2: TStringField
      FieldName = 'CODST2'
      FixedChar = True
      Size = 3
    end
    object FatDv3CODUND: TStringField
      FieldName = 'CODUND'
      Size = 3
    end
    object FatDv3REFDV2: TStringField
      FieldName = 'REFDV2'
    end
    object FatDv3LINDV2: TIntegerField
      FieldName = 'LINDV2'
    end
    object FatDv3LIQDV2: TFloatField
      FieldName = 'LIQDV2'
    end
    object FatDv3BRTDV2: TFloatField
      FieldName = 'BRTDV2'
    end
    object FatDv3QTPDV2: TFloatField
      FieldName = 'QTPDV2'
    end
    object FatDv3QTDDV2: TFloatField
      FieldName = 'QTDDV2'
    end
    object FatDv3ULTQTD: TFloatField
      FieldName = 'ULTQTD'
    end
    object FatDv3QTDRMA: TFloatField
      FieldName = 'QTDRMA'
    end
    object FatDv3SLDDV2: TFloatField
      FieldName = 'SLDDV2'
    end
    object FatDv3VLUDV2: TFloatField
      FieldName = 'VLUDV2'
    end
    object FatDv3VCHDV2: TFloatField
      FieldName = 'VCHDV2'
    end
    object FatDv3VREDV2: TFloatField
      FieldName = 'VREDV2'
    end
    object FatDv3VCPDV2: TFloatField
      FieldName = 'VCPDV2'
    end
    object FatDv3VPRDV2: TFloatField
      FieldName = 'VPRDV2'
    end
    object FatDv3DSRDV2: TFloatField
      FieldName = 'DSRDV2'
    end
    object FatDv3VDRDV2: TFloatField
      FieldName = 'VDRDV2'
    end
    object FatDv3VLQDV2: TFloatField
      FieldName = 'VLQDV2'
    end
    object FatDv3IPIDV2: TFloatField
      FieldName = 'IPIDV2'
    end
    object FatDv3CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Size = 30
    end
    object FatDv3SEQNFD: TIntegerField
      FieldName = 'SEQNFD'
    end
    object FatDv3SEQDV3: TIntegerField
      FieldName = 'SEQDV3'
    end
    object FatDv3ICMDV2: TFloatField
      FieldName = 'ICMDV2'
    end
    object FatDv3BASIPI: TFloatField
      FieldName = 'BASIPI'
    end
    object FatDv3TOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object FatDv3BASICM: TFloatField
      FieldName = 'BASICM'
    end
    object FatDv3TOTICM: TFloatField
      FieldName = 'TOTICM'
    end
    object FatDv3BASSUB: TFloatField
      FieldName = 'BASSUB'
    end
    object FatDv3TOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object FatDv3TOTDV2: TFloatField
      FieldName = 'TOTDV2'
    end
    object FatDv3TOTGE2: TFloatField
      FieldName = 'TOTGE2'
    end
    object FatDv3TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object FatDv3TOTBRT: TFloatField
      FieldName = 'TOTBRT'
    end
    object FatDv3TOTDSR: TFloatField
      FieldName = 'TOTDSR'
    end
    object FatDv3TOTPIS: TFloatField
      FieldName = 'TOTPIS'
    end
    object FatDv3TOTCOF: TFloatField
      FieldName = 'TOTCOF'
    end
    object FatDv3BASCOM: TFloatField
      FieldName = 'BASCOM'
    end
    object FatDv3TOTCOM: TFloatField
      FieldName = 'TOTCOM'
    end
    object FatDv3CODSTR: TStringField
      FieldName = 'CODSTR'
    end
    object FatDv3TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Size = 7
    end
    object FatDv3REGIPI: TStringField
      FieldName = 'REGIPI'
      Size = 30
    end
    object FatDv3TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Size = 7
    end
    object FatDv3TRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object FatDv3REDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object FatDv3BSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object FatDv3REGICM: TStringField
      FieldName = 'REGICM'
    end
    object FatDv3TIPICM: TStringField
      FieldName = 'TIPICM'
      Size = 7
    end
    object FatDv3TRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object FatDv3REDICM: TFloatField
      FieldName = 'REDICM'
    end
    object FatDv3BSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object FatDv3INCREV: TFloatField
      FieldName = 'INCREV'
    end
    object FatDv3INCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object FatDv3FLASEQ: TStringField
      FieldName = 'FLASEQ'
      FixedChar = True
      Size = 1
    end
    object FatDv3NRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object FatDv3SEQNFS: TIntegerField
      FieldName = 'SEQNFS'
    end
    object FatDv3SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
    end
    object FatDv3SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
    end
    object FatDv3NROPE2: TIntegerField
      FieldName = 'NROPE2'
    end
    object FatDv3CODVWA: TStringField
      FieldName = 'CODVWA'
      Size = 14
    end
    object FatDv3FLGREQ: TStringField
      FieldName = 'FLGREQ'
      FixedChar = True
      Size = 3
    end
    object FatDv3FLGDUP: TStringField
      FieldName = 'FLGDUP'
      FixedChar = True
      Size = 3
    end
    object FatDv3NRODV2: TIntegerField
      FieldName = 'NRODV2'
    end
    object FatDv3CODTXF: TStringField
      FieldName = 'CODTXF'
      Size = 30
    end
    object FatDv3VPFDV2: TFloatField
      FieldName = 'VPFDV2'
    end
    object FatDv3CODCFO: TStringField
      FieldName = 'CODCFO'
      FixedChar = True
      Size = 10
    end
    object FatDv3TRBSUB: TStringField
      FieldName = 'TRBSUB'
      FixedChar = True
      Size = 3
    end
    object FatDv3ICMSUB: TFloatField
      FieldName = 'ICMSUB'
    end
    object FatDv3MRGSUB: TFloatField
      FieldName = 'MRGSUB'
    end
    object FatDv3BASESB: TFloatField
      FieldName = 'BASESB'
    end
    object FatDv3VPFANT: TFloatField
      FieldName = 'VPFANT'
    end
    object FatDv3TOTFRT: TFloatField
      FieldName = 'TOTFRT'
    end
    object FatDv3TOTSEG: TFloatField
      FieldName = 'TOTSEG'
    end
    object FatDv3TOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object FatDv3DESNC1: TStringField
      FieldName = 'DESNC1'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC2: TStringField
      FieldName = 'DESNC2'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC3: TStringField
      FieldName = 'DESNC3'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC4: TStringField
      FieldName = 'DESNC4'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC5: TStringField
      FieldName = 'DESNC5'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC6: TStringField
      FieldName = 'DESNC6'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC7: TStringField
      FieldName = 'DESNC7'
      FixedChar = True
      Size = 80
    end
    object FatDv3DESNC8: TStringField
      FieldName = 'DESNC8'
      FixedChar = True
      Size = 80
    end
    object FatDv3CSTIPI: TStringField
      FieldName = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object FatDv3CSTPIS: TStringField
      FieldName = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object FatDv3CSTCOF: TStringField
      FieldName = 'CSTCOF'
      FixedChar = True
      Size = 2
    end
    object FatDv3BASPIS: TFloatField
      FieldName = 'BASPIS'
    end
    object FatDv3BASCOF: TFloatField
      FieldName = 'BASCOF'
    end
    object FatDv3ALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object FatDv3ALIQCOF: TFloatField
      FieldName = 'ALIQCOF'
    end
    object FatDv3TRBPIS: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object FatDv3TRBCOF: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object FatDv3PERPIS: TFloatField
      FieldName = 'PERPIS'
    end
    object FatDv3PERCOF: TFloatField
      FieldName = 'PERCOF'
    end
    object FatDv3ID_FATDEV: TIntegerField
      FieldName = 'ID_FATDEV'
    end
    object FatDv3TOTVOL: TIntegerField
      FieldName = 'TOTVOL'
    end
    object FatDv3FRTICM: TFloatField
      FieldName = 'FRTICM'
    end
    object FatDv3DESICM: TFloatField
      FieldName = 'DESICM'
    end
    object FatDv3SEGICM: TFloatField
      FieldName = 'SEGICM'
    end
    object FatDv3TOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
    end
    object FatDv3ALIQPIS_ZF: TFloatField
      FieldName = 'ALIQPIS_ZF'
    end
    object FatDv3ALIQCOF_ZF: TFloatField
      FieldName = 'ALIQCOF_ZF'
    end
    object FatDv3FLG_DESC_ZF_PIS: TStringField
      FieldName = 'FLG_DESC_ZF_PIS'
      FixedChar = True
      Size = 1
    end
    object FatDv3FLG_DESC_ZF_COF: TStringField
      FieldName = 'FLG_DESC_ZF_COF'
      FixedChar = True
      Size = 1
    end
    object FatDv3TOTPISZF: TFloatField
      FieldName = 'TOTPISZF'
    end
    object FatDv3TOTCOFZF: TFloatField
      FieldName = 'TOTCOFZF'
    end
    object FatDv3FLGNCALC_DIF_MVA: TStringField
      FieldName = 'FLGNCALC_DIF_MVA'
      FixedChar = True
      Size = 1
    end
    object FatDv3DSCREG: TFloatField
      FieldName = 'DSCREG'
    end
    object FatDv3FRTIPI: TFloatField
      FieldName = 'FRTIPI'
    end
    object FatDv3SEGIPI: TFloatField
      FieldName = 'SEGIPI'
    end
    object FatDv3DESIPI: TFloatField
      FieldName = 'DESIPI'
    end
    object FatDv3TOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
    end
    object FatDv3NRONFS_1: TIntegerField
      FieldName = 'NRONFS_1'
    end
    object FatDv3DTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
    end
    object FatDv3APEVEN: TStringField
      FieldName = 'APEVEN'
    end
    object FatDv3CODITE: TStringField
      FieldName = 'CODITE'
      Size = 16
    end
  end
  object DsFatDv3: TwwDataSource
    DataSet = FatDv3
    Left = 728
    Top = 9
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'Página da Web'
    Left = 525
    Top = 9
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 554
    Top = 9
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright © 1999-2004 Fortes Informática'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 583
    Top = 9
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 612
    Top = 9
  end
  object quSql: TQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    UniDirectional = True
    Left = 758
    Top = 9
  end
  object PedPar: TwwQuery
    AutoCalcFields = False
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedPar.UsaDec'
      'From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 787
    Top = 9
    object PedParUSADEC: TStringField
      FieldName = 'USADEC'
      FixedChar = True
      Size = 3
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Position = poMainFormCenter
    Caption = 'Itens devolvidos'
    OnSend = RLPreviewSetup1Send
    Left = 495
    Top = 9
  end
  object DsCmpPe2: TwwDataSource
    DataSet = CmpPe2
    Left = 709
    Top = 172
  end
  object CmpPe2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    DataSource = DsCmpPed
    SQL.Strings = (
      'Select CmpPe2.SeqPe2,'
      '           CmpPe2.CodClp,'
      '           CmpPe2.CodGru,'
      '           CmpPe2.CodSub,'
      '           CmpPe2.CodPro,'
      '           CmpPe2.CodPfo,'
      '           CmpPe2.DesPe2,'
      '           CmpPe2.ObsPe2,'
      '           CmpPe2.CodUnd,'
      '           CmpPe2.QtpPe2,'
      '           CmpPe2.QtrPe2,'
      '           CmpPe2.QtnPe2,'
      '           CmpPe2.SldPe2,'
      '           CmpPe2.VlqPe2,'
      '           CmpPe2.IcmPe2,'
      '           CmpPe2.IpiPe2,'
      '           CmpPe2.TotPe2,'
      '           CmpPe2.TotIpi,'
      '           CmpPe2.TotSub,'
      '           CmpPe2.TotGe2,'
      '           CmpPe2.NroPe2'
      'From CmpPe2'
      'Where CmpPe2.CodEmp = :CodEmp'
      '    and CmpPe2.DtePed = :DtePed'
      '    and CmpPe2.NumPed = :NumPed'
      'Order by CmpPe2.NroPe2')
    ValidateWithMask = True
    Left = 672
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTEPED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMPED'
        ParamType = ptInput
      end>
    object CmpPe2CODCLP: TStringField
      FieldName = 'CODCLP'
      FixedChar = True
      Size = 1
    end
    object CmpPe2CODGRU: TStringField
      FieldName = 'CODGRU'
      FixedChar = True
      Size = 3
    end
    object CmpPe2CODSUB: TStringField
      FieldName = 'CODSUB'
      FixedChar = True
      Size = 4
    end
    object CmpPe2CODPRO: TStringField
      FieldName = 'CODPRO'
      FixedChar = True
      Size = 5
    end
    object CmpPe2CODPFO: TStringField
      FieldName = 'CODPFO'
      Size = 30
    end
    object CmpPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Size = 70
    end
    object CmpPe2OBSPE2: TStringField
      FieldName = 'OBSPE2'
      Size = 100
    end
    object CmpPe2CODUND: TStringField
      FieldName = 'CODUND'
      FixedChar = True
      Size = 3
    end
    object CmpPe2VLQPE2: TFloatField
      FieldName = 'VLQPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPe2ICMPE2: TFloatField
      FieldName = 'ICMPE2'
      DisplayFormat = '##0'
    end
    object CmpPe2IPIPE2: TFloatField
      FieldName = 'IPIPE2'
      DisplayFormat = '##0'
    end
    object CmpPe2TOTPE2: TFloatField
      FieldName = 'TOTPE2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2QTPPE2: TFloatField
      FieldName = 'QTPPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPe2SLDPE2: TFloatField
      FieldName = 'SLDPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPe2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      DisplayFormat = '###,###,##0.00'
    end
    object CmpPe2QTRPE2: TFloatField
      FieldName = 'QTRPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPe2QTNPE2: TFloatField
      FieldName = 'QTNPE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object CmpPe2NROPE2: TIntegerField
      FieldName = 'NROPE2'
    end
    object CmpPe2SEQPE2: TIntegerField
      FieldName = 'SEQPE2'
    end
  end
  object DsCmpPed: TwwDataSource
    DataSet = CmpPed
    Left = 651
    Top = 172
  end
  object CmpPed: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CmpPed.CodEmp,'
      'CmpPed.DtePed,'
      'CmpPed.NumPed,'
      'CmpPed.DpePed,'
      'CmpPed.PrePed,'
      'CmpPed.UfePed,'
      'CmpPed.PerAcr,'
      'CmpPed.QtiPed,'
      'CmpPed.CodFor,'
      'CmpPed.NomCon,'
      'CmpPed.NomVen,'
      'CmpPed.ObsPed,'
      'CmpPed.ConSum,'
      'CmpPed.TotPed,'
      'CmpPed.TotSub,'
      'CmpPed.TotIpi,'
      'CmpPed.TotGer,'
      'CmpPed.CodUsu,'
      'CmpPed.CEPENT,'
      'CmpPed.TENENT,'
      'CmpPed.ENDENT,'
      'CmpPed.NUMENT,'
      'CmpPed.REFENT,'
      'CmpPed.BAIENT,'
      'CmpPed.CIDENT,'
      'CmpPed.DESTCOMPRA,'
      'CmpPed.UFEENT'
      'From CmpPed'
      'Where CmpPed.CodEmp = :CodEmp'
      '    and CmpPed.DtePed = :DtePed'
      '    and CmpPed.NumPed = :NumPed')
    ValidateWithMask = True
    Left = 622
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DtePed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
      end>
    object CmpPedDTEPED: TDateTimeField
      FieldName = 'DTEPED'
    end
    object CmpPedUFEPED: TStringField
      FieldName = 'UFEPED'
      FixedChar = True
      Size = 2
    end
    object CmpPedCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object CmpPedNOMCON: TStringField
      FieldName = 'NOMCON'
      Size = 40
    end
    object CmpPedNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object CmpPedTOTPED: TFloatField
      FieldName = 'TOTPED'
    end
    object CmpPedTOTSUB: TFloatField
      FieldName = 'TOTSUB'
    end
    object CmpPedTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object CmpPedTOTGER: TFloatField
      FieldName = 'TOTGER'
    end
    object CmpPedCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object CmpPedDPEPED: TDateTimeField
      FieldName = 'DPEPED'
    end
    object CmpPedPREPED: TIntegerField
      FieldName = 'PREPED'
    end
    object CmpPedQTIPED: TIntegerField
      FieldName = 'QTIPED'
    end
    object CmpPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object CmpPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object CmpPedOBSPED: TStringField
      FieldName = 'OBSPED'
      FixedChar = True
      Size = 240
    end
    object CmpPedPERACR: TFloatField
      FieldName = 'PERACR'
    end
    object CmpPedCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object CmpPedCEPENT: TStringField
      FieldName = 'CEPENT'
      FixedChar = True
      Size = 8
    end
    object CmpPedTENENT: TStringField
      FieldName = 'TENENT'
      Size = 10
    end
    object CmpPedENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 70
    end
    object CmpPedNUMENT: TStringField
      FieldName = 'NUMENT'
      Size = 10
    end
    object CmpPedREFENT: TStringField
      FieldName = 'REFENT'
      Size = 40
    end
    object CmpPedBAIENT: TStringField
      FieldName = 'BAIENT'
    end
    object CmpPedCIDENT: TStringField
      FieldName = 'CIDENT'
    end
    object CmpPedUFEENT: TStringField
      FieldName = 'UFEENT'
      FixedChar = True
      Size = 2
    end
    object CmpPedDESTCOMPRA: TStringField
      FieldName = 'DESTCOMPRA'
      FixedChar = True
      Size = 7
    end
  end
end
