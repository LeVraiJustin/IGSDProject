import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;

int boxSize = 10;

int n = 100; // Nombre d'éléments dans polynome
int coeffA1 = 1, coeffB1 = 1, conste1 = 1;
int coeffA2 = 1, coeffB2 = 1, conste2 = 1;
int[] polynome1 = new int[n];
int[] polynome2 = new int[n];

void setup() {
  
  size(600, 600, P3D);
  cam = new PeasyCam(this, 600);
  
  polynome1 = polynome(n, coeffA1, coeffB1, conste1);
  polynome2 = polynome(n, coeffA2, coeffB2, conste2);
  
  affichePolynome(coeffA1, coeffB1, conste1, true);
  affichePolynome(coeffA2, coeffB2, conste2, false);
  
}

void draw() {
  background(255);
  
  affichePolynome(coeffA1, coeffB1, conste1, true);
  affichePolynome(coeffA2, coeffB2, conste2, false);
  
  figure(polynome1);
  
  
  
  for (int i = 0; i < n; i++) {
    System.out.println("First : "+polynome1[i]+" Second : "+polynome2[i]);
  }
  
}



  // TEST

  /*
  for (int i = 0; i < n; i++) {
    System.out.println("First : "+polynome1.get(i)+" Second : "+polynome2.get(i));
  }
  */

