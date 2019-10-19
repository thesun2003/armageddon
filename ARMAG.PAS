uses Crt,Graph,Dos;
const n=16;m=23;
var conets : boolean;
const music : array [1..8] of word=(252,294,330,349,392,440,494,504);
var sc,colvo : string;
Var Karta : array [1..2] of boolean;
Boom : array [1..12] of pointer;
c2,p,p2,p1,p3,p4 : pointer;
Time : word;
ch   : char;
QUIT,q  : boolean;
var x,y,i,j,score,col : integer;
xp,yp : integer;
h : word;
map : array [0..N,0..M] of char;
    Var imeny,mode,code : integer;
    f                   : text;
    s                   : string[1];
r,r1,r2,r3,r4,r5,r6,r7,r8,r9 : pointer;
c                       : array [1..2,1..6] of pointer;
const yk : array[1..4] of word=(46,142,238,334);
const xk : array[1..4] of word=(250,250,195,260);
const menus : array [1..4] of string=('GAME','HELP','TOP SCORE','EXIT');
procedure InsGraph;
var ErrCode,gd,gm : integer;
begin
GD := Detect;
InitGraph(gD,gM,'');
ErrCode := GraphResult;
if ErrCode <> grOK then
begin
  WriteLn('Graph init error: ',GraphErrorMsg(ErrCode));
  ReadLn;
  Halt(1);
end;
end;
procedure Read_Ris(name:string;var p:pointer);
var fl:file;
sz:longint;
begin
assign(fl,name);
reset(fl,1);
sz:=filesize(fl);
getmem(p,sz);
blockread(fl,p^,sz);
close(fl);
end;

Type
   TBase = record
   Name  : string[20];
   Score : word;
   End;

procedure View_Score;
Var f : file of TBase;
    a : array [1..10] of TBase;
temp1 : string[20];
poz,j,i : byte;
t2,t3 : string;
p1    : pointer;
t4,temp: word;
Score : word;
ch    : char;
const TS : string[10]='Top Score';
Begin
     Read_Ris('images\top_bg.edp',p1);
     i:=0;
     j:=0;
      repeat
      repeat
      PutImage(i*10,j*10,p1^,NormalPut);
      inc(i);
      until i=65;
      inc(j);
      until j=50;
Assign(f,'data\score.dat');
ReSet(f);
J:=1;
I:=1;
Repeat
Read(f,a[j]);
Inc(j);
Until j-1=10;
Close(f);
for i:=1 to 10 do begin
    TEMP:=0;
            for j:=i to 10 do begin
            if a[j].Score > temp then
            begin
            temp:=a[j].Score;
            poz:=j;
            end;
            end;
    a[poz].score:=a[i].score;
    a[i].score:=temp;
    TEMP1:=a[poz].name;
    a[poz].Name:=a[i].Name;
    a[i].Name:=temp1;
end;
setfillstyle(1,0);
Bar(130,30,490,380);
setcolor(7);
Rectangle(130,80,490,380);
setcolor(7);
Rectangle(131,81,489,379);
setcolor(15);
Rectangle(132,82,488,378);
setcolor(15);
Rectangle(133,83,487,377);

setcolor(7);
Rectangle(130,30,490,380);
setcolor(7);
Rectangle(131,31,489,379);
setcolor(15);
Rectangle(132,32,488,378);
setcolor(15);
Rectangle(133,33,487,377);
setfillstyle(4,8);
bar(135,35,150,79);
setfillstyle(5,8);
bar(470,35,485,79);
setfillstyle(4,7);
bar(150,35,165,79);
setfillstyle(5,7);
bar(455,35,470,79);
setfillstyle(4,7);
bar(150,35,165,79);
setfillstyle(4,15);
bar(165,35,180,79);
setfillstyle(5,15);
bar(440,35,455,79);
SetTextStyle(1,0,2);
for j:=1 to 10 do begin
str(a[j].Score,t2);
str(j:2,t3);
setcolor(1);
Outtextxy(140,(j+3)*25,t3);
setcolor(4);
Outtextxy(180,(j+3)*25,a[j].name);
Outtextxy(380,(j+3)*25,'- '+t2);
setcolor(9);
Outtextxy(142,(j+3)*25+2,t3);
setcolor(12);
Outtextxy(182,(j+3)*25+2,a[j].name);
Outtextxy(382,(j+3)*25+2,'- '+t2);
end;
ch:=#1;
setcolor(14);
SetTextStyle(0,0,0);
outtextxy(190,360,'Press SPACE to continue');
SetTextStyle(1,0,5);
t4:=1;
repeat
for i:=1 to 10 do begin
if (i=t4+1) or (i=t4-1) then setcolor(9) else if i=t4 then setcolor(1) else setcolor(0);
Outtextxy(170+i*25,26,TS[i]);
if (i=t4+1) or (i=t4-1) then setcolor(11) else if i=t4 then setcolor(3) else setcolor(0);
Outtextxy(172+i*25,28,TS[i]);
end;
delay(100);
if t4 < 10 then inc(t4) else t4:=1;
if keypressed then ch:=readkey;
until ch=#32;
end;

procedure End0vka_2;
const col : array [0..2] of byte=(1,9,15);
const clo : array [1..4] of byte=(1,0,1,0);
const colo : array [0..4] of byte=(15,14,6,4,12);
var x,y,x1,y1,x2,y2,i,x3,y3,
z,r,xp1,xp2,xp3,xp4,
xq,xq1,xq2,xq3,yq,yq1,yq2,yq3 : integer;
c1: string;
c: real;
p2,p1,p3 : pointer;
begin
Read_Ris('images\meteor.edp',p2);
Read_Ris('images\crater.edp',p1);
Read_Ris('images\city.edp',p3);
i:=0;
c:=0;
x:=1;
y:=1;
x1:=1;
y1:=1;
z:=0;
xp1:=90;
xp2:=370;
xp3:=230;
xp4:=260;
xq:=200;
xq1:=70;
xq2:=10;
xq3:=100;
yq:=300;
yq1:=70;
yq2:=230;
yq3:=430;
x:=400;
y:=0;
r:=0;
repeat
setcolor(6);
circle(0,480,500+r);
dec(x);
inc(y);
inc(xq);
inc(xq1);
inc(xq2);
inc(xq3);
dec(yq);
dec(yq1);
dec(yq2);
dec(yq3);
putpixel(xq3+400,yq3-250,14);
putpixel(xq2+500,yq2,15);
setcolor(14);
circle(xq2+550,yq2+50,1);
putpixel(xq3+450,yq3-170,15);
putpixel(xq1+400,yq1,14);
putimage(x  ,y  ,p2^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq1,yq1,p1^,NORMALPUT);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
delay(0);
putimage(x  ,y  ,p2^,XORPUT);
putimage(xq ,yq ,p3^,XORPUT);
putimage(xq1,yq1,p1^,XORPUT);
putimage(xq2,yq2,p1^,XORPUT);
putimage(xq3,yq3,p3^,XORPUT);
setcolor(0);
circle(0,480,500+r);
inc(r);
putpixel(xq3+400,yq3-250,0);
putpixel(xq2+500,yq2,0);
setcolor(0);
circle(xq2+550,yq2+50,1);
putpixel(xq3+450,yq3-170,0);
putpixel(xq1+400,yq1,0);
until y>=220;
setcolor(15);
circle(0,480,500+r);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
x:=x+25;
y:=y+25;
for r:=1 to 100 do
begin
sound(r);
delay(10);
nosound;
setcolor(colo[(r div 20)]);
circle(x,y,r);
end;
for r:=101 to 400 do
begin
sound(r);
delay(50);
nosound;
setcolor(7);
circle(x,y,r);
setcolor(0);
circle(x,y,r);
setcolor(7);
circle(x,y,r-100);
end;
for r:=400 to 625 do
begin
setcolor(7);
circle(x,y,r-100);
end;
Freemem(p1,sizeof(p1));
Freemem(p2,sizeof(p2));
Freemem(p3,sizeof(p3));
end;


