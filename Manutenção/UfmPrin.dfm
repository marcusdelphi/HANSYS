object frmPrin: TfrmPrin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'BACKUP HANSYS                                                   ' +
    '                              '
  ClientHeight = 654
  ClientWidth = 543
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object StatusBar1: TStatusBar
    Left = 0
    Top = 635
    Width = 543
    Height = 19
    Panels = <
      item
        Width = 400
      end>
    ExplicitTop = 625
    ExplicitWidth = 533
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'BACKUP HANSYS'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 533
    object lbHora: TLabel
      Left = 441
      Top = 12
      Width = 40
      Height = 23
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 543
    Height = 594
    ActivePage = tbsBackup
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 533
    ExplicitHeight = 584
    object tbsBackup: TTabSheet
      Caption = 'Backup'
      DoubleBuffered = False
      ParentDoubleBuffered = False
      ExplicitWidth = 525
      ExplicitHeight = 548
      object GroupBox2: TGroupBox
        Left = 4
        Top = 224
        Width = 514
        Height = 108
        Caption = 'Options'
        TabOrder = 0
        object cbxIgnoreChecksums: TCheckBox
          Left = 9
          Top = 21
          Width = 168
          Height = 40
          Caption = 'IgnoreChecksums'
          TabOrder = 0
        end
        object cbxIgnoreLimbo: TCheckBox
          Left = 9
          Top = 51
          Width = 160
          Height = 26
          Caption = 'IgnoreLimbo'
          TabOrder = 1
        end
        object cbxMetadataOnly: TCheckBox
          Left = 9
          Top = 75
          Width = 144
          Height = 24
          Caption = 'MetadataOnly'
          TabOrder = 2
        end
        object cbxConvertExtTables: TCheckBox
          Left = 199
          Top = 78
          Width = 167
          Height = 17
          Caption = 'ConvertExtTables'
          TabOrder = 3
        end
        object cbxNoGarbageCollection: TCheckBox
          Left = 199
          Top = 32
          Width = 164
          Height = 17
          Caption = 'NoGarbageCollection'
          TabOrder = 4
        end
        object cbxOldMetadataDesc: TCheckBox
          Left = 199
          Top = 55
          Width = 178
          Height = 17
          Caption = 'OldMetadataDesc'
          TabOrder = 5
        end
        object cbxNonTransportable: TCheckBox
          Left = 369
          Top = 32
          Width = 142
          Height = 17
          Caption = 'NonTransportable'
          TabOrder = 6
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 352
        Width = 514
        Height = 194
        Caption = 'Verbose'
        TabOrder = 1
        object memBackup: TMemo
          Left = 8
          Top = 27
          Width = 498
          Height = 161
          Lines.Strings = (
            '')
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 2
        Width = 514
        Height = 214
        Caption = 'Files'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 24
          Top = 23
          Width = 285
          Height = 21
          Caption = 'Database Name (C:\HANSYS\BD\BASE.FB)'
        end
        object Label2: TLabel
          Left = 24
          Top = 78
          Width = 342
          Height = 21
          Caption = 'Backup File (Ex: C:\HANSYS\@BACKUP\BACK.GDK)'
        end
        object Label6: TLabel
          Left = 24
          Top = 105
          Width = 21
          Height = 21
          Caption = '1 -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 136
          Width = 26
          Height = 21
          Caption = '2 - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 24
          Top = 169
          Width = 21
          Height = 21
          Caption = '3 -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtBackupDatabaseName: TEdit
          Left = 24
          Top = 47
          Width = 468
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          Text = 'C:\HANSYS\BD\BASE.FDB'
        end
        object edtBackupFile: TEdit
          Left = 48
          Top = 101
          Width = 444
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          Text = 'C:\HANSYS\@Backup\BACK.fbk'
        end
        object edtBackupFile2: TEdit
          Left = 48
          Top = 136
          Width = 444
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 2
          Text = 'C:\Users\Marcus\SkyDrive\@BackupHANSYS\BACK.fbk'
        end
        object edtBackupFile3: TEdit
          Left = 48
          Top = 171
          Width = 444
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 3
          Text = 'C:\Users\Marcus\Dropbox\@BackupHansys\BACK.fbk'
        end
      end
    end
    object tbsRestore: TTabSheet
      Caption = 'Restore'
      ImageIndex = 1
      ExplicitWidth = 525
      ExplicitHeight = 548
      object GroupBox4: TGroupBox
        Left = 4
        Top = 160
        Width = 514
        Height = 108
        Caption = 'Restore - Options'
        TabOrder = 0
        object cbxReplace: TCheckBox
          Left = 9
          Top = 21
          Width = 168
          Height = 40
          Caption = 'Replace'
          TabOrder = 0
        end
        object cbxOneRelationAtATime: TCheckBox
          Left = 9
          Top = 51
          Width = 160
          Height = 26
          Caption = 'OneRelationAtATime'
          TabOrder = 1
        end
        object cbxValidationCheck: TCheckBox
          Left = 9
          Top = 75
          Width = 144
          Height = 24
          Caption = 'ValidationCheck'
          TabOrder = 2
        end
        object cbxNoShadow: TCheckBox
          Left = 199
          Top = 78
          Width = 167
          Height = 17
          Caption = 'NoShadow'
          TabOrder = 3
        end
        object cbxCreateNewDB: TCheckBox
          Left = 199
          Top = 32
          Width = 164
          Height = 17
          Caption = 'Create New DB'
          TabOrder = 4
        end
        object cbxDeactivateIndexes: TCheckBox
          Left = 199
          Top = 55
          Width = 178
          Height = 17
          Caption = 'DeactivateIndexes'
          TabOrder = 5
        end
        object cbxUseAllSpace: TCheckBox
          Left = 369
          Top = 32
          Width = 142
          Height = 17
          Caption = 'UseAllSpace'
          TabOrder = 6
        end
        object cbxNoValidityCheck: TCheckBox
          Left = 369
          Top = 55
          Width = 97
          Height = 17
          Caption = 'NoValidityCheck'
          TabOrder = 7
        end
      end
      object GroupBox5: TGroupBox
        Left = 4
        Top = 4
        Width = 514
        Height = 150
        Caption = 'Files'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 24
          Top = 79
          Width = 285
          Height = 21
          Caption = 'Database Name (C:\HANSYS\BD\BASE.FB)'
        end
        object Label4: TLabel
          Left = 24
          Top = 23
          Width = 342
          Height = 21
          Caption = 'Backup File (Ex: C:\HANSYS\@BACKUP\BACK.GDK)'
        end
        object edtRestoreBackupFile: TEdit
          Left = 24
          Top = 46
          Width = 385
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          Text = 'Informe o path do arquivo de backup'
        end
        object edtRestoreDatabaseName: TEdit
          Left = 24
          Top = 106
          Width = 385
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
          Text = 'Informe o path de destino do banco de dados'
        end
      end
      object GroupBox6: TGroupBox
        Left = 4
        Top = 278
        Width = 514
        Height = 266
        Caption = 'Verbose'
        TabOrder = 2
        object memRestore: TMemo
          Left = 9
          Top = 27
          Width = 498
          Height = 229
          Lines.Strings = (
            '')
          TabOrder = 0
        end
      end
    end
    object tbsConfiguracoes: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 19
        Top = 352
        Width = 277
        Height = 21
        Caption = 'Hora do Backup autom'#225'tico(ex: 18:00:00)'
      end
      object GroupBox7: TGroupBox
        Left = 3
        Top = 3
        Width = 519
        Height = 286
        Caption = 'Configura'#231#227'o'
        TabOrder = 0
        object GroupBox10: TGroupBox
          Left = 16
          Top = 167
          Width = 305
          Height = 105
          Caption = 'Server'
          TabOrder = 0
          object edtServerName: TLabeledEdit
            Left = 16
            Top = 52
            Width = 257
            Height = 29
            EditLabel.Width = 182
            EditLabel.Height = 21
            EditLabel.Caption = 'Server Name (Ex: 127.0.0.1)'
            TabOrder = 0
            Text = 'Informe aqui o Nome do Servidor'
          end
        end
        object GroupBox9: TGroupBox
          Left = 327
          Top = 19
          Width = 185
          Height = 142
          Caption = 'Page Size -  Restore'
          TabOrder = 1
          object Label5: TLabel
            Left = 10
            Top = 42
            Width = 64
            Height = 21
            Caption = 'Page Size'
          end
          object spePageSize: TSpinEdit
            Left = 10
            Top = 64
            Width = 169
            Height = 31
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 8192
          end
        end
        object GroupBox8: TGroupBox
          Left = 16
          Top = 19
          Width = 305
          Height = 142
          Caption = 'Security'
          TabOrder = 2
          object edtUsuario: TLabeledEdit
            Left = 16
            Top = 48
            Width = 257
            Height = 29
            EditLabel.Width = 73
            EditLabel.Height = 21
            EditLabel.Caption = 'User Name'
            TabOrder = 0
            Text = 'SYSDBA'
          end
          object edtSenha: TLabeledEdit
            Left = 16
            Top = 102
            Width = 257
            Height = 29
            EditLabel.Width = 63
            EditLabel.Height = 21
            EditLabel.Caption = 'Password'
            PasswordChar = '*'
            TabOrder = 1
            Text = 'masterkey'
          end
        end
        object rgpProtocol: TRadioGroup
          Left = 327
          Top = 167
          Width = 185
          Height = 105
          Caption = 'Protocol'
          ItemIndex = 0
          Items.Strings = (
            'TCP/IP'
            'Local')
          TabOrder = 3
        end
      end
      object btnBackup: TButton
        Left = 150
        Top = 504
        Width = 104
        Height = 41
        Caption = 'Backup'
        TabOrder = 1
        OnClick = btnBackupClick
      end
      object btnRestore: TButton
        Left = 272
        Top = 504
        Width = 104
        Height = 41
        Caption = 'Restore'
        TabOrder = 2
        OnClick = btnRestoreClick
      end
      object MaskEdit1: TMaskEdit
        Left = 19
        Top = 379
        Width = 131
        Height = 33
        EditMask = '!90:00:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 3
        Text = '  :  :  '
      end
      object CkbAutomatico: TCheckBox
        Left = 19
        Top = 304
        Width = 198
        Height = 17
        Caption = 'Backup Autom'#225'tico'
        TabOrder = 4
      end
      object btnAplicar: TButton
        Left = 194
        Top = 379
        Width = 102
        Height = 33
        Caption = 'Aplicar'
        TabOrder = 5
        OnClick = btnAplicarClick
      end
    end
  end
  object IBBackupService1: TIBBackupService
    TraceFlags = []
    ServerType = 'IBServer'
    BlockingFactor = 0
    Options = []
    Left = 376
    Top = 32
  end
  object IBRestoreService1: TIBRestoreService
    TraceFlags = []
    ServerType = 'IBServer'
    PageBuffers = 0
    Left = 472
    Top = 32
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 440
    Top = 88
  end
  object cdsConfigBackup: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 376
    Data = {
      460000009619E0BD010000001800000002000000000003000000460004686F72
      6101004900000001000557494454480200020014000A6175746F6D617469636F
      02000300000000000000}
    object cdsConfigBackuphora: TStringField
      FieldName = 'hora'
    end
    object cdsConfigBackupautomatico: TBooleanField
      FieldName = 'automatico'
    end
  end
end
