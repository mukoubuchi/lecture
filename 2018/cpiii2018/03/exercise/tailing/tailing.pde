ArrayList<PVector> trajectory;
PVector current;

void setup() {
  size(800, 600);
  trajectory = new ArrayList<PVector>();
  for(int i=0; i<30; i++) {
     trajectory.add(new PVector()); 
  }
  current = new PVector();
}

void draw() {
  background(255);
  current = trajectory.get(0);
  ellipse(current.x, current.y, 20, 20);
  trajectory.remove(0);
  trajectory.add(new PVector(mouseX, mouseY));
}