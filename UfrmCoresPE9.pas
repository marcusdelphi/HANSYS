unit UfrmCoresPE9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE9 = class(TForm)
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
  frmCoresPE9: TfrmCoresPE9;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE9.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde9.Visible:=true;
   frmFichadeCadastro.imgPEVazio9.Visible:=false;
   frmFichadeCadastro.imgPEAzul9.Visible:=false;
   frmFichadeCadastro.imgPELilas9.Visible:=false;
   frmFichadeCadastro.imgPEVermelho9.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
   frmFichadeCadastro.imgPEPreto9.Visible:=false;
   PE9:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPELilas9.Visible:=false;
    frmFichadeCadastro.imgPEVermelho9.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPEPreto9.Visible:=false;
    PE9:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPEAzul9.Visible:=false;
    frmFichadeCadastro.imgPEVermelho9.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPEPreto9.Visible:=false;
    PE9:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPELilas9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPEAzul9.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPEPreto9.Visible:=false;
    PE9:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPELilas9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPEAzul9.Visible:=false;
    frmFichadeCadastro.imgPEVermelho9.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
    frmFichadeCadastro.imgPEPreto9.Visible:=false;
    PE9:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPELilas9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPEAzul9.Visible:=false;
    frmFichadeCadastro.imgPEVermelho9.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPEPreto9.Visible:=false;
    PE9:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto9.Visible:=true;
    frmFichadeCadastro.imgPEVazio9.Visible:=false;
    frmFichadeCadastro.imgPELilas9.Visible:=false;
    frmFichadeCadastro.imgPEVerde9.Visible:=false;
    frmFichadeCadastro.imgPEAzul9.Visible:=false;
    frmFichadeCadastro.imgPEVermelho9.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado9.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto9.Visible:=false;
    PE9:='PRETO';
  end;
end;

end.
