unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MPlayer, ExtCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    OpenDialog: TOpenDialog;
    Button1: TButton;
    Panel1: TPanel;
    NazwaTracka: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    TrackBar1: TTrackBar;
    Button2: TButton;
    SB1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pl:String;
  ot:Boolean;
  p:Integer;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
if OpenDialog.Execute then
begin
with MediaPlayer1 do
begin
        FileName := OpenDialog.FileName;
        Open;
        Label2.Caption := 'D³ugosc: ' + IntToStr(Length);
        Label1.Caption := 'Pozycja: ' + IntToStr(Position);
        NazwaTracka.Caption := 'Œcie¿ka: ' + OpenDialog.FileName;
        TrackBar1.Max := Length;

end;
ot:=True;
tu:=False;
end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MediaPlayer1.Close;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
MediaPlayer1.Play;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
MediaPlayer1.Stop;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if TrackBar1.Max > 0 then
begin
Label1.Caption := 'Pozycja: ' + IntToStr(MediaPlayer1.Position);
TrackBar1.Position := MediaPlayer1.Position;
//MediaPlayer1.Position:= TrackBar1.Position;
    end
    
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.Show;
if ot=True then
begin
Pl:=MediaPlayer1.FileName;
p:=MediaPlayer1.Position;
end;
end;

procedure TForm1.SB1Click(Sender: TObject);
begin

if Timer1.Enabled = True then
MediaPlayer1.Pause
else
MediaPlayer1.Play;
Timer1.Enabled:= not Timer1.Enabled;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
if Timer1.Enabled = False then
  MediaPlayer1.Position:= TrackBar1.Position;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Pl:='';
ot:=False;
tu:=False;
end;

end.
