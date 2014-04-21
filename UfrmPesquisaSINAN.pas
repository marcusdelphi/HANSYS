unit UfrmPesquisaSINAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesquisaSINAN = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    edtLocalizar: TEdit;
    btnCadastro: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    DBGPaciente: TDBGrid;
    DsLocalizarSINAN: TDataSource;
    Panel2: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaSINAN: TfrmPesquisaSINAN;

implementation

{$R *.dfm}

uses UdmSINAN;

procedure TfrmPesquisaSINAN.BitBtn1Click(Sender: TObject);
begin
 With dmSINAN.cdsLocSINAN do
  begin
    close;
    FetchParams;
    Params.ParamByName('SINAN_NOM_PACIENT').AsString:=edtLocalizar.Text;
    open;
  end;
end;

procedure TfrmPesquisaSINAN.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisaSINAN.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmSINAN.cdsLocSINAN.close;
end;

procedure TfrmPesquisaSINAN.FormCreate(Sender: TObject);
begin
 if not assigned(dmSINAN) then
   dmSINAN:=TdmSINAN.Create(Self);
   dmSINAN.cdsLocSINAN.Open;
end;

procedure TfrmPesquisaSINAN.FormDestroy(Sender: TObject);
begin
  dmSINAN.Free;
  dmSINAN:=nil;
end;

end.
