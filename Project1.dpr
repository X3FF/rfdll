library Project1;



uses
  System.SysUtils,
  System.Classes,
  VCL.Forms,
  VCL.Dialogs,
  System.StrUtils,
  Windows,
  Messages,
  WinProcs,
  MMSystem;

{$R *.res}

var
  Form1:TForm;
  hW: hWnd;     // ��� ������ ������ ����
  PID: cardinal; // ��� ������  ID ��������
  hProc: THandle;
  rw: size_T;
  charX: single;
  charZ: single;
  charBase: dword;
                                 //����� ���� �� ���������
//procedure connect; stdcall; export;
//
//begin
//     hW:=FindWindow(nil, 'RF Online');
//
//     if hW<>0 then
//     begin
//           GetWindowThreadProcessId(hW, @PID); //�������� PID ���������� ����
//            hProc:= OpenProcess(Process_All_Access, False, PID); // �������� handle ��������
//            SetWindowText(hw, 'RF Online: ' +inttostr(PID));
//            PlaySound('C:\RFO\Snd\Interface\MAKE_SUCCESS_00.wav', 0, SND_ASYNC);
//     end
//
//
// end;


function connect(hw:hwnd): integer; stdcall; export;

begin
     hW:=FindWindow(nil, 'RF Online');

     if hW<>0 then
     begin
           GetWindowThreadProcessId(hW, @PID); //�������� PID ���������� ����
            hProc:= OpenProcess(Process_All_Access, False, PID); // �������� handle ��������
            //SetWindowText(hw, 'RF Online: ' +inttostr(PID));
            PlaySound('C:\RFO\Snd\Interface\MAKE_SUCCESS_00.wav', 0, SND_ASYNC);
     end


 end;

                           //������
 procedure loot; stdcall; export;
  var i:integer;

     begin

        for I := 0 to 1 do
     begin
          postmessage(hw, WM_ACTIVATE, 1, 0);
          postmessage(hw, WM_KEYDOWN, $58, 0);
     end;
     i:=i+0;
      end;


function charCoord(charX, charZ: single):single; stdcall; export;
begin
  charBase:= $0238CFBC;
  ReadProcessmemory(hw, pointer(charBase), @charbase, sizeof(charBase), rw);
  ReadProcessmemory(hw, pointer(charBase+80), @charX, sizeof(charX), rw);
  ReadProcessmemory(hw, pointer(charBase+88), @charZ, sizeof(charX), rw);
end;




                               //������������ ��������� � �������
 Exports connect, loot, charCoord;

     begin

     end.

