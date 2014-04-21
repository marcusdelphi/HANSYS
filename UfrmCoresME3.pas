unit UfrmCoresME3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME3 = class(TForm)
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
  frmCoresME3: TfrmCoresME3;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME3.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde3.Visible:=true;
   frmFichadeCadastro.imgEVazio3.Visible:=false;
   frmFichadeCadastro.imgEAzul3.Visible:=false;
   frmFichadeCadastro.imgELilas3.Visible:=false;
   frmFichadeCadastro.imgEVermelho3.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
   frmFichadeCadastro.imgEVermAberto3.Visible:=false;
   frmFichadeCadastro.imgEPreto3.Visible:=false;
   ME3:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgELilas3.Visible:=false;
    frmFichadeCadastro.imgEVermelho3.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgEVermAberto3.Visible:=false;
    frmFichadeCadastro.imgEPreto3.Visible:=false;
    ME3:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgEAzul3.Visible:=false;
    frmFichadeCadastro.imgEVermelho3.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgEVermAberto3.Visible:=false;
    frmFichadeCadastro.imgEPreto3.Visible:=false;
    ME3:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgELilas3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgEAzul3.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgEVermAberto3.Visible:=false;
    frmFichadeCadastro.imgEPreto3.Visible:=false;
    ME3:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgELilas3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgEAzul3.Visible:=false;
    frmFichadeCadastro.imgEVermelho3.Visible:=false;
    frmFichadeCadastro.imgEVermAberto3.Visible:=false;
    frmFichadeCadastro.imgEPreto3.Visible:=false;
    ME3:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgELilas3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgEAzul3.Visible:=false;
    frmFichadeCadastro.imgEVermelho3.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgEPreto3.Visible:=false;
    ME3:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto3.Visible:=true;
    frmFichadeCadastro.imgEVazio3.Visible:=false;
    frmFichadeCadastro.imgELilas3.Visible:=false;
    frmFichadeCadastro.imgEVerde3.Visible:=false;
    frmFichadeCadastro.imgEAzul3.Visible:=false;
    frmFichadeCadastro.imgEVermelho3.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgEVermAberto3.Visible:=false;
    ME3:='PRETO';
  end;
end;

end.
