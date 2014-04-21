object frmPesquisaSINAN: TfrmPesquisaSINAN
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa SINAN'
  ClientHeight = 601
  ClientWidth = 1354
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1354
    Height = 601
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -10
    ExplicitTop = -10
    ExplicitWidth = 1364
    ExplicitHeight = 611
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 1350
      Height = 35
      Align = alTop
      Color = clInactiveBorder
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1360
      object Label2: TLabel
        Left = 15
        Top = 10
        Width = 121
        Height = 16
        Caption = 'NOME DO PACIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLocalizar: TEdit
        Left = 142
        Top = 7
        Width = 413
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object btnCadastro: TBitBtn
        Left = 687
        Top = 0
        Width = 180
        Height = 32
        Caption = 'Exportar para Novo Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 873
        Top = 0
        Width = 122
        Height = 32
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn1: TBitBtn
        Left = 561
        Top = 0
        Width = 120
        Height = 32
        Caption = 'Pesquisar'
        Default = True
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 593
      Width = 1350
      Height = 6
      Panels = <>
      ExplicitTop = 603
      ExplicitWidth = 1360
    end
    object DBGPaciente: TDBGrid
      Left = 2
      Top = 82
      Width = 1350
      Height = 511
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = DsLocalizarSINAN
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SINAN_ID'
          Title.Caption = 'Cod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_NOM_PACIENT'
          Title.Caption = 'Paciente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_DT_NASC'
          Title.Caption = 'Data de Nascimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_DT_DIAG'
          Title.Caption = 'Data do Diagn'#243'stico'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_SEXO'
          Title.Caption = 'Sexo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_CORPELE'
          Title.Caption = 'Cor da Pele'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_MAE'
          Title.Caption = 'Nome da M'#227'e'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_BAIRRO'
          Title.Caption = 'Bairro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 334
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 371
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_NUMERO'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_REFEREN'
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_TELEFON'
          Title.Caption = 'Telefone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_NUM_LESOES'
          Title.Caption = 'N'#250'mero de Les'#245'es'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_FORMCLIN'
          Title.Caption = 'Forma Clinica'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_CLASSOPERA'
          Title.Caption = 'Classifica'#231#227'o Operacional'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_BACILOSCOP'
          Title.Caption = 'Baciloscopia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_ESQUEMA_TRAT'
          Title.Caption = 'Esquema de tratamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_NERVOSAFET'
          Title.Caption = 'Nervos Afetados'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINAN_CEP'
          Title.Caption = 'CEP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 50
      Width = 1350
      Height = 32
      Align = alTop
      Caption = 'PESQUISA DE PACIENTES DO SINAN'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object DsLocalizarSINAN: TDataSource
    AutoEdit = False
    DataSet = dmSINAN.cdsLocSINAN
    Left = 1280
    Top = 8
  end
end
