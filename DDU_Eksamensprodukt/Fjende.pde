class Fjende {
  int fjendeX=1800;    //Fjende
  int fjendeY=1140;    //Fjende
  int fjendeX2=1900;   //Fjende 2
  int fjendeY2=1140;   //Fjende 2
  int fjendeX3=1700;   //Fjende 3
  int fjendeY3=1140;   //Fjende 3


  void update() {
    //Fjende 1
    //fill(78, 75, 208);
   // ellipse(fjendeX, fjendeY, 120, 120);
   // ellipseMode(CORNER);
   image(enemy, fjendeX, fjendeY);
    if (fjendeX<2010) {
      fjendeX=fjendeX-10;
    }
    if (fjendeX<-50) {
      fjendeX=1999;
    }
    fjendeX=fjendeX-2;

    //Fjende 2
    //fill(237, 115, 33);
    //ellipse(fjendeX2, fjendeY2, 120, 120);
    //ellipseMode(CORNER);
    image(enemy2, fjendeX2, fjendeY2);
    if (fjendeX2<2010) {
      fjendeX2=fjendeX2-5;
    }
    if (fjendeX2<-50) {
      fjendeX2=1999;
    }
    fjendeX2=fjendeX2-2;

    //Fjende 3
    //fill(51, 201, 24);
    //ellipse(fjendeX3, fjendeY3, 120, 120);
    //ellipseMode(CORNER);
    image(enemy3, fjendeX3, fjendeY3);
    if (fjendeX3<2010) {
      fjendeX3=fjendeX3-15;
    }
    if (fjendeX3<-50) {
      fjendeX3=1999;
    }
    fjendeX3=fjendeX3-2;
  }
}
