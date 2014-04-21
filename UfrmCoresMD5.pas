unit UfrmCoresMD5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD5 = class(TForm)
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
  frmCoresMD5: TfrmCoresMD5;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD5.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde5.Visible:=true;
   frmFichadeCadastro.imgDVazio5.Visible:=false;
   frmFichadeCadastro.imgDAzul5.Visible:=false;
   frmFichadeCadastro.imgDLilas5.Visible:=false;
   frmFichadeCadastro.imgDVermelho5.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
   frmFichadeCadastro.imgDVermAberto5.Visible:=false;
   frmFichadeCadastro.imgDPreto5.Visible:=false;
   MD5:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDLilas5.Visible:=false;
    frmFichadeCadastro.imgDVermelho5.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgDPreto5.Visible:=false;
    MD5:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDAzul5.Visible:=false;
    frmFichadeCadastro.imgDVermelho5.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgDPreto5.Visible:=false;
    MD5:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDLilas5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDAzul5.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgDPreto5.Visible:=false;
    MD5:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDLilas5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDAzul5.Visible:=false;
    frmFichadeCadastro.imgDVermelho5.Visible:=false;
    frmFichadeCadastro.imgDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgDPreto5.Visible:=false;
    MD5:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDLilas5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDAzul5.Visible:=false;
    frmFichadeCadastro.imgDVermelho5.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgDPreto5.Visible:=false;
    MD5:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto5.Visible:=true;
    frmFichadeCadastro.imgDVazio5.Visible:=false;
    frmFichadeCadastro.imgDLilas5.Visible:=false;
    frmFichadeCadastro.imgDVerde5.Visible:=false;
    frmFichadeCadastro.imgDAzul5.Visible:=false;
    frmFichadeCadastro.imgDVermelho5.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgDVermAberto5.Visible:=false;
    MD5:='PRETO';
  end;

end;

end.