procedure End0vka;
const col : array [0..2] of byte=(1,9,15);
const clo : array [1..4] of byte=(1,0,1,0);
const colo : array [0..4] of byte=(15,14,6,4,12);
var x,y,x1,y1,x2,y2,i,x3,y3,
z,r,xp1,xp2,xp3,xp4,
xq,xq1,xq2,xq3,yq,yq1,yq2,yq3 : integer;
c1: string;
c: real;
p2,p1,p3 : pointer;
begin
Read_Ris('images\meteor.edp',p2);
Read_Ris('images\crater.edp',p1);
Read_Ris('images\city.edp',p3);
i:=0;
c:=0;
x:=1;
y:=1;
x1:=1;
y1:=1;
z:=0;
xp1:=90;
xp2:=370;
xp3:=230;
xp4:=260;
xq:=200;
xq1:=70;
xq2:=10;
xq3:=100;
yq:=300;
yq1:=70;
yq2:=230;
yq3:=430;
x:=400;
y:=0;
r:=0;
repeat
setcolor(6);
circle(0,480,500+r);
dec(x);
inc(y);
inc(xq);
inc(xq1);
inc(xq2);
inc(xq3);
dec(yq);
dec(yq1);
dec(yq2);
dec(yq3);
putpixel(xq3+400,yq3-250,14);
putpixel(xq2+500,yq2,15);
putpixel(xq2+550,yq2+50,14);
putpixel(xq3+450,yq3-170,15);
putpixel(xq1+400,yq1,14);
putimage(x  ,y  ,p2^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq1,yq1,p1^,NORMALPUT);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
delay(0);
putimage(x  ,y  ,p2^,XORPUT);
putimage(xq ,yq ,p3^,XORPUT);
putimage(xq1,yq1,p1^,XORPUT);
putimage(xq2,yq2,p1^,XORPUT);
putimage(xq3,yq3,p3^,XORPUT);
setcolor(0);
circle(0,480,500+r);
inc(r);
putpixel(xq3+400,yq3-250,0);
putpixel(xq2+500,yq2,0);
putpixel(xq2+550,yq2+50,0);
putpixel(xq3+450,yq3-170,0);
putpixel(xq1+400,yq1,0);
until y>=100;
setcolor(14);
line(xq3+12,yq3+25,x+25,y+25);
repeat
      sound(music[random(9)]);
      delay(10);
      inc(i);
until i=9;
setcolor(15);
circle(0,480,500+r);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
x:=x+25;
y:=y+25;
for r:=1 to 100 do
begin
sound(r*r);
delay(10);
nosound;
setcolor(colo[(r div 20)]);
circle(x,y,r);
end;
for r:=100 downto 1 do
begin
sound(r*r);
delay(10);
nosound;
setcolor(0);
circle(x,y,101-r);
end;
end;

function LeadingZero(w : Word) : String;
var
  s : String;
begin
  Str(w:0,s);
  if Length(s) = 1 then
    s := '0' + s;
  LeadingZero := s;
end;

procedure Clock;
var
  h, m, s, hund : Word;
  h1,m1,s1      : string;
  m3,s3,s2      : byte;
  m4,s4         : string;
begin
GetTime(h,m,s,hund);
if s2 <> s then
begin
dec(time);
m3:=time div 60;
s3:=time mod 60;
m4:=LeadingZero(m3);
s4:=LeadingZero(s3);
end;
h1:=LeadingZero(h);
m1:=LeadingZero(m);
s1:=LeadingZero(s);
s2:=s;
OutTextXY(16*25,2*25,h1+':'+m1+':'+s1);
OutTextXY(16*25,4*25,'00:'+m4+':'+s4);
end;

const
kbRight=#77;kbLeft=#75;kbUp=#72;kbDown=#80;kbEsc=#27;kbEnter=#13;
kbProbel=#32;kbPlus=#43;kbMinus=#45;
const n1=14;m1=14;
var map3 : array [0..N1,0..M1] of byte;
var k,yy : integer;

procedure Wait;
var ch: char;
begin
     ch:=#1;
repeat
      Bar(25*16,2*25,25*16+60,2*25+15);
      Bar(25*16,4*25,25*16+60,4*25+15);
      Clock;
      delay(50);
if keypressed then exit;
if (time = 0) then begin
for k:=1 to 8 do
begin
sound(music[8-k]);
delay(100);
end;
nosound;
quit:=true;
       SetFillStyle(1,0);
       Bar(0,0,460,18);
       SetColor(15);
       SetTextStyle(0,0,1);
       outtextxy(0,0,'BAD LUCK, please try again ...');
       SetColor(12);
       outtextxy(225,0,'Press Any Key To Continue ...');
       exit;
end;
until ch <> #1;
end;

procedure DrawPole;
var i,j : byte;
f : text;
begin
rectangle(5,30,390,415);
for i:=0 to N1 do begin
for j:=0 to M1 do begin
case map3[i,j] of
     1:  putimage(j*25+10,i*25+35,p1^,Normalput);
     2:  putimage(j*25+10,i*25+35,p1^,Normalput);
     4:  putimage(j*25+10,i*25+35,p1^,Normalput);
     end;
end;
end;
end;
const
     Color1  : array [1..2] of byte=(14,15);
     Color2 : array [0..4] of byte=(15,14,6,4,12);
procedure Draw_Speed(speed : byte);
var i : integer;
begin
     setcolor(10);
     rectangle(0,74,26,23);
     for i:=0 to speed do
     begin
     line(1,74-i,25,74-i);
     end;
end;
procedure Draw_Pricel;
begin
     setcolor(13);
     rectangle(315,155,325,165);
     setcolor(5);
     rectangle(310,150,330,170);
