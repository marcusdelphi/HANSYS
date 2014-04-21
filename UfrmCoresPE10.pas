unit UfrmCoresPE10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE10 = class(TForm)
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
  frmCoresPE10: TfrmCoresPE10;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE10.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde10.Visible:=true;
   frmFichadeCadastro.imgPEVazio10.Visible:=false;
   frmFichadeCadastro.imgPEAzul10.Visible:=false;
   frmFichadeCadastro.imgPELilas10.Visible:=false;
   frmFichadeCadastro.imgPEVermelho10.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
   frmFichadeCadastro.imgPEPreto10.Visible:=false;
   PE10:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPELilas10.Visible:=false;
    frmFichadeCadastro.imgPEVermelho10.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPEPreto10.Visible:=false;
    PE10:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPEAzul10.Visible:=false;
    frmFichadeCadastro.imgPEVermelho10.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPEPreto10.Visible:=false;
    PE10:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPELilas10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPEAzul10.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPEPreto10.Visible:=false;
    PE10:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPELilas10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPEAzul10.Visible:=false;
    frmFichadeCadastro.imgPEVermelho10.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
    frmFichadeCadastro.imgPEPreto10.Visible:=false;
    PE10:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPELilas10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPEAzul10.Visible:=false;
    frmFichadeCadastro.imgPEVermelho10.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPEPreto10.Visible:=false;
    PE10:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto10.Visible:=true;
    frmFichadeCadastro.imgPEVazio10.Visible:=false;
    frmFichadeCadastro.imgPELilas10.Visible:=false;
    frmFichadeCadastro.imgPEVerde10.Visible:=false;
    frmFichadeCadastro.imgPEAzul10.Visible:=false;
    frmFichadeCadastro.imgPEVermelho10.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado10.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto10.Visible:=false;
    PE10:='PRETO';
  end;
end;

end.
