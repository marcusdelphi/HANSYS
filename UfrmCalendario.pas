unit UfrmCalendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmCalendario = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Image2: TImage;
    MonthCalendar1: TMonthCalendar;
    Image3: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalendario: TfrmCalendario;

implementation

{$R *.dfm}

end.
