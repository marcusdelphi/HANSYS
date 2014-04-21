unit UfrmCoresPE5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE5 = class(TForm)
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
  frmCoresPE5: TfrmCoresPE5;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE5.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde5.Visible:=true;
   frmFichadeCadastro.imgPEVazio5.Visible:=false;
   frmFichadeCadastro.imgPEAzul5.Visible:=false;
   frmFichadeCadastro.imgPELilas5.Visible:=false;
   frmFichadeCadastro.imgPEVermelho5.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
   frmFichadeCadastro.imgPEPreto5.Visible:=false;
   PE5:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPELilas5.Visible:=false;
    frmFichadeCadastro.imgPEVermelho5.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPEPreto5.Visible:=false;
    PE5:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPEAzul5.Visible:=false;
    frmFichadeCadastro.imgPEVermelho5.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPEPreto5.Visible:=false;
    PE5:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPELilas5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPEAzul5.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPEPreto5.Visible:=false;
    PE5:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPELilas5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPEAzul5.Visible:=false;
    frmFichadeCadastro.imgPEVermelho5.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
    frmFichadeCadastro.imgPEPreto5.Visible:=false;
    PE5:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPELilas5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPEAzul5.Visible:=false;
    frmFichadeCadastro.imgPEVermelho5.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPEPreto5.Visible:=false;
    PE5:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto5.Visible:=true;
    frmFichadeCadastro.imgPEVazio5.Visible:=false;
    frmFichadeCadastro.imgPELilas5.Visible:=false;
    frmFichadeCadastro.imgPEVerde5.Visible:=false;
    frmFichadeCadastro.imgPEAzul5.Visible:=false;
    frmFichadeCadastro.imgPEVermelho5.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado5.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto5.Visible:=false;
    PE5:='PRETO';
  end;
end;

end.
