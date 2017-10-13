SpaceShip spaceShip = new SpaceShip(250, 100);
ArrayList<Projectile> projectile = new ArrayList<Projectile>();
 

void setup() {
  size(500, 500);
  background(0, 0, 0);

}

void draw() {
        background(0,0,0);
        spaceShip.update();
        spaceShip.display();
        
}

public void keyPressed() {
  spaceShip.spaceShipKeyPress();
  
}

public void keyReleased() {
  spaceShip.spaceShipKeyRelease();
}