end;
function LEVEL_END: boolean;
procedure Game3;
const n3=5;m3=3;
var xxx : array [0..N3*M3*3] of integer;
var yyy : array [0..N3*M3*3] of integer;
var yyy2 : array [0..N3*M3] of integer;
p       : pointer;
x,x1,y,i,j,xq,yq,xm,ym,r,score: integer;
ch     : char;
s      : string;
shag,g : byte;
begin
     shag:=50;
     g:=0;
     x:=0;
     y:=0;
     xm:=590;
     ym:=0;
     x1:=0;
     Read_Ris('images\meteor.edp',p);
     setfillstyle(1,0);
     for i:=0 to N3*M3 do begin
     xxx[i*3-3]:=random(640);
     yyy[i]:=random(480);
     yyy2[i]:=random(480);
     xxx[i*3-2]:=random(640);
     xxx[i*3-1]:=random(640);
     end;
     g:=0;
     score:=0;
repeat
      Draw_Speed(Shag);
      Draw_Pricel;
      ch:=#1;
repeat
      setcolor(15);
      bar3d(330,430,500,460,5,topon);
      settextstyle(2,0,5);
      str(score,s);
      outtextxy(340,440,'Your score is '+s);
      if ym >= 580 then begin
      for r:=0 to 500 do
      begin
      sound(r div 5);
      delay(1);
      nosound;
      setcolor(color2[(r div 100)]);
      Ellipse(xm+x+25,ym-y+25,0,360,(r div 2),(r div 5));
      end;
      for r:=500 to 900 do
      begin
      sound(r div 5);
      delay(1);
      nosound;
      setcolor(7);
      Ellipse(xm+x+25,ym-y+25,0,360,(r div 2),(r div 5)+(r div 50));
      setcolor(0);
      Ellipse(xm+x+25,ym-y+25,0,360,(r div 2),(r div 5)+(r div 50));
      end;
      cleardevice;
      Level_End:=false;
      exit;
      end;
      inc(g);
      str(score,s);
      putimage(xm+x,ym-y,p^,XORPUT);
      if x>=1280 then
      begin
      x1:=x-1910;
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x1,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x1,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      end
      else
      if x<=0 then
      begin
      x1:=x+1910;
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x,yyy[i]-y,color1[random(2)]);
      circle(xxx[i*3-2]+x-640,yyy[i]-y,1);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x1-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      end
      else
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      setcolor(2);
      line(0,480-y,640,480-y);
      if g=255 then g:=0;
      if (keypressed) then ch:=#2 else
      begin
      putimage(xm+x,ym-y,p^,XORPUT);
      xm:=xm-(g mod 2);
      ym:=ym+(g mod 2);
      end;
      delay(50);
      until ch <> #1;

      setcolor(15);
      bar3d(330,430,500,460,5,topon);
      settextstyle(2,0,5);
      str(score,s);
      outtextxy(340,440,'Your score is '+s);
      if x>=1280 then
      begin
      x1:=x-1910;
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x1,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x1,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      end
      else
      if x<=0 then
      begin
      x1:=x+1910;
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-1]+x1-1280,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x1-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      end
      else
      for i:=0 to N3*M3 do begin
      putpixel(xxx[i*3-3]+x,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,color1[random(2)]);
      putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,color1[random(2)]);
      putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,color1[random(2)]);
      end;
      ch:=readkey;
{===========================================================}
      if ch=kbPlus then
      begin
      if shag < 50 then
      shag:=shag+5;
      end;
      if ch=kbMinus then
      begin
      if shag >= 5 then
      shag:=shag-5;
      end;
{========================= Shooting ========================}
if ch=kbProbel then begin
                         xq:=0;
                         yq:=480;
for i:=0 to 50 do begin
        circle(xq+i,yq-i,15-(i div 5));
        circle(xq-i+640,yq-i,15-(i div 5));
end;
                    repeat
                    setcolor(14);
                    line(0,480,xq,yq);
                    line(640,480,640-xq,yq);
                    inc(xq,10);
                    dec(yq,10);
                    sound(music[yq div 40]);
                    delay(1);
                    setcolor(0);
                    line(0,480,xq,yq);
                    line(640,480,640-xq,yq);
                    until yq<=160;
                         nosound;
if (xq > xm+x) and (xq <= xm+x+25) and
(ym-y > 120) and (160 >= ym-y+25) then
begin
inc(score);
end;
if score=10 then
begin
     for r:=0 to 100 do begin
                             sound(r);
                             delay(20);
                             nosound;
                             setcolor(color2[(r div 20)]);
                             circle(xm+x+25,ym-y+25,r);
                        end;
                        Level_End:=true;
                        exit;
                    end;
end;
{=================================================}
     setcolor(0);
     line(0,480-y,640,480-y);
     putimage(xm+x,ym-y,p^,XORPUT);
     if x>=1280 then
     begin
     x1:=x-1910;
     for i:=0 to N3*M3 do begin
     putpixel(xxx[i*3-3]+x1,yyy[i]-y,0);
     putpixel(xxx[i*3-2]+x-640,yyy[i]-y,0);
     putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,0);
     putpixel(xxx[i*3-3]+x1,yyy2[i]-y-480,00);
     putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,00);
     putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,00);
     end;
  end
else
if x<=0 then
     begin
     x1:=x+1910;
     for i:=0 to N3*M3 do begin
     putpixel(xxx[i*3-3]+x,yyy[i]-y,0);
     putpixel(xxx[i*3-2]+x-640,yyy[i]-y,0);
     putpixel(xxx[i*3-1]+x1-1280,yyy[i]-y,0);
     putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,00);
     putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,00);
     putpixel(xxx[i*3-1]+x1-1280,yyy2[i]-y-480,00);
     end;
  end
else
    for i:=0 to N3*M3 do begin
    putpixel(xxx[i*3-3]+x,yyy[i]-y,0);
    putpixel(xxx[i*3-2]+x-640,yyy[i]-y,0);
    putpixel(xxx[i*3-1]+x-1280,yyy[i]-y,0);
    putpixel(xxx[i*3-3]+x,yyy2[i]-y-480,00);
    putpixel(xxx[i*3-2]+x-640,yyy2[i]-y-480,00);
    putpixel(xxx[i*3-1]+x-1280,yyy2[i]-y-480,00);
end;
{=================================================}
if ch=kbLeft then x:=x+shag;
if ch=kbDown then y:=y+shag;
if ch=kbUp then y:=y-shag;
if ch=kbRight then x:=x-shag;
   dec(xm);
   inc(ym);
if x>=1910 then x:=shag;
if x<=-640 then x:=1280-shag;
if y>=350 then y:=320;
if y<=-500 then y:=-500+shag;
   Bar(0,74,26,23);
until ch=kbEsc;
end;
begin
GAME3;
end;

