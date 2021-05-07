int playerX;         //Spiller
int playerY=1100;    //Spiller
int fjendeX=1890;    //Fjende/Forhindring
int fjendeY=1100;    //Fjende/Forhindring
boolean up = false;
boolean right = false;
boolean left = false;
float bX=800;        //"Play Again" knap
float bY=900;        //'b' = button
float bW=300;        //...
float bH=120;        //...

void setup() {
  size(2000, 1500);
}

//Tegner baggrund, Spiller og Fjende
void draw() {
  background(255, 244, 231);
  fill(218, 61, 176);
  rect(playerX, playerY, 120, 120);
  if (playerY<1100) {
    playerY=playerY+10;
  }
  fill(78, 75, 208);
  ellipse(fjendeX, 1100, 120, 120);
  ellipseMode(CORNER);
  if (fjendeX<1900) {
    fjendeX=fjendeX-10;
  }
  //Falder pænere ned efter hop
  if (up && right) {
    playerX=playerX+10;
    playerY=playerY-30;
  }

  //if (playerX==fjendeX&&playerY==fjendeY) {
  //println("YUP");
  // }

  //kollision mellem Player og Fjende/Forhindring
  if (abs(playerX-fjendeX)<50 && (abs(playerY-fjendeY)<50)) {
    loop();
    fill(235, 64, 52);
    textSize(200);
    text("GAME OVER", 400, 500);
    //"Play Again" knap
    fill(255, 235, 59);
    rect(bX, bY, bW, bH);
    fill(0, 0, 0);
    textSize(58);
    text("Play Again", 805, 985);
    noLoop();
  }
}



//Tjekker hvilke taster, der bliver trykket og angiver, hvad der skal ske når de bliver trykket
void keyPressed() {
  if (keyCode== LEFT) {
    playerX=playerX-7;
    left=true;
  }

  if (keyCode== RIGHT) {
    playerX=playerX+7;
    right=true;
  }
  if (playerY>=1100) {
    if (keyCode== UP) {
      playerY=playerY-350;
      up=true;
    }
  }
}

//
void keyReleased() {
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
