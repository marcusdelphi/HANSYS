unit UfrmFotosdiagnostico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.Buttons;

type
  TfrmFotosdiagnostico = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    btnPesqFoto: TButton;
    Label2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit1: TDBEdit;
    DsFotoDiag: TDataSource;
    DBImage1: TDBImage;
    DsLocFotoDiag: TDataSource;
    btnPesquisar: TBitBtn;
    procedure btnPesqFotoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFotosdiagnostico: TfrmFotosdiagnostico;
  CodDiagLesao:integer;
implementation

{$R *.dfm}

uses UdmFicha, UfrmFichadeCadastro;



procedure Localizado;
begin
  with dmFicha.cdsFotoDiag do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_FOTO').AsInteger:=dmFicha.cdsLOCFotoDiagID_FOTO.AsInteger;
    Open;
  end;
end;

procedure TfrmFotosdiagnostico.Button10Click(Sender: TObject);
begin
with dmFicha.cdsFotoDiag do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFotosdiagnostico.Button11Click(Sender: TObject);
begin
with dmFicha.cdsFotoDiag do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFotosdiagnostico.Button12Click(Sender: TObject);
begin
    if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsFotoDiag do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
      end;
    dmFicha.cdsFotoDiag.Cancel;
    dmFicha.cdsFotoDiag.CancelUpdates;
  end;
  btnPesqFoto.Enabled:=false;
end;

procedure TfrmFotosdiagnostico.Button9Click(Sender: TObject);
begin
  btnPesqFoto.Enabled:=true;
  dmFicha.cdsFotoDiag.Refresh;
  with dmFicha.cdsFotoDiag do
    begin
      dbedit1.SetFocus;
      append;
      dmFicha.cdsFotoDiagID_TIPO_LESAO.Value:=CodDiagLesao;
    end;
end;

procedure TfrmFotosdiagnostico.DBGrid1DblClick(Sender: TObject);
begin
  Localizado;
end;

procedure TfrmFotosdiagnostico.btnPesquisarClick(Sender: TObject);
begin
 With dmFicha.cdsLocFotoDiag do
    begin
      close;
      FetchParams;
      Params.ParamByName('ID_TIPO_LESAO').AsInteger:=CodDiagLesao;
      open;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmFotosdiagnostico.btnPesqFotoClick(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TfrmFotosdiagnostico.FormCreate(Sender: TObject);
begin
  dmFicha.cdsFotoDiag.Open;
  dmFicha.SQLQueryDiagnostico.Refresh;
  CodDiagLesao:=frmFichadeCadastro.getCodDiag;
end;

procedure TfrmFotosdiagnostico.FormDestroy(Sender: TObject);
begin
  dmFicha.cdsFotoDiag.Close;
end;

procedure TfrmFotosdiagnostico.FormShow(Sender: TObject);
begin
frmFotosdiagnostico.btnPesquisar.OnClick(Self);
end;

end.
