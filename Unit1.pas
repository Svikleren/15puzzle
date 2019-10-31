unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, XPMan, Psock;

type
  TSpeeliite = class(TForm)
    Panel1: TPanel;
    B1: TButton;
    B8: TButton;
    B9: TButton;
    B10: TButton;
    B11: TButton;
    B12: TButton;
    B13: TButton;
    B14: TButton;
    B15: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    B7: TButton;
    SAKSIM: TButton;
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    Spele1: TMenuItem;
    Speletvelreiz1: TMenuItem;
    Iziet1: TMenuItem;
    Palidziba1: TMenuItem;
    Spelesapraksts1: TMenuItem;
    Parprogrammu1: TMenuItem;
    function parbaude(poga:tbutton):boolean;
    procedure moves(var poga:Tbutton);
    procedure B1Click(Sender: TObject);
    function VaiIr():boolean;
    procedure B15Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure B12Click(Sender: TObject);
    procedure sajaukt(var form:tspeeliite);
    procedure SAKSIMClick(Sender: TObject);
    function kas_sturi(poga:tbutton):boolean;
    procedure B10Click(Sender: TObject);
    procedure B13Click(Sender: TObject);
    procedure B14Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure B7Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure Spelesapraksts1Click(Sender: TObject);
    procedure Parprogrammu1Click(Sender: TObject);
    procedure Speletvelreiz1Click(Sender: TObject);
    procedure Iziet1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Speeliite: TSpeeliite;

implementation

uses Unit2, Unit3;

{$R *.dfm}
var
tuks_top:integer=120;
tuks_left:integer=120;

function tspeeliite.kas_sturi(poga:tbutton):boolean;
begin
  kas_sturi:=false;
  if (poga.top=120) and (poga.Left=120) then kas_sturi:=true;
end;


function Tspeeliite.parbaude(poga:tbutton):boolean;
begin
 parbaude:=false;
 if poga.Top=tuks_top then
  if (poga.Left=tuks_left+40) or (poga.left=tuks_left-40) then parbaude:=true;
 if poga.Left=tuks_Left then
  if (poga.top=tuks_top+40) or (poga.top=tuks_top-40) then parbaude:=true;
end;

procedure Tspeeliite.moves(var poga:Tbutton);
var
a:integer;
begin
  a:=poga.Top;
  poga.Top:=tuks_top;
  tuks_top:=a;
  a:=poga.Left;
  poga.Left:=tuks_left;
  tuks_left:=a;
end;

function Tspeeliite.VaiIr:boolean;
begin
vaiir:=false;
  if (tuks_left=120) and (tuks_top=120) then
    if (b1.Top=0) and (b1.Left=0) then
      if (b2.top=0) and (b2.left=40) then
        if (b3.top=0) and (b3.left=80) then
          if (b4.top=0) and (b4.left=120) then
            if (b5.top=40) and (b5.left=0) then
              if (b6.top=40) and (b6.left=40) then
                if (b7.top=40) and (b7.left=80) then
                  if (b8.top=40) and (b8.left=120) then
                    if (b9.top=80) and (b9.Left=0) then
                      if (b10.top=80) and (b10.Left=40) then
                        if (b11.top=80) and (b11.Left=80) then
                          if (b12.top=80) and (b12.Left=120) then
                            if (b13.top=120) and (b13.Left=0) then
                              if (b14.top=120) and (b14.Left=40) then
                                if (b15.top=120) and (b15.left=80) then VaiIr:=true;
end;



procedure TSpeeliite.B1Click(Sender: TObject);
begin
if (parbaude(b1)=true) then moves(b1);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);
end;

procedure TSpeeliite.B15Click(Sender: TObject);
begin
if (parbaude(b15)=true) then moves(b15);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);
end;

procedure TSpeeliite.B11Click(Sender: TObject);
begin
if (parbaude(b11)=true) then moves(b11);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);
end;

procedure TSpeeliite.B12Click(Sender: TObject);
begin
if (parbaude(b12)=true) then moves(b12);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);
end;

procedure TSpeeliite.SAKSIMClick(Sender: TObject);
begin
  b1.Enabled:=True;
  b2.Enabled:=True;
  b3.Enabled:=True;
  b4.Enabled:=True;
  b5.Enabled:=True;
  b6.Enabled:=True;
  b7.Enabled:=True;
  b8.Enabled:=True;
  b9.Enabled:=True;
  b10.Enabled:=True;
  b11.Enabled:=True;
  B12.Enabled:=True;
  B13.Enabled:=true;
  B14.Enabled:=true;
  B15.Enabled:=true;
SAKSIM.Caption:='SPELET VELREIZ';
sajaukt(speeliite);
end;

