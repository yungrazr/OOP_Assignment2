class LevelSelect
{
  float bWidth=250;
  float bHeight=150;
  float bWPos=width/2-600;
  float bWPos2=width/2-300;
  float bWPos3=width/2;
  float bWPos4=width/2+300;
  float bWPos5=width/2+600;
  float bHPos=height/2+350;
  
  void drawLevelSelect()
  {
      textFont(content,60);
      fill(255);
      text("SELECT A LEVEL",width/2,height/8);
      
     //method calls for drawing buttons
     drawButton(bWPos,bHPos,bWidth,bHeight,2,"LEVEL 1",255);
     if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
     {
       textFont(content,30);
       fill(255);
       text("Space Invader invades Breakout?",width/2,(height/2+200));
       image(preview[0], width/2,height/2-100, 720, 410);
       if(mousePressed)
       {
          fileread.readFile("lvl1.txt");
          lvlsel=false;
          play=true;
        }
     }
     drawButton(bWPos2,bHPos,bWidth,bHeight,2,"LEVEL 2",255);
     if(mouseX>bWPos2-bWidth/2 && mouseX<bWPos2+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
     {
       textFont(content,30);
       fill(255);
       text("I <3 OOP",width/2,(height/2+200));
       image(preview[1], width/2,height/2-100, 720, 410);
       if(mousePressed)
       {
          fileread.readFile("lvl2.txt");
          lvlsel=false;
          play=true;
       }
     }
     drawButton(bWPos3,bHPos,bWidth,bHeight,2,"LEVEL 3",255);
     if(mouseX>bWPos3-bWidth/2 && mouseX<bWPos3+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
     {
       textFont(content,30);
       fill(255);
       text("Level 3 text",width/2,(height/2+200));
       if(mousePressed)
       {
          fileread.readFile("lvl3.txt");
          lvlsel=false;
          play=true;
       }
     }
     drawButton(bWPos4,bHPos,bWidth,bHeight,2,"LEVEL 4",255);
     if(mouseX>bWPos4-bWidth/2 && mouseX<bWPos4+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
     {
       textFont(content,30);
       fill(255);
       text("Level 4 text",width/2,(height/2+200));
       if(mousePressed)
       {
          fileread.readFile("lvl4.txt");
          lvlsel=false;
          play=true;
       }
     }
     drawButton(bWPos5,bHPos,bWidth,bHeight,2,"LEVEL 5",255);
     if(mouseX>bWPos5-bWidth/2 && mouseX<bWPos5+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
     {
       textFont(content,30);
       fill(255);
       text("Level 5 text",width/2,(height/2+200));
       if(mousePressed)
       {
          fileread.readFile("lvl5.txt");
          lvlsel=false;
          play=true;
       }
     }
 
  }

}