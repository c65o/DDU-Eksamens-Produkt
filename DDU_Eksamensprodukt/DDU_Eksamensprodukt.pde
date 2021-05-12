Platform P1= new Platform(400, 950, 270, 50, "P1");
Platform P2=new Platform(1350, 950, 270, 50, "P2");



int playerX;         //Spiller
int playerY=1100;    //Spiller
int playerWidth=120;
int playerHeight=120;
int fjendeX=1800;    //Fjende
int fjendeY=1100;    //Fjende
int fjendeX2=1900;   //Fjende 2
int fjendeY2=1100;   //Fjende 2
int fjendeX3=1700;   //Fjende 3
int fjendeY3=1100;   //Fjende 3
boolean up = false;
boolean right = false;
boolean left = false;
boolean start = false;
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
  P1.update();
  P2.update();
  if (playerY<1100) {
    playerY=playerY+20;
  }
  //Fjende 1
  fill(78, 75, 208);
  ellipse(fjendeX, fjendeY, 120, 120);
  ellipseMode(CORNER);
  if (fjendeX<2010) {
    fjendeX=fjendeX-10;
  }
  if (fjendeX<-50) {
    fjendeX=1999;
  }
  fjendeX=fjendeX-2;

  //Fjende 2l
  fill(237, 115, 33);
  ellipse(fjendeX2, fjendeY2, 120, 120);
  ellipseMode(CORNER);
  if (fjendeX2<2010) {
    fjendeX2=fjendeX2-5;
  }
  if (fjendeX2<-50) {
    fjendeX2=1999;
  }
  fjendeX2=fjendeX2-2;

  //Fjende 3
  fill(51, 201, 24);
  ellipse(fjendeX3, fjendeY3, 120, 120);
  ellipseMode(CORNER);
  if (fjendeX3<2010) {
    fjendeX3=fjendeX3-15;
  }
  if (fjendeX3<-50) {
    fjendeX3=1999;
  }
  fjendeX3=fjendeX3-2;

  //Falder pænere ned efter hop
  if (up && right) {
    playerX=playerX+10;
    playerY=playerY-30;
  }



  //if (playerX==fjendeX&&playerY==fjendeY) {
  //println("YUP");
  // }

  //kollision mellem Player og Fjende/Forhindring 1
  if (abs(playerX-fjendeX)<50 && (abs(playerY-fjendeY)<50)) {
    loop();
    fill(235, 64, 52);
    textSize(200);
    text("GAME OVER", 390, 590);
    //"Play Again" knap
    fill(30, 43, 107);
    rect(bX, bY, bW, bH);
    fill(255, 255, 255);
    textSize(58);
    text("Play Again", 805, 980);
    noLoop();
  }

  //kollision mellem Player og Fjende/Forhindring 2
  if (abs(playerX-fjendeX2)<50 && (abs(playerY-fjendeY2)<50)) {
    loop();
    fill(235, 64, 52);
    textSize(200);
    text("GAME OVER", 390, 590);
    //"Play Again" knap
    fill(30, 43, 107);
    rect(bX, bY, bW, bH);
    fill(255, 255, 255);
    textSize(58);
    text("Play Again", 805, 980);
    noLoop();
  }
  //kollision mellem Player og Fjende/Forhindring 3
  if (abs(playerX-fjendeX3)<50 && (abs(playerY-fjendeY3)<50)) {
    loop();
    fill(235, 64, 52);
    textSize(200);
    text("GAME OVER", 390, 590);
    //"Play Again" knap
    fill(30, 43, 107);
    rect(bX, bY, bW, bH);
    fill(255, 255, 255);
    textSize(58);
    text("Play Again", 805, 980);
    noLoop();
  }
}

//Tjekker hvilke taster, der bliver trykket og angiver, hvad der skal ske når de bliver trykket
void keyPressed() {
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

//"Play Again" knap kan trykkes og spillet genstarter
void mouseClicked() {
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
