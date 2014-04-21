unit UfrmCoresME6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME6 = class(TForm)
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
  frmCoresME6: TfrmCoresME6;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME6.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde6.Visible:=true;
   frmFichadeCadastro.imgEVazio6.Visible:=false;
   frmFichadeCadastro.imgEAzul6.Visible:=false;
   frmFichadeCadastro.imgELilas6.Visible:=false;
   frmFichadeCadastro.imgEVermelho6.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
   frmFichadeCadastro.imgEVermAberto6.Visible:=false;
   frmFichadeCadastro.imgEPreto6.Visible:=false;
   ME6:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgELilas6.Visible:=false;
    frmFichadeCadastro.imgEVermelho6.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgEPreto6.Visible:=false;
    ME6:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgEAzul6.Visible:=false;
    frmFichadeCadastro.imgEVermelho6.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgEPreto6.Visible:=false;
    ME6:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgELilas6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgEAzul6.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgEPreto6.Visible:=false;
    ME6:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgELilas6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgEAzul6.Visible:=false;
    frmFichadeCadastro.imgEVermelho6.Visible:=false;
    frmFichadeCadastro.imgEVermAberto6.Visible:=false;
    frmFichadeCadastro.imgEPreto6.Visible:=false;
    ME6:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgELilas6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgEAzul6.Visible:=false;
    frmFichadeCadastro.imgEVermelho6.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgEPreto6.Visible:=false;
    ME6:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto6.Visible:=true;
    frmFichadeCadastro.imgEVazio6.Visible:=false;
    frmFichadeCadastro.imgELilas6.Visible:=false;
    frmFichadeCadastro.imgEVerde6.Visible:=false;
    frmFichadeCadastro.imgEAzul6.Visible:=false;
    frmFichadeCadastro.imgEVermelho6.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado6.Visible:=false;
    frmFichadeCadastro.imgEVermAberto6.Visible:=false;
    ME6:='PRETO';
  end;
end;

end.
