unit UfrmCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadUsuario = class(TForm)
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    btnSalvar: TBitBtn;
    btnSair: TBitBtn;
    btnexcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    btnNovo: TBitBtn;
    Image1: TImage;
    DBGrid1: TDBGrid;
    ActUsuario: TActionList;
    Novo: TAction;
    Alterar: TAction;
    Cancelar: TAction;
    Excluir: TAction;
    Salvar: TAction;
    dtsLocUsuarios: TDataSource;
    btnPesquisar: TBitBtn;
    DBEdit1: TDBEdit;
    DsCadUsuario: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    edtPesquisa: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses UdmPrincipal;

procedure Localizado;
begin
  with dmPrincipal.cdsCadUsuario do
  begin
    Close;
    FetchParams;
    Params.ParamByName('USUA_ID').AsInteger:=dmPrincipal.cdsLocUsuarioUSUA_ID.AsInteger;
    Open;
  end;
end;

procedure TfrmCadUsuario.AlterarExecute(Sender: TObject);
begin
  frmCadUsuario.btnAlterarClick(Self);
end;

procedure TfrmCadUsuario.btnAlterarClick(Sender: TObject);
begin
 with dmPrincipal.cdsCadUsuario do
  begin
    edit;
  end;
end;

procedure TfrmCadUsuario.btnCancelarClick(Sender: TObject);
begin
with dmPrincipal.cdsCadUsuario do
  begin
   Cancel;
   CancelUpdates;
  end;
end;

procedure TfrmCadUsuario.btnexcluirClick(Sender: TObject);
begin
  with dmPrincipal.cdsCadUsuario do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmCadUsuario.btnNovoClick(Sender: TObject);
begin
with dmPrincipal.cdsCadUsuario do
begin
  dbedit2.SetFocus;
  append;
end;
end;

procedure TfrmCadUsuario.btnPesquisarClick(Sender: TObject);
begin
  With dmPrincipal.cdsLocUsuario do
    begin
      close;
      FetchParams;
      Params.ParamByName('USUA_NOME').AsString:=edtPesquisa.Text;
      open;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmCadUsuario.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadUsuario.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
      with dmPrincipal.cdsCadUsuario do
        begin
         Post;
         if ApplyUpdates(0)<>0 then
         CancelUpdates;
         MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
         frmCadUsuario.btnPesquisarClick(Self);
        end;
      dmPrincipal.cdsCadUsuario.Cancel;
      dmPrincipal.cdsCadUsuario.CancelUpdates;
    end;
  dmPrincipal.cdsCadUsuario.Refresh;
end;

procedure TfrmCadUsuario.CancelarExecute(Sender: TObject);
begin
  frmCadUsuario.btnCancelarClick(Self);
end;

procedure TfrmCadUsuario.DBGrid1DblClick(Sender: TObject);
begin
  Localizado;
end;

procedure TfrmCadUsuario.ExcluirExecute(Sender: TObject);
begin
  frmCadUsuario.btnExcluirClick(Self);
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  dmPrincipal.cdsCadUsuario.Active:=true;
  dmPrincipal.cdsLocUsuario.Active:=true;
  dmPrincipal.cdsCadUsuario.Open;
end;

procedure TfrmCadUsuario.FormDestroy(Sender: TObject);
begin
  dmPrincipal.cdsCadUsuario.Close;
end;

procedure TfrmCadUsuario.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:='Universidade Federal do Oeste do Pará - UFOPA';
end;

procedure TfrmCadUsuario.NovoExecute(Sender: TObject);
begin
  frmCadUsuario.btnNovoClick(Self);
end;

procedure TfrmCadUsuario.SalvarExecute(Sender: TObject);
begin
  frmCadUsuario.btnSalvarClick(Self);
end;

end.
