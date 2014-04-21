unit UfrmBackupAutomatico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Mask;

type
  TfrmBackupAutomatico = class(TForm)
    DsConfigBackup: TDataSource;
    cdsConfigBackup: TClientDataSet;
    cdsConfigBackuphora: TStringField;
    cdsConfigBackupautomatico: TBooleanField;
    GroupBox1: TGroupBox;
    btnAplicar: TButton;
    CkbAutomatico: TCheckBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackupAutomatico: TfrmBackupAutomatico;

implementation

{$R *.dfm}

end.
