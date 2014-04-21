unit UfrmCoresPE6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE6 = class(TForm)
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
  frmCoresPE6: TfrmCoresPE6;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE6.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde6.Visible:=true;
   frmFichadeCadastro.imgPEVazio6.Visible:=false;
   frmFichadeCadastro.imgPEAzul6.Visible:=false;
   frmFichadeCadastro.imgPELilas6.Visible:=false;
   frmFichadeCadastro.imgPEVermelho6.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
   frmFichadeCadastro.imgPEPreto6.Visible:=false;
   PE6:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPELilas6.Visible:=false;
    frmFichadeCadastro.imgPEVermelho6.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPEPreto6.Visible:=false;
    PE6:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPEAzul6.Visible:=false;
    frmFichadeCadastro.imgPEVermelho6.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPEPreto6.Visible:=false;
    PE6:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPELilas6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPEAzul6.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPEPreto6.Visible:=false;
    PE6:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPELilas6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPEAzul6.Visible:=false;
    frmFichadeCadastro.imgPEVermelho6.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgPEPreto6.Visible:=false;
    PE6:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPELilas6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPEAzul6.Visible:=false;
    frmFichadeCadastro.imgPEVermelho6.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPEPreto6.Visible:=false;
    PE6:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto6.Visible:=true;
    frmFichadeCadastro.imgPEVazio6.Visible:=false;
    frmFichadeCadastro.imgPELilas6.Visible:=false;
    frmFichadeCadastro.imgPEVerde6.Visible:=false;
    frmFichadeCadastro.imgPEAzul6.Visible:=false;
    frmFichadeCadastro.imgPEVermelho6.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto6.Visible:=false;
    PE6:='PRETO';
  end;
end;

end.
