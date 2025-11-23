PVector pos;      // position
PVector vel;      // velocity
PVector gravity;  // gravity force

float radius = 25;
float bounceFactor = 0.8;  // energy lost when bouncing

void setup() {
  size(600, 400);

  pos = new PVector(width/4, 0);
  vel = new PVector(2, 0);
  gravity = new PVector(0, 0.3);   // gravity strength
}

void draw() {
  background(230);

  // add gravity to velocity
  vel.add(gravity);

  // move the ball
  pos.add(vel);

  // bounce from left/right walls
  if (pos.x < radius || pos.x > width - radius) {
    vel.x *= -1;
  }

  // bounce from floor / ceiling
  if (pos.y > height - radius) {
    pos.y = height - radius; // keep it on floor
    vel.y *= -bounceFactor;  // lose some energy
  }

  // ceiling bounce (weak)
  if (pos.y < radius) {
    pos.y = radius;
    vel.y *= -1;
  }

  // draw ball
  fill(150);
  ellipse(pos.x, pos.y, radius*2, radius*2);
}
