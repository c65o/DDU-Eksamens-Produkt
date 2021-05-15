class Player {
  int playerX;         
  int playerY=1100;    
  int playerWidth=120;
  int playerHeight=120;
  int gravity=10;
  boolean up = false;
  boolean right = false;
  boolean left = false;


  void update() {
    image(spiller, playerX, playerY);
    //fill(218, 61, 176);
    //rect(playerX, playerY, 120, 120);
    if (playerY<1100) {
      playerY=playerY+gravity;
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

    if (keyCode== UP) {
      println("YUP");
      playerY=playerY-350;
      up=true;
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

  void Collision(Platform p) {
    if (playerX>p.x && playerX<p.x+p.w && playerY+ playerHeight>=p.y && playerY<=p.y+p.h) {
      gravity=0;
      playerY=(int)p.y-playerHeight;
      println("x: " + playerX + "y: " + playerY);
    } else {
      gravity=10;
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
        fjende.fjendeX=1800;
        fjende.fjendeY=1100;
        fjende.fjendeX2=1900;
        fjende.fjendeY2=1100;
        fjende.fjendeX3=1700;
        fjende.fjendeY3=1100;
        println("clicked");
      }
    }
  }
}
