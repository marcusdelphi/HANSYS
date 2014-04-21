unit UfrmCoresPD7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD7 = class(TForm)
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
  frmCoresPD7: TfrmCoresPD7;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD7.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde7.Visible:=true;
   frmFichadeCadastro.imgPDVazio7.Visible:=false;
   frmFichadeCadastro.imgPDAzul7.Visible:=false;
   frmFichadeCadastro.imgPDLilas7.Visible:=false;
   frmFichadeCadastro.imgPDVermelho7.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
   frmFichadeCadastro.imgPDPreto7.Visible:=false;
   PD7:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDLilas7.Visible:=false;
    frmFichadeCadastro.imgPDVermelho7.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPDPreto7.Visible:=false;
    PD7:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDAzul7.Visible:=false;
    frmFichadeCadastro.imgPDVermelho7.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPDPreto7.Visible:=false;
    PD7:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDLilas7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDAzul7.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPDPreto7.Visible:=false;
    PD7:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDLilas7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDAzul7.Visible:=false;
    frmFichadeCadastro.imgPDVermelho7.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPDPreto7.Visible:=false;
    PD7:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDLilas7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDAzul7.Visible:=false;
    frmFichadeCadastro.imgPDVermelho7.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPDPreto7.Visible:=false;
    PD7:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto7.Visible:=true;
    frmFichadeCadastro.imgPDVazio7.Visible:=false;
    frmFichadeCadastro.imgPDLilas7.Visible:=false;
    frmFichadeCadastro.imgPDVerde7.Visible:=false;
    frmFichadeCadastro.imgPDAzul7.Visible:=false;
    frmFichadeCadastro.imgPDVermelho7.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto7.Visible:=false;
    PD7:='PRETO';
  end;
end;

end.
