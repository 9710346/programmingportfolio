// Zoe Leclair | Timeline project | 8-28-24

void setup() {
  size(900, 400);
  background(127);
}

void draw() {
  background(127);
  drawRef();
  histEvent(150, 200, "Z2-1940", "Germany: earliest examples of an electric operated digital computer built with electromechanical relays", true);
  histEvent(250, 300, "ENIAC-1945","United States: was the first programmable, electronic, general-purpose digital computer", false);
  histEvent(350, 200, "Z3-1941", "Germany: It was the world's first working programmable, fully automatic digital computer.[3] ", true);
  histEvent(350, 300, "Analog Computer-1950", "United States: Analog computers were widely used in scientific and industrial applications even after the advent of digital computers", false);
  histEvent(150, 300, "Lorenz SZ 40/42-1943", "British: machine was used for high-level Army communications, code-named Tunny by the British.", false);
  histEvent(250, 200, "Colossus-1944", "Germany: was the world's first electronic digital programmable computer.", true);
  histEvent(500, 200, "Manchester Baby-1948", "United Sates: was the world's first electronic stored-program computer.", true);
  histEvent(500, 300, "Manchester Mark 1-1948", "United Sates: especially historically significant because of its pioneering inclusion of index registers, ", false);
}

void drawRef() {
  strokeWeight(3);
  stroke(50);
  line(100, 250, 800, 250);
  textSize(18);
  text("1940", 80, 270);
  text("1960", 810, 270);

  // Title Text
  textAlign(CENTER);
  textSize(30);
  text("Historic Computer System", width/2, 60);
  textSize(22);
  text("By Zoe Leclair", width/2, 85);
}

void histEvent(int x, int y, String val, String detail, boolean top) {
  if (top) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  fill(200);
  rectMode(CENTER);
  rect(x, y, 80, 20);
  fill(0);
  textSize(12);
  text(val, x, y+5);
  if (mouseX>x-40 && mouseX<x+40 && mouseY>y-10 && mouseY<y+10) {
    text(detail, width/2, 350);
  }
}
