unit UfrmCoresPD8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD8 = class(TForm)
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
  frmCoresPD8: TfrmCoresPD8;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD8.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde8.Visible:=true;
   frmFichadeCadastro.imgPDVazio8.Visible:=false;
   frmFichadeCadastro.imgPDAzul8.Visible:=false;
   frmFichadeCadastro.imgPDLilas8.Visible:=false;
   frmFichadeCadastro.imgPDVermelho8.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
   frmFichadeCadastro.imgPDPreto8.Visible:=false;
   PD8:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDLilas8.Visible:=false;
    frmFichadeCadastro.imgPDVermelho8.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPDPreto8.Visible:=false;
    PD8:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDAzul8.Visible:=false;
    frmFichadeCadastro.imgPDVermelho8.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPDPreto8.Visible:=false;
    PD8:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDLilas8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDAzul8.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPDPreto8.Visible:=false;
    PD8:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDLilas8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDAzul8.Visible:=false;
    frmFichadeCadastro.imgPDVermelho8.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPDPreto8.Visible:=false;
    PD8:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDLilas8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDAzul8.Visible:=false;
    frmFichadeCadastro.imgPDVermelho8.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPDPreto8.Visible:=false;
    PD8:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto8.Visible:=true;
    frmFichadeCadastro.imgPDVazio8.Visible:=false;
    frmFichadeCadastro.imgPDLilas8.Visible:=false;
    frmFichadeCadastro.imgPDVerde8.Visible:=false;
    frmFichadeCadastro.imgPDAzul8.Visible:=false;
    frmFichadeCadastro.imgPDVermelho8.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto8.Visible:=false;
    PD8:='PRETO';
  end;
end;

end.
