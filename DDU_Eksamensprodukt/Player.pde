class Player {
  int playerX;         
  int playerY=1100;    
  int playerWidth=120;
  int playerHeight=120;
  boolean up = false;
  boolean right = false;
  boolean left = false;

  Player() {
  }

  void update() {
    fill(218, 61, 176);
    rect(playerX, playerY, 120, 120);
    if (playerY<1100) {
      playerY=playerY+20;
    }
    
    //Falder pænere ned efter hop
    if (up && right) {
      playerX=playerX+10;
      playerY=playerY-30;
    }
  }
  
  void Pressed() {
    if (keyCode== LEFT) {
      playerX=playerX-20;
      left=true;
    }

    if (keyCode== RIGHT) {
      playerX=playerX+10;
      right=true;
    }
    if (playerY>=1100) {
      if (keyCode== UP) {
        playerY=playerY-350;
        up=true;
      }
    }
  }

  
  void Released() {
    if (keyCode== LEFT) {
      left=false;
    }
    if (keyCode== RIGHT) {
      right=false;
    }
    if (keyCode== UP) {
      up=false;
    }
  }
  
  void Collision(Platform p){
    if (playerX>p.x && playerX<p.x+p.w && playerY>p.y && playerY<p.y+p.h){
      playerY=(int)p.y;
    }
    
    
  }

  //"Play Again" knap kan trykkes og spillet genstarter
  void Clicked() {
    //println("x="+mouseX + "y" + mouseY);
    if (mouseX>800 && mouseX<1100 && mouseY>900 && mouseY<1010) {
      if (start) {
        noLoop();
      } else {
        loop();
        playerX=0;
        playerY=1100;
        fjendeX=1800;
        fjendeY=1100;
        fjendeX2=1900;
        fjendeY2=1100;
        fjendeX3=1700;
        fjendeY3=1100;
        println("clicked");
      }
    }
   
  }
}
