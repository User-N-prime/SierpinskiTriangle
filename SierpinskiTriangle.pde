public int maxDepth = 8;
public int size = 1000;

public void setup() {
  size(1000, 1000);
}

public void draw() {
  background(0);
  Sierpinski(0, 0, width, 0);
  println(maxDepth);
}

public void Sierpinski(int x, int y, int len, int depth) {
  if (depth >= maxDepth) {
    noStroke();
    triangle(x, y, x + len, y, x + len/2, y + len);
  }
  else {
   Sierpinski(x, y, len/2, depth + 1);
   Sierpinski(x + len/2, y, len/2, depth + 1);
   Sierpinski(x + len/4, y + len/2, len/2, depth + 1);
  }
}

public void mousePressed() {
  if (mouseButton == LEFT) {
    maxDepth = max(0, maxDepth - 1);
  }
  if (mouseButton == RIGHT) {
    maxDepth = min(9, maxDepth + 1);
  }
}
