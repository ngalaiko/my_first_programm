uses graphabc,crt;
var x1,y1,schet,KOL,k,sh,x,y,i,s,r,a,b,z:integer;
n:string;
begin
a:=780;
b:=a;
setwindowsize(a,b);

x:=a div 2;
y:=b div 2;        {начальные координаты, радиус}
r:=20;

{------------------------------------------------------------------------------}
sh:=2*r+6;
rectangle(0,0,a,b);
floodfill(5,5,clBrown);
for i:=1 to trunc((a-(sh+5))/sh) do
if i mod 2=0 then begin
if  (a-(sh*(i+1)))-(10+(sh*(i+1)))<2*r then break;
rectangle((sh*i),(sh*i),a-(sh*i),b-(sh*i));
floodfill(5+(sh*i),5+(sh*i),clBrown);
end
else begin
setpencolor(clWhite);
rectangle((sh*i),(sh*i),a-(sh*i),b-(sh*i));
setpencolor(clBlack);
end;
setpencolor(clWhite);
rectangle(((a-(2*r)) div 2)-2,sh,((a-(2*r)) div 2)+(2*r)+2,a-sh);
rectangle(sh,((a-(2*r)) div 2)-2,a-sh,((a-(2*r)) div 2)+(2*r)+2);
setpencolor(clBlack);

for i:=1 to 16 do begin
circle(sh+r+4+((i-1)*2*r),sh+r+4,r div 2);
floodfill(sh+r+4+((i-1)*2*r),sh+r+4,clRed);
circle(a-sh-r-4,sh+r+4+((i-1)*2*r),r div 2);
floodfill(a-sh-r-4,sh+r+4+((i-1)*2*r),clRed);
circle(sh+r+4,sh+r+4+((i-1)*2*r),r div 2);
floodfill(sh+r+4,sh+r+4+((i-1)*2*r),clRed);
circle(sh+r+4+((i-1)*2*r),a-sh-r-4,r div 2);
floodfill(sh+r+4+((i-1)*2*r),a-sh-r-4,clRed);
end;
circle(a-sh-r-4,a-sh-r-4,r div 2);
floodfill(a-sh-r-4,a-sh-r-4,clRed);

