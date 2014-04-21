unit UfrmResidAnteriores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Mask;

type
  TfrmResidAnteriores = class(TForm)
    Panel4: TPanel;
    GroupBox16: TGroupBox;
    Label13: TLabel;
    DBGrid5: TDBGrid;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsResidAnt: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    DsLocResidAnt: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResidAnteriores: TfrmResidAnteriores;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro, UdmFicha;

procedure Localizado;
begin
  with dmFicha.cdsCadResidenciasAnt do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_DOMI_RESID_ANT').AsInteger:=dmFicha.cdsLocResidAntID_DOMI_RESID_ANT.AsInteger;
    Open;
  end;
end;

procedure TfrmResidAnteriores.Button13Click(Sender: TObject);
begin
  with dmFicha.cdsCadResidenciasAnt do
    begin
      dbedit1.SetFocus;
      append;
      dmFicha.cdsCadResidenciasAntDOMI_RESID_ANTE_COD_PESS.Value:=frmFichadeCadastro.getCodPess;
    end;
end;

procedure TfrmResidAnteriores.Button14Click(Sender: TObject);
begin
  with dmFicha.cdsCadResidenciasAnt do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmResidAnteriores.Button15Click(Sender: TObject);
begin
 with dmFicha.cdsCadResidenciasAnt do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmResidAnteriores.Button16Click(Sender: TObject);
begin
  if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsCadResidenciasAnt do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
       frmResidAnteriores.Button17Click(Self);//aTUALIZA O DBGRID
      end;
    dmFicha.cdsCadResidenciasAnt.Cancel;
    dmFicha.cdsCadResidenciasAnt.CancelUpdates;
  end;
  dmFicha.cdsCadResidenciasAnt.Refresh;
end;
procedure TfrmResidAnteriores.Button17Click(Sender: TObject);
begin
  With dmFicha.cdsLocResidAnt do
    begin
      close;
      FetchParams;
      Params.ParamByName('DOMI_RESID_ANTE_COD_PESS').AsInteger:=CodPessoal;
      open;
      DBGrid5.SetFocus;
    end;
end;

procedure TfrmResidAnteriores.Button1Click(Sender: TObject);
begin
 with dmFicha.cdsCadResidenciasAnt do
  begin
   edit;
   end;
end;

procedure TfrmResidAnteriores.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmResidAnteriores.DBGrid5DblClick(Sender: TObject);
begin
  Localizado;
end;

procedure TfrmResidAnteriores.FormCreate(Sender: TObject);
begin
  dmFicha.cdsCadResidenciasAnt.Open;
end;

procedure TfrmResidAnteriores.FormDestroy(Sender: TObject);
begin
   dmFicha.cdsCadResidenciasAnt.Close;
end;

end.
