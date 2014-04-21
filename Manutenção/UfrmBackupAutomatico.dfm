object frmBackupAutomatico: TfrmBackupAutomatico
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Backup Autom'#225'tico'
  ClientHeight = 137
  ClientWidth = 434
  Color = clWhite
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
    Width = 434
    Height = 137
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 64
      Width = 202
      Height = 13
      Caption = 'Hora do Backup autom'#225'tico(ex: 18:00:00)'
    end
    object btnAplicar: TButton
      Left = 288
      Top = 64
      Width = 121
      Height = 54
      Caption = 'Aplicar'
      TabOrder = 0
    end
    object CkbAutomatico: TCheckBox
      Left = 16
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Backup Autom'#225'tico'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 83
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
      TabOrder = 2
      Text = '  :  :  '
    end
  end
  object DsConfigBackup: TDataSource
    DataSet = cdsConfigBackup
    Left = 376
    Top = 8
  end
  object cdsConfigBackup: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 8
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
