//imports list iterator
import java.util.ListIterator;
//sets the score for the bad guy to 0
float Score = 0;
//sets the score for the good guy to 0
float goodScore = 0;
//sets the can't win conditions so two people don't wint
boolean goodCanWin = true;
boolean badCanWin = true;
//sets the spaceships to variables seperately.
BadSpaceShip badSpaceShip;
SpaceShip spaceShip;
//makes the array list for spaceships and projectiles
ArrayList<SpaceShipTemplate> SpaceShips = new ArrayList<SpaceShipTemplate>();
ArrayList<Projectile> projectile = new ArrayList<Projectile>();
//black canvas and new spaceships
void setup() {
  size(500, 500);
  background(0, 0, 0);
  badSpaceShip = new BadSpaceShip(250,300);
  SpaceShips.add(badSpaceShip);
  spaceShip = new SpaceShip(250,200);
  SpaceShips.add(spaceShip);
}


void draw() {
  background(0,0,0);
  //makes the spaceships shoot and updates and moves them
  for(SpaceShipTemplate SpaceShips: SpaceShips) {
    SpaceShips.update();
    SpaceShips.display();
    SpaceShips.spaceShipFire();
  }
  //this works to kill the projectiles after 200 ticks
  ListIterator<Projectile> projectileIterator = projectile.listIterator();
  while(projectileIterator.hasNext()){
    if(projectileIterator.next().deathTimer > 200){
      projectileIterator.remove();
    }
  //makes projectiles do something when they get near the enemy ship
  }
  for(Projectile projectiles: projectile) {
    projectiles.update();
    projectiles.display();
    if(projectiles.type == false){
      if(badSpaceShip.x + 10 > projectiles.xPro &&
        badSpaceShip.x - 10 < projectiles.xPro &&
        badSpaceShip.y + 10 > projectiles.yPro && 
        badSpaceShip.y - 10 < projectiles.yPro)
        {
        ++ goodScore;
        println("adding to good score");
        }
    }
    if(projectiles.type == true){
      if(spaceShip.x + 10 > projectiles.xPro &&
        spaceShip.x - 10 < projectiles.xPro &&
        spaceShip.y + 10 > projectiles.yPro && 
        spaceShip.y - 10 < projectiles.yPro){
        ++ Score;
        println("adding to bad score");
        }
    }
  }
  //checks the win conditions then activates the win message
  if(goodScore >= 100 && goodCanWin == true){
    print("GOOD GUY WINS!");
    badCanWin = false;
    }
  if(Score >= 100 && badCanWin == true){
    print("BAD GUY WINS!");
    goodCanWin = false;
    }
    
}
//sees if a key is pressed and moves the ship
public void keyPressed() {
  for(SpaceShipTemplate SpaceShips: SpaceShips) {
  SpaceShips.spaceShipKeyPress();
  }
}
//see if a key is released and stop the ship from moving further
public void keyReleased() {
  for(SpaceShipTemplate SpaceShips: SpaceShips) {
  SpaceShips.spaceShipKeyRelease();
  }
}