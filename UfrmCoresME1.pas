unit UfrmCoresME1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME1 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    BitBtn1: TBitBtn;
    RbVerde: TRadioButton;
    RbAzul: TRadioButton;
    RbLilas: TRadioButton;
    RbVermFechado: TRadioButton;
    RbVermCruzado: TRadioButton;
    RbVermAberto: TRadioButton;
    RbPreto: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCoresME1: TfrmCoresME1;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME1.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde1.Visible:=true;
   frmFichadeCadastro.imgEVazio1.Visible:=false;
   frmFichadeCadastro.imgEAzul1.Visible:=false;
   frmFichadeCadastro.imgELilas1.Visible:=false;
   frmFichadeCadastro.imgEVermelho1.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
   frmFichadeCadastro.imgEVermAberto1.Visible:=false;
   frmFichadeCadastro.imgEPreto1.Visible:=false;
   ME1:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgELilas1.Visible:=false;
    frmFichadeCadastro.imgEVermelho1.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgEPreto1.Visible:=false;
    ME1:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgEAzul1.Visible:=false;
    frmFichadeCadastro.imgEVermelho1.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgEPreto1.Visible:=false;
    ME1:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgELilas1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgEAzul1.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgEPreto1.Visible:=false;
    ME1:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgELilas1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgEAzul1.Visible:=false;
    frmFichadeCadastro.imgEVermelho1.Visible:=false;
    frmFichadeCadastro.imgEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgEPreto1.Visible:=false;
    ME1:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgELilas1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgEAzul1.Visible:=false;
    frmFichadeCadastro.imgEVermelho1.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgEPreto1.Visible:=false;
    ME1:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto1.Visible:=true;
    frmFichadeCadastro.imgEVazio1.Visible:=false;
    frmFichadeCadastro.imgELilas1.Visible:=false;
    frmFichadeCadastro.imgEVerde1.Visible:=false;
    frmFichadeCadastro.imgEAzul1.Visible:=false;
    frmFichadeCadastro.imgEVermelho1.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgEVermAberto1.Visible:=false;
    ME1:='PRETO';
  end;
end;

end.
