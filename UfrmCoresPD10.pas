unit UfrmCoresPD10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD10 = class(TForm)
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
  frmCoresPD10: TfrmCoresPD10;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD10.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde10.Visible:=true;
   frmFichadeCadastro.imgPDVazio10.Visible:=false;
   frmFichadeCadastro.imgPDAzul10.Visible:=false;
   frmFichadeCadastro.imgPDLilas10.Visible:=false;
   frmFichadeCadastro.imgPDVermelho10.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
   frmFichadeCadastro.imgPDPreto10.Visible:=false;
   PD10:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDLilas10.Visible:=false;
    frmFichadeCadastro.imgPDVermelho10.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPDPreto10.Visible:=false;
    PD10:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDAzul10.Visible:=false;
    frmFichadeCadastro.imgPDVermelho10.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPDPreto10.Visible:=false;
    PD10:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDLilas10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDAzul10.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPDPreto10.Visible:=false;
    PD10:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDLilas10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDAzul10.Visible:=false;
    frmFichadeCadastro.imgPDVermelho10.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPDPreto10.Visible:=false;
    PD10:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDLilas10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDAzul10.Visible:=false;
    frmFichadeCadastro.imgPDVermelho10.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPDPreto10.Visible:=false;
    PD10:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto10.Visible:=true;
    frmFichadeCadastro.imgPDVazio10.Visible:=false;
    frmFichadeCadastro.imgPDLilas10.Visible:=false;
    frmFichadeCadastro.imgPDVerde10.Visible:=false;
    frmFichadeCadastro.imgPDAzul10.Visible:=false;
    frmFichadeCadastro.imgPDVermelho10.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto10.Visible:=false;
    PD10:='PRETO';
  end;
end;

end.