for i:=1 to 6 do begin
circle(5*sh+r+4+((i-1)*2*(r+3)),5*sh+r+4,r div 2);
floodfill(5*sh+r+4+((i-1)*2*(r+3)),5*sh+r+4,clRed);
circle(a-5*sh-r-4,5*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(a-5*sh-r-4,5*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(5*sh+r+4,5*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(5*sh+r+4,5*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(5*sh+r+4+((i-1)*2*(r+3)),a-5*sh-r-4,r div 2);
floodfill(5*sh+r+4+((i-1)*2*(r+3)),a-5*sh-r-4,clRed);
end;
circle(a-5*sh-r-4,a-5*sh-r-4,r div 2);
floodfill(a-5*sh-r-4,a-5*sh-r-4,clRed);

for i:=1 to 10 do begin
circle(3*sh+r+4+((i-1)*2*(r+3)),3*sh+r+4,r div 2);
floodfill(3*sh+r+4+((i-1)*2*(r+3)),3*sh+r+4,clRed);
circle(a-3*sh-r-4,3*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(a-3*sh-r-4,3*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(3*sh+r+4,3*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(3*sh+r+4,3*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(3*sh+r+4+((i-1)*2*(r+3)),a-3*sh-r-4,r div 2);
floodfill(3*sh+r+4+((i-1)*2*(r+3)),a-3*sh-r-4,clRed);
end;
circle(a-3*sh-r-4,a-3*sh-r-4,r div 2);
floodfill(a-3*sh-r-4,a-3*sh-r-4,clRed);

for i:=1 to 2 do begin
circle(7*sh+r+4+((i-1)*2*(r+3)),7*sh+r+4,r div 2);
floodfill(7*sh+r+4+((i-1)*2*(r+3)),7*sh+r+4,clRed);
circle(a-7*sh-r-4,7*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(a-7*sh-r-4,7*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(7*sh+r+4,7*sh+r+4+((i-1)*2*(r+3)),r div 2);
floodfill(7*sh+r+4,7*sh+r+4+((i-1)*2*(r+3)),clRed);
circle(7*sh+r+4+((i-1)*2*(r+3)),a-7*sh-r-4,r div 2);
floodfill(7*sh+r+4+((i-1)*2*(r+3)),a-7*sh-r-4,clRed);
end;
circle(a-7*sh-r-4,a-7*sh-r-4,r div 2);
floodfill(a-7*sh-r-4,a-7*sh-r-4,clRed);
for i:=1 to 7 do begin
 circle(a div 2,2*sh+r+4+2*sh*(i-1),r div 2);
 floodfill(a div 2,2*sh+r+4+2*sh*(i-1),clRed);
end;
for i:=1 to 7 do begin
 circle(2*sh+r+4+2*sh*(i-1),a div 2,r div 2);
 floodfill(2*sh+r+4+2*sh*(i-1),a div 2,clRed);
end;
{------------------------------------------------------------------------------}
KOL:=148;

circle(x,y,r);
line(x,y,x+r,y);
floodfill(x-1,y,clyellow);
schet:=0;
z:=0;
s:=loadpicture('C:\PM\game-over.jpg');
while (n<>'x') do begin
{---------------------------желтый---------------------------------------------}
n:=readkey;
if n='w' then           {вверх}
 begin
  i:=getpixel(x,y-r-1);
  if i<>255 then begin

  setpencolor(clWhite);    {стирание целого}
  circle(x,y,r);
  setpencolor(clBlack);

  y:=y-5;
  if (y<r)or
  (getpixel(x,y-r)=16512)or
  (getpixel(x+trunc(r/2),y-r)=16512)or
  (getpixel(x-trunc(r/2),y-r)=16512)or
  (getpixel(x+trunc(r/3),y-r+trunc(r/3))=16512)or
  (getpixel(x-trunc(r/3),y-r+trunc(r/3))=16512)or
  (getpixel(x+trunc(r/5),y-r+trunc(r/5))=16512)or
  (getpixel(x-trunc(r/5),y-r+trunc(r/5))=16512) then y:=y+5;
  circle(x,y,r);
  line(x,y,x,y-r);                  {сдвиг+рисование целого}
  floodfill(x,y+1,clyellow);

  if (getpixel(x,y-r-2)=255) then begin
  setpencolor(clWhite);
  circle(x,y,r);
  setpencolor(clBlack);
  pie(x,y,r,120,60);                     {проверка+рисование открытого если да}
  floodfill(x,y+1,clyellow);
  z:=z+1;
  end;

  if (i=32768)or
  (getpixel(x+trunc(r/2),y-r)=32768)or
  (getpixel(x-trunc(r/2),y-r)=32768)or
  (getpixel(x+trunc(r/2),y-r)=32768)or
  (getpixel(x+trunc(r/3),y-r)=32786)or
  (getpixel(x-trunc(r/3),y-r)=32786) then begin        {картинка если задето}
  drawpicture(s,(a div 2)-210,(a div 2)-240);
  break;
  end;

  end else begin

  setpencolor(clwhite);
  pie(x,y,r,120,60);                      {стирание открытого}
  setpencolor(clblack);

  y:=y-5;
  if (y<r)or
  (getpixel(x,y-r)=16512)or
  (getpixel(x-trunc(r/2),y-r)=16512)or
  (getpixel(x+trunc(r/2),y-r)=16512)or
  (getpixel(x+trunc(r/3),y-r+trunc(r/3))=16512)or
  (getpixel(x-trunc(r/3),y-r+trunc(r/3))=16512)or
  (getpixel(x+trunc(r/5),y-r+trunc(r/5))=16512)or
  (getpixel(x-trunc(r/5),y-r+trunc(r/5))=16512) then y:=y+5;
  pie(x,y,r,120,60);                              {сдвиг+рисование открытого}
  floodfill(x,y+1,clyellow);
  end;
end
else if n='d' then             {вправо}
 begin
  i:=getpixel(x+r+1,y);
  if i<>255 then begin

  setpencolor(clWhite);
  circle(x,y,r);                       {стирание целого}
  setpencolor(clBlack);

  x:=x+5;
  if (x>a-r)or
  (getpixel(x+r,y)=16512)or
  (getpixel(x+r,y-trunc(r/2))=16512)or
  (getpixel(x+r,y+trunc(r/2))=16512)or
  (getpixel(x+r-trunc(r/3),y-trunc(r/3))=16512)or
  (getpixel(x+r-trunc(r/3),y+trunc(r/3))=16512)or
  (getpixel(x+r-trunc(r/5),y-trunc(r/5))=16512)or
  (getpixel(x+r-trunc(r/5),y+trunc(r/5))=16512) then x:=x-5;
  circle(x,y,r);
  line(x,y,x+r,y);                        {сдвиг+рисование целого}
  floodfill(x-1,y,clyellow);

  if getpixel(x+r+2,y)=255 then begin
  setpencolor(clWhite);                   {проверка+рисование открытого если да}
  circle(x,y,r);
  setpencolor(clBlack);
  pie(x,y,r,30,330);
  floodfill(x-1,y,clyellow);
  z:=z+1;
  end;

  if (getpixel(x+r,y)=32768)or
  (getpixel(x+r,y-trunc(r/2))=32768)or
  (getpixel(x+r,y+trunc(r/2))=32768)or
  (getpixel(x+r,y-trunc(r/3))=32786)or
  (getpixel(x+r,y+trunc(r/3))=32786) then begin            {картинка если задето}
  drawpicture(s,(a div 2)-210,(a div 2)-240);
  break;
  end;

  end else begin

  setpencolor(clwhite);                        {стирание открытого}
  pie(x,y,r,30,330);
  setpencolor(clblack);

  x:=x+5;
  if (x>a-r)or
  (getpixel(x+r,y)=16512)or
  (getpixel(x+r,y-trunc(r/2))=16512)or
  (getpixel(x+r,y+trunc(r/2))=16512)or
  (getpixel(x+r-trunc(r/3),y-trunc(r/3))=16512)or
  (getpixel(x+r-trunc(r/3),y+trunc(r/3))=16512)or
  (getpixel(x+r-trunc(r/5),y-trunc(r/5))=16512)or
  (getpixel(x+r-trunc(r/5),y+trunc(r/5))=16512) then x:=x-5;
  pie(x,y,r,30,330);                          {сдвиг+рисование открытого}
  floodfill(x-1,y,clyellow);;
  end;
 end
else if n='a' then               {влево}
 begin
  i:=getpixel(x-r-1,y);
  if i<>255 then begin

  setpencolor(clWhite);                {стирание целого}
  circle(x,y,r);
  setpencolor(clBlack);

  x:=x-5;
  if (x<r)or
  (getpixel(x-r,y)=16512)or
  (getpixel(x-r,y+trunc(r/2))=16512)or
  (getpixel(x-r,y-trunc(r/2))=16512)or
  (getpixel(x-r+trunc(r/3),y+trunc(r/3))=16512)or
  (getpixel(x-r+trunc(r/3),y-trunc(r/3))=16512)or
  (getpixel(x-r+trunc(r/5),y+trunc(r/5))=16512)or
  (getpixel(x-r+trunc(r/5),y-trunc(r/5))=16512) then x:=x+5;    {сдвиг+рисование целого}
  circle(x,y,r);
  line(x,y,x-r,y);
  floodfill(x+1,y,clyellow);

  if getpixel(x-r-2,y)=255 then begin
  setpencolor(clWhite);
  circle(x,y,r);
  setpencolor(clBlack);                 {проверка+рисование открытого если да}
  pie(x,y,r,210,150);
  floodfill(x+1,y,clyellow);
  z:=z+1;
  end;

  if (getpixel(x-r,y)=32768)or
  (getpixel(x-r,y+trunc(r/2))=32768)or
  (getpixel(x-r,y-trunc(r/2))=32768)or
  (getpixel(x-r,y+trunc(r/3))=32786)or
  (getpixel(x-r,y-trunc(r/3))=32786) then begin            {картинка если задел}
  drawpicture(s,(a div 2)-210,(a div 2)-240);
  break;
  end;

  end else begin

  setpencolor(clwhite);               {стирание открытого}
  pie(x,y,r,210,150);
  setpencolor(clblack);

  x:=x-5;
  if (x<r)or(getpixel(x-r,y)=16512)or
  (getpixel(x-r,y+trunc(r/2))=16512)or
  (getpixel(x-r,y-trunc(r/2))=16512)or
  (getpixel(x-r+trunc(r/3),y+trunc(r/3))=16512)or
  (getpixel(x-r+trunc(r/3),y-trunc(r/3))=16512)or
  (getpixel(x-r+trunc(r/5),y+trunc(r/5))=16512)or
  (getpixel(x-r+trunc(r/5),y-trunc(r/5))=16512) then x:=x+5;
  pie(x,y,r,210,150);                     {сдвиг+рисование открытого}
  floodfill(x+1,y,clyellow);
  end;
 end
else if n='s' then          {вниз}
 begin
  i:=getpixel(x,y+r+1);
  if i<>255 then begin

  setpencolor(clWhite);
  circle(x,y,r);                       {стирание целого}
  setpencolor(clBlack);

  y:=y+5;
  if (y>b-r)or
  (getpixel(x,y+r)=16512)or
  (getpixel(x+trunc(r/2),y+r)=16512)or
  (getpixel(x-trunc(r/2),y+r)=16512)or
  (getpixel(x+trunc(r/3),y+r-trunc(r/3))=16512)or
  (getpixel(x-trunc(r/3),y+r-trunc(r/3))=16512)or
  (getpixel(x+trunc(r/5),y+r-trunc(r/5))=16512)or
  (getpixel(x-trunc(r/5),y+r-trunc(r/5))=16512) then y:=y-5;
  circle(x,y,r);
  line(x,y,x,y+r);                       {сдвиг+рисование целого}
  floodfill(x,y-1,clyellow);

  if getpixel(x,y+r+2)=255 then begin
  setpencolor(clWhite);
  circle(x,y,r);
  setpencolor(clBlack);
  pie(x,y,r,300,240);                  {проверка+рисование открытого если да}
  floodfill(x,y-1,clyellow);
  z:=z+1;
  end;

  if (getpixel(x,y+r)=32768)or
  (getpixel(x+trunc(r/2),y+r)=32786)or
  (getpixel(x-trunc(r/2),y+r)=32786)or
  (getpixel(x+trunc(r/3),y+r)=32786)or
  (getpixel(x-trunc(r/3),y+r)=32786) then begin            {картинка если задел}
  drawpicture(s,(a div 2)-210,(a div 2)-240);
  break;
  end;

  end else begin

  setpencolor(clwhite);
  pie(x,y,r,300,240);                   {стирание открытого}
  setpencolor(clblack);

  y:=y+5;
  if (y>b-r)or(getpixel(x,y+r)=16512)or
  (getpixel(x+trunc(r/2),y+r)=16512)or
  (getpixel(x-trunc(r/2),y+r)=16512)or
  (getpixel(x+trunc(r/3),y+r-trunc(r/5))=16512)or
  (getpixel(x-trunc(r/3),y+r-trunc(r/3))=16512)or
  (getpixel(x+trunc(r/5),y+r-trunc(r/5))=16512)or
  (getpixel(x-trunc(r/5),y+r-trunc(r/5))=16512) then y:=y-5;
  pie(x,y,r,300,240);                        {сдвиг+рисование открытого}
  floodfill(x,y-1,clyellow);
   end;
 end;
{---------------------------желтый-------------------------------------------}
end;
end.
