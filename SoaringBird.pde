class SoaringBird extends Bird {
  PImage soarbird;

 public SoaringBird() {
   soarbird = loadImage("bird1.png");
 }
  
  void display() {
    fill(this.fillColor);
    image(soarbird, this.x, this.y, this.size*2, this.size);
  }
  
  public void move() {
    this.x += this.xSpeed;
    // if off the right side of the screen,
    // move to just off the left side of the screen
    if (this.x > width) {
      this.x = -this.size;
    }
  }
}