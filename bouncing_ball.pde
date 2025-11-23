float x = 200;     // ball's x-position
float y = 200;     // ball's y-position

float xspeed = 3;  // horizontal speed
float yspeed = 2;  // vertical speed

void setup() {
  size(600, 400);  // window size
}

void draw() {
  background(255);         // clear old frame

  ellipse(x, y, 40, 40);   // draw the ball
  fill(0,0,255);
  // move the ball
  x = x + xspeed;
  y = y + yspeed;

  // check left or right walls
  if (x < 20 || x > width - 20) {
    xspeed = xspeed * -1;  // reverse direction
  }

  // check top or bottom walls
  if (y < 20 || y > height - 20) {
    yspeed = yspeed * -1;  // reverse direction
  }
}
