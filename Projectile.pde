abstract public class Projectile {
  float xPro;
  float yPro;
  float ySpeedPro;
  boolean type;
  float deathTimer = 0;
 //theres only a y speed because the bullets only move up and down.
  public Projectile (float xPro, float yPro, float ySpeedPro) {
   this.xPro = xPro;
   this.yPro = yPro;
   this.ySpeedPro = ySpeedPro;
   
    
  }
   private void update() {
    this.yPro += this.ySpeedPro;
    ++ deathTimer;
    //these two if functions loop the bullets around the screen.   
    if(this.yPro > 520){
      this.yPro = -20;
    }
    if(this.yPro < -20){
      this.yPro = 520;
    }
   }
   
   public void display(){
   }
   
}