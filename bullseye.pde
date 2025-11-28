int y = 0;
int radius = 20;
boolean goingDown = true;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  noFill();                

  stroke(92, 136, 218);
  strokeWeight(6);         
  ellipse(width/2, y, radius*2, radius*2);

  strokeWeight(4);
  ellipse(width/2, y, radius*1.4, radius*1.4);

  strokeWeight(2);
  ellipse(width/2, y, radius*0.8, radius*0.8);


  if (goingDown) {
    y += 3;
  } else {
    y -= 3;
  }


  if (y + radius >= height) {
    goingDown = false;
  }


  if (y - radius <= 0) {
    goingDown = true;
  }
}