{=============================== LEVEL 2 ===============================}
procedure LEVEL_2;
procedure Game2;
var Code,ErrCode,gd,gm,x,y,i,j,score,col : integer;
h  : word;
ch : char;
f  : text;
s  : string[1];
begin
karta[2]:=false;
score:=0;
SetColor(15);
QUIT:=false;
Q:=false;
h:=0;
col:=0;
for i:=0 to N1 do begin
for j:=0 to M1 do begin
map3[i,j]:=random(3);
end;
end;
map3[random(n),random(m)]:=4;
for i:=0 to N1 do begin
for j:=0 to M1 do begin
if map3[i,j]=2 then inc(col);
end;
end;
Read_Ris('images\boom\1.edp',boom[1]);
Read_Ris('images\boom\2.edp',boom[2]);
Read_Ris('images\boom\3.edp',boom[3]);
Read_Ris('images\boom\4.edp',boom[4]);
Read_Ris('images\boom\5.edp',boom[5]);
Read_Ris('images\boom\6.edp',boom[6]);
Read_Ris('images\boom\7.edp',boom[7]);
Read_Ris('images\boom\8.edp',boom[8]);
Read_Ris('images\boom\9.edp',boom[9]);
Read_Ris('images\boom\10.edp',boom[10]);
Read_Ris('images\boom\11.edp',boom[11]);
Read_Ris('images\boom\12.edp',boom[12]);

Read_Ris('images\block.edp',p1);
Read_Ris('images\block2.edp',p3);
Read_Ris('images\cursor.edp',p2);
Read_Ris('images\kar2.edp',c2);
x:=35;
y:=60;
setfillstyle(1,0);
rectangle(5,30,390,415);
for i:=0 to N1 do begin
for j:=0 to M1 do begin
case map3[i,j] of
     1:  putimage(j*25+10,i*25+35,p1^,Normalput);
     2:  putimage(j*25+10,i*25+35,p3^,Normalput);
     4:  putimage(j*25+10,i*25+35,p1^,Normalput);
     end;
end;
end;
delay(1000);
cleardevice;
DrawPole;
Time:=col*5;
repeat
settextstyle(2,0,5);
bar3d(430,430,600,460,5,topon);
rectangle(25*16-5,25*2-5,25*18+15,25*2+20);
outtextxy(25*19,25*2,'<- Current Time');
setcolor(12);
rectangle(25*16-5,25*4-5,25*18+15,25*4+20);
outtextxy(25*19,25*4,'<- Time For Play');
setcolor(15);
str(score,sc);
outtextxy(440,440,'Your score is '+sc);
str(col,colvo);
outtextxy(40,440,'Amount of Red Blocks is '+colvo);
putimage(x,y,p2^,XORPut);
Wait;
ch:=readkey;
if (time = 0) then begin
for k:=1 to 8 do
begin
sound(music[8-k]);
delay(100);
end;
nosound;
quit:=true;
       SetFillStyle(1,0);
       Bar(0,0,460,18);
       SetColor(15);
       SetTextStyle(0,0,1);
       outtextxy(0,0,'BAD LUCK, please try again...');
       SetColor(12);
       outtextxy(225,0,'Press Any Key To Continue ...');
       exit;
end;
putimage(x,y,p2^,XORPut);
if ch=kbLeft then
begin
x:=x-25;
sound(320);
delay(10);
nosound;
end;
if ch=kbDown then
begin
y:=y+25;
sound(320);
delay(10);
nosound;
end;
if ch=kbUp then
begin
y:=y-25;
sound(320);
delay(10);
nosound;
end;
if ch=kbRight then
begin
x:=x+25;
sound(320);
delay(10);
nosound;
end;
{=======================================================}
if x>=361 then x:=x-25;
if x<=0 then x:=x+25;
if y>=386 then y:=y-25;
if y<=11 then y:=y+25;
if ch=kbEnter then begin
for i:=0 to N do begin
if (y=(i*25)+35) then
for j:=0 to M do begin
if (y=(i*25)+35) and (x=(j*25)+10) then begin
if map3[i,j]=4 then begin
     for k:=1 to 12 do begin
     putimage(x,y,boom[k]^,NormalPut);
     sound(music[k]);
     delay(100);
     end;
     nosound;
     map3[i,j]:=0;
     karta[2]:=true;
     i:=1;
     repeat
           sound(music[i]);
           delay(50);
           inc(i);
     until i=8;
     repeat
           sound(music[i]);
           delay(50);
           dec(i);
     until i=1;
     nosound;
     settextstyle(0,0,1);
     OutTextXY(0,0,'Congratulations, you have just found the second part of the map!!!');
     Bar(x,y,x+25,y+25);
     PutImage(x+13,y,c2^,NormalPut);
     PutImage(13,454,c2^,NormalPut);
     Settextstyle(2,0,5);
end;
if map3[i,j]=2 then begin
     inc(score);
     map3[i,j]:=0;
     for k:=1 to 12 do begin
     putimage(x,y,boom[k]^,NormalPut);
     sound(music[k]);
     delay(100);
     end;
     nosound;
     Bar(x,y,x+25,y+24);
     end;
end;
end;
end;
if (score=col) and (karta[2]=true) then quit:=true;
end;
{===============================================}
until Quit=true;
end;
label 3,4;
begin
3: Game2;
       if q=true then goto 3;
       repeat until keypressed;
       ClearDevice;
       ch:=readkey;
       if ch=kbEsc then goto 4;
goto 4;
4:
begin
end;
end;
procedure Help(name:string);
const x_h=130; y_h=150;_dx=400;_dy=200;
var color,y1,y,dy,q:integer;
ch:char;
s:string;
fl:text;
label loop;
begin
   settextstyle(0,0,1);
   setfillstyle(solidfill,8);
   assign(fl,name);
   reset(fl);
   dy:=textheight('W')+5;y:=y_h+20;
   bar(x_h,y_h,x_h+_dx,y_h+_dy);
   while not eof(fl) do
     begin
       readln(fl,s);
       color:=3;
       if color <> 8 then setcolor(color) else
       begin
       repeat
       color:=random(15);
       until color <> 8;
       end;
       setcolor(color);
       outtextxy(x_h+10,y,s);
       y:=y+dy;
       if y>=(y_h+_dy-dy) then
       begin
        ch:=readkey;
         end;
       end;
         if ch = #27 then
         begin
              close(fl);
              exit;
       end;
   SETCOLOR(7);
   RECTANGLE(x_h+2,y_h+2,x_h+_dx-2,y_h+_dy-2);
   setcolor(7);
   RECTANGLE(x_h+3,y_h+3,x_h+_dx-3,y_h+_dy-3);
   setcolor(15);
   RECTANGLE(x_h+4,y_h+4,x_h+_dx-4,y_h+_dy-4);
   setcolor(15);
   RECTANGLE(x_h+5,y_h+5,x_h+_dx-5,y_h+_dy-5);
   outtextxy(x_h+80-10,y_h+_dy-dy,'Press SPACE to exit');
settextstyle(1,0,1);
y1:=100;
q:=10;
   repeat
