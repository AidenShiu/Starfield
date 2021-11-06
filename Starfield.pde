Particle[] star = new Particle[350];
int temp = 0;
void setup(){
 size(700,700);
   for(int i = 0; i <= star.length-1; i++){
    star[i] = new Particle();
    star[0] = new OddballParticle();
  }
}
void mousePressed(){
  temp++;
  for(int i = 0; i <= star.length-1; i++){
    star[i] = new Particle();
    star[0] = new OddballParticle();
  }
}
void draw(){
  background(0,0,0);
  for(int i = 0; i <= star.length-1; i++){
  star[i].move();
  star[i].show();
  }
}
class Particle{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  Particle(){
    if (temp%2 == 0)
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    else
      if ((int)(Math.random()*2) == 1)
        myColor = color(255);
      else
        myColor = color(#938E8F);
    myX = 350;
    myY = 350;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*15;
  }
  void move(){
    myX = (myX + (Math.cos(myAngle)*mySpeed));
    myY = (myY + (Math.sin(myAngle)*mySpeed));
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}
class OddballParticle extends Particle{
    OddballParticle(){
      if (temp%2 == 0)
        myColor = color(255);
      else
        myColor = color(#FF002F);
      myX = 350;
      myY = 350;
      myAngle = Math.random()*(2*Math.PI);
      mySpeed = Math.random()*7;
    }
    void move(){
      myX = (myX + (Math.cos(myAngle)*mySpeed));
      myY = (myY + (Math.sin(myAngle)*mySpeed));
    }
    void show(){
      fill(myColor);
      stroke(myColor);
      ellipse((float)myX,(float)myY,30,30);
    }
}
