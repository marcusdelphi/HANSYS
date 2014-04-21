unit UfrmCoresPD2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD2 = class(TForm)
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
  frmCoresPD2: TfrmCoresPD2;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD2.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde2.Visible:=true;
   frmFichadeCadastro.imgPDVazio2.Visible:=false;
   frmFichadeCadastro.imgPDAzul2.Visible:=false;
   frmFichadeCadastro.imgPDLilas2.Visible:=false;
   frmFichadeCadastro.imgPDVermelho2.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
   frmFichadeCadastro.imgPDPreto2.Visible:=false;
   PD2:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDLilas2.Visible:=false;
    frmFichadeCadastro.imgPDVermelho2.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgPDPreto2.Visible:=false;
    PD2:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDAzul2.Visible:=false;
    frmFichadeCadastro.imgPDVermelho2.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgPDPreto2.Visible:=false;
    PD2:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDLilas2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDAzul2.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgPDPreto2.Visible:=false;
    PD2:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDLilas2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDAzul2.Visible:=false;
    frmFichadeCadastro.imgPDVermelho2.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
    frmFichadeCadastro.imgPDPreto2.Visible:=false;
    PD2:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDLilas2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDAzul2.Visible:=false;
    frmFichadeCadastro.imgPDVermelho2.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgPDPreto2.Visible:=false;
    PD2:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto2.Visible:=true;
    frmFichadeCadastro.imgPDVazio2.Visible:=false;
    frmFichadeCadastro.imgPDLilas2.Visible:=false;
    frmFichadeCadastro.imgPDVerde2.Visible:=false;
    frmFichadeCadastro.imgPDAzul2.Visible:=false;
    frmFichadeCadastro.imgPDVermelho2.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto2.Visible:=false;
    PD2:='PRETO';
  end;
end;

end.
