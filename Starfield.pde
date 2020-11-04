//your code here
Particle[] bob =  new Particle[500];
void setup()
{
size(500,500);
for(int i = 0; i<bob.length;i++) {
bob[i] = new Particle();
bob[0] = new OddballParticle();
}
}
void draw()
{
  for(int j = 0; j<bob.length;j++) {
bob[j].move();
bob[j].show();
  }
}
void mouseClicked(){
    redraw();
  }
class Particle
{
double x,y,speed,angle,mycolor;
Particle() {
  x = 250;
  y = 250;
  speed = Math.random()*10;
  angle = Math.random()*2*Math.PI;
}
void move() {
x+= (Math.cos(angle)*speed);
y+= (Math.sin(angle)*speed);
}
void show() {
mycolor =(255);
ellipse((float)x,(float)y,1,1);
}
}

class OddballParticle extends Particle //inherits from Particle
{
OddballParticle() {
x = y = 200;
 speed = Math.random()*7;
 angle = Math.random()*2*Math.PI;
}
void show() {
  fill(0,128,128);
  noStroke();
  ellipse((float)x,(float)y,15,20);
}
void move() {
x+= (Math.cos(angle)*speed);
y+= (Math.sin(angle)*speed);
}
}
