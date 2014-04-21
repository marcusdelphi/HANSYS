object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#245'es'
  ClientHeight = 123
  ClientWidth = 394
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 377
    Height = 73
    Caption = 'Verifica C'#243'digo do Ultimo Paciente Cadastrado'
    Color = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 32
    Width = 209
    Height = 33
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = Button1Click
  end
end
