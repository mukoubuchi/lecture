class Star {
   PVector location ;
   float radius ;
   ArrayList<Star> children ;

   Star(PVector v, float r, int n) {
      location = v.copy() ;
      radius = r ;
      children = new ArrayList<Star>() ;
      if (n > 0) nextGeneration(n) ;
   }

   void nextGeneration(int n) {
      float r = radius / 3 ;
      for (int i = 0 ; i < 6 ; i++) {
         float theta = i * TWO_PI / 6 - HALF_PI ;
         PVector c = new PVector(
                                 (radius - r) * cos(theta),
                                 (radius - r) * sin(theta)
                                 ) ;
         children.add(new Star(c, r, n - 1)) ;
      }
   }

   void display() {
      pushMatrix() ;

      translate(location.x, location.y) ;

      beginShape() ;
      for (int i = 0 ; i < 3 ; i++) {
         float theta = i * TWO_PI / 3 - HALF_PI ;
         vertex(radius * cos(theta), radius * sin(theta)) ;
      }
      endShape(CLOSE) ;

      beginShape() ;
      for (int i = 0 ; i < 3 ; i++) {
         float theta = i * TWO_PI / 3 + HALF_PI ;
         vertex(radius * cos(theta), radius * sin(theta)) ;
      }
      endShape(CLOSE) ;

      for (Star s: children)
         s.display() ;

      popMatrix() ;
   }
}
