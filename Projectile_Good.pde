public class Projectile_Good extends Projectile {
 
 public Projectile_Good (float xPro, float yPro, float ySpeedPro) {
    super(xPro, yPro, ySpeedPro);
 }
  @Override
 public void display() {
  fill(0, 255, 0);
  stroke(0,0,0); // makes a black outline 
   println(this.xPro +","+ this.yPro);
  rect(this.xPro, this.yPro, 10, 20);
 }
 
}