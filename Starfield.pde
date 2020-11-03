Particle[] tay = new Particle[100]; 

void setup() {
  size(500, 500); 
  for (int i = 0; i < tay.length; i++) {
    tay[i] = new Particle(); 
    tay[0] = new OddballParticle();
  }
}

void draw() {
  background(100); 
  for (int i = 0; i < tay.length; i++) {
    tay[i].move(); 
    tay[i].show();
  }
  tay[0].move(); 
  tay[0].show();
}

void mousePressed() {
  for (int i = 0; i < tay.length; i++) {
    if (i % 2 == 0) {
      tay[i] = new Particle();
    }
    if (i == 3) {
      tay[i] = new OddballParticle();
    }
  }
}

class Particle {
  double myX, myY, myAngle, mySpeed; 
  int myColor; 
  Particle() {
    myX = myY = 500/2; 
    myAngle = Math.random()*2*Math.PI; 
    mySpeed = Math.random()*10; 
    myColor = color(255);
  }

  void move() {
    myX = myX + (double)(Math.cos(myAngle)*mySpeed); 
    myY = myY + (double)(Math.sin(myAngle)*mySpeed);
  }

  void show() {
    fill(myColor); 
    noStroke(); 
    //body 
    ellipse((float)myX, (float)myY, 30, 30); 
    ellipse((float)myX, (float)myY+33, 50, 50);
    fill(0); 
    //eyes 
    ellipse((float)myX+5, (float)myY-5, 5, 5); 
    ellipse((float)myX-5, (float)myY-5, 5, 5); 
    //buttons
    ellipse((float)myX, (float)myY+20, 5, 5); 
    ellipse((float)myX, (float)myY+30, 5, 5); 
    ellipse((float)myX, (float)myY+40, 5, 5); 
    //nose 
    fill(253, 157, 32); 
    triangle((float)myX-1, (float)myY, (float)myX-1, (float)myY+10, (float)myX+20, (float)myY+5);
  }
}
class OddballParticle extends Particle {
  OddballParticle() {
    myX = myY = 500/2; 
    myAngle = Math.random()*10*Math.PI; 
    mySpeed = Math.random()*5;
  }
  void move() {
    myX = myX + (double)(Math.cos(myAngle)*mySpeed); 
    myY = myY + (double)(Math.sin(myAngle)*mySpeed);
  }
  void show() {
    //christmas tree 
    fill(34, 139, 34); 
    triangle((float)myX, (float)myY, (float)myX-30, (float)myY+40, (float)myX+30, (float)myY+40); 
    triangle((float)myX, (float)myY+30, (float)myX-30, (float)myY+60, (float)myX+30, (float)myY+60);
    triangle((float)myX, (float)myY+50, (float)myX-30, (float)myY+80, (float)myX+30, (float)myY+80);
    fill(139, 69, 19); 
    rect((float)myX-5, (float)myY+80, 10, 15);
  }
}


