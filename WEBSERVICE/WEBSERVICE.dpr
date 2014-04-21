program WEBSERVICE;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FrmPrin in 'FONTES\FrmPrin.pas' {frmPrinServer},
  ServerMethodsPrin in 'ServerMethodsPrin.pas' {ServerMethods1: TDSServerModule},
  WebModulePrincipal in 'WebModulePrincipal.pas' {WebModule1: TWebModule},
  Vcl.Themes,
  Vcl.Styles,
  UTratamento in 'UTratamento.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  TStyleManager.TrySetStyle('Golden Graphite');
  Application.CreateForm(TfrmPrinServer, frmPrinServer);
  Application.Run;
end.
