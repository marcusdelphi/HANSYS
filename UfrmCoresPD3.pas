unit UfrmCoresPD3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD3 = class(TForm)
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
  frmCoresPD3: TfrmCoresPD3;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD3.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde3.Visible:=true;
   frmFichadeCadastro.imgPDVazio3.Visible:=false;
   frmFichadeCadastro.imgPDAzul3.Visible:=false;
   frmFichadeCadastro.imgPDLilas3.Visible:=false;
   frmFichadeCadastro.imgPDVermelho3.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
   frmFichadeCadastro.imgPDPreto3.Visible:=false;
   PD3:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDLilas3.Visible:=false;
    frmFichadeCadastro.imgPDVermelho3.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgPDPreto3.Visible:=false;
    PD3:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDAzul3.Visible:=false;
    frmFichadeCadastro.imgPDVermelho3.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgPDPreto3.Visible:=false;
    PD3:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDLilas3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDAzul3.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgPDPreto3.Visible:=false;
    PD3:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDLilas3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDAzul3.Visible:=false;
    frmFichadeCadastro.imgPDVermelho3.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
    frmFichadeCadastro.imgPDPreto3.Visible:=false;
    PD3:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDLilas3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDAzul3.Visible:=false;
    frmFichadeCadastro.imgPDVermelho3.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgPDPreto3.Visible:=false;
    PD3:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto3.Visible:=true;
    frmFichadeCadastro.imgPDVazio3.Visible:=false;
    frmFichadeCadastro.imgPDLilas3.Visible:=false;
    frmFichadeCadastro.imgPDVerde3.Visible:=false;
    frmFichadeCadastro.imgPDAzul3.Visible:=false;
    frmFichadeCadastro.imgPDVermelho3.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado3.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto3.Visible:=false;
    PD3:='PRETO';
  end;
end;

end.
