class GameOver
{
  float bWidth = 300;
  float bHeight = 100;
  float bWPos = width/2;
  float bHPos = (height/2+300);
  
  void drawGameOver()
  {
      textFont(title, 120);
      fill(255);
      text("Game over!",width/2,height/4);
      textFont(content,60);
      text("Your final score: " + gameui.score,width/2,height/2);
      textFont(content,30);
      text("Try again?" ,width/2,height/2+200);
      
     //menu button 
     drawButton(bWPos,bHPos,bWidth,bHeight,2,"MENU",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          //resetting variables
          gameover = false;
          main = true;
          gameui.lives = 3;
          gameui.score = 0;
          gameui.pType = 0;
          powerup.powerup=false;
          cooldown = 20;
          fileread.clearLevel();
          release = false;
          resetTime = millis();
        }
     }
  }
  
  
  
  
  
}