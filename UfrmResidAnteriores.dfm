object frmResidAnteriores: TfrmResidAnteriores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'RESID'#202'NCIAS ANTERIORES'
  ClientHeight = 390
  ClientWidth = 889
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 390
    Align = alClient
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object GroupBox16: TGroupBox
      Left = 1
      Top = 1
      Width = 887
      Height = 388
      Align = alClient
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label13: TLabel
        Left = 21
        Top = 3
        Width = 264
        Height = 18
        Caption = '23 - RESID'#202'NCIAS ANTERIORES '
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 7
        Top = 192
        Width = 874
        Height = 185
        DataSource = DsLocResidAnt
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid5DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_DOMI_RESID_ANT'
            Title.Caption = 'C'#243'digo'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMI_RESID_ANTE_COD_PESS'
            Title.Caption = 'C'#243'digo Paciente'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMI_RESID_ANT_BAIRRO'
            Title.Caption = 'Bairro'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMI_RESID_ANT_CIDADE'
            Title.Caption = 'Cidade'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMI_RESID_ANT_ESTADO'
            Title.Caption = 'Estado'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOMI_RESID_ANT_TEMPO'
            Title.Caption = 'Tempo de Residencia'
            Width = 106
            Visible = True
          end>
      end
      object TGroupBox
        Left = 670
        Top = 27
        Width = 187
        Height = 150
        TabOrder = 1
        object Button13: TButton
          Left = 7
          Top = 9
          Width = 75
          Height = 38
          Caption = 'Inserir'
          TabOrder = 0
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 7
          Top = 104
          Width = 75
          Height = 38
          Caption = 'Excluir'
          TabOrder = 1
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 104
          Top = 9
          Width = 75
          Height = 38
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 104
          Top = 56
          Width = 75
          Height = 38
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = Button16Click
        end
        object Button17: TButton
          Left = 104
          Top = 104
          Width = 75
          Height = 38
          Caption = 'Pesquisar'
          TabOrder = 4
          OnClick = Button17Click
        end
        object Button1: TButton
          Left = 7
          Top = 56
          Width = 75
          Height = 38
          Caption = 'Editar'
          TabOrder = 5
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 320
          Top = 15
          Width = 75
          Height = 38
          Caption = 'Sair'
          TabOrder = 6
          OnClick = Button2Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 27
        Width = 661
        Height = 150
        TabOrder = 2
        object Label1: TLabel
          Left = 18
          Top = 8
          Width = 50
          Height = 16
          Caption = 'BAIRRO'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 18
          Top = 53
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 338
          Top = 96
          Width = 145
          Height = 16
          Caption = 'POR QUANTO TEMPO?'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 18
          Top = 96
          Width = 52
          Height = 16
          Caption = 'ESTADO'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 18
          Top = 27
          Width = 535
          Height = 24
          Ctl3D = False
          DataField = 'DOMI_RESID_ANT_BAIRRO'
          DataSource = DsResidAnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 18
          Top = 69
          Width = 535
          Height = 24
          Ctl3D = False
          DataField = 'DOMI_RESID_ANT_CIDADE'
          DataSource = DsResidAnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 338
          Top = 112
          Width = 215
          Height = 24
          Ctl3D = False
          DataField = 'DOMI_RESID_ANT_TEMPO'
          DataSource = DsResidAnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBComboBox1: TDBComboBox
          Left = 18
          Top = 112
          Width = 303
          Height = 24
          DataField = 'DOMI_RESID_ANT_ESTADO'
          DataSource = DsResidAnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Items.Strings = (
            'Acre'
            'Alagoas'
            'Amap'#225
            'Amazonas'
            'Bahia'
            'Cear'#225
            'Distrito Federal'
            'Esp'#237'rito Santo'
            'Goi'#225's'
            'Maranh'#227'o'
            'Mato Grosso'
            'Mato Grosso do Sul'
            'Minas Gerais'
            'Par'#225
            'Para'#237'ba'
            'Paran'#225
            'Pernambuco'
            'Piau'#237
            'Rio de Janeiro'
            'Rio Grande do Norte'
            'Rio Grande do Sul'
            'Rond'#244'nia'
            'Roraima'
            'Santa Catarina'
            'S'#227'o Paulo'
            'Sergipe'
            'Tocantins')
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  object DsResidAnt: TDataSource
    AutoEdit = False
    DataSet = dmFicha.cdsCadResidenciasAnt
    Left = 352
    Top = 8
  end
  object DsLocResidAnt: TDataSource
    AutoEdit = False
    DataSet = dmFicha.cdsLocResidAnt
    Left = 448
    Top = 8
  end
end
