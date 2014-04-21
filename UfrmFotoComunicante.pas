unit UfrmFotoComunicante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtDlgs, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFotoComunicante = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBImage1: TDBImage;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    btnPesquisar: TBitBtn;
    btnPesqFoto: TButton;
    Label2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DsLocFotoCom: TDataSource;
    DBEdit1: TDBEdit;
    DsComFoto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure btnPesqFotoClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFotoComunicante: TfrmFotoComunicante;
  CodComTipoLesao:Integer;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro, UdmFicha;

procedure Localizado;
begin
  with dmFicha.cdsFotoCom do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_COM_FOTO').AsInteger:=dmFicha.cdsLOCFotoComID_COM_FOTO.AsInteger;
    Open;
  end;
end;

procedure TfrmFotoComunicante.btnPesqFotoClick(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TfrmFotoComunicante.btnPesquisarClick(Sender: TObject);
begin
With dmFicha.cdsLocFotoCom do
    begin
      close;
      FetchParams;
      Params.ParamByName('ID_TIPO_LESAO').AsInteger:=CodComTipoLesao;
      open;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmFotoComunicante.Button10Click(Sender: TObject);
begin
with dmFicha.cdsFotoCom do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFotoComunicante.Button11Click(Sender: TObject);
begin
with dmFicha.cdsFotoCom do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFotoComunicante.Button12Click(Sender: TObject);
begin
  if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsFotoCom do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
      end;
    dmFicha.cdsFotoCom.Cancel;
    dmFicha.cdsFotoCom.CancelUpdates;
  end;
  btnPesqFoto.Enabled:=false;
end;

procedure TfrmFotoComunicante.Button9Click(Sender: TObject);
begin
  btnPesqFoto.Enabled:=true;
  dmFicha.cdsFotoCom.Refresh;
  with dmFicha.cdsFotoCom do
    begin
      dbedit1.SetFocus;
      append;
      dmFicha.cdsFotoComID_TIPO_LESAO.Value:=CodComTipoLesao;
    end;
end;

procedure TfrmFotoComunicante.DBGrid1DblClick(Sender: TObject);
begin
  Localizado;
end;

procedure TfrmFotoComunicante.FormCreate(Sender: TObject);
begin
  dmFicha.cdsFotoCom.Open;
  dmFicha.SQLQueryComTipoLesao.Refresh;
  CodComTipoLesao:=frmFichadeCadastro.getCodComTipoLesao;
end;

procedure TfrmFotoComunicante.FormDestroy(Sender: TObject);
begin
 dmFicha.cdsFotoCom.Close;
end;

procedure TfrmFotoComunicante.FormShow(Sender: TObject);
begin
  frmFotoComunicante.btnPesquisar.OnClick(Self);
end;

end.
