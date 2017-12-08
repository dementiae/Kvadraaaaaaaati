class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}
class RainbowKvadrat extends Kvadrat {
  color c;
  RainbowKvadrat(float _x, float _y, float _s, color a){
    super (_x, _y, _s);
    this.c = a;
}
void draw() {
    rect(this.x,this.y,this.s,this.s);
  fill(this.c);
 }
}
RainbowKvadrat[] k_array;

void setup()
{
  size(600,600);
  k_array = new RainbowKvadrat[10];
  for(int i=0; i<10; i++){
    k_array[i] = new RainbowKvadrat (random(width), random(height), 100.0, color(random(255),random(255),random(255)));
  }
}

void draw()
{
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}