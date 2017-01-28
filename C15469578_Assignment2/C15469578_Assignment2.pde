//OOP ASSIGNMENT 2
//C15469578 DANIEL VEGERA
//////////////////////////

Player player;
MainMenu menu;
Controls controls;
Ball ball;
GameOver game;
PFont title;
PFont content;
boolean main=true;
boolean control=false;
boolean play=false;
boolean release=false;
boolean gameover=false;

///////////////////////////////

void setup()
{
  fullScreen();
  frameRate(60);
  rectMode(CENTER);
  ellipseMode(CENTER);
  textAlign(CENTER,CENTER);
  player = new Player();
  menu = new MainMenu();
  controls = new Controls();
  ball = new Ball();
  game = new GameOver();
  title = loadFont("Italic-Bricks-120.vlw");
  content = loadFont("Arial-BoldItalicMT-60.vlw");
  
}//end Setup

void draw()
{
  background(0);
  if(main) {
    cursor();
    menu.drawMenu();
  }
  
  if(gameover)
  {
    cursor();
    game.drawGameOver();
  }
  
  if(play) {
    noCursor();
    player.updatePlayer();
    player.drawPlayer();
    ball.updateBall();
    ball.drawBall();
    ball.drawDisplay();
  }
  
  if(control) {
    cursor();
    controls.drawControls();
  }
  
  
}//end Draw