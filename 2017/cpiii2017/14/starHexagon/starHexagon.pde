ArrayList<Star> stars = new ArrayList<Star>() ;
int recursiveNum = 4 ;

void setup() {
   size(800, 800) ;
   noFill() ;
   translate(width / 2, height / 2) ;
   for (int i = 0 ; i < recursiveNum ; i++) {
      stars.add(new Star(
                         new PVector(),
                         width * 0.48,
                         i
                         )) ;
   }
}

void draw() {
   background(255) ;
   translate(width / 2, height / 2) ;
   int i = (millis() / 1000) % stars.size() ;
   stars.get(i).display() ;
}