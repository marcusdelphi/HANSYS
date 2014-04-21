unit UfrmCoresPD5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD5 = class(TForm)
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
  frmCoresPD5: TfrmCoresPD5;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD5.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde5.Visible:=true;
   frmFichadeCadastro.imgPDVazio5.Visible:=false;
   frmFichadeCadastro.imgPDAzul5.Visible:=false;
   frmFichadeCadastro.imgPDLilas5.Visible:=false;
   frmFichadeCadastro.imgPDVermelho5.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
   frmFichadeCadastro.imgPDPreto5.Visible:=false;
   PD5:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDLilas5.Visible:=false;
    frmFichadeCadastro.imgPDVermelho5.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPDPreto5.Visible:=false;
    PD5:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDAzul5.Visible:=false;
    frmFichadeCadastro.imgPDVermelho5.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPDPreto5.Visible:=false;
    PD5:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDLilas5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDAzul5.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPDPreto5.Visible:=false;
    PD5:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDLilas5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDAzul5.Visible:=false;
    frmFichadeCadastro.imgPDVermelho5.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPDPreto5.Visible:=false;
    PD5:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDLilas5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDAzul5.Visible:=false;
    frmFichadeCadastro.imgPDVermelho5.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPDPreto5.Visible:=false;
    PD5:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto5.Visible:=true;
    frmFichadeCadastro.imgPDVazio5.Visible:=false;
    frmFichadeCadastro.imgPDLilas5.Visible:=false;
    frmFichadeCadastro.imgPDVerde5.Visible:=false;
    frmFichadeCadastro.imgPDAzul5.Visible:=false;
    frmFichadeCadastro.imgPDVermelho5.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto5.Visible:=false;
    PD5:='PRETO';
  end;
end;

end.
