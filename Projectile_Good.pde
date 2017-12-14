public class Projectile_Good extends Projectile {

 public Projectile_Good (float xPro, float yPro, float ySpeedPro) {
    super(xPro, yPro, ySpeedPro);
    this.type = false;
 }
  @Override
 public void display() {
  fill(0, 255, 0);
  stroke(0,0,0); // makes a black outline 
  rect(this.xPro, this.yPro, 10, 20);
 }
 
 
}