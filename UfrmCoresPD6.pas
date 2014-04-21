unit UfrmCoresPD6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD6 = class(TForm)
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
  frmCoresPD6: TfrmCoresPD6;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD6.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde6.Visible:=true;
   frmFichadeCadastro.imgPDVazio6.Visible:=false;
   frmFichadeCadastro.imgPDAzul6.Visible:=false;
   frmFichadeCadastro.imgPDLilas6.Visible:=false;
   frmFichadeCadastro.imgPDVermelho6.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
   frmFichadeCadastro.imgPDPreto6.Visible:=false;
   PD6:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDLilas6.Visible:=false;
    frmFichadeCadastro.imgPDVermelho6.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPDPreto6.Visible:=false;
    PD6:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDAzul6.Visible:=false;
    frmFichadeCadastro.imgPDVermelho6.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPDPreto6.Visible:=false;
    PD6:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDLilas6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDAzul6.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPDPreto6.Visible:=false;
    PD6:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDLilas6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDAzul6.Visible:=false;
    frmFichadeCadastro.imgPDVermelho6.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPDPreto6.Visible:=false;
    PD6:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDLilas6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDAzul6.Visible:=false;
    frmFichadeCadastro.imgPDVermelho6.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPDPreto6.Visible:=false;
    PD6:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto6.Visible:=true;
    frmFichadeCadastro.imgPDVazio6.Visible:=false;
    frmFichadeCadastro.imgPDLilas6.Visible:=false;
    frmFichadeCadastro.imgPDVerde6.Visible:=false;
    frmFichadeCadastro.imgPDAzul6.Visible:=false;
    frmFichadeCadastro.imgPDVermelho6.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto6.Visible:=false;
    PD6:='PRETO';
  end;
end;

end.