loop:   SETCOLOR(3);
   outtextxy(110,y1+q,'A');
   outtextxy(110,y1+q+15,'R');
   outtextxy(110,y1+q+30,'M');
   outtextxy(110,y1+q+45,'A');
   outtextxy(110,y1+q+60,'G');
   outtextxy(110,y1+q+75,'E');
   outtextxy(110,y1+q+90,'D');
   outtextxy(110,y1+q+105,'D');
   outtextxy(110,y1+q+120,'O');
   outtextxy(110,y1+q+135,'N');
   outtextxy(535,y1+q,'A');
   outtextxy(535,y1+q+15,'R');
   outtextxy(535,y1+q+30,'M');
   outtextxy(535,y1+q+45,'A');
   outtextxy(535,y1+q+60,'G');
   outtextxy(535,y1+q+75,'E');
   outtextxy(535,y1+q+90,'D');
   outtextxy(535,y1+q+105,'D');
   outtextxy(535,y1+q+120,'O');
   outtextxy(535,y1+q+135,'N');
   delay(50);
   SETCOLOR(0);
   outtextxy(110,y1+q,'A');
   outtextxy(110,y1+q+15,'R');
   outtextxy(110,y1+q+30,'M');
   outtextxy(110,y1+q+45,'A');
   outtextxy(110,y1+q+60,'G');
   outtextxy(110,y1+q+75,'E');
   outtextxy(110,y1+q+90,'D');
   outtextxy(110,y1+q+105,'D');
   outtextxy(110,y1+q+120,'O');
   outtextxy(110,y1+q+135,'N');
   outtextxy(535,y1+q,'A');
   outtextxy(535,y1+q+15,'R');
   outtextxy(535,y1+q+30,'M');
   outtextxy(535,y1+q+45,'A');
   outtextxy(535,y1+q+60,'G');
   outtextxy(535,y1+q+75,'E');
   outtextxy(535,y1+q+90,'D');
   outtextxy(535,y1+q+105,'D');
   outtextxy(535,y1+q+120,'O');
   outtextxy(535,y1+q+135,'N');
   y1:=y1+q;
  if y1 <= 100 then begin
           y1:=y1+q;
           q:=10;
           goto loop;
           end;
  if y1 >= 250 then begin
           y1:=y1-q;
           q:=-10;
           goto loop;
           end;
if keypressed then ch:=readkey else goto loop;
if ch <> #32 then
begin
goto loop;
end
else exit;
         until ch=#32;
         y:=y_h+10;
     ch:=readkey;
     while keypressed do ch:=readkey;
    close(fl);
    settextstyle(0,0,1);
end;

procedure Zastavka;
const col : array [0..2] of byte=(1,9,15);
const clo : array [1..4] of byte=(1,0,1,0);
const colo : array [0..4] of byte=(15,14,6,4,12);
var x,y,x1,y1,x2,y2,i,x3,y3,
z,r,xp1,xp2,xp3,xp4,
xq,xq1,xq2,xq3,yq,yq1,yq2,yq3 : integer;
c1: string;
c: real;
p2,p1,p3 : pointer;
begin
Read_Ris('images\meteor.edp',p2);
Read_Ris('images\crater.edp',p1);
Read_Ris('images\city.edp',p3);
i:=0;
c:=0;
x:=1;
y:=1;
x1:=1;
y1:=1;
z:=0;
xp1:=90;
xp2:=370;
xp3:=230;
xp4:=260;
xq:=200;
xq1:=70;
xq2:=10;
xq3:=100;
yq:=300;
yq1:=70;
yq2:=230;
yq3:=430;
x:=400;
y:=0;
r:=0;
repeat
setcolor(6);
circle(0,480,500+r);
dec(x);
inc(y);
inc(xq);
inc(xq1);
inc(xq2);
inc(xq3);
dec(yq);
dec(yq1);
dec(yq2);
dec(yq3);
putpixel(xq3+400,yq3-250,14);
putpixel(xq2+500,yq2,15);
putpixel(xq2+550,yq2+50,14);
putpixel(xq3+450,yq3-170,15);
putpixel(xq1+400,yq1,14);
putimage(x  ,y  ,p2^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq1,yq1,p1^,NORMALPUT);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
delay(0);
putimage(x  ,y  ,p2^,XORPUT);
putimage(xq ,yq ,p3^,XORPUT);
putimage(xq1,yq1,p1^,XORPUT);
putimage(xq2,yq2,p1^,XORPUT);
putimage(xq3,yq3,p3^,XORPUT);
setcolor(0);
circle(0,480,500+r);
inc(r);
putpixel(xq3+400,yq3-250,0);
putpixel(xq2+500,yq2,0);
putpixel(xq2+550,yq2+50,0);
putpixel(xq3+450,yq3-170,0);
putpixel(xq1+400,yq1,0);
until y>=220;
setcolor(15);
circle(0,480,500+r);
putimage(xq2,yq2,p1^,NORMALPUT);
putimage(xq ,yq ,p3^,NORMALPUT);
putimage(xq3,yq3,p3^,NORMALPUT);
x:=x+25;
y:=y+25;
for r:=1 to 100 do
begin
sound(r);
delay(10);
nosound;
setcolor(colo[(r div 20)]);
circle(x,y,r);
end;
for r:=101 to 400 do
begin
sound(r);
delay(50);
nosound;
setcolor(7);
circle(x,y,r);
setcolor(0);
circle(x,y,r);
setcolor(7);
circle(x,y,r-100);
end;
for r:=400 to 625 do
begin
setcolor(7);
circle(x,y,r-100);
end;
cleardevice;
repeat
setcolor(col[round(c/8.25)]);
x:=round((sin(c-1))*50);
y:=round(cos(c+1)*50);
x2:=round(sin(c)*50);
y2:=round(cos(c)*50);
x3:=round(cos(c)*50);
y3:=round(sin(c)*50);
x1:=round(cos(c-1)*50);
y1:=round(sin(c+1)*50);
settextstyle(7,0,8);
outtextxy(x+xp1,y+200,'Arm');
outtextxy(x1+xp2,y1+200,'don');
outtextxy(x2+xp3,y2+185,'ag');
outtextxy(x3+xp4,y3+245,'ed');
rectangle(0,0,639,479);
delay(10);
setcolor(0);
x:=round((sin(c-0.3-1))*50);
y:=round(cos(c-0.3+1)*50);
outtextxy(x+xp1,y+200,'Arm');
x1:=round(cos(c-0.3-1)*50);
y1:=round(sin(c-0.3+1)*50);
outtextxy(x1+xp2,y1+200,'don');
x2:=round(sin(c-0.3)*50);
y2:=round(cos(c-0.3)*50);
outtextxy(x2+xp3,y2+185,'ag');
x3:=round(cos(c-0.3)*50);
y3:=round(sin(c-0.3)*50);
outtextxy(x3+xp4,y3+245,'ed');
inc(z);
if z=3 then z:=0;
inc(i);
c:=c+0.1;
until round(c)=13;
setcolor(15);
x:=round((sin(c-0.1-1))*50);
y:=round(cos(c-0.1+1)*50);
outtextxy(x+xp1,y+200,'Arm');
x1:=round(cos(c-0.1-1)*50);
y1:=round(sin(c-0.1+1)*50);
outtextxy(x1+xp2,y1+200,'don');
x2:=round(sin(c-0.1)*50);
y2:=round(cos(c-0.1)*50);
outtextxy(x2+xp3,y2+185,'ag');
x3:=round(cos(c-0.1)*50);
y3:=round(sin(c-0.1)*50);
outtextxy(x3+xp4,y3+245,'ed');
for i:=1 to 50 do
begin
sound(i*10);
delay(50);
nosound;
end;
settextstyle(0,0,0);
setcolor(15);
outtextxy(150,380,'Vladimir Semenov, 904v, VKI NSU');
if keypressed then repeat readkey; until not(keypressed);
repeat
outtextxy(150,420,'Press Any Key To Continue .....');
until keypressed;
for i := 0 to 640 do
begin
setcolor(0);
line(i,0,i,480);
sound(20);
delay(10);
nosound;
end;
Freemem(p1,sizeof(p1));
Freemem(p2,sizeof(p2));
Freemem(p3,sizeof(p3));
end;

