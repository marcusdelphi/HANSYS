unit UfrmFotosRecidiva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtDlgs, Data.DB;

type
  TfrmFotosRecidiva = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBImage1: TDBImage;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    btnPesquisar: TBitBtn;
    btnPesqFoto: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit1: TDBEdit;
    DsRecidFoto: TDataSource;
    DsLocFotoRecid: TDataSource;
    procedure btnPesqFotoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFotosRecidiva: TfrmFotosRecidiva;
  CodRecLesao: Integer;

implementation

{$R *.dfm}

uses UdmFicha, UfrmFichadeCadastro;

procedure Localizado;
begin
  with dmFicha.cdsFotoRecid do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_RECIDIVA_FOTO').AsInteger:=dmFicha.cdsLOCFotoRecID_RECIDIVA_FOTO.AsInteger;
    Open;
  end;
end;

procedure TfrmFotosRecidiva.btnPesqFotoClick(Sender: TObject);
begin
OpenPictureDialog1.Execute;
DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TfrmFotosRecidiva.btnPesquisarClick(Sender: TObject);
begin
With dmFicha.cdsLocFotoRec do
    begin
      close;
      FetchParams;
      Params.ParamByName('ID_TIPO_LESAO').AsInteger:=CodRecLesao;
      open;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmFotosRecidiva.Button10Click(Sender: TObject);
begin
with dmFicha.cdsFotoRecid do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFotosRecidiva.Button11Click(Sender: TObject);
begin
with dmFicha.cdsFotoRecid do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFotosRecidiva.Button12Click(Sender: TObject);
begin
   if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsFotoRecid do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
      end;
    dmFicha.cdsFotoRecid.Cancel;
    dmFicha.cdsFotoRecid.CancelUpdates;
  end;
  btnPesqFoto.Enabled:=false;
end;

procedure TfrmFotosRecidiva.Button9Click(Sender: TObject);
begin
  btnPesqFoto.Enabled:=true;
  dmFicha.cdsFotoRecid.Refresh;
  with dmFicha.cdsFotoRecid do
    begin
      dbedit1.SetFocus;
      append;
      dmFicha.cdsFotoRecidID_TIPO_LESAO.Value:=CodRecLesao;
    end;
end;

procedure TfrmFotosRecidiva.DBGrid1DblClick(Sender: TObject);
begin
  Localizado;
end;

procedure TfrmFotosRecidiva.FormCreate(Sender: TObject);
begin
dmFicha.cdsFotoRecid.Open;
dmFicha.SQLQueryRecidiva.Refresh;
CodRecLesao:=frmFichadeCadastro.getCodRecidiva;
end;

procedure TfrmFotosRecidiva.FormDestroy(Sender: TObject);
begin
dmFicha.cdsFotoRecid.Close;
end;

procedure TfrmFotosRecidiva.FormShow(Sender: TObject);
begin
  frmFotosRecidiva.btnPesquisar.OnClick(Self);
end;

end.
