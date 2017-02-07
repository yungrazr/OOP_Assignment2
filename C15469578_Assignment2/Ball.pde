class Ball
{
  PVector position = new PVector(mouseX, height - 120);
  PVector velocity = new PVector(0, 0);
  float[] speeds = {-6,-3.5,-2.5,2.5,3.5,6};
  float radius = 25;
  
  void drawBall()
  {
    fill(150);
    ellipse(position.x, position.y, radius, radius);
  }
  
  void updateBall()
  {
    
    //checks to see if ball
    //is hitting off the walls
    if(position.x-radius/2<0)
    {
      velocity.x=random(1, 5);
      hit.trigger();
    }
    if(position.x+radius/2>width)
    {
      velocity.x=random(-5, -1);
      hit.trigger();
    }
    if(position.y-radius/2<0)
    {
      velocity.y*=-1;
      hit.trigger();
    }
    
    //check to see if ball fell under
    if(position.y+radius/2>height)
    {
      release=false;
      gameui.lives-=1;
      if(gameui.lives<=0)
      {
        play=false;
        gameover=true;
      }
    
    }
    
    //check to see if ball hit paddle
    if(position.x+(radius/2) > player.position.x-(player.playerW/2) && position.x-(radius/2) < player.position.x+(player.playerW/2))
    {
      if(position.y+radius/2>player.position.y)
      {
        velocity.y*=-1;
        hit.trigger();
      }
    }
    
    if(!release)
    {
      position.x=mouseX;
      position.y=height-120;
    }
    else
    {
      position.x += velocity.x;
      position.y += velocity.y;
    }
    
    if(mousePressed && cooldown < 0) 
    {
      if(!release)
      {
        release=true;
        velocity.y = -6;
        velocity.x = speeds[(int)random(0,5)];
      }
    }
  }
  
}