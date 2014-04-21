unit UfrmCoresMD1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmCoresMD1 = class(TForm)
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
  frmCoresMD1: TfrmCoresMD1;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD1.BitBtn1Click(Sender: TObject);
begin
  if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde1.Visible:=true;
   frmFichadeCadastro.imgDVazio1.Visible:=false;
   frmFichadeCadastro.imgDAzul1.Visible:=false;
   frmFichadeCadastro.imgDLilas1.Visible:=false;
   frmFichadeCadastro.imgDVermelho1.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
   frmFichadeCadastro.imgDVermAberto1.Visible:=false;
   frmFichadeCadastro.imgDPreto1.Visible:=false;
   MD1:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDLilas1.Visible:=false;
    frmFichadeCadastro.imgDVermelho1.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgDPreto1.Visible:=false;
    MD1:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDAzul1.Visible:=false;
    frmFichadeCadastro.imgDVermelho1.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgDPreto1.Visible:=false;
    MD1:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDLilas1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDAzul1.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgDPreto1.Visible:=false;
    MD1:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDLilas1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDAzul1.Visible:=false;
    frmFichadeCadastro.imgDVermelho1.Visible:=false;
    frmFichadeCadastro.imgDVermAberto1.Visible:=false;
    frmFichadeCadastro.imgDPreto1.Visible:=false;
    MD1:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDLilas1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDAzul1.Visible:=false;
    frmFichadeCadastro.imgDVermelho1.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgDPreto1.Visible:=false;
    MD1:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto1.Visible:=true;
    frmFichadeCadastro.imgDVazio1.Visible:=false;
    frmFichadeCadastro.imgDLilas1.Visible:=false;
    frmFichadeCadastro.imgDVerde1.Visible:=false;
    frmFichadeCadastro.imgDAzul1.Visible:=false;
    frmFichadeCadastro.imgDVermelho1.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado1.Visible:=false;
    frmFichadeCadastro.imgDVermAberto1.Visible:=false;
    MD1:='PRETO';
  end;

end;

end.
