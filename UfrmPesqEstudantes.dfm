object frmPesqEstudantes: TfrmPesqEstudantes
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa Estudantes'
  ClientHeight = 531
  ClientWidth = 1115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1115
    Height = 531
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 1111
      Height = 35
      Align = alTop
      Color = clInactiveBorder
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 101
        Height = 16
        Caption = 'N'#176' PRONTU'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLocalizarPront: TEdit
        Left = 123
        Top = 5
        Width = 214
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
        Left = 480
        Top = 1
        Width = 128
        Height = 32
        Caption = 'Ir para o Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnCadastroClick
      end
      object btnExportar: TBitBtn
        Left = 614
        Top = 1
        Width = 130
        Height = 32
        Caption = 'Exportar para o Excel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnExportarClick
      end
      object BitBtn4: TBitBtn
        Left = 750
        Top = 1
        Width = 122
        Height = 32
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object BitBtn1: TBitBtn
        Left = 354
        Top = 1
        Width = 120
        Height = 32
        Caption = 'Pesquisar'
        Default = True
        TabOrder = 4
        OnClick = BitBtn1Click
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 523
      Width = 1111
      Height = 6
      Panels = <>
    end
    object DBGPaciente: TDBGrid
      Left = 2
      Top = 50
      Width = 1111
      Height = 473
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = DSLocEstudantes
      DrawingStyle = gdsGradient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGPacienteDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ESTU_NUMPRONT'
          Title.Caption = 'PRONTU'#193'RIO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTU_NOME'
          Title.Caption = 'NOME'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 377
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTU_IDADE'
          Title.Caption = 'IDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTU_CIDADE'
          Title.Caption = 'CIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTU_ESCOLA'
          Title.Caption = 'ESCOLA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTU_NOVOCASO'
          Title.Caption = 'CASO NOVO?'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DSLocEstudantes: TDataSource
    AutoEdit = False
    DataSet = dmFichaEstudante.cdsLocEstudante
    Left = 904
  end
end
