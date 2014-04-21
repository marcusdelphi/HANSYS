unit UfrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.GIFImg,Vcl.Bind.DBEngExt,
  Data.Bind.Components;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    lbProgress: TLabel;
    Image6: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtSenha: TEdit;
    btnEntrar: TButton;
    Shape1: TShape;
    edtUsuario: TEdit;
    Shape2: TShape;
    procedure edtUsuarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Tentativas:integer;
    Acesso:Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  log: String;
implementation

{$R *.dfm}

uses UfrmPrincipal, UdmPrincipal, Data.DB;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  if edtSenha.Text=dmPrincipal.cdsLoginUSUA_SENHA.Value then
    begin
      log:=edtUsuario.Text;// Quarda o Usuario para usar na tela de boas vindas e no Log do sistema
      Acesso:=true;
      close;
    end
      else
      begin
      inc(Tentativas);
      if Tentativas<=3 then
      begin
      ShowMessage('Senha incorreta!');
      edtSenha.SetFocus;
      end
    else
     begin
       if Tentativas=4 then
       ShowMessage('Você excedeu o número de Tentativas!');
       Application.Terminate;
       acesso:=false;
   end;
 end;
end;

procedure TfrmLogin.edtUsuarioExit(Sender: TObject);
begin
  if not(dmPrincipal.cdsLogin.Locate('USUA_NOME',edtUsuario.Text,[locaseinsensitive]))then
begin
  ShowMessage('Usuario inexistente');
  edtUSuario.SetFocus;
end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Acesso=False then
   begin
     Application.Terminate;
   end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  if not assigned(dmPrincipal) then
   dmPrincipal:=TdmPrincipal.Create(Self);
   dmPrincipal.cdsLogin.Open;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_ESCAPE) then
    begin
     Application.Terminate;
   end;
end;

end.
