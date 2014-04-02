unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TForm2 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog2: TOpenDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Button4: TButton;
    ListBox2: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  tu:Boolean;

implementation

uses Unit1;

{$R *.DFM}

procedure TForm2.Button1Click(Sender: TObject);
begin
if OpenDialog2.Execute then
begin
 ListBox1.Items.Add(OpenDialog2.FileName);
 Form1.MediaPlayer1.FileName:=OpenDialog2.FileName;
 Form1.MediaPlayer1.Open;
 ListBox2.Items.Add(IntToStr(Form1.MediaPlayer1.Length));
 Form1.MediaPlayer1.Close;
 Form1.TrackBar1.Max:=0;

end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
ListBox1.Items.Delete(ListBox1.ItemIndex);
ListBox2.Items.Delete(ListBox2.ItemIndex);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
with Form1.MediaPlayer1 do
begin
FileName:=ListBox1.Items[ListBox1.ItemIndex];

        Open;
        Form1.Label2.Caption := 'D³ugosc: ' + IntToStr(Length);
        Form1.Label1.Caption := 'Pozycja: ' + IntToStr(Position);
        Form1.NazwaTracka.Caption := 'Œcie¿ka: ' + ListBox1.Items[ListBox1.ItemIndex];
        Form1.TrackBar1.Max := Length;
        Pl:=ListBox1.Items[ListBox1.ItemIndex];
        ot:=False;
        tu:=True;
Play;
end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
ListBox1.ItemIndex:= ListBox1.ItemIndex  - 1;
ListBox2.ItemIndex:=ListBox1.ItemIndex;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
ListBox1.ItemIndex:= ListBox1.ItemIndex  + 1;
ListBox2.ItemIndex:=ListBox1.ItemIndex;
end;

procedure TForm2.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ListBox2.ItemIndex:=ListBox1.ItemIndex;
end;

procedure TForm2.ListBox2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ListBox1.ItemIndex:=ListBox2.ItemIndex;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if ot=True then
begin
Form1.MediaPlayer1.FileName:=Pl;
Form1.MediaPlayer1.Position:=p;
Form1.TrackBar1.Max:=Form1.MediaPlayer1.Length;
Form1.MediaPlayer1.Open;
 end;
 if tu=True then
Form1.MediaPlayer1.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
tu:=False;
end;

end.
