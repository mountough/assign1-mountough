PImage bg;
PImage soil;
PImage groundHog;
PImage life;
PImage robot;
PImage soldier;
int robotDeep = floor(random(4)) + 2 ;
int robotX = 480 - floor(random(240));
int soilderDeep = floor(random(4)) + 2 ;
int soilderX = -50;
int soilderXSpeed = 5;
int lazerX1 = robotX+25;
int lazerX2 = robotX+25;
int lazerY1 = (robotDeep*80) + 37;
int lazerY2 = (robotDeep*80) + 37;
int lazerSpeed = 2;


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
    fill(124,204,5);
    rect (0,145,640,15);
//sun1
    fill(255, 255, 0);
    ellipse(590,50,130,130);
    fill(253, 184, 19);
    ellipse(590,50,120,120);
//soil
    image(soil,0,160);
//groundHog
    image(groundHog,280,80);
//life
    image(life,10,10);
    image(life,80,10);
    image(life,150,10);
//laser
    strokeWeight(10);
    stroke(240,10,10);
    line (lazerX1,lazerY1,lazerX2,lazerY2);
    lazerX1 -= lazerSpeed; 
    if(lazerX1 <= lazerX2-40){
       lazerX2 = lazerX1+40;
    }
    if(lazerX1 < robotX+25-160){
       lazerX1 = lazerX2 = robotX+25;
    }
    
//robot
    image(robot,robotX,(robotDeep*80));
//soilder
    soilderX += soilderXSpeed;
    image(soldier,soilderX,(soilderDeep*80));
    soilderX %= 640;

    
}
