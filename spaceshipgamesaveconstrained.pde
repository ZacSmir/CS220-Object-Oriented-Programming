//Creates the spaceship
SpaceShip spaceShip = new SpaceShip(250, 100);
//sets up the array of projectiles
ArrayList<Projectile> projectile = new ArrayList<Projectile>();
//black background of 500*500
void setup() {
  size(500, 500);
  background(0, 0, 0);
}


void draw() {
  //makes the background
  background(0,0,0);
  //updates the spaceship
  spaceShip.update();
  spaceShip.display();
  //updates the projectiles
  for(Projectile projectiles: projectile) {
    projectiles.update();
    projectiles.display();
  }
}
//calls the spaceship movement and projectile shooting functions when a key is pressed
public void keyPressed() {
  spaceShip.spaceShipKeyPress();
  spaceShip.spaceShipFire();
}
//calls the spaceship movement stop when a key is released
public void keyReleased() {
  spaceShip.spaceShipKeyRelease();
}