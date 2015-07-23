sbit en1 at rb5_bit;
sbit en2 at rb6_bit;
sbit l1 at rc0_bit;
sbit l2 at rc1_bit;
sbit l3 at rb7_bit;
sbit l4 at ra4_bit;

void config()
{
trisb5_bit=0;
trisb6_bit=0;
trisc0_bit=0;
trisc1_bit=0;
trisb7_bit=0;
trisa4_bit=0;
en1=0;
en2=0;
l1=0;
l2=0;
l3=0;
l4=0;
}
void flash()
{
en1=0;
en2=1;
l1=1;
l2=0;
l3=0;
l4=0;
delay_ms(500);
l1=0;
l2=1;
l3=0;
l4=0;
delay_ms(500);
l1=0;
l2=0;
l3=1;
l4=0;
delay_ms(500);
l1=0;
l2=0;
l3=0;
l4=1;
delay_ms(500);
en2=0;
en1=1;
l1=1;
l2=0;
l3=0;
l4=0;
delay_ms(500);
l1=0;
l2=1;
l3=0;
l4=0;
delay_ms(500);
l1=0;
l2=0;
l3=1;
l4=0;
delay_ms(500);
l1=0;
l2=0;
l3=0;
l4=1;
delay_ms(500);
}
///////////////////////////////////////////////
unsigned int touch(char pin)
{
unsigned int x[25];
int i;
unsigned int av;
int count;
av=0;
count=0;
while(count<25)
{
adc_read(11);
delay_ms(3);
x[i]=adc_read(pin);
if(x[i]>10&&x[i]<900)
{
av=x[i]+av;
count++;
}
}
av=av/25;
return av;
}
//////////////////////////////////////
char get_touch(unsigned int calepration[])
{
unsigned int test1,test2;
int calpin[8];
int max_v=0;
int min_v=1024;
char min_n=0;
char i;
calpin[0]=touch(0);
calpin[1]=touch(1);
calpin[2]=touch(2);
calpin[3]=touch(3);
calpin[4]=touch(8);
calpin[5]=touch(9);
calpin[6]=touch(10);
calpin[7]=touch(12);
for(i=0;i<8;i++)
{
if(calpin[i]>max_v)
max_v=calpin[i];
}
for(i=0;i<8;i++)
{
if(calpin[i]<min_v)
{
min_v=calpin[i];
min_n=i;
}
}
test1=max_v-min_v;
test2=calepration[min_n]-min_v;
if(test1=70&&test2>70)
{
return min_n;
}
else
return 55;
}
/////////////////////////////////////
void led(char pin)
{
if(pin==0)
{
en1=1;
en2=0;
l1=0;
l2=0;
l3=1;
l4=0;
delay_ms(1000);
en1=1;
en2=1;
}
if(pin==1)
{
en1=0;
en2=1;
l1=0;
l2=0;
l3=1;
l4=0;
delay_ms(1000);
en1=1;
en2=1;
}
if(pin==2)
{
en1=1;
en2=0;
l1=0;
l2=0;
l3=0;
l4=1;
delay_ms(1000);
en1=1;
en2=1;
}
if(pin==3)
{
en1=0;
en2=1;
l1=0;
l2=0;
l3=0;
l4=1;
delay_ms(1000);
en1=1;
en2=1;
}





}






void main() {
unsigned int x=0;
char txt[7];
char pins;
unsigned int clpin[8];
config();
flash();
uart1_init(9600);
uart1_write_text("hello");
clpin[0]=touch(0);
clpin[1]=touch(1);
clpin[2]=touch(2);
clpin[3]=touch(3);
clpin[4]=touch(8);
clpin[5]=touch(9);
clpin[6]=touch(10);
clpin[7]=touch(12);
while(1)
{
//delay_ms(100);
uart1_write_text("pin=");
x=touch(2);
inttostr(x,txt);
uart1_write_text(txt);
uart1_write(13);
uart1_write_text("pin=");
pins=get_touch(clpin);
inttostr(pins,txt);
uart1_write_text(txt);
uart1_write(13);

led(pins);


}




}