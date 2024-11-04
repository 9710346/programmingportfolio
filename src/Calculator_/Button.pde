class Button {
  // Member variables
  int w, h, x, y;
  color c1, c2;
  char val;
  boolean on;
  boolean is_num;
  // Constructor
  Button(int x, int y, char val,boolean is_num) {
    this.x = x;
    this.y = y;
    w = 30;
    h = 20;
    c1 = color(250);
    c2 = color(170);
    this.val = val;
    on=false;
    this.is_num = is_num;
  }

  // Member Methods
  void display() {
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h, 5);
    fill(24);
    textAlign(CENTER, CENTER);
    textSize(15);
    text(val, x, y);
  }

void hover(int mx, int my) {
    if (mx > x-w/2 && mx < x+w/2 && my > y-h/2 && my < y+h/2) {
      on = true;
      
    } else {
      on = false;
      
    }
  }
}
