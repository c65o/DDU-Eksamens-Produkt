Platform P1= new Platform(400, 950, 270, 50, "P1");
Platform P2=new Platform(1350, 950, 270, 50, "P2");
Player player = new Player();
Fjende fjende = new Fjende();
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
  println(frameCount);

  background(255, 244, 231);
  player.update();
  fjende.update();
  P1.update();
  P2.update();
  player.Collision(P1);
  player.Collision(P2);



  //if (playerX==fjendeX&&playerY==fjendeY) {
  //println("YUP");
  // }

  //kollision mellem Player og Forhindring 1
  if (abs(player.playerX-fjende.fjendeX)<50 && (abs(player.playerY-fjende.fjendeY)<50)) {
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

  //kollision mellem Player og Forhindring 2
  if (abs(player.playerX-fjende.fjendeX2)<50 && (abs(player.playerY-fjende.fjendeY2)<50)) {
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
  //kollision mellem Player og Forhindring 3
  if (abs(player.playerX-fjende.fjendeX3)<50 && (abs(player.playerY-fjende.fjendeY3)<50)) {
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
  player.Pressed();
}

//
void keyReleased() {
  player.Released();
}

//"Play Again" knap kan trykkes og spillet genstarter
void mouseClicked() {
  player.Clicked();
}
