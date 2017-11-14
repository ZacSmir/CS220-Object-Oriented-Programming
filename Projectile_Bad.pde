public class Projectile_Bad extends Projectile {

 public Projectile_Bad (float xPro, float yPro, float ySpeedPro) {
  super(xPro, yPro, ySpeedPro);
 }
 @Override
 public void display() {
  fill(255, 0, 0);
  stroke(0,0,0); // makes a black outline
  rect(this.xPro, this.yPro, 10, 20);
  
 }
 
}