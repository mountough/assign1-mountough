PImage bg;
PImage soil;
PImage groundHog;
PImage life;
PImage robot;
PImage soldier;
int robotDeep = floor(random(3)) + 1 ;
int robotMove = floor(random(400));
int soilderDeep = floor(random(3)) + 1 ;
int laserX=510-robotMove;
int soilderX = 50;
int soilderXSpeed = 5;
int lazerXSpeed = 10;

void setup() {
	size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundHog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  soldier = loadImage("img/soldier.png");

}

void draw() {
//sky
    image(bg, 0,0);
//grass
    noStroke(); 
    colorMode( RGB );
    fill(45,215,5);
    rect (0,150,640,10);
//sun
    fill(250,250,105);
    ellipse(600,0,200,200);
//soil
    image(soil,0,160);
//groundHog
    image(groundHog,280,80);
//life
    image(life,5,5);
    image(life,55,5);
    image(life,105,5);
//laser
    fill(240,10,10);
    rect (laserX,(robotDeep*80)+195,40,5);
    laserX=laserX-lazerXSpeed;
    if(laserX<=0)
    laserX=510-robotMove;
//robot
    image(robot,480-robotMove,(robotDeep*80)+160);
//soilder
    soilderX += soilderXSpeed;
    image(soldier,soilderX,(soilderDeep*80)+160);
    soilderX %= 640;

    
}
