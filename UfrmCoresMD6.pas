unit UfrmCoresMD6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD6 = class(TForm)
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
  frmCoresMD6: TfrmCoresMD6;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD6.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde6.Visible:=true;
   frmFichadeCadastro.imgDVazio6.Visible:=false;
   frmFichadeCadastro.imgDAzul6.Visible:=false;
   frmFichadeCadastro.imgDLilas6.Visible:=false;
   frmFichadeCadastro.imgDVermelho6.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
   frmFichadeCadastro.imgDVermAberto6.Visible:=false;
   frmFichadeCadastro.imgDPreto6.Visible:=false;
   MD6:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDLilas6.Visible:=false;
    frmFichadeCadastro.imgDVermelho6.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgDPreto6.Visible:=false;
    MD6:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDAzul6.Visible:=false;
    frmFichadeCadastro.imgDVermelho6.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgDPreto6.Visible:=false;
    MD6:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDLilas6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDAzul6.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgDPreto6.Visible:=false;
    MD6:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDLilas6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDAzul6.Visible:=false;
    frmFichadeCadastro.imgDVermelho6.Visible:=false;
    frmFichadeCadastro.imgDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgDPreto6.Visible:=false;
    MD6:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDLilas6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDAzul6.Visible:=false;
    frmFichadeCadastro.imgDVermelho6.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgDPreto6.Visible:=false;
    MD6:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto6.Visible:=true;
    frmFichadeCadastro.imgDVazio6.Visible:=false;
    frmFichadeCadastro.imgDLilas6.Visible:=false;
    frmFichadeCadastro.imgDVerde6.Visible:=false;
    frmFichadeCadastro.imgDAzul6.Visible:=false;
    frmFichadeCadastro.imgDVermelho6.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgDVermAberto6.Visible:=false;
    MD6:='PRETO';
  end;
end;

end.
