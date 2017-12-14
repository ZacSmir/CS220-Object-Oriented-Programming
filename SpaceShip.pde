public class SpaceShip extends SpaceShipTemplate {
   public SpaceShip (float x, float y) {    
       super(x, y);
      
    }
  @Override
  //moves the spaceship around when called by the keypressed function in the main file.
   void spaceShipKeyPress() {
    if (keyCode == UP) {
      this.y_speed = -1;
    } else if (keyCode ==  DOWN) {
      this.y_speed = 1;
    } else if (keyCode == LEFT) {
      this.x_speed = -1;
    } else if (keyCode == RIGHT) {
      this.x_speed = 1;
    } else {
    }
  }
  //same as above but for stopping movement
   void spaceShipKeyRelease() {
    if (keyCode == UP) {
      this.y_speed = 0;
    } else if (keyCode == DOWN) {
      this.y_speed = 0;
    } else if (keyCode == LEFT) {
      this.x_speed = 0;
    } else if (keyCode == RIGHT) {
      this.x_speed = 0;
    } else {
    }
  }
  //this is being called all the time but because of the if functions it doesn't fire a constant stream of projectiles, instead it only shoots every 30 ticks.
    void spaceShipFire() {
      if(shootTimer == 1){
      print(shootTimer);
      ++ shootTimer; 
      if (this.y_speed == 0) {
         projectile.add(new Projectile_Good(this.x, this.y, (this.lastYspeed/abs(this.lastYspeed))*5));
        }
      else {
         projectile.add(new Projectile_Good(this.x, this.y, (this.y_speed/abs(this.y_speed))*5));
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