procedure Tspeeliite.sajaukt(var form:tspeeliite);
var
//massiv: array[1..15] of tbutton;
a,i,X,Y:integer;
tc:tcontrol;
tbs:string;
begin
  randomize;
  for i:=1 to 1000 do
  begin
  X:=tuks_left;
  Y:=tuks_top;
    a:=random(4)+1;
    case a of
      1: begin
          if y<>0 then
          begin
            y:=y-20;
            tc:=speeliite.Panel1.controlatpos(point(X,Y),false,true);
            moves(tbutton(tc));
          end;
      end;
      2: begin
          if  x<>120 then
          begin
            x:=x+60;
            tc:=speeliite.Panel1.controlatpos(point(X,Y),false,true);
            moves(tbutton(tc));
          end;
      end;
      3: begin
          if y<>120 then
            begin
              y:=y+60;
              tc:=speeliite.Panel1.controlatpos(point(X,Y),false,true);
              moves(tbutton(tc));
            end;
      end;
      4: begin
          if x<>0 then
            begin
              x:=x-20;
              tc:=speeliite.Panel1.controlatpos(point(X,Y),false,true);
              moves(tbutton(tc));
            end;
      end;
    end;
  end;
  while tuks_left<>120 do
  begin
    x:=tuks_left;
    y:=tuks_top;
    x:=X+60;
    Y:=y+20;
    tc:=speeliite.Panel1.ControlAtPos(point(X,Y),false,true);
    moves(tbutton(tc));
  end;
  while tuks_top<>120 do
  begin
    x:=tuks_left;
    y:=tuks_top;
    Y:=Y+60;
    x:=x+20;
    tc:=speeliite.Panel1.ControlAtPos(point(X,Y),false,true);
    moves(tbutton(tc));
  end;

end;


procedure TSpeeliite.B10Click(Sender: TObject);
begin
if (parbaude(b10)=true) then moves(b10);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B13Click(Sender: TObject);
begin
if (parbaude(b13)=true) then moves(b13);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B14Click(Sender: TObject);
begin
if (parbaude(b14)=true) then moves(b14);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B2Click(Sender: TObject);
begin
if (parbaude(b2)=true) then moves(b2);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B3Click(Sender: TObject);
begin
if (parbaude(b3)=true) then moves(b3);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B4Click(Sender: TObject);
begin
if (parbaude(b4)=true) then moves(b4);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B5Click(Sender: TObject);
begin
if (parbaude(b5)=true) then moves(b5);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B6Click(Sender: TObject);
begin
if (parbaude(b6)=true) then moves(b6);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B7Click(Sender: TObject);
begin
if (parbaude(b7)=true) then moves(b7);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B8Click(Sender: TObject);
begin
if (parbaude(b8)=true) then moves(b8);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.B9Click(Sender: TObject);
begin
if (parbaude(b9)=true) then moves(b9);
if VaiIr=true then Application.MessageBox('Jus uzvarejat!','APSVEICAM!', 0);

end;

procedure TSpeeliite.Spelesapraksts1Click(Sender: TObject);
begin
form2.Visible:=true;
end;

procedure TSpeeliite.Parprogrammu1Click(Sender: TObject);
begin
form3.visible:=true;
end;

procedure TSpeeliite.Speletvelreiz1Click(Sender: TObject);
begin
  b1.Enabled:=True;
  b2.Enabled:=True;
  b3.Enabled:=True;
  b4.Enabled:=True;
  b5.Enabled:=True;
  b6.Enabled:=True;
  b7.Enabled:=True;
  b8.Enabled:=True;
  b9.Enabled:=True;
  b10.Enabled:=True;
  b11.Enabled:=True;
  B12.Enabled:=True;
  B13.Enabled:=true;
  B14.Enabled:=true;
  B15.Enabled:=true;
SAKSIM.Caption:='SPELET VELREIZ';
sajaukt(speeliite);
end;

procedure TSpeeliite.Iziet1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.

{begin
  randomize;
  for i:=1 to 100 do
  begin
    a:=random(4)+1;
    if a=1 then moves(b1);
    if a=2 then moves(b2);
    if a=3 then moves(b3);
    if a=4 then moves(b4);
    if a=5 then moves(b5);
    if a=6 then moves(b6);
    if a=7 then moves(b7);
    if a=8 then moves(b8);
    if a=9 then moves(b9);
    if a=10 then moves(b10);
    if a=11 then moves(b11);
    if a=12 then moves(b12);
    if a=13 then moves(b13);
    if a=14 then moves(b14);
    if a=15 then moves(b15);
  end;
  tc:=speeliite.Panel1.controlatpos(point(121,121),false,true);
  tbs:=tc.Name;
  if tbs<>'panel1' then moves(tbutton(tc));
end;}
