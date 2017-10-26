public class SpaceShip {
    float x;
    float y;
    float xSpeed;
    float ySpeed;
    color fillColor;
   
    /*
       Create a new circle at the given x,y point with a
       random speed, color, and size.
     */
    public SpaceShip (float x, float y) {    
        this.x = x;
        this.y = y;
        this.xSpeed = 0;
        this.ySpeed = 0;
        // this creates a random color. We draw it with an
        // outline, so we'll be able to see it on a white
        // background regardless
        this.fillColor = color(255,255,255);
       
    }

    /* Update current location by speed. */
    public void update() {
        this.x += this.xSpeed;
        this.y += this.ySpeed;
      
    }
   
    /* don't do anything, by default */
   public void display() {
        fill(this.fillColor);
        stroke(255,255,255); // makes a black outline
        rect(this.x, this.y, 10, 20);
    }
    
    public void spaceShipKeyPress() {
      println(keyCode);
    if (keyCode == UP) {
        this.ySpeed = -1;
      }
    else if (keyCode == DOWN) {
        this.ySpeed = 1;
      }
    else if (keyCode == LEFT) {
        this.xSpeed = -1;
      }
    else if (keyCode == RIGHT) {
        this.xSpeed = 1;
      }
    else {}
     
    }
    
   public void spaceShipKeyRelease() {
   if (keyCode == UP) {
        this.ySpeed = 0;
      }
    else if (keyCode == DOWN) {
        this.ySpeed = 0;
      }
    else if (keyCode == LEFT) {
        this.xSpeed = 0;
      }
    else if (keyCode == RIGHT) {
        this.xSpeed = 0;
      }
    else{
    
    }
   }
   public void spaceShipFire() {
  
   
   }
}