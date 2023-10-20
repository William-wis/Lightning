/* flags of all countries with three vertical stripes, press on the right side of the
 screen to go forwards a flag, and the left side to go backwards a flag.
 countries for each flag are shown in console. */

float x, y;
float prevX, prevY;
float inc = 1;
int a, b, c, d, e, f, g, h, i; //values for colors
int j = 0; //flag selector variable



void setup() {
  size(800, 600);
  background(0);
}



void draw() {
  // System.out.println(mouseX + ", " + mouseY);
  createLightning(); //calls function to create the lightning
}



void createLightning() {
  x = (float)Math.random()*width; //assigns x values for lightning placement
  y = 0;
  while (y <= height) {
    prevX = x;
    prevY = y;
    x += inc*((int)(Math.random()*5)-2); //x-spread of lightning
    y += inc*((int)(Math.random()*8)-2); //y-spread of lightning
    line(prevX, prevY, x, y); //draws line

    if (x < width/3) { //determines colors of different parts of flag
      stroke(a, b, c, 150); //a, b, c, are for the first color
    } else if (width/3 < x && x < 2*width/3) {
      stroke(d, e, f, 150); //d, e, f, are for the second color
    } else {
      stroke(g, h, i, 150); //h, i, j, are for the third color
    }
  }
}



void changeFlag() { //definately not the most efficient way to do this, but it works
  if (j == 1) { //flags are assigned as values of j
    a = 0;
    b = 0;
    c = 255;

    d = 255;
    e = 255; //France
    f = 255;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("1: France, (first flag)");
  } else if (j == 2) {
    a = 0;
    b = 204;
    c = 0;

    d = 255;
    e = 255; //Ireland
    f = 255;

    g = 255;
    h = 102;
    i = 0;

    System.out.println("3: Ireland");
  } else if (j == 3) {
    a = 0;
    b = 204;
    c = 0;

    d = 255;
    e = 255;  //Nigeria
    f = 255;

    g = 0;
    h = 204;
    i = 0;

    System.out.println("4: Nigeria");
  } else if (j == 4) {
    a = 0;
    b = 204;
    c = 0;

    d = 255;
    e = 255; //Italy
    f = 255;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("2: Italy");
  } else if (j == 5) {
    a = 0;
    b = 255;
    c = 51;

    d = 255;
    e = 255; //Mali
    f = 0;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("5: Mali");
  } else if (j == 6) {
    a = 50;
    b = 50;
    c = 50;

    d = 255;
    e = 255; //Belgium
    f = 0;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("6: Belgium");
  } else if (j == 7) {
    a = 0;
    b = 0;
    c = 153;

    d = 255;
    e = 255; //Chad
    f = 0;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("7: Chad");
  } else if (j == 8) {
    a = 255;
    b = 0;
    c = 0;

    d = 255;
    e = 255; //Guinea
    f = 0;

    g = 0;
    h = 204;
    i = 0;

    System.out.println("8: Guinea");
  } else if (j == 9) {
    a = 0;
    b = 0;
    c = 153;

    d = 255;
    e = 255; //Romania
    f = 0;

    g = 255;
    h = 0;
    i = 0;

    System.out.println("9: Romania");
  } else if (j == 10) {
    a = 255;
    b = 153;
    c = 0;

    d = 255;
    e = 255; //Ivory Coast
    f = 255;

    g = 0;
    h = 153;
    i = 0;

    System.out.println("10: Ivory Coast, (last flag)");
  }
}



void mousePressed() {
  background(0);
  if (mouseX > width/2) { //detects where mouse is when mouse is pressed
    j++;
  } else { //either goes forward/backward a flag
    j--;
  }

  /* if mouse is pressed on right side of screen, selector goes forward a flag
   if mouse is pressed on left side of screen, selector goes backwards a flag
   NOTE: there is no min/max flag so j will keep increasing if you keep hitting one
   side past the final flag */

  changeFlag();
}
