PVector pos;      
PVector vel;      
PVector gravity;  

float radius = 25;
float bounceFactor = 0.8;  

void setup() {
  size(600, 400);

  pos = new PVector(width/4, 0);
  vel = new PVector(2, 0);
  gravity = new PVector(0, 0.3);   
}

void draw() {
  background(230);

  vel.add(gravity);

  pos.add(vel);

  
  if (pos.x < radius || pos.x > width - radius) {
    vel.x *= -1;
  }

  if (pos.y > height - radius) {
    pos.y = height - radius; // keep it on floor
    vel.y *= -bounceFactor;  // lose some energy
  }

  if (pos.y < radius) {
    pos.y = radius;
    vel.y *= -1;
  }

  fill(150);
  ellipse(pos.x, pos.y, radius*2, radius*2);
}
