import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;

int coeffA = 1, coeffB = 1, conste = 1;

void setup() {
  
  size(600, 600, P3D);
  cam = new PeasyCam(this, 600);
  
}

void draw() {
  background(255);
  
  affichePolynome();
  cube();
  
}
