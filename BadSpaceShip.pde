//exactly the same as the spaceship except that this.lastyspeed = -1
public class BadSpaceShip extends SpaceShipTemplate {
    public BadSpaceShip (float x, float y) {    
       super(x, y);
       this.lastYspeed = -1;
    }
    
    @Override
    void spaceShipKeyPress() {
      if (key == 'w') {
        this.y_speed = -1;
      }
        else if (key == 's') {
          this.y_speed = 1;
      }
        else if (key == 'a') {
          this.x_speed = -1;
      }
        else if (key == 'd') {
          this.x_speed = 1;
      }
        else {}
     
    } 
   @Override
   void spaceShipKeyRelease() {
   if (key == 'w') {
        this.y_speed = 0;
      }
    else if (key == 's') {
        this.y_speed = 0;
      }
    else if (key == 'a') {
        this.x_speed = 0;
      }
    else if (key == 'd') {
        this.x_speed = 0;
      }
    else{
    
    }
   }
  @Override
  void spaceShipFire() {
    if(shootTimer == 1){
      print(shootTimer);
      ++ shootTimer; 
      if (this.y_speed == 0) {
         projectile.add(new Projectile_Bad(this.x, this.y, (this.lastYspeed/abs(this.lastYspeed))*5));
        }
      else {
         projectile.add(new Projectile_Bad(this.x, this.y, (this.y_speed/abs(this.y_speed))*5));
       }
    }
    else if(shootTimer == 30){
      shootTimer = 1;
    }
    else{
    ++ shootTimer; 
    }
    }
}