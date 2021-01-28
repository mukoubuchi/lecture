float diam = 500 ;
float theta = 0 ;
color[] c = { color(255, 0, 0),
              color(0, 255, 0),
              color(0, 0, 255),
              color(255, 255, 0) } ; // R, G, B, Y
int colorNum =0 ;
float[] startAdj = { -HALF_PI,
                     -PI,
                     -PI - HALF_PI,
                     -TWO_PI } ;
float[] endAdj = { PI + HALF_PI,
                   PI,
                   HALF_PI,
                   0 } ;

void setup() {
  size(600, 600) ;
  noStroke() ;
  fill(c[0]) ;
}

void draw() {
  background(204) ;
  fill(c[(colorNum + 1) % c.length]) ;
  ellipse(width/2, height/2, diam, diam) ;
  fill(c[colorNum]) ;
  arc(width/2, height/2, diam, diam, startAdj[colorNum] + theta, endAdj[colorNum] - theta, CHORD) ;
  theta += 0.05 ;
  if(theta > PI) {
    theta = 0 ;
    colorNum = (colorNum + 1) % c.length ;
  }
}
