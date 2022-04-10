import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;

int n = 50; // Nombre d'éléments dans polynome
int coeffA1 = 1, coeffB1 = 1, conste1 = 1;
int coeffA2 = 1, coeffB2 = 1, conste2 = 1;
ArrayList polynome1 = new ArrayList();
ArrayList polynome2 = new ArrayList();

void setup() {
  
  size(600, 600, P3D);
  cam = new PeasyCam(this, 600);
  
}

void draw() {
  background(255);
  
  polynome1 = polynome(n, coeffA1, coeffB1, conste1);
  polynome2 = polynome(n, coeffA2, coeffB2, conste2);
  
  affichePolynome(coeffA1, coeffB1, conste1, true);
  affichePolynome(coeffA2, coeffB2, conste2, false);

  //cube();
  
}



  // TEST

  /*
  for (int i = 0; i < n; i++) {
    System.out.println("First : "+polynome1.get(i)+" Second : "+polynome2.get(i));
  }
  */
