public class Bird {
  float x;
  float y;
  float xSpeed;
  float minXSpeed = 2.0;
  float maxXSpeed = 5.0;
  float ySpeed;
  float minYSpeed = -1.0;
  float maxYSpeed = 1.0;
  float size = 15.0;
  color fillColor;
 
 
   Bird() {
    this.x = random(0, width);
    this.y = random(0, height);
    this.xSpeed = random(minXSpeed, maxXSpeed);
    this.ySpeed = random(minYSpeed, maxYSpeed);
    this.fillColor = color(random(0,255), random(0,255), random(0,255));
  }
  
  void move() {
  
  }
  void display() {
  
  }
}