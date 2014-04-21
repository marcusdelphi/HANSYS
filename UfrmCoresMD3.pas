unit UfrmCoresMD3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD3 = class(TForm)
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
  frmCoresMD3: TfrmCoresMD3;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD3.BitBtn1Click(Sender: TObject);
begin
if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde3.Visible:=true;
   frmFichadeCadastro.imgDVazio3.Visible:=false;
   frmFichadeCadastro.imgDAzul3.Visible:=false;
   frmFichadeCadastro.imgDLilas3.Visible:=false;
   frmFichadeCadastro.imgDVermelho3.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
   frmFichadeCadastro.imgDVermAberto3.Visible:=false;
   frmFichadeCadastro.imgDPreto3.Visible:=false;
   MD3:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDLilas3.Visible:=false;
    frmFichadeCadastro.imgDVermelho3.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgDPreto3.Visible:=false;
    MD3:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDAzul3.Visible:=false;
    frmFichadeCadastro.imgDVermelho3.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgDPreto3.Visible:=false;
    MD3:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDLilas3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDAzul3.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgDPreto3.Visible:=false;
    MD3:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDLilas3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDAzul3.Visible:=false;
    frmFichadeCadastro.imgDVermelho3.Visible:=false;
    frmFichadeCadastro.imgDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgDPreto3.Visible:=false;
    MD3:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDLilas3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDAzul3.Visible:=false;
    frmFichadeCadastro.imgDVermelho3.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgDPreto3.Visible:=false;
    MD3:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto3.Visible:=true;
    frmFichadeCadastro.imgDVazio3.Visible:=false;
    frmFichadeCadastro.imgDLilas3.Visible:=false;
    frmFichadeCadastro.imgDVerde3.Visible:=false;
    frmFichadeCadastro.imgDAzul3.Visible:=false;
    frmFichadeCadastro.imgDVermelho3.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgDVermAberto3.Visible:=false;
    MD3:='PRETO';
  end;
end;

end.
