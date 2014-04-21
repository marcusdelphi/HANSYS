unit UfrmCoresME2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME2 = class(TForm)
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
  frmCoresME2: TfrmCoresME2;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME2.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde2.Visible:=true;
   frmFichadeCadastro.imgEVazio2.Visible:=false;
   frmFichadeCadastro.imgEAzul2.Visible:=false;
   frmFichadeCadastro.imgELilas2.Visible:=false;
   frmFichadeCadastro.imgEVermelho2.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
   frmFichadeCadastro.imgEVermAberto2.Visible:=false;
   frmFichadeCadastro.imgEPreto2.Visible:=false;
   ME2:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgELilas2.Visible:=false;
    frmFichadeCadastro.imgEVermelho2.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgEVermAberto2.Visible:=false;
    frmFichadeCadastro.imgEPreto2.Visible:=false;
    ME2:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgEAzul2.Visible:=false;
    frmFichadeCadastro.imgEVermelho2.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgEVermAberto2.Visible:=false;
    frmFichadeCadastro.imgEPreto2.Visible:=false;
    ME2:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgELilas2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgEAzul2.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgEVermAberto2.Visible:=false;
    frmFichadeCadastro.imgEPreto2.Visible:=false;
    ME2:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgELilas2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgEAzul2.Visible:=false;
    frmFichadeCadastro.imgEVermelho2.Visible:=false;
    frmFichadeCadastro.imgEVermAberto2.Visible:=false;
    frmFichadeCadastro.imgEPreto2.Visible:=false;
    ME2:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgELilas2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgEAzul2.Visible:=false;
    frmFichadeCadastro.imgEVermelho2.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgEPreto2.Visible:=false;
    ME2:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto2.Visible:=true;
    frmFichadeCadastro.imgEVazio2.Visible:=false;
    frmFichadeCadastro.imgELilas2.Visible:=false;
    frmFichadeCadastro.imgEVerde2.Visible:=false;
    frmFichadeCadastro.imgEAzul2.Visible:=false;
    frmFichadeCadastro.imgEVermelho2.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado2.Visible:=false;
    frmFichadeCadastro.imgEVermAberto2.Visible:=false;
    ME2:='PRETO';
  end;
end;

end.
