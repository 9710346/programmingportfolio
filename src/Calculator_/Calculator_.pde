// Zoe Leclair | Calc Project | 30 Sept 24
Button[] buttons = new Button[22];
String dVal = "0";
char op;
float l, r, result;
boolean left;

void setup() {
  size(200, 305);
  background(25);
  left = true;
  op = ' ';
  l = 0.0;
  r = 0.0;
  result = 0.0;
  buttons[0] = new Button(45, 235, '0', true);
  buttons[1] = new Button(115, 235, '.', false);
  buttons[2] = new Button(35, 205, '1', true);
  buttons[3] = new Button(75, 205, '2', true);
  buttons[4] = new Button(115, 205, '3', true);
  buttons[5] = new Button(35, 175, '4', true);
  buttons[6] = new Button(75, 175, '5', true);
  buttons[7] = new Button(115, 175, '6', true);
  buttons[8] = new Button(155, 175, '+', false);
  buttons[9] = new Button(35, 145, '7', true);
  buttons[10] = new Button(75, 145, '8', true);
  buttons[11] = new Button(115, 145, '9', true);
  buttons[12] = new Button(155, 145, '-', false);
  buttons[13] = new Button(35, 115, '^', false);
  buttons[14] = new Button(75, 115, '√', false);
  buttons[15] = new Button(115, 115, 'π', false);
  buttons[16] = new Button(155, 115, 'x', false);
  buttons[17] = new Button(115, 85, '±', false);
  buttons[18] = new Button(35, 85, 'C', false);
  buttons[19] = new Button(75, 85, '%', false);
  buttons[20] = new Button(155, 85, '÷', false);
  buttons[21] = new Button(155, 205, '=', false);
}

void draw() {
  background(25);
  // println("Left" + l + " Op:"+ op + " Right" + r + " Result:" + result + "left:" + left);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

//void mousePressed() {}

void updateDisplay() {
  rectMode(CENTER);
  fill(222);
  rect(width/2, 25, 190, 30);
  fill(0);
  if (dVal.length()<13) {
    textSize(20);
  } else if (dVal.length() < 14) {
    textSize(15);
  }
  textAlign(RIGHT);
  text(dVal, width-50, 25);
}

void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].on && buttons[i].is_num && dVal.length() < 20 && left) {
      handleEvent(str(buttons[i].val), true);
      //if (dVal.equals("0.0")) {
      //  dVal = str(buttons[i].val);
      //  l = float(dVal);
      //} else {
      //  dVal += buttons[i].val;
      //  l = float(dVal);
      //}
    } else if (buttons[i].on && buttons[i].is_num && dVal.length() < 20 && !left ) {
      handleEvent(str(buttons[i].val), true);
      //if (dVal.equals("0")) {
      //  dVal = str(buttons[i].val);
      //  r = float(dVal);
      //} else {
      //  dVal += buttons[i].val;
      //  r = float(dVal);
      //}
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '+') {
      handleEvent("+", false);
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '-') {
      handleEvent("-", false);
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == 'x') {
      handleEvent("*", false);
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '÷') {
      handleEvent("/", false);
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '.') {
      if (!dVal.contains(".")) {
        dVal +=buttons[i].val;
      }
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == 'π') {
      if (left) {
        dVal = str(PI);
        l = PI;
      } else {
        dVal = str(PI);
        r = PI;
      }
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '=') {
      handleEvent("=", false);
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == 'C') {
      dVal = "0";
      dVal = "0";
      op = ' ';
      l = 0.0;
      r = 0.0;
      left = true;
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '%') {
      if (left) {
        l = l * 0.01;
        dVal = str(l);
      } else {
        r = r * 0.01;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '±') {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
        result = 0.0;
        left = true;
      }
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].is_num && buttons[i].val == '^') {
      dVal = "0";
      op = '^';
      left = false;
    }
  }
}



//else if (dVal.equals("0.0") && buttons[i].is_num) {
//  dVal = str(buttons[i].val);
//} else if (left == true && buttons[i].is_num) {
//  dVal += buttons[i].val;
//  l = float(dVal);
//}



void performCalc() {
  if (op == '+') {
    result = l + r;
  } else if (op == '-') {
    result = l - r;
  } else if (op == '*') {
    result = l * r;
  } else if (op == '/') {
    result = l / r;
  } else if (op == '^') {
    result = pow(l, r);
  }
  dVal = str(result);
}


void handleEvent(String keyVal, boolean is_num ) {
  // handle numbers
  if (left && dVal.length() < 20 && is_num) {
    if (dVal.equals("0")) {
      dVal = keyVal;
      l = float(dVal);
    } else {
      dVal += keyVal;
      l = float(dVal);
    }
  } else if (!left && dVal.length() < 20 && !left && is_num) {
    if (dVal.equals("0")) {
      dVal = keyVal;
      r = float(dVal);
    } else {
      dVal += keyVal;
      r = float(dVal);
    }
  } else if (keyVal.equals("+") && !is_num) {
    left = false;
    dVal = "0";
    op = '+';
  } else if (keyVal.equals("-") && !is_num) {
    dVal = "0";
    op = '-';
    left = false;
  } else if (keyVal.equals("/") && !is_num) {
    dVal = "0";
    op = '/';
    left = false;
  } else if (keyVal.equals("x") && !is_num) {
    dVal = "0";
    op = '*';
    left = false;
  } else if (keyVal.equals(".") && !is_num) {
    dVal += ".";
  } else if (keyVal.equals("=") && !is_num) {
    performCalc();
  }
}
void keyPressed() {
  println("key: " + key);
  println("keycode:" + keyCode);
  if (key == 0 || keyCode == 48 || keyCode == 96) {
    handleEvent("0", true);
  } else if (key == 1 || keyCode == 49 || keyCode == 97) {
    handleEvent("1", true);
  } else if (key == 2 || keyCode == 50 ||keyCode == 98) {
    handleEvent("2", true );
  } else if (key == 3 ||keyCode == 51 ||keyCode == 99 ) {
    handleEvent("3", true);
  } else if (key == 4 ||keyCode == 52 ||keyCode == 100) {
    handleEvent("4", true);
  } else if (key == 5 ||keyCode == 53 ||keyCode == 101) {
    handleEvent("5", true);
  } else if (key == 6 ||keyCode == 54 ||keyCode ==  102) {
    handleEvent("6", true);
  } else if (key == 7 ||keyCode == 55 ||keyCode == 103) {
    handleEvent("7", true);
  } else if (key == 8 ||keyCode == 56 ||keyCode == 104) {
    handleEvent("8", true);
  } else if (key == 9 ||keyCode == 57 ||keyCode == 105) {
    handleEvent("9", true);
  } else if (key == '.' || keyCode == 46 ||keyCode == 110) {
    handleEvent(".", false);
  } else if ( keyCode == 61 ||keyCode == 10) {
    handleEvent("=", false);
  } else if (key == '+' || keyCode == 107) {
    handleEvent("+", false);
  } else if (key == '-' ||keyCode == 45 ||keyCode == 109) {
    handleEvent("-", false);
  } else if (key == 'x' ||keyCode ==  16 ||keyCode == 56) {
    handleEvent("x", false);
  } else if (key == '/' ||keyCode == 47 ||keyCode == 111 ) {
    handleEvent("/", false);
  }
}
