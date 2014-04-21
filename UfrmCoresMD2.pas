unit UfrmCoresMD2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD2 = class(TForm)
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
  frmCoresMD2: TfrmCoresMD2;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD2.BitBtn1Click(Sender: TObject);
begin
if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde2.Visible:=true;
   frmFichadeCadastro.imgDVazio2.Visible:=false;
   frmFichadeCadastro.imgDAzul2.Visible:=false;
   frmFichadeCadastro.imgDLilas2.Visible:=false;
   frmFichadeCadastro.imgDVermelho2.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
   frmFichadeCadastro.imgDVermAberto2.Visible:=false;
   frmFichadeCadastro.imgDPreto2.Visible:=false;
   MD2:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDLilas2.Visible:=false;
    frmFichadeCadastro.imgDVermelho2.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgDPreto2.Visible:=false;
    MD2:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDAzul2.Visible:=false;
    frmFichadeCadastro.imgDVermelho2.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgDPreto2.Visible:=false;
    MD2:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDLilas2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDAzul2.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgDPreto2.Visible:=false;
    MD2:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDLilas2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDAzul2.Visible:=false;
    frmFichadeCadastro.imgDVermelho2.Visible:=false;
    frmFichadeCadastro.imgDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgDPreto2.Visible:=false;
    MD2:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDLilas2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDAzul2.Visible:=false;
    frmFichadeCadastro.imgDVermelho2.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgDPreto2.Visible:=false;
    MD2:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto2.Visible:=true;
    frmFichadeCadastro.imgDVazio2.Visible:=false;
    frmFichadeCadastro.imgDLilas2.Visible:=false;
    frmFichadeCadastro.imgDVerde2.Visible:=false;
    frmFichadeCadastro.imgDAzul2.Visible:=false;
    frmFichadeCadastro.imgDVermelho2.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgDVermAberto2.Visible:=false;
    MD2:='PRETO';
  end;

end;

end.