Procedure Rec;
   begin
        bar3d(190,yk[imeny]-5,410,yk[imeny]+55,5,topon);
        setcolor(0);
        outtextxy(xk[imeny],yk[imeny],menus[imeny]);
        setcolor(12);
        outtextxy(xk[imeny],yk[imeny]+5,menus[imeny]);
   end;
procedure Draw_Menu;
var i : integer;
begin
cleardevice;
        setfillstyle(1,14);
        bar(160,yk[1]-15,440,yk[4]+65);
        setfillstyle(1,1);
        for i:=1 to 500 do begin
        putpixel(random(640),random(480),random(15));
        end;
        bar(190,yk[1]-5,410,yk[1]+55);
        bar(190,yk[2]-5,410,yk[2]+55);
        bar(190,yk[3]-5,410,yk[3]+55);
        bar(190,yk[4]-5,410,yk[4]+55);
        setcolor(4);
        outtextxy(xk[1],yk[1],menus[1]);
        outtextxy(xk[2],yk[2],menus[2]);
        outtextxy(xk[3],yk[3],menus[3]);
        outtextxy(xk[4],yk[4],menus[4]);
        end;
procedure Menu;
   BEGIN
        ch:=#1;
        imeny:=1;
        setfillstyle(2,1);
        settextstyle(1,0,5);
        Draw_Menu;
      rec;
  Repeat
   if keypressed then
 begin
     ch:=readkey;
     if ch=#0 then
     ch:=readkey;
     CASE ch OF
     #72: begin
          rec;
          setcolor(0);
          outtextxy(245,yk[imeny]-5,menus[imeny]);
          bar3d(240,yk[imeny]-5,360,yk[imeny]+55,5,topon);
          Draw_Menu;
          if imeny=1 then
          imeny:=4
          else
          imeny:=imeny-1;
          Draw_Menu;
          Rec;
          sound(20);
          delay(10);
          nosound;
          end;
     #80: begin
          rec;
          setcolor(0);
          outtextxy(245,yk[imeny]+5,menus[imeny]);
          bar3d(240,yk[imeny]-5,360,yk[imeny]+55,5,topon);
          draw_menu;
          if imeny=4 then
          imeny:=1
          else
          imeny:=imeny+1;
          draw_menu;
          rec;
          sound(20);
          delay(10);
          nosound;
     end;
END;
end;
  until ch=#13;
    Rec;
  end;
