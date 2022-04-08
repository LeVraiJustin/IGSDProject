import peasy.*; // Pour la caméra dans l'espace

// Instanciation de la cam
PeasyCam cam;

void setup() {
  size(1024, 768, P3D);
  
  cube = createShape(RECT, 0, 0, 80, 80);
  
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(1000);
  cam.setMaximumDistance(1000);

  background(0);
  noStroke();
  smooth();
  
  fill(255);
  rect(10, 10, 20, 80);
  fill(175);
  rect(40, 10, 20, 80);
  fill(100);
  rect(70, 10, 20, 80);
  
}

void draw() {
  
  if (mouseX > 10 && mouseX < 30 && mouseY > 10 && mouseY < 90) {
      cursor(HAND); // Affiche une main
   }
   else
   if (mouseX > 40 && mouseX < 60 && mouseY > 10 && mouseY < 90) {
      cursor(ARROW); // Affiche une flèche
   }
   else
   if (mouseX > 70 && mouseX < 90 && mouseY > 10 && mouseY < 90) {
      cursor(WAIT); // Affiche un sablier
  }
  else {
     cursor(CROSS); // Affiche une croix si on ne survole rien
  }
  
  pushMatrix();
  figure();
  popMatrix();
  
  translate(500, 500);
  
  pushMatrix();
  figure();
  popMatrix();

  
}

void mousePressed() {
  
  

}

int sd(int number) {
  // Calcule la somme des diviseurs
  int somme = 0;
  
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      somme += i;
      
    }
  }
  
  //System.out.println(somme);
  return somme;
  
}

// Déficient //
// Vérifie si le nombre est déficient //
boolean deficient(int number) { return sd(number) < 2*number; }

// Parfait //
// Vérifie si le nombre est parfait //
boolean parfait(int number) { return sd(number) == 2*number; }

// Abondant //
// Verfie si le nombre est abondant //
boolean abondant(int number) { return sd(number) > 2* number; }

// Fonction polynome //
// Fonction qui nous donne un tableau avec N entiers //

/* fonction polynome de base avec des coeffs non modifiables pour l'instant */

ArrayList polynome(int N) {
  
  // Liste des valeurs à renvoyer //
  ArrayList res = new ArrayList();
  
  // Coefficients de la fonction polynome //
  int coeffA = 1, coeffB = 1;
  
  // Constante //
  int constante = 1;
  
  for (int i = 0; i < N; i++) {
    res.add(coeffA*i*i + coeffB*i + constante);
  }
  
  return res;
  
}

// Fonction nous permettant de savoir si le nombre est premier

boolean isPrime(int number) {
    if (number <= 1) { return false; }
    
    for (int i = 2; i <= Math.sqrt(number); i++) {
        if (number % i == 0) { return false; }
    }
    
    return true;
   
}
