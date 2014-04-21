unit UfrmCoresPD1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD1 = class(TForm)
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
  frmCoresPD1: TfrmCoresPD1;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD1.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde1.Visible:=true;
   frmFichadeCadastro.imgPDVazio1.Visible:=false;
   frmFichadeCadastro.imgPDAzul1.Visible:=false;
   frmFichadeCadastro.imgPDLilas1.Visible:=false;
   frmFichadeCadastro.imgPDVermelho1.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
   frmFichadeCadastro.imgPDPreto1.Visible:=false;
   PD1:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDLilas1.Visible:=false;
    frmFichadeCadastro.imgPDVermelho1.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPDPreto1.Visible:=false;
    PD1:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDAzul1.Visible:=false;
    frmFichadeCadastro.imgPDVermelho1.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPDPreto1.Visible:=false;
    PD1:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDLilas1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDAzul1.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPDPreto1.Visible:=false;
    PD1:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDLilas1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDAzul1.Visible:=false;
    frmFichadeCadastro.imgPDVermelho1.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgPDPreto1.Visible:=false;
    PD1:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDLilas1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDAzul1.Visible:=false;
    frmFichadeCadastro.imgPDVermelho1.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPDPreto1.Visible:=false;
    PD1:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto1.Visible:=true;
    frmFichadeCadastro.imgPDVazio1.Visible:=false;
    frmFichadeCadastro.imgPDLilas1.Visible:=false;
    frmFichadeCadastro.imgPDVerde1.Visible:=false;
    frmFichadeCadastro.imgPDAzul1.Visible:=false;
    frmFichadeCadastro.imgPDVermelho1.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto1.Visible:=false;
    PD1:='PRETO';
  end;
end;

end.
