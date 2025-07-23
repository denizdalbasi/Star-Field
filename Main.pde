Star[] stars = new Star[800];  // Create an array to hold 800 stars

void setup() {
  size(800, 600);              // Set the size of the window
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();     // Initialize each star with random position
  }
}

void draw() {
  background(0);               // Clear the screen with black color
  translate(width / 2, height / 2);  // Move origin to center of the screen
  for (Star s : stars) {
    s.update();               // Update star position (move closer)
    s.show();                 // Draw the star on the screen
  }
}
