final int NUM = 60 ;
int[] x = new int[NUM] ;
int[] y = new int[NUM] ;

void setup() {
  size(800, 600) ;

  mouseX = width / 2 ;
  mouseY = height / 2 ;

  for (int i = 0 ; i < NUM ; i++) {
    x[i] = mouseX ;
    y[i] = mouseY ;
  }
}

void draw() {
  background(204) ;

  for (int i = 0 ; i < NUM - 1 ; i++) {
    x[i] = x[i + 1] ;
    y[i] = y[i + 1] ;
  }

  x[NUM - 1] = mouseX ;
  y[NUM - 1] = mouseY ;

  ellipse(x[0], y[0], 10, 10) ;
}