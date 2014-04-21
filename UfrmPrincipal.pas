unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus, WinSock,
  Vcl.StdCtrls, IdBaseComponent, IdComponent, IdIPWatch, Vcl.XPMan;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    imgListPrincipal: TImageList;
    Image1: TImage;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    Image2: TImage;
    menuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Relatorios1: TMenuItem;
    Utilitarios1: TMenuItem;
    Sobre1: TMenuItem;
    Image3: TImage;
    Sobre2: TMenuItem;
    FichadeCadastro1: TMenuItem;
    MenudeRelatorios1: TMenuItem;
    Calendario1: TMenuItem;
    InstruesparaPreenchimento1: TMenuItem;
    VerificarUltimoRegistro1: TMenuItem;
    Consultas1: TMenuItem;
    ConsultaPacientes1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    FichaSimplificadadeEstudantes1: TMenuItem;
    N1: TMenuItem;
    Usuarios1: TMenuItem;
    Sair1: TMenuItem;
    IdIPWatch1: TIdIPWatch;
    DadosdoSINAN1: TMenuItem;
    Estudantes1: TMenuItem;
    EstudantesporCidade1: TMenuItem;
    EstudantesporEscola1: TMenuItem;
    procedure ToolButton6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure MenudeRelatorios1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure InstruesparaPreenchimento1Click(Sender: TObject);
    procedure VerificarUltimoRegistro1Click(Sender: TObject);
    procedure ConsultaPacientes1Click(Sender: TObject);
    procedure FichaSimplificadadeEstudantes1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DadosdoSINAN1Click(Sender: TObject);
    procedure EstudantesporCidade1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro, UdmPrincipal, UfrmMenudeRelatorios, UfrmCalendario,
  USobre, UfrmInstrucoes, UfrmConfig, UfrmPesqDadosPaciente,
  UfrmFichaEstudantes, UfrmCadUsuario, UfrmLogin, UfrmPesquisaSINAN,
  UfrmRelatListEstuCidade;

procedure TfrmPrincipal.Calendario1Click(Sender: TObject);
begin
  try
    frmCalendario:=TfrmCalendario.Create(Self);
    frmCalendario.ShowModal;
  finally
    frmCalendario.Free;
    frmCalendario:=nil;
  end;
end;

procedure TfrmPrincipal.ConsultaPacientes1Click(Sender: TObject);
begin
  try
    frmPesqDadosPaciente:=TfrmPesqDadosPaciente.Create(Self);
    frmPesqDadosPaciente.ShowModal;
  finally
    frmPesqDadosPaciente.Free;
    frmPesqDadosPaciente:=nil;
  end;
end;

procedure TfrmPrincipal.DadosdoSINAN1Click(Sender: TObject);
begin
  try
    frmPesquisaSINAN:=TfrmPesquisaSINAN.Create(Self);
    frmPesquisaSINAN.ShowModal;
  finally
    frmPesquisaSINAN.Free;
    frmPesquisaSINAN:=nil;
  end;
end;

procedure TfrmPrincipal.EstudantesporCidade1Click(Sender: TObject);
begin
  try
    frmRelatListEstuCidade:=TfrmRelatListEstuCidade.Create(Self);
    frmRelatListEstuCidade.ShowModal;
  finally
    frmRelatListEstuCidade.Free;
    frmRelatListEstuCidade:=nil;
  end;
end;

procedure TfrmPrincipal.FichadeCadastro1Click(Sender: TObject);
begin
  try
    frmFichadeCadastro:=TfrmFichadeCadastro.Create(Self);
    frmFichadeCadastro.ShowModal;
  finally
    frmFichadeCadastro:=nil;
  end;
end;

procedure TfrmPrincipal.FichaSimplificadadeEstudantes1Click(Sender: TObject);
begin
  try
    frmFichaEstudantes:=TfrmFichaEstudantes.Create(Self);
    frmFichaEstudantes.ShowModal;
  finally
    frmFichaEstudantes.Free;
    frmFichaEstudantes:=nil;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if MessageDlg('Deseja realmente sair do Cadastro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
    begin
    //libera a memoria  e fecha ou Não a Tela
    Action := caFree; //ação do objeto TCloseAction para fechar a tela
    end
    else
    Action := caNone ; //ação do objeto TCloseAction para não fechar a tela
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not assigned(dmPrincipal) then
  dmPrincipal:=TdmPrincipal.Create(Self);
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  dmPrincipal.Free;
  dmPrincipal:=nil;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  try
    frmLogin:=TfrmLogin.Create(Self);
    frmLogin.ShowModal;
  finally
    frmLogin.Free;
    frmLogin:=nil;
  end;
  Statusbar1.Panels[0].Text:='UFOPA(Univesidade Federal do Oeste do Pará)';
  Statusbar1.Panels[1].Text:='LSD (Laboratório de Suporte a Decisão)';
  Statusbar1.Panels[2].Text:='Usuário: '+log;
  Statusbar1.Panels[3].Text:='IP : '+idipwatch1.LocalIP;
end;

procedure TfrmPrincipal.InstruesparaPreenchimento1Click(Sender: TObject);
begin
  try
    frmInstrucoes:=TfrmInstrucoes.Create(Self);
    frmInstrucoes.ShowModal;
  finally
    frmInstrucoes.Free;
    frmInstrucoes:=nil;
  end;
end;

procedure TfrmPrincipal.MenudeRelatorios1Click(Sender: TObject);
begin
  try
    frmMenudeRelatorios:=TfrmMenudeRelatorios.Create(Self);
    frmMenudeRelatorios.ShowModal;
  finally
    frmMenudeRelatorios.Free;
    frmMenudeRelatorios:=nil;
  end;
end;

procedure TfrmPrincipal.Sobre2Click(Sender: TObject);
begin
  Try
    frmSobre:=TfrmSobre.Create(Self);
    frmSobre.ShowModal;
  Finally
    frmSobre.Free;
    frmSobre:=nil;
  End;
end;

procedure TfrmPrincipal.ToolButton10Click(Sender: TObject);
begin
  try
    frmCalendario:=TfrmCalendario.Create(Self);
    frmCalendario.ShowModal;
  finally
    frmCalendario.Free;
    frmCalendario:=nil;
  end;
end;

procedure TfrmPrincipal.ToolButton1Click(Sender: TObject);
begin
  try
    frmFichaEstudantes:=TfrmFichaEstudantes.Create(Self);
    frmFichaEstudantes.ShowModal;
  finally
    frmFichaEstudantes.Free;
    frmFichaEstudantes:=nil;
  end;
end;

procedure TfrmPrincipal.ToolButton6Click(Sender: TObject);
begin
  try
    frmFichadeCadastro:=TfrmFichadeCadastro.Create(Self);
    frmFichadeCadastro.ShowModal;
  finally
    frmFichadeCadastro:=nil;
  end;
end;

procedure TfrmPrincipal.Usuarios1Click(Sender: TObject);
begin
  try
    frmCadUsuario:=TfrmCadUsuario.Create(Self);
    frmCadUsuario.ShowModal;
  finally
    frmCadUsuario.Free;
    frmCadUsuario:=nil;
  end;
end;

procedure TfrmPrincipal.VerificarUltimoRegistro1Click(Sender: TObject);
begin
  try
    frmConfig:=TfrmConfig.Create(Self);
    frmConfig.ShowModal;
  finally
    frmConfig.Free;
    frmConfig:=nil;
  end;
end;

end.
