class Powerup {
  // Member Variables
  int x, y, diam, speed;
  char type;
  PImage powerup;

  // Constructor
  Powerup( ) {
    x = int(random(width));
    y = -100;
    diam = int(random(30, 75));
    speed = int(random(1, 5));
    //powerup = loadImage("powerup.gif");
    int ran = int(random(2));
    if (ran == 0) {
      type = 'h';
      powerup = loadImage("poweup.gif");
    } else if (ran == 1) {
      type = 'a';
      powerup = loadImage("powerup1.gif");
    }
  }


  void display() {
    if (type == 'h') {
      fill(0, 222, 0);
    } else if (type == 'a') {
      fill(255, 0, 0);
    }
    image(powerup, x, y);
  }

  void move() {
    y = y + speed;
  }

  boolean reachedBottom() {
    if (y > height + 200) {
      return true;
    } else {
      return false;
    }
  }


  boolean intersect(Spaceship s) {
    float d = dist(x, y, s.x, s.y);
    if (d<50) {
      return true;
    } else {
      return false;
    }
  }
}
