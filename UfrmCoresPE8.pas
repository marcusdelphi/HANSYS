unit UfrmCoresPE8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE8 = class(TForm)
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
  frmCoresPE8: TfrmCoresPE8;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE8.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde8.Visible:=true;
   frmFichadeCadastro.imgPEVazio8.Visible:=false;
   frmFichadeCadastro.imgPEAzul8.Visible:=false;
   frmFichadeCadastro.imgPELilas8.Visible:=false;
   frmFichadeCadastro.imgPEVermelho8.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
   frmFichadeCadastro.imgPEPreto8.Visible:=false;
   PE8:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPELilas8.Visible:=false;
    frmFichadeCadastro.imgPEVermelho8.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPEPreto8.Visible:=false;
    PE8:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPEAzul8.Visible:=false;
    frmFichadeCadastro.imgPEVermelho8.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPEPreto8.Visible:=false;
    PE8:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPELilas8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPEAzul8.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPEPreto8.Visible:=false;
    PE8:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPELilas8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPEAzul8.Visible:=false;
    frmFichadeCadastro.imgPEVermelho8.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
    frmFichadeCadastro.imgPEPreto8.Visible:=false;
    PE8:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPELilas8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPEAzul8.Visible:=false;
    frmFichadeCadastro.imgPEVermelho8.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPEPreto8.Visible:=false;
    PE8:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto8.Visible:=true;
    frmFichadeCadastro.imgPEVazio8.Visible:=false;
    frmFichadeCadastro.imgPELilas8.Visible:=false;
    frmFichadeCadastro.imgPEVerde8.Visible:=false;
    frmFichadeCadastro.imgPEAzul8.Visible:=false;
    frmFichadeCadastro.imgPEVermelho8.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado8.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto8.Visible:=false;
    PE8:='PRETO';
  end;
end;

end.
