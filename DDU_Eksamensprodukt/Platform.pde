class Platform {
  float w, h, x, y;
  String typeof;
  float halfWidth, halfHeight;

  Platform(float startX, float startY) {
    x = startX;
    y= startY;
  }

  Platform(float _x, float _y, float _w, float _h, String _typeof) {
    w=_w;
    h=_h;
    x=_x;
    y=_y;
    typeof=_typeof;

    halfWidth= w/2;
    halfHeight=h/2;
  }

  boolean collision(int playerX, int playerY, int playerWidth, int playerHeight) {
    if ((playerX<x+w && playerX>x &&playerY<y+h && playerY>y)||((playerX+playerWidth<x+w && playerX+playerWidth>x))||((playerY+playerWidth<y+h && playerY+playerHeight>y))) {
      return true;
    } else return false;
  }
  void update() {
    fill(81, 33, 102);
    rect(x, y, w, h);
    rect(x, y, w, h);
  }
}
