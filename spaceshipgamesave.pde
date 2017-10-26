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
        for(Projectile projectiles: projectile) {
        projectiles.update();
        projectiles.display();
        }
        
}

public void keyPressed() {
  spaceShip.spaceShipKeyPress();
  if (keyCode == SHIFT) {
  projectile.add(new Projectile_Good(spaceShip.x, spaceShip.y, 5));
  }
}

public void keyReleased() {
  spaceShip.spaceShipKeyRelease();
}

public void badProjectile() {


}