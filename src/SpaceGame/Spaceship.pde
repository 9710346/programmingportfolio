class Spaceship {
  // Member Variables
  int x, y, w, health, laserCount, turretCount;
  PImage ship;

  // Constructor
  Spaceship() {
    x = width/2;
    y = height/2;
    w = 100;
    health = 100;
    laserCount = 10;
    turretCount = 1;
  }

  void display() {
    fill(214);
    rectMode(CORNER);
    rect(x+20, y+20, 20, 30);
    rect(x-40, y+20, 20, 30);
    fill(127);
    triangle(x, y-40, x+35, y+40, x-35, y+40);
    fill(80);
    triangle(x, y-35, x+8, y-20, x-8, y-20);
    ellipse(x, y+10, 20, 50);
    line(x+40, y-40, x-40, y+20);
    line(x-40, y+40, x+40, y-20);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  boolean fire() {
    if (laserCount > 0) {
      return true;
    } 
      return false;
    
  }
  boolean intersect(Rock r) {
    float d = dist(r.x, r.y, x, y);
    if (d<60) {
      return true;
    } else {
      return false;
    }
  }
}
