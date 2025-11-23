void setup() {
  size(300, 300);
}

void draw() {
  background(255);

  fill(150);        // gray star
  stroke(0);        // black outline
  strokeWeight(2);

  beginShape();
  vertex(100, 50);   // top
  vertex(120, 90);
  vertex(160, 100);
  vertex(120, 110);
  vertex(100, 150);  // bottom
  vertex(80, 110);
  vertex(40, 100);
  vertex(80, 90);
  endShape(CLOSE);
}
