ArrayList<Bird> birds = new ArrayList<Bird>();
ArrayList<FallingFeather> feather = new ArrayList<FallingFeather>();



void setup() {
  
  for(int i=0; i<6; i++) {
  birds.add(new FlittingBird());
  birds.add(new SoaringBird());
}
  

  noStroke();
  size(600, 400);
  
  for(int i=0; i<11; i++) {
  feather.add(new FallingFeather());
  }

}

void draw() {
  background(173,216,230);
  for(Bird flittingBird: birds) {
  flittingBird.move();
  flittingBird.display();
  }
  for(FallingFeather featheryay: feather) {
  featheryay.move();
  featheryay.display();
  }
}