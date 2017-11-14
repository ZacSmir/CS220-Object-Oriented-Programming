public class SpaceShip {
    float x;
    float y;
    float X_SPEED;
    float Y_SPEED;
    float lastYspeed = 1;
    private final color FILL_COLOR = color(255,255,255);
   
   //This sets up the spaceship and give it it's position and speed.
    public SpaceShip (float x, float y) {    
        this.x = x;
        this.y = y;
        this.X_SPEED = 0;
        this.Y_SPEED = 0;
        // this creates a random color. We draw it with an
        // outline, so we'll be able to see it on a white
        // background regardless
       
    }
     
     //updates the ship
    void update() {
        this.x += this.X_SPEED;
        this.y += this.Y_SPEED;
        if(this.Y_SPEED != 0){
         this.lastYspeed = this.Y_SPEED;
        }     
    }
   
    //gives the ship it's color and outline and shape
   private void display() {
        fill(this.FILL_COLOR);
        stroke(255,255,255); // makes a black outline
        rect(this.x, this.y, 10, 20);
    }
    
    //gets the spaceship moving
    private void spaceShipKeyPress() {
      println(keyCode);
    if (keyCode == UP) {
        this.Y_SPEED = -1;
      }
    else if (keyCode == DOWN) {
        this.Y_SPEED = 1;
      }
    else if (keyCode == LEFT) {
        this.X_SPEED = -1;
      }
    else if (keyCode == RIGHT) {
        this.X_SPEED = 1;
      }
    else {}
     
    }
   //stops the spaceship 
   private void spaceShipKeyRelease() {
   if (keyCode == UP) {
        this.Y_SPEED = 0;
      }
    else if (keyCode == DOWN) {
        this.Y_SPEED = 0;
      }
    else if (keyCode == LEFT) {
        this.X_SPEED = 0;
      }
    else if (keyCode == RIGHT) {
        this.X_SPEED = 0;
      }
    else{
    
    }
   }
   //spaceship shoots projectiles: the speed is 5(x/|x|) to make sure the projectile either moves at five speed up or down, depending on the last speed
  public void spaceShipFire() {
    if (keyCode == SHIFT) {
      if (spaceShip.Y_SPEED == 0) {
        println("shoot0");
        projectile.add(new Projectile_Good(this.x, this.y, (this.lastYspeed/abs(this.lastYspeed))*5));
        }
      else {
        println("shootelse" + this.Y_SPEED);
       projectile.add(new Projectile_Good(this.x, this.y, (this.Y_SPEED/abs(this.Y_SPEED))*5));
       }
   
   }
}}