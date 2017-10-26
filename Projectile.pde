public class Projectile {
  float xPro;
  float yPro;
  float ySpeedPro;
  
  
  public Projectile (float xPro, float yPro, float ySpeedPro) {
    this.xPro = xPro;
    this.yPro = yPro;
    this.ySpeedPro = ySpeedPro;
    
  }
  
   public void update() {
        this.yPro += this.ySpeedPro;
   }
   public void display() {}


}