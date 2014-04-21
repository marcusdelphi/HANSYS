unit UfrmCoresPE1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE1 = class(TForm)
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
  frmCoresPE1: TfrmCoresPE1;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE1.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde1.Visible:=true;
   frmFichadeCadastro.imgPEVazio1.Visible:=false;
   frmFichadeCadastro.imgPEAzul1.Visible:=false;
   frmFichadeCadastro.imgPELilas1.Visible:=false;
   frmFichadeCadastro.imgPEVermelho1.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
   frmFichadeCadastro.imgPEPreto1.Visible:=false;
   PE1:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPELilas1.Visible:=false;
    frmFichadeCadastro.imgPEVermelho1.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPEPreto1.Visible:=false;
    PE1:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPEAzul1.Visible:=false;
    frmFichadeCadastro.imgPEVermelho1.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPEPreto1.Visible:=false;
    PE1:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPELilas1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPEAzul1.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPEPreto1.Visible:=false;
    PE1:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPELilas1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPEAzul1.Visible:=false;
    frmFichadeCadastro.imgPEVermelho1.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPEPreto1.Visible:=false;
    PE1:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPELilas1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPEAzul1.Visible:=false;
    frmFichadeCadastro.imgPEVermelho1.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPEPreto1.Visible:=false;
    PE1:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto1.Visible:=true;
    frmFichadeCadastro.imgPEVazio1.Visible:=false;
    frmFichadeCadastro.imgPELilas1.Visible:=false;
    frmFichadeCadastro.imgPEVerde1.Visible:=false;
    frmFichadeCadastro.imgPEAzul1.Visible:=false;
    frmFichadeCadastro.imgPEVermelho1.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto1.Visible:=false;
    PE1:='PRETO';
  end;
end;

end.