procedure ReDraw(x,y: integer;put : char);
begin
case put of
     '║':  putimage(x,y,r2^,Normalput);
     '═':  putimage(x,y,r1^,Normalput);
     '╔':  putimage(x,y,r3^,Normalput);
     '╗':  putimage(x,y,r4^,Normalput);
     '╝':  putimage(x,y,r5^,Normalput);
     '╚':  putimage(x,y,r6^,Normalput);
{#@!}
end;
end;
procedure LEVEL_1;
var pw,c,p2,p1,p3,p4 : pointer;
e1,e2,e3,e4,e5,e6,e7,e8 : pointer;
const music : array [1..8] of word=(252,294,330,349,392,440,494,504);
Var Karta : array [1..2] of boolean;
f    : text;
s    : string[1];
code : integer;
q,Quit : boolean;
Sc   : string;
ch   : char;
label 1,2;
const kbRight=#77;kbLeft=#75;kbUp=#72;kbDown=#80;kbEsc=#27;
{===================== GAME ===========================}
procedure Game;
const n=16;m=23;
var   k,x,y,i,j,score,col : integer;
                  xp,yp : integer;
{!!!}
                 naprav : integer;
                      h : word;
                     ch : char;
                    yes : boolean;
                   map1 : array [0..N,0..M] of byte;
begin
score:=0;
     conets:=false;
     q:=false;
     Karta[1]:=false;
     Quit:=false;
     randomize;
     h:=0;
     naprav:=random(5);
     assign(f,'data\map1.dat');
     reset(f);
for i:=0 to N do begin
for j:=0 to M do begin
    if j=m then readln(f,s) else read(f,s);
    val(s,map1[i,j],code);
end;
end;
for i:=0 to N do begin
for j:=0 to M do begin
    if map1[i,j]=2 then inc(col);
end;
end;
    Read_Ris('images\kar1.edp',c);
    Read_Ris('images\chel1.edp',p2);
    Read_Ris('images\s.edp',p1);
    Read_Ris('images\prizi.edp',p3);
    Read_Ris('images\exit\exit1.edp',e1);
    Read_Ris('images\exit\exit2.edp',e2);
    Read_Ris('images\exit\exit3.edp',e3);
    Read_Ris('images\exit\exit4.edp',e4);
    Read_Ris('images\exit\exit5.edp',e5);
    Read_Ris('images\exit\exit6.edp',e6);
    Read_Ris('images\exit\exit7.edp',e7);
    Read_Ris('images\exit\exit8.edp',e8);
    Read_Ris('images\map\ch2.edp',p4);
    x:=95;
    y:=120;
    setfillstyle(1,0);
for i:=0 to N do begin
for j:=0 to M do begin
    case map1[i,j] of
     0:  bar(j*25+20,i*25+20,j*25+70,i*25+70);
     1:  putimage(j*25+20,i*25+20,p1^,Normalput);
     2:  putimage(j*25+20,i*25+20,p3^,Normalput);
     4:  putimage(j*25+20,i*25+20,p4^,Normalput);
     5:  putimage(j*25+20,i*25+20,c^,Normalput);
     end;
end;
end;
    bar3d(430,430,600,460,5,topon);
    SetColor(4);
    Rectangle(15,15,625,450);
repeat
      setcolor(0);
      bar(431,431,599,459);
      setcolor(15);
      settextstyle(2,0,5);
      str(score,Sc);
      outtextxy(440,440,'Your score is '+Sc);

      putimage(x,y,p2^,NormalPut);
      ch:=readkey;
      putimage(x,y,p2^,XORPut);
if ch=kbLeft then
   begin
   x:=x-25;
   yes:=false;
   sound(50);
   delay(10);
   nosound;
   end;
if ch=kbDown then
   begin
   y:=y+25;
   yes:=false;
   sound(50);
   delay(10);
   nosound;
end;
if ch=kbUp then
   begin
   y:=y-25;
   yes:=false;
   sound(50);
   delay(10);
   nosound;
end;
if ch=kbRight then
begin
     x:=x+25;
     yes:=false;
   sound(50);
   delay(10);
   nosound;
end;
for i:=0 to N do begin
if (y-25=(i*25)-5) then
for j:=0 to M do begin
if (y-25=(i*25)-5) and (x-25=(j*25)-5) then begin
if (ch=kbRight) and (map1[i,j]=1) then x:=x-25 else x:=x;
if (ch=kbLeft) and (map1[i,j]=1) then x:=x+25 else x:=x;
if (ch=kbUp) and (map1[i,j]=1) then y:=y+25 else y:=y;
if (ch=kbDown) and (map1[i,j]=1) then y:=y-25 else y:=y;
if map1[i,j]=2 then begin
     inc(score);
     for k:=1 to 12 do begin
     sound(music[k]);
     delay(10);
     end;
     nosound;
     map1[i,j]:=0;
        end;
if map1[i,j]=3 then
     begin
     karta[1]:=true;
     q:=true;
     exit;
     end;
if map1[i,j]=4 then begin
     map1[i,j]:=0;
     inc(score,50);
     end;
if map1[i,j]=5 then begin
     map1[i,j]:=0;
     karta[1]:=true;
     i:=1;
     repeat
           sound(music[i]);
           delay(50);
           inc(i);
     until i=8;
     repeat
           sound(music[i]);
           delay(50);
           dec(i);
     until i=1;
     nosound;
     settextstyle(0,0,1);
     OutTextXY(0,0,'Congratulations, you have just found the first part of the map!!!');
     PutImage(1,454,c^,NormalPut);
     Settextstyle(2,0,5);
     End;
     End;
End;
End;
if (score >= 50) and (h=0) and (karta[1]=true) then
begin
     putimage(25+20,25+20,e1^,Normalput);
     sound(100);
     delay(50);
     putimage(25+20,25+20,e2^,Normalput);
     sound(150);
     delay(150);
     putimage(25+20,25+20,e3^,Normalput);
     sound(200);
     delay(150);
     putimage(25+20,25+20,e4^,Normalput);
     sound(250);
     delay(150);
     putimage(25+20,25+20,e5^,Normalput);
     sound(300);
     delay(150);
     putimage(25+20,25+20,e6^,Normalput);
     sound(350);
     delay(150);
     putimage(25+20,25+20,e7^,Normalput);
     sound(400);
     delay(150);
     putimage(25+20,25+20,e8^,Normalput);
     sound(450);
     delay(150);
     nosound;
     map1[1,1]:=3;
     h:=1;
end;
if (x<=500) and (y<=95) and (x>=430) and (y>=35) and (yes=false) and (map1[2,18]=4) then
begin
     xp:=450;
     yp:=90;
case naprav of
     1: begin
     i:=1;
repeat
      putpixel(xp,85,14);
      sound(music[random(15)]);
      delay(1);
      putpixel(xp,85,0);
      dec(xp);
      inc(i);
until xp=350;
if (x>=400) and (x<=450) and (y>=65) and (y<=85) then Quit:=true;
      nosound;
end;
     2: begin
     i:=1;
repeat
      putpixel(480,yp,14);
      sound(music[random(15)]);
      delay(1);
      putpixel(480,yp,0);
      inc(yp);
      inc(i);
until yp=170;
      nosound;
if (x>=468) and (x<=492) and (y>=35) and (y<=165) then Quit:=true;
end;
     3: begin
     i:=1;
repeat
      putpixel(xp+50,85,14);
      sound(music[random(15)]);
      delay(1);
      putpixel(xp+50,85,0);
      inc(xp);
      inc(i);
until xp=545;
      nosound;
if (x>=450) and (x<=545) and (y>=65) and (y<=85) then Quit:=true;
end;
     4 :begin
     i:=1;
repeat
      putpixel(480,yp-25,14);
      sound(music[i]);
      delay(1);
      putpixel(480,yp-25,0);
      dec(yp);
      inc(i);
      until yp=80;
      nosound;
if (x>=468) and (x<=492) and (y>=0) and (y<=55) then Quit:=true;
end;
     end;
     yes:=true;
     naprav:=random(5);
if naprav=5 then naprav:=4;
if naprav=0 then naprav:=1;
end;
until Quit=true;
end;
begin
1:     Game;
       if q=true then goto 2;
       SetFillStyle(1,0);
       Bar(0,0,460,18);
       SetColor(15);
       SetTextStyle(0,0,1);
       outtextxy(0,0,'BAD LUCK, please try again...');
       SetColor(12);
       outtextxy(225,0,'Press Any Key To Continue ...');
       repeat until keypressed;
       ClearDevice;
       ch:=readkey;
       if ch=kbEsc then goto 2;
goto 1;
2:
{FreeMem(pw,sizeof(pw));
FreeMem(c,sizeof(c));
FreeMem(p2,sizeof(p2));
FreeMem(p1,sizeof(p1));
FreeMem(p3,sizeof(p3));
FreeMem(p4,sizeof(p4));
FreeMem(e1,sizeof(e1));
FreeMem(e2,sizeof(e2));
FreeMem(e3,sizeof(e3));
FreeMem(e4,sizeof(e4));
FreeMem(e5,sizeof(e5));
FreeMem(e6,sizeof(e6));
FreeMem(e7,sizeof(e7));
FreeMem(e8,sizeof(e8));}
end;
procedure REDRAW_SCREEN;
begin
Read_Ris('images\map\ch1_v.edp',c[1,3]);
Read_Ris('images\map\ch1_h.edp',c[1,2]);
Read_Ris('images\map\ch1_ld.edp',c[1,1]);
Read_Ris('images\map\ch1_rd.edp',c[1,4]);
Read_Ris('images\map\ch1_ru.edp',c[1,5]);
Read_Ris('images\map\ch1_lu.edp',c[1,6]);
Read_Ris('images\map\ch2_v.edp',c[2,3]);
Read_Ris('images\map\ch2_h.edp',c[2,2]);
Read_Ris('images\map\ch2_ld.edp',c[2,1]);
Read_Ris('images\map\ch2_rd.edp',c[2,4]);
Read_Ris('images\map\ch2_ru.edp',c[2,5]);
Read_Ris('images\map\ch2_lu.edp',c[2,6]);
Read_Ris('images\map\v.edp',r2);
Read_Ris('images\map\h.edp',r1);
Read_Ris('images\map\rd.edp',r3);
Read_Ris('images\map\ld.edp',r4);
Read_Ris('images\map\lu.edp',r5);
Read_Ris('images\map\ru.edp',r6);
Read_Ris('images\derevo.edp',r7);
Read_Ris('images\dom.edp',r8);
Read_Ris('images\dom2.edp',r9);
Assign(f,'data\map.dat');
Reset(f);
for i:=0 to N do begin
for j:=0 to M do begin
if j=m then readln(f,map[i,j]) else read(f,map[i,j]);
end;
end;
for i:=0 to N do begin
for j:=0 to M do begin
case map[i,j] of
     '║':  putimage(j*25+20,i*25+20,r2^,Normalput);
     '■':  putimage(j*25+20,i*25+20,r7^,Normalput);
     '═':  putimage(j*25+20,i*25+20,r1^,Normalput);
     '╔':  putimage(j*25+20,i*25+20,r3^,Normalput);
     '╗':  putimage(j*25+20,i*25+20,r4^,Normalput);
     '╝':  putimage(j*25+20,i*25+20,r5^,Normalput);
     '╚':  putimage(j*25+20,i*25+20,r6^,Normalput);
     end;
end;
end;
putimage(570,130,r8^,Normalput);
putimage(45,330,r9^,Normalput);
FreeMem(r8,sizeof(r8));
FreeMem(r9,sizeof(r9));
end;
procedure Game;
const n=16;m=23;
var x,y,i,j,score,col : integer;
xp,yp : integer;
Sc : string;
h : word;
ch : char;
map : array [0..N,0..M] of char;
begin
randomize;
h:=0;
karta[1]:=false;
karta[2]:=false;
Assign(f,'data\map.dat');
Reset(f);
for i:=0 to N do begin
for j:=0 to M do begin
if j=m then readln(f,map[i,j]) else read(f,map[i,j]);
end;
end;
score:=0;
col:=5;

Read_Ris('images\map\ch1_v.edp',c[1,3]);
Read_Ris('images\map\ch1_h.edp',c[1,2]);
Read_Ris('images\map\ch1_ld.edp',c[1,1]);
Read_Ris('images\map\ch1_rd.edp',c[1,4]);
Read_Ris('images\map\ch1_ru.edp',c[1,5]);
Read_Ris('images\map\ch1_lu.edp',c[1,6]);
Read_Ris('images\map\ch2_v.edp',c[2,3]);
Read_Ris('images\map\ch2_h.edp',c[2,2]);
Read_Ris('images\map\ch2_ld.edp',c[2,1]);
Read_Ris('images\map\ch2_rd.edp',c[2,4]);
Read_Ris('images\map\ch2_ru.edp',c[2,5]);
Read_Ris('images\map\ch2_lu.edp',c[2,6]);
Read_Ris('images\map\v.edp',r2);
Read_Ris('images\map\h.edp',r1);
Read_Ris('images\map\rd.edp',r3);
Read_Ris('images\map\ld.edp',r4);
Read_Ris('images\map\lu.edp',r5);
Read_Ris('images\map\ru.edp',r6);
Read_Ris('images\derevo.edp',r7);
Read_Ris('images\dom.edp',r8);
Read_Ris('images\dom2.edp',r9);
x:=95;
y:=120;
setfillstyle(1,0);
for i:=0 to N do begin
for j:=0 to M do begin
case map[i,j] of
     '║':  putimage(j*25+20,i*25+20,r2^,Normalput);
     '■':  putimage(j*25+20,i*25+20,r7^,Normalput);
     '═':  putimage(j*25+20,i*25+20,r1^,Normalput);
     '╔':  putimage(j*25+20,i*25+20,r3^,Normalput);
     '╗':  putimage(j*25+20,i*25+20,r4^,Normalput);
     '╝':  putimage(j*25+20,i*25+20,r5^,Normalput);
     '╚':  putimage(j*25+20,i*25+20,r6^,Normalput);
     end;
end;
end;
{@@@}
putimage(570,130,r8^,Normalput);
putimage(45,330,r9^,Normalput);
FreeMem(r8,sizeof(r8));
FreeMem(r9,sizeof(r9));
ch:=kbUp;
Rectangle(15,15,625,450);
repeat
if map[y div 25,x div 25]='║' then i:=3;
if map[y div 25,x div 25]='═' then i:=2;
if map[y div 25,x div 25]='╗' then i:=1;
if map[y div 25,x div 25]='╔' then i:=4;
if map[y div 25,x div 25]='╚' then i:=5;
if map[y div 25,x div 25]='╝' then i:=6;
if (ch = kbUp) or (ch= kbRight) then j:=1 else
if (ch = kbDown) or (ch= kbLeft) then j:=2;
if ((ch = kbRight) and (map[y div 25,x div 25]='╗')) then j:=2;
if ((ch = kbDown) and (map[y div 25,x div 25]='╚')) then j:=1;
putimage(x,y,c[j,i]^,NormalPut);
ch:=#1;
ch:=readkey;
ReDraw(x,y,map[y div 25,x div 25]);
if ch=kbLeft then
begin
x:=x-25;
end;
if ch=kbDown then
begin
y:=y+25;
end;
if ch=kbUp then
begin
y:=y-25;
end;
if ch=kbRight then
begin
x:=x+25;
end;
for i:=0 to N do begin
if (y-25=(i*25)-5) then
for j:=0 to M do begin
if (y-25=(i*25)-5) and (x-25=(j*25)-5) then begin
if (ch=kbRight) and (map[i,j]='■') then x:=x-25 else x:=x;
if (ch=kbLeft) and (map[i,j]='■') then x:=x+25 else x:=x;
if (ch=kbUp) and (map[i,j]='■') then y:=y+25 else y:=y;
if (ch=kbDown) and (map[i,j]='■') then y:=y-25 else y:=y;
if map[i,j]='3' then
     begin
     exit;
     end;
     end;
     end;
end;
if (x=570) and (y>=130) and (y<=155) then
begin
cleardevice;
LEVEL_1;
karta[1]:=true;
y:=y+50;
cleardevice;
REDRAW_SCREEN;
end;
if (x=45) and (y>=330) and (y<=355) then
begin
cleardevice;
LEVEL_2;
karta[2]:=true;
y:=y+50;
cleardevice;
REDRAW_SCREEN;
end;
if (karta[1] = true) and (karta[2] = true) then
begin
cleardevice;
conets:=LEVEL_END;
cleardevice;
case conets of
     true : End0vka;
    false : End0vka_2;
end;
setcolor(15);
Outtext('THE END ... Press Enter to Exit');
ch:=#1;
repeat
ch:=readkey;
until ch=kbEnter;
cleardevice;
closegraph;
halt;
end;
until ch=kbEsc;
closegraph;
end;
label 1;
begin
     randomize;
     InsGraph;
     Zastavka;
1: Menu;
        case imeny of
           1:   begin
                ClearDevice;
                Game;
                CloseGraph;
                end;
           2:   begin
                Help('data\help.txt');
                SetColor(15);
                SETtextstyle(1,0,1);
                goto 1;
                end;
           3:   begin
                ClearDevice;
                View_Score;
                goto 1;
                end;
           4:   begin
                ClearDevice;
                Outtext('THE END ...');
                delay(1000);
                closegraph;
                halt;
                end;
                end;
end.