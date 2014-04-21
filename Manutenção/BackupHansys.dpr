program BackupHansys;

uses
  Vcl.Forms,
  UfmPrin in 'UfmPrin.pas' {frmPrin},
  UfrmBackupAutomatico in 'UfrmBackupAutomatico.pas' {frmBackupAutomatico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrin, frmPrin);
  Application.Run;
end.
