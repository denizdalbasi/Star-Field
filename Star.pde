
class Star {
  float x, y, z;              // 3D position of the star
  float pz;                   // Previous z position (used to draw motion line)

  Star() {
    x = random(-width, width);   // Random x position across the screen width
    y = random(-height, height); // Random y position across the screen height
    z = random(width);            // Random distance from viewer (depth)
    pz = z;                      // Set previous z to initial z
  }

  void update() {
    z -= 10;                    // Move star closer by decreasing z
    if (z < 1) {                // If star passed viewer,
      z = width;                // reset z to far distance
      x = random(-width, width);  // Reset x to new random position
      y = random(-height, height); // Reset y to new random position
      pz = z;                   // Reset previous z to new z
    }
  }

  void show() {
    // Calculate star position on 2D screen based on perspective
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);

    // Calculate star size based on distance (closer stars appear bigger)
    float r = map(z, 0, width, 8, 0);
    fill(255);                  // Set color to white
    circle(sx, sy, r);          // Draw the star as a circle

    // Calculate previous star position to draw a trail line
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    pz = z;                     // Update previous z to current z

    stroke(255);                // Set line color to white
    line(px, py, sx, sy);       // Draw the motion trail of the star
  }
}
