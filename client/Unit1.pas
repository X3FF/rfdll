unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape1: TShape;
    lootswitch: TToggleSwitch;
    loottimer: TTimer;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    charStat: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure lootswitchClick(Sender: TObject);
    procedure loottimerTimer(Sender: TObject);
    procedure charStatTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  hW: hWnd;
  PID: cardinal; // ??? ??????  ID ????????
  hProc: THandle;
  rw: SIZE_T;
  charX, charZ: single;

implementation

{$R *.dfm}
                                       //???????? ?? dll
function connect:integer; stdcall; external 'C:\RFO\Project1.dll';
procedure loot; stdcall; external 'C:\RFO\Project1.dll';
function charCoord:single; stdcall; external 'C:\RFO\Project1.dll';




procedure TForm1.loottimerTimer(Sender: TObject);
begin
       loot;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
     connect;
      if hw<>0 then
      begin
        Shape1.Brush.Color:=clAqua;
        Speedbutton1.Caption:=inttostr(PID);
        Speedbutton1.Enabled:= false;
      end
      else
      begin
          Shape1.Brush.Color:=clAqua;
      end;


end;


procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
       loot;
end;


procedure TForm1.charStatTimer(Sender: TObject);
begin
    charCoord;
    Edit1.Text:=floattostr(charX);
    Edit2.Text:=floattostr(charZ);
end;

procedure TForm1.lootswitchClick(Sender: TObject);
begin
  if lootswitch.State=tsson then
    loottimer.Enabled:= true
    else
     loottimer.Enabled:= false;

end;

end.
