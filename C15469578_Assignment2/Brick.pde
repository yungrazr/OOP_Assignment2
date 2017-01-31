class Brick
{
  float x = width/2;
  float y = height/2;
  float brickHeight = 40;
  float brickWidth = 110;
  int brickLife = 1;
  color [] brickColor = { color(234,24,24), color(94,28,234),
  color(26,234,24), color(252,143,8), color(244,252,8) };
  int c = brickColor[(int)random(0,5)];
  
  void drawBrick()
  {
    if(brickLife>0)
    {
      fill(c);
      rectMode(CORNER);
      rect(x,y,brickWidth,brickHeight);
      rectMode(CENTER);
    }
  }//end drawBrick
  
  void updateBrick()
  {
    if(brickLife>0)
    {
      if(ball.position.x+(ball.radius/2) > x && ball.position.x-(ball.radius/2) < x+brickWidth)
      {
        if(ball.position.y+(ball.radius/2) > y && ball.position.y-(ball.radius/2) < y+brickHeight)
        {

          ball.velocity.y*=-1;
          brickLife=-1;
          //reverse y direction of ball when hitting brick
        }
      }
    }
  }//end updateBrick
  
}//end class Brick