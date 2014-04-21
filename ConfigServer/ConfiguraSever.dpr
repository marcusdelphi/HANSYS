program ConfiguraSever;

uses
  Vcl.Forms,
  UFrmConfigServer in 'UFrmConfigServer.pas' {frmConfigServer},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Golden Graphite');
  Application.CreateForm(TfrmConfigServer, frmConfigServer);
  Application.Run;
end.
