float angle = 0;

void setup() {
  size(800, 800);
  rectMode(CENTER);  // Draw rectangles from their center
  background(0);     // Black background
  noStroke();        // Remove outlines
}

void draw() {
  // Add a subtle fade effect by drawing a semi-transparent background
  fill(0, 10);
  rect(0, 0, width*2, height*2);
  
  // Translate to center of window
  translate(width/2, height/2);
  
  // Create multiple rotating squares
  for (int i = 0; i < 12; i++) {
    // Rotate the entire coordinate system
    rotate(radians(angle + (i * 30)));
    
    // Calculate size and position based on sine wave
    float size = 100 + sin(radians(angle * 2)) * 50;
    float distance = 100 + cos(radians(angle * 3)) * 50;
    
    // Create color based on position
    float hue = (angle + i * 30) % 360;
    fill(hue, 200, 255, 150);
    colorMode(HSB, 360, 255, 255, 255);
    
    // Draw square
    pushMatrix();
    translate(distance, 0);
    rotate(radians(angle * 2));
    rect(0, 0, size, size);
    popMatrix();
  }
  
  angle += 0.5;  // Increment rotation angle
}

void mousePressed() {
  // Save the artwork when mouse is pressed
  save("square_art_" + frameCount + ".png");
}
