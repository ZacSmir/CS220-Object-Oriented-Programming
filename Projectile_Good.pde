public class Projectile_Good extends Projectile {
  public Projectile_Good (float xPro, float yPro, float ySpeedPro) {
    super(xPro, yPro, ySpeedPro);
  }
 public void display() {
        fill(255, 0, 0);
        stroke(255,255,255); // makes a black outline
        rect(this.xPro, this.yPro, 10, 20);
  
 }
}