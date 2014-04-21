unit UfrmCoresPD9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD9 = class(TForm)
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
  frmCoresPD9: TfrmCoresPD9;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD9.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde9.Visible:=true;
   frmFichadeCadastro.imgPDVazio9.Visible:=false;
   frmFichadeCadastro.imgPDAzul9.Visible:=false;
   frmFichadeCadastro.imgPDLilas9.Visible:=false;
   frmFichadeCadastro.imgPDVermelho9.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
   frmFichadeCadastro.imgPDPreto9.Visible:=false;
   PD9:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDLilas9.Visible:=false;
    frmFichadeCadastro.imgPDVermelho9.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPDPreto9.Visible:=false;
    PD9:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDAzul9.Visible:=false;
    frmFichadeCadastro.imgPDVermelho9.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPDPreto9.Visible:=false;
    PD9:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDLilas9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDAzul9.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPDPreto9.Visible:=false;
    PD9:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDLilas9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDAzul9.Visible:=false;
    frmFichadeCadastro.imgPDVermelho9.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPDPreto9.Visible:=false;
    PD9:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDLilas9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDAzul9.Visible:=false;
    frmFichadeCadastro.imgPDVermelho9.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPDPreto9.Visible:=false;
    PD9:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto9.Visible:=true;
    frmFichadeCadastro.imgPDVazio9.Visible:=false;
    frmFichadeCadastro.imgPDLilas9.Visible:=false;
    frmFichadeCadastro.imgPDVerde9.Visible:=false;
    frmFichadeCadastro.imgPDAzul9.Visible:=false;
    frmFichadeCadastro.imgPDVermelho9.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto9.Visible:=false;
    PD9:='PRETO';
  end;
end;

end.
