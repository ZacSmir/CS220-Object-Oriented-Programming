public class SpaceShipTemplate {
  //sets timer for shooting rate
  float shootTimer = 0;
  //x and y position
  float x;
  float y;
  //speeds
  protected float x_speed;
  protected float y_speed;
  //last y speed for shooting purposes
  float lastYspeed = 1;
  //color
  private final color FILL_COLOR = color(255, 255, 255);
  //constructing ship
  public SpaceShipTemplate (float x, float y) {    
    this.x = x;
    this.y = y;
    this.x_speed = 0;
    this.y_speed = 0;
  }
  //updating ship
  void update() {
    this.x += this.x_speed;
    this.y += this.y_speed;
    if (this.y_speed != 0) {
      this.lastYspeed = this.y_speed;
    }
   //these ifs let the ship loop around the canvas in both x and y
    if(this.x > 520){
      this.x = 20;
    }
    if(this.y > 520){
      this.y = 20;
    }
    if(this.x < -20){
      this.x = 520;
    }
    if(this.y < -20){
      this.y = 520;
    }
  }
  //makes the ship look like how it should
  void display() {
    fill(this.FILL_COLOR);
    stroke(255, 255, 255); // makes a black outline
    rect(this.x, this.y, 10, 20);
  }
  //Activated when a key is pressed in the main function and makes the ship move
  void spaceShipKeyPress() {
    if (keyCode == UP) {
      this.y_speed = -1;
    } else if (keyCode ==  DOWN) {
        this.y_speed = 1;
         }
    else if (keyCode == LEFT) {
        this.x_speed = -1;
        }
    else if (keyCode == RIGHT) {
        this.x_speed = 1;
        } 
    else {
        }
  }
   //same as above but with making the ship stop
   void spaceShipKeyRelease() {
    if (keyCode == UP) {
        this.y_speed = 0;
        }
    else if (keyCode == DOWN) {
        this.y_speed = 0;
        }
    else if (keyCode == LEFT) {
        this.x_speed = 0;
        }
    else if (keyCode == RIGHT) {
        this.x_speed = 0;
        }
    else {
        }
  }
    //its the shooter. To be honest I don't really need it here because there's an edited copy of it in the other classes.
   void spaceShipFire() {
    if (keyCode == 32) {
      if (this.y_speed == 0) {
        projectile.add(new Projectile_Good(this.x, this.y, (this.lastYspeed/abs(this.lastYspeed))*5));
        }
      else {
        projectile.add(new Projectile_Good(this.x, this.y, (this.y_speed/abs(this.y_speed))*5));
        }
      }
  }

}