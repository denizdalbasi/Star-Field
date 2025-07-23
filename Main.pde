Star[] stars = new Star[800];

void setup() {
  size(800, 600);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  for (Star s : stars) {
    s.update();
    s.show();
  }
}
