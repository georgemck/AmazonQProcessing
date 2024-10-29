void setup() {
  // Set up the window size
  size(400, 400);
  // Set the background color to white
  background(255);
}

void draw() {
  // Set the circle's fill color to blue
  fill(0, 0, 255);
  // Set the circle's outline color to black
  stroke(0);
  // Draw a circle in the center of the window
  // Parameters: x-coordinate, y-coordinate, diameter
  circle(width/2, height/2, 200);